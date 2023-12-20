package com.medallia.medallia_dxa

import android.app.Activity
import android.util.Log
import com.medallia.dxa.builder.prod.DXA
import com.medallia.dxa.buildercommon.MedalliaDXA
import com.medallia.dxa.common.enums.CustomerConsentType
import com.medallia.dxa.common.enums.DeviceUnderStress
import com.medallia.dxa.common.enums.PlatformType
import com.medallia.dxa.common.internal.logic.providers.ActivityProvider
import com.medallia.dxa.common.internal.logic.providers.ActivityResumedListener
import com.medallia.dxa.common.internal.logic.providers.AppVersionProvider
import com.medallia.dxa.common.internal.models.DXAConfig
import com.medallia.dxa.common.internal.models.ImageQualityLevel
import com.medallia.dxa.common.internal.models.Multiplatform
import com.medallia.dxa.common.internal.models.SdkConfig
import com.medallia.dxa.common.internal.models.Session
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.EventChannel
import kotlinx.coroutines.*
import java.lang.ref.WeakReference
import java.util.Date
import org.json.JSONObject
import org.json.JSONArray

/** MedalliaDxaPlugin */
class MedalliaDxaPlugin : FlutterPlugin, Messages.MedalliaDxaNativeApi {

    private lateinit var medalliaDxa: MedalliaDXA

    private val logTag = "DXA-FLUTTER"

    private val enableLogs = false

    private var latestFlutterActivity: WeakReference<Activity> = WeakReference(null)

    private val binderScope = CoroutineScope(Dispatchers.Main + SupervisorJob())

    private var flutterEventSink: EventChannel.EventSink? = null

    private var performanceValues: PerformanceValues = PerformanceValues()

    private var initialized = false

