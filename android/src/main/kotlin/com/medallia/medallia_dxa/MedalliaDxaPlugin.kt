package com.medallia.medallia_dxa

import PerformanceData
import SamplingFlutterInfo
import SdkConfigInfo
import SessionInfo
import android.app.Activity
import android.os.SystemClock
import android.util.Log
import com.medallia.dxa.DXA
import com.medallia.dxa.buildercommon.MedalliaDXA
import com.medallia.dxa.common.entity.DXACollection
import com.medallia.dxa.common.entity.TouchEvent
import com.medallia.dxa.common.enums.CollectionDataType
import com.medallia.dxa.common.enums.CustomerConsentType
import com.medallia.dxa.common.enums.DeviceUnderStress
import com.medallia.dxa.common.enums.PlatformType
import com.medallia.dxa.common.internal.logic.providers.ActivityProvider
import com.medallia.dxa.common.internal.logic.providers.ActivityResumedListener
import com.medallia.dxa.common.internal.models.DXAConfig
import com.medallia.dxa.common.internal.models.ImageQualityLevel
import com.medallia.dxa.common.internal.models.Multiplatform
import com.medallia.dxa.common.internal.models.Performance
import com.medallia.dxa.common.internal.models.SdkConfig
import com.medallia.dxa.common.internal.models.Session
import com.medallia.dxa.common.internal.models.SamplingMultiplatform
import com.medallia.medallia_dxa.Messages.FlutterError
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.EventChannel
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.collect
import java.lang.ref.WeakReference
import java.util.Date

/** MedalliaDxaPlugin */
class MedalliaDxaPlugin : FlutterPlugin, Messages.MedalliaDxaNativeApiPigeon {

    private lateinit var medalliaDxa: MedalliaDXA

    private val logTag = "DXA-FLUTTER"

    private val enableLogs = false

    private var latestFlutterActivity: WeakReference<Activity> = WeakReference(null)

    private val binderScope = CoroutineScope(Dispatchers.Main + SupervisorJob())

    private var flutterEventSink: EventChannel.EventSink? = null

    private var initialized = false

    private var lastConfig: SdkConfig? = null

    private var minimumSupportedApi: Int = 26

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        log("Attaching to engine...")
        