    private var lastConfig: SdkConfig? = null

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        log("Attaching to engine...")
        medalliaDxa = DXA.getInstance(flutterPluginBinding.applicationContext)
        startCollectSdkConfig()
        startCollectSessionsInfo()
        startCollectCpuUsageMetric()
        startCollectBatteryLevelMetric()
        startCollectAllocatedMemoryMetric()
        startCollectDeviceUnderStress()
        Messages.MedalliaDxaNativeApi.setup(flutterPluginBinding.binaryMessenger, this)
        ActivityProvider.addListen(onFlutterActivityResumedListener)
        EventChannel(flutterPluginBinding.binaryMessenger, "multiplatform.flutter.streamChannel")
            .setStreamHandler(onFlutterStreamChannelListener)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        log("Detaching from engine...")
        Messages.MedalliaDxaNativeApi.setup(binding.binaryMessenger, null)
        ActivityProvider.removeListener(onFlutterActivityResumedListener)
        latestFlutterActivity.clear()
        binderScope.cancel()
    }

    override fun initialize(
        msg: Messages.SessionMessage,
        result: Messages.Result<Messages.LiveConfigurationPigeon>?
    ) {
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
                        mobileDataEnabled = msg.mobileDataEnabled
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
            val liveConfiguration = Messages.LiveConfigurationPigeon()
            liveConfiguration.overrideUserConfig = config?.mscOverrideUserConfigs
            liveConfiguration.blockedFlutterAppVersions = config?.vcBlockedFlutterAppVersions
            liveConfiguration.blockedFlutterSDKVersions = config?.vcBlockedFlutterSDKVersions
            liveConfiguration.overrideUserConfig = config?.mscOverrideUserConfigs
            liveConfiguration.blockedFlutterSDKVersions = config?.vcBlockedFlutterSDKVersions
            liveConfiguration.blockedFlutterAppVersions = config?.vcBlockedFlutterAppVersions
            liveConfiguration.maskingColor = config?.mMaskingColor?.let(Integer::toHexString)
            liveConfiguration.imageQualityType = config?.vsImageQuality?.level?.toLong()
            liveConfiguration.videoQualityType = config?.vsVideoQuality?.level?.toLong()
            liveConfiguration.showLocalLogs = config?.daShowLocalLogs
            liveConfiguration.maxScreenshots = config?.vsScreenshotMaxCount?.toLong()
            liveConfiguration.maxScreenDuration = config?.vsScreenMaxDuration?.toLong()
            liveConfiguration.disableScreenTracking = config?.dstDisableScreenTracking
            liveConfiguration.screensMasking = config?.dstScreenMasking
            liveConfiguration.appVersion = AppVersionProvider.version
            result?.success(liveConfiguration)
        }
    }

    override fun startScreen(
        msg: Messages.StartScreenMessage,
        result: Messages.Result<Void>?
    ) {
        msg.run {
            val initTime = Date().time
            log(
                message = "calling startScreen: screenID=${screenId} - screenName${screenName} - " +
                        "startTime=${startTime} - isBackground=${isBackground}"
            )
            val currentActivity = latestFlutterActivity.get() ?: ActivityProvider.currentActivity
            ?: let {
                return@run result?.success(null)
            }
            val job =
                medalliaDxa.startScreen(msg.screenId, msg.screenName, msg.startTime, currentActivity)
            binderScope.launch {
                job.join()
                val endTime = Date().time
                log(message = "startScreen took: ${endTime - initTime}")
                result?.success(null)
            }
        }
    }

    override fun endScreen(
        msg: Messages.EndScreenMessage,
        result: Messages.Result<Void>?
    ) {
        msg.run {
            val initTime = Date().time
            log(
                message = "calling endScreen: screenID=${screenId} - screenName${screenName} - " +
                        "endTime=${endTime} - isBackground=${isBackground}"
            )
            val currentActivity = latestFlutterActivity.get() ?: ActivityProvider.currentActivity
            if (currentActivity == null) {
                result?.success(null)
                return
            }
            val job =
                medalliaDxa.endScreen(msg.screenId, msg.screenName, msg.endTime, msg.screenRecordingEndTime, currentActivity)
            binderScope.launch {
                job.join()
                val endTime = Date().time
                log(message = "endScreen took: ${endTime - initTime}")
                result?.success(null)
            }
        }
    }

    override fun setConsents(consentLevel: Long) {
        medalliaDxa.setConsent(
            translateConsentsFlutterToAndroid(consentLevel)
        )
    }

    override fun saveScreenshot(
        msg: Messages.ScreenshotMessage,
        result: Messages.Result<Void>?
    ) {
        msg.run {
            val initTime = Date().time
            log(
                message = "calling saveScreenshot: screenID=${screenId} - screenName${screenName} - " +
                        "startFocusTime=${startFocusTime} - screenshotDataSize=${screenshotData.size}"
            )

            val job =
                medalliaDxa.saveScreenShot(screenshotData, screenId, screenName, startFocusTime)
            binderScope.launch {
                job.join()
                val endTime = Date().time
                log(message = "saveScreenshot took: ${endTime - initTime}")
                result?.success(null)
            }
        }
    }

    override fun sendDimensionWithString(msg: Messages.DimensionStringMessage) {
        msg.let {
            medalliaDxa.sendCustomDimension(it.dimensionName, it.value)
        }
    }

    override fun sendDimensionWithNumber(msg: Messages.DimensionNumberMessage) {
        msg.let {
            medalliaDxa.sendCustomDimension(it.dimensionName, it.value)
        }
    }


    override fun sendDimensionWithBool(msg: Messages.DimensionBoolMessage) {
        msg.let {
            medalliaDxa.sendCustomDimension(it.dimensionName, it.value)
        }
    }

    override fun sendGoal(msg: Messages.GoalMessage) {
        if (msg.value == null) {
            medalliaDxa.sendGoal(msg.goal)
        } else {
            medalliaDxa.sendGoal(msg.goal, msg.value!!)
        }
    }

    override fun sendDataOverWifiOnly() {
        medalliaDxa.sendDataOverWifiOnly()
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
        result.success(medalliaDxa.getSessionUrl())
    }

    override fun enableSessionForExperience(msg: Boolean) {
        msg.let {
            medalliaDxa.enableSessionForExperience(it)
        }
    }

    override fun enableSessionForAnalysis(msg: Boolean) {
        msg.let {
            medalliaDxa.enableSessionForAnalysis(it)
        }
    }

    override fun enableSessionForReplay(msg: Boolean) {
        msg.let {
            medalliaDxa.enableSessionForReplay(it)
        }
    }

    override fun enableScreenForAnalysis(msg: Boolean) {
        msg.let {
            medalliaDxa.enableSessionForExperience(it)
        }
    }

    //TODO: remove this exposed method from Android, this data is not needed
    private fun startCollectSessionsInfo() {
        binderScope.launch {
            medalliaDxa.getSessionsInfoFlow().collect { newSessionInfo: Session ->
                log(
                    message = "new session data info from native: $newSessionInfo",
                    level = Log.VERBOSE
                )

                val jsonObject = JSONObject()
                jsonObject.put("accountId", newSessionInfo.accountId)
                jsonObject.put("connectivityType", newSessionInfo.connectivityType)
                jsonObject.put("ipHandling", newSessionInfo.ipHandling)
                jsonObject.put("localSessionId", newSessionInfo.localSessionId)
                jsonObject.put("platform", newSessionInfo.platform)
                jsonObject.put("propertyId", newSessionInfo.propertyId)
                jsonObject.put("sdkVersion", newSessionInfo.sdkVersion)
                val jsonName = JSONObject()
                jsonName.put("app_session", jsonObject)
                val json = jsonName.toString()
                flutterEventSink?.success(json)
            }
        }
    }

    private fun startCollectCpuUsageMetric() {
        binderScope.launch {
            medalliaDxa.getCpuUsageFlow().collect { cpuUsage: Float ->
                val coresCount = medalliaDxa.getCoresCount()
                log(
                    message = "new cpu usage metric from native: $cpuUsage coresCount $coresCount",
                    level = Log.VERBOSE
                )
                performanceValues.cpuUsage = (cpuUsage / coresCount) * 100


            }
        }
    }

    private fun startCollectBatteryLevelMetric() {
        binderScope.launch {
            medalliaDxa.getBatteryLevelFlow().collect { batteryLevel: Float ->


                log(
                    message = "new battery metric from native: $batteryLevel",
                    level = Log.VERBOSE
                )

                performanceValues.batteryLevel = batteryLevel * 100

            }
        }
    }

    private fun startCollectAllocatedMemoryMetric() {

        binderScope.launch {
            medalliaDxa.getMemoryUsageFlow().collect { memoryUsage: Float ->
                val maxMemory = medalliaDxa.getMaxAvailableMemory()
                log(
                    message = "new memory metric from native: $memoryUsage total $maxMemory",
                    level = Log.VERBOSE
                )
                performanceValues.memoryUsage = (memoryUsage / maxMemory) * 100
            }
        }
    }

    private fun startCollectDeviceUnderStress() {
        binderScope.launch {
            medalliaDxa.getDeviceUnderStressFlow().collect { deviceUnderStress: DeviceUnderStress ->

                log(
                    message = "new DeviceUnderStress from native: $deviceUnderStress",
                    level = Log.VERBOSE
                )
                performanceValues.deviceUnderStress = deviceUnderStress
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
                val jsonObject = JSONObject()
                jsonObject.put("overrideUserConfig", newConfig?.mscOverrideUserConfigs)
                jsonObject.put(
                    "blockedFlutterSDKVersions",
                    JSONArray(newConfig?.vcBlockedFlutterSDKVersions)
                )
                jsonObject.put(
                    "blockedFlutterAppVersions",
                    JSONArray(newConfig?.vcBlockedFlutterAppVersions)
                )
                jsonObject.put(
                    "maskingColor",
                    newConfig?.mMaskingColor?.let { Integer.toHexString(it) })
                jsonObject.put("imageQualityType", newConfig?.vsImageQuality?.level)
                jsonObject.put("videoQualityType", newConfig?.vsVideoQuality?.level)
                jsonObject.put("showLocalLogs", newConfig?.daShowLocalLogs)
                jsonObject.put("maxScreenshots", newConfig?.vsScreenshotMaxCount)
                jsonObject.put("maxScreenDuration", newConfig?.vsScreenMaxDuration)
                jsonObject.put(
                    "disableScreenTracking",
                    JSONArray(newConfig?.dstDisableScreenTracking)
                )
                jsonObject.put("screensMasking", JSONArray(newConfig?.dstScreenMasking))
                jsonObject.put("appVersion", AppVersionProvider.version)
                val jsonName = JSONObject()
                jsonName.put("live_configuration", jsonObject)
                val json = jsonName.toString()

                flutterEventSink?.success(json)

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
            performanceValues.flutterEventSink = flutterEventSink
        }

        override fun onCancel(arguments: Any?) {
            flutterEventSink = null
            performanceValues.flutterEventSink = flutterEventSink

        }
    }

    private fun translateConsentsFlutterToAndroid(consents: Long): CustomerConsentType {
        return when (consents) {
            1L -> CustomerConsentType.ANALYTICS
            2L -> CustomerConsentType.ANALYTICS_AND_RECORDING
            else -> CustomerConsentType.NONE
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

}

class PerformanceValues() {

    var cpuUsage: Float = 0F
        set(value) {
            field = value
            sendDataToFlutter()
        }
    var batteryLevel: Float = 0F
        set(value) {
            field = value
            sendDataToFlutter()
        }
    var memoryUsage: Float = 0F
        set(value) {
            field = value
            sendDataToFlutter()
        }
    var deviceUnderStress: DeviceUnderStress = DeviceUnderStress.NOT_STRESSED
        set(value) {
            field = value
            sendDataToFlutter()
        }
    var flutterEventSink: EventChannel.EventSink? = null

    private fun toJsonString(): String {
        val isStressed = translateDeviceStressedTypeToString(deviceUnderStress)
        val jsonObject = JSONObject()
        jsonObject.put("cpuUsage", cpuUsage)
        jsonObject.put("memoryUsage", memoryUsage)
        jsonObject.put("batteryLevel", batteryLevel)
        jsonObject.put("isStressed", isStressed)

        val jsonId = JSONObject()
        jsonId.put("performance_metrics", jsonObject)
        return jsonId.toString()
    }

    private fun sendDataToFlutter() {

        flutterEventSink?.success(toJsonString())
    }

    private fun translateDeviceStressedTypeToString(nativeStressedType: DeviceUnderStress): String {
        return when (nativeStressedType) {
            DeviceUnderStress.NOT_STRESSED -> "none"
            DeviceUnderStress.HIGH_CPU_USAGE -> "cpu"
            DeviceUnderStress.HIGH_MEMORY_USAGE -> "memory"
            DeviceUnderStress.LOW_BATTERY_LEVEL -> "battery"
            else -> "none"
        }
    }

}