        Messages.MedalliaDxaNativeApiPigeon.setUp(flutterPluginBinding.binaryMessenger, this)
        ActivityProvider.addListen(onFlutterActivityResumedListener)
        EventChannel(flutterPluginBinding.binaryMessenger, "medallia.dxa.streamChannel")
            .setStreamHandler(onFlutterStreamChannelListener)
        if(isApiSupported().not()){ return }
        medalliaDxa = DXA.getInstance(flutterPluginBinding.applicationContext)
        startCollectSdkConfig()
        startCollectPerformanceData()
        startCollectingSamplingData()
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        log("Detaching from engine...")
        Messages.MedalliaDxaNativeApiPigeon.setUp(binding.binaryMessenger, null)
        ActivityProvider.removeListener(onFlutterActivityResumedListener)
        latestFlutterActivity.clear()
        binderScope.cancel()
    }

    override fun initialize(
        msg: Messages.SessionMessagePigeon,
        result: Messages.Result<Messages.LiveConfigurationFromInitializePigeon>
    ) {
        if(isApiSupported().not()){
            val liveConfig = liveConfigForBlockedSdk(msg.version)
            return result.success(liveConfig)
        }

        val initTime = Date().time
        log(
            message = "calling initialize: account=${msg.account} - property${msg.property} - " +
                    "version=${msg.version} - consents=${msg.consents}"
        )
        val consents = translateConsentsFlutterToAndroid(msg.consents)

        binderScope.launch {
            val config: SdkConfig?
            if (initialized) {
                log(message = "already initialized")
                config = lastConfig
            } else {
                config = medalliaDxa.standaloneInitialize(
                    dxaConfig = DXAConfig(
                        customerConsent = consents,
                        accountId = msg.account,
                        propertyId = msg.property,
                        mobileDataEnabled = msg.mobileDataEnabled,
                        enhancedLogsEnabled = msg.enhancedLogs
                    ),
                    platform = Multiplatform(
                        type = PlatformType.FLUTTER,
                        version = msg.version
                    )
                )
                initialized = true
                lastConfig = config
            }

            log(message = "Initial config: $config")
            val endTime = Date().time
            log(message = "initialize SDK took: ${endTime - initTime}")
            val liveConfiguration = Messages.LiveConfigurationFromInitializePigeon()
            liveConfiguration.overrideUserConfig = config?.mscOverrideUserConfigs
            liveConfiguration.blockedFlutterAppVersions = config?.vcBlockedFlutterAppVersions
            liveConfiguration.blockedFlutterSDKVersions = config?.vcBlockedFlutterSDKVersions
            liveConfiguration.blockedNativeSDKVersions = config?.vcBlockedAndroidSDKVersions
            liveConfiguration.overrideUserConfig = config?.mscOverrideUserConfigs
            liveConfiguration.maskingColor = config?.mMaskingColor?.let(Integer::toHexString)
            liveConfiguration.imageQualityType = config?.vsImageQuality?.level?.toLong()
            liveConfiguration.videoQualityType = config?.vsVideoQuality?.level?.toLong()
            liveConfiguration.showLocalLogs = config?.daShowLocalLogs
            liveConfiguration.allowLocalLogs = config?.daAllowLogs
            liveConfiguration.disableScreenTracking = config?.dstDisableScreenTracking
            liveConfiguration.screensMasking = config?.dstScreenMasking
            liveConfiguration.appVersion = medalliaDxa.appVersion()
            liveConfiguration.nativeSDKVersion = medalliaDxa.sdkVersion()
            result.success(liveConfiguration)
        }
    }

    override fun startScreen(msg: Messages.StartScreenMessagePigeon, result: Messages.VoidResult) {
        msg.run {
            val initTime = Date().time
            log(
                message = "calling startScreen: screenID=${screenId} - screenName${screenName} - " +
                        "startTime=${startTime} - isBackground=${isBackground}"
            )
            val currentActivity = latestFlutterActivity.get() ?: ActivityProvider.currentActivity
            ?: let {
                return@run result.success()
            }
            val job =
                medalliaDxa.startScreen(
                    msg.screenId,
                    msg.screenName,
                    msg.startTime,
                    currentActivity
                )
            binderScope.launch {
                job.join()
                val endTime = Date().time
                log(message = "startScreen took: ${endTime - initTime}")
                result.success()
            }
        }
    }

    override fun endScreen(msg: Messages.EndScreenMessagePigeon, result: Messages.VoidResult) {
        msg.run {
            val initTime = Date().time
            log(
                message = "calling endScreen: screenID=${screenId} - screenName${screenName} - " +
                        "endTime=${endTime} - isBackground=${isBackground}"
            )
            val currentActivity = latestFlutterActivity.get() ?: ActivityProvider.currentActivity
            if (currentActivity == null) {
                result.success()
                return
            }
            val job =
                medalliaDxa.endScreen(
                    msg.screenId,
                    msg.screenName,
                    msg.endTime,
                    msg.screenRecordingEndTime,
                    currentActivity
                )
            binderScope.launch {
                job.join()
                val endTime = Date().time
                log(message = "endScreen took: ${endTime - initTime}")
                result.success()
            }
        }
    }

    override fun setConsents(consentLevel: Long) {
        medalliaDxa.setConsent(
            translateConsentsFlutterToAndroid(consentLevel)
        )
    }

    override fun saveScreenshot(msg: Messages.ScreenshotMessagePigeon, result: Messages.VoidResult) {
        msg.run {
            val initTime = Date().time
            log(
                message = "calling saveScreenshot: screenID=${screenId} - screenName${screenName} - " +
                        "startFocusTime=${startFocusTime} - screenshotDataSize=${screenshotData.size} - " +
                        "isPlaceholder=${isPlaceholder}"
            )

            val job =
                medalliaDxa.saveScreenShot(screenshotData, screenId, screenName, startFocusTime, isPlaceholder)
            binderScope.launch {
                job.join()
                val endTime = Date().time
                log(message = "saveScreenshot took: ${endTime - initTime}")
                result.success()
            }
        }
    }

    override fun sendDimensionWithString(msg: Messages.DimensionStringMessagePigeon) {
        msg.let {
            medalliaDxa.sendCustomDimension(it.dimensionName, it.value)
        }
    }

    override fun sendDimensionWithNumber(msg: Messages.DimensionNumberMessagePigeon) {
        msg.let {
            medalliaDxa.sendCustomDimension(it.dimensionName, it.value)
        }
    }


    override fun sendDimensionWithBool(msg: Messages.DimensionBoolMessagePigeon) {
        msg.let {
            medalliaDxa.sendCustomDimension(it.dimensionName, it.value)
        }
    }

    override fun sendGoal(msg: Messages.GoalMessagePigeon) {
        if (msg.value == null) {
            medalliaDxa.sendGoal(msg.goal)
        } else {
            medalliaDxa.sendGoal(msg.goal, msg.value!!)
        }
    }

    override fun sendError(errorMessage: String) {
        medalliaDxa.sendError(errorMessage)
    }

    override fun sendDataOverWifiOnly(value: Boolean) {
        medalliaDxa.sendDataOverWifiOnly(enabled = value)
    }

    override fun sendHttpError(msg: Long) {
        msg.toInt().let(medalliaDxa::sendHttpError)
    }

    override fun sendImageQuality(imageQuality: Long) {

        val imageQualityLevel = when (imageQuality) {
            0L -> ImageQualityLevel.Poor
            1L -> ImageQualityLevel.Low
            2L -> ImageQualityLevel.Average
            3L -> ImageQualityLevel.High
            4L -> ImageQualityLevel.Ultra
            else -> {
                ImageQualityLevel.Average
            }
        }

        medalliaDxa.setImageQuality(imageQualityLevel)
    }


    override fun getWebViewProperties(result: Messages.Result<String>) {
        log(message = "calling getWebViewProperties")
        result.success(medalliaDxa.getWebViewParams())
    }

    override fun getSessionId(result: Messages.Result<String>) {
        log(message = "calling getSessionId")
        result.success(medalliaDxa.getSessionId())
    }

    override fun getSessionUrl(result: Messages.Result<String>) {
        log(message = "calling getSessionUrl")
        medalliaDxa.getSessionUrl {sessionUrl ->
            if (sessionUrl != null) {
                result.success(sessionUrl)
            } else{
                result.error(FlutterError("Session url", "Session url is null", ""))
            }
        }
    }

    override fun setRetention(msg: Boolean) {
        msg.let {
            medalliaDxa.setRetention(it)
        }
    }

    override fun saveLog(log: String) {
        log.let {
            medalliaDxa.saveLog(it)
        }
    }

    override fun sendTouchEvents(touchEvents: MutableList<Messages.TouchEventNativeClassPigeon>, result: Messages.VoidResult) {

        val dxaCollection = mutableListOf<DXACollection>()

        touchEvents.forEach { touchEvent ->
            val touchesMapped: List<TouchEvent> = touchEvent.d.mapNotNull { touchDetail ->
                val x = touchDetail?.x
                val y = touchDetail?.y
                if (x != null && y != null) {

                    TouchEvent(
                        x = x.toInt(),
                        y = y.toInt(),
                        clickForce = touchDetail.cf.toInt(),
                        offsetX = touchDetail.ox?.toInt(),
                        offsetY = touchDetail.oy?.toInt(),
                        scrollId = touchDetail.sid?.toInt(),
                        parentScrollId = touchDetail.pid?.toInt()
                    )
                } else {
                    null
                }
            }

            val dxaCollectionTouchEvent = DXACollection(
                System.nanoTime(),
                touchEvent.o.toInt().toLong(),
                translateTouchType(touchEvent.t),
                touchesMapped,
            )
            log(dxaCollectionTouchEvent.t)
            dxaCollection.add(dxaCollectionTouchEvent)
        }

        val job =  medalliaDxa.saveGestures(dxaCollection)
        binderScope.launch {
            job.join()
            result.success()
        }
    }

    private fun startCollectPerformanceData() {

        binderScope.launch {
            medalliaDxa.getDevicePerformanceFlow().collect { performance: Performance ->

                val cpuUsage = (performance.c / performance.nC) * 100
                val batteryLevel = performance.b * 100
                val memoryUsage = (performance.m / performance.mM) * 100
                val deviceUnderStress = when (performance.uS.lastOrNull()) {
                    DeviceUnderStress.HIGH_CPU_USAGE.key -> DeviceUnderStress.HIGH_CPU_USAGE
                    DeviceUnderStress.HIGH_MEMORY_USAGE.key -> DeviceUnderStress.HIGH_MEMORY_USAGE
                    DeviceUnderStress.LOW_BATTERY_LEVEL.key -> DeviceUnderStress.LOW_BATTERY_LEVEL
                    else -> DeviceUnderStress.NOT_STRESSED
                }

                log(
                    message = "new performance data: cpuUsage=$cpuUsage, batteryLevel=$batteryLevel, " +
                            "memoryUsage=$memoryUsage, deviceUnderStress=$deviceUnderStress",
                    level = Log.VERBOSE
                )

                val performanceData = PerformanceData(
                    cpuUsage = cpuUsage,
                    batteryLevel = batteryLevel,
                    memoryUsage = memoryUsage,
                    deviceUnderStress = deviceUnderStress
                )

                val newConfigMap = performanceData.toHashMap()

                newConfigMap["eventChannelId"] = "performance_metrics"
                flutterEventSink?.success(newConfigMap)
            }
        }
    }

    private fun startCollectSdkConfig() {
        binderScope.launch {
            medalliaDxa.getConfigFlow().collect { newConfig: SdkConfig? ->
                log(
                    message = "new SDK config from native. $newConfig",
                    level = Log.VERBOSE
                )
                lastConfig = newConfig
                if (newConfig == null) {
                    return@collect
                }
                val newConfigInfo = SdkConfigInfo(
                    mscOverrideUserConfigs = newConfig.mscOverrideUserConfigs,
                    vcBlockedFlutterSDKVersions = newConfig.vcBlockedFlutterSDKVersions,
                    vcBlockedFlutterAppVersions = newConfig.vcBlockedFlutterAppVersions,
                    vcBlockedNativeSDKVersions = newConfig.vcBlockedAndroidSDKVersions,
                    mMaskingColor = newConfig.mMaskingColor,
                    vsImageQuality = newConfig.vsImageQuality,
                    vsVideoQuality = newConfig.vsVideoQuality,
                    daShowLocalLogs = newConfig.daShowLocalLogs,
                    dstDisableScreenTracking = newConfig
                        .dstDisableScreenTracking,
                    daAllowLogs = newConfig.daAllowLogs,
                    dstScreenMasking = newConfig.dstScreenMasking
                )

                val newConfigMap = newConfigInfo.toHashMap()

                newConfigMap["eventChannelId"] = "live_configuration"
                flutterEventSink?.success(newConfigMap)

            }
        }
    }

    private fun startCollectingSamplingData() {
        binderScope.launch {
            medalliaDxa.getSampling().collect { samplingData: SamplingMultiplatform ->
                log(
                    message = "new sampling data from native. $samplingData",
                    level = Log.VERBOSE
                )
                val samplingFlutterInfo = SamplingFlutterInfo(
                    stopTrackingDueToSampling = samplingData.stopTrackingDueToSampling,
                    stopRecordingDueToSampling = samplingData.stopRecordingDueToSampling
                )
                val samplingFlutterMap = samplingFlutterInfo.toHashMap()

                samplingFlutterMap["eventChannelId"] = "sampling_data"
                flutterEventSink?.success(samplingFlutterMap)

            }
        }
    }

    private val onFlutterActivityResumedListener = object : ActivityResumedListener {
        override fun onActivityResumed(activity: Activity) {
            if (activity is FlutterActivity || activity is FlutterFragmentActivity) {
                log("Detected flutter activity: $activity", level = Log.INFO)
                latestFlutterActivity = WeakReference(activity)
            }
        }
    }

    private val onFlutterStreamChannelListener = object : EventChannel.StreamHandler {

        override fun onListen(
            arguments: Any?, eventSink: EventChannel.EventSink?
        ) {
            flutterEventSink = eventSink
        }

        override fun onCancel(arguments: Any?) {
            flutterEventSink = null
        }
    }

    private fun translateConsentsFlutterToAndroid(consents: Long): CustomerConsentType {
        return when (consents) {
            1L -> CustomerConsentType.ANALYTICS
            2L -> CustomerConsentType.ANALYTICS_AND_RECORDING
            else -> CustomerConsentType.NONE
        }
    }

    private fun translateTouchType(value: Long): String {
        return when (value) {
            0L -> CollectionDataType.TOUCH_BEGIN.value
            1L -> CollectionDataType.TOUCH_MOVE.value
            2L -> CollectionDataType.TOUCH_END.value
            else -> CollectionDataType.TOUCH_END.value
        }
    }

    private fun log(message: String, level: Int = Log.DEBUG) {
        if (!enableLogs) return
        when (level) {
            Log.VERBOSE -> Log.v(logTag, message)
            Log.DEBUG -> Log.d(logTag, message)
            Log.INFO -> Log.i(logTag, message)
            Log.ERROR -> Log.e(logTag, message)
            Log.WARN -> Log.w(logTag, message)
        }
    }

    private fun isApiSupported(): Boolean {
        return android.os.Build.VERSION.SDK_INT >= minimumSupportedApi
    }

    private fun liveConfigForBlockedSdk(sdkVersion: String): Messages.LiveConfigurationFromInitializePigeon {
        val fakeLiveConfig = Messages.LiveConfigurationFromInitializePigeon()
        fakeLiveConfig.blockedFlutterSDKVersions = listOf(sdkVersion)
        return fakeLiveConfig
    }

}