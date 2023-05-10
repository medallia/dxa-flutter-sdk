package com.decibel.decibel_sdk

import android.app.Activity
import android.util.Log
import com.decibel.common.enums.CustomerConsentType
import com.decibel.builder.prod.Decibel
import com.decibel.common.enums.PlatformType
import com.decibel.common.internal.logic.providers.ActivityProvider
import com.decibel.common.internal.logic.providers.ActivityResumedListener
import com.decibel.common.internal.models.Customer
import com.decibel.common.internal.models.Multiplatform
import com.decibel.common.internal.models.SdkConfig
import com.decibel.common.internal.models.Session
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.EventChannel
import kotlinx.coroutines.*
import java.lang.ref.WeakReference
import java.util.Date
import org.json.JSONObject
import org.json.JSONArray

/** DecibelSdkPlugin */
class DecibelSdkPlugin : FlutterPlugin, Messages.MedalliaDxaNativeApi {

    private val logTag = "DXA-FLUTTER"

    private val enableLogs = true

    private var latestFlutterActivity: WeakReference<Activity> = WeakReference(null)

    private val binderScope = CoroutineScope(Dispatchers.Main + SupervisorJob())

    private var flutterEventSink: EventChannel.EventSink? = null

    private var performanceValues: PerformanceValues = PerformanceValues()

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        log("Attaching to engine...")
        startCollectSdkConfig()
        startCollectSessionsInfo()
        startCollectCpuUsageMetric()
        startCollectBatteryLevelMetric()
        startCollectAllocatedMemoryMetric()
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

    override fun initialize(msg: Messages.SessionMessage, result: Messages.Result<Messages.LiveConfigurationPigeon>?) {
        val initTime = Date().time
        log(
                message = "calling initialize: account=${msg.account} - property${msg.property} - " +
                        "version=${msg.version} - consents=${msg.consents}"
        )
        val consents = translateConsentsFlutterToAndroid(msg.consents)
        binderScope.launch {
            val config = Decibel.sdk.standaloneInitialize(
                    customer = Customer(msg.account, msg.property),
                    customerConsent = consents,
                    platform = Multiplatform(type = PlatformType.FLUTTER)
            )
            log(message = "Initial config: $config")
            val endTime = Date().time
            log(message = "initialize SDK took: ${endTime - initTime}")
            val liveConfiguration = Messages.LiveConfigurationPigeon()
            liveConfiguration.overrideUserConfig = config.mscOverrideUserConfigs
            liveConfiguration.blockedFlutterAppVersions = config.vcBlockedFlutterAppVersions
            liveConfiguration.blockedFlutterSDKVersions = config.vcBlockedFlutterSDKVersions

            liveConfiguration.overrideUserConfig = config.mscOverrideUserConfigs
            liveConfiguration.blockedFlutterSDKVersions = config.vcBlockedFlutterSDKVersions
            liveConfiguration.blockedFlutterAppVersions = config.vcBlockedFlutterAppVersions
            liveConfiguration.maskingColor = config.mMaskingColor
            liveConfiguration.imageQualityType = config.vsImageQuality.toLong()
            liveConfiguration.showLocalLogs = config.daShowLocalLogs
            liveConfiguration.maxScreenshots = config.vsScreenshotMaxCount.toLong()
            liveConfiguration.maxScreenDuration = config.vsScreenMaxDuration.toLong()
            liveConfiguration.disableScreenTracking = config.dstDisableScreenTracking
            liveConfiguration.screensMasking = config.dstScreenMasking
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
            val job = Decibel.sdk.startScreen(msg.screenId, msg.screenName, msg.startTime, currentActivity)
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
            val job = Decibel.sdk.endScreen(msg.screenId, msg.screenName, msg.endTime, currentActivity)
            binderScope.launch {
                job.join()
                val endTime = Date().time
                log(message = "endScreen took: ${endTime - initTime}")
                result?.success(null)
            }
        }
    }

    override fun setConsents(consentLevel: Long) {
        Decibel.sdk.setConsent(
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

            val job = Decibel.sdk.saveScreenShot(screenshotData, screenId, screenName, startFocusTime)
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
            Decibel.sdk.sendCustomDimension(it.dimensionName, it.value)
        }
    }

    override fun sendDimensionWithNumber(msg: Messages.DimensionNumberMessage) {
        msg.let {
            Decibel.sdk.sendCustomDimension(it.dimensionName, it.value)
        }
    }


    override fun sendDimensionWithBool(msg: Messages.DimensionBoolMessage) {
        msg.let {
            Decibel.sdk.sendCustomDimension(it.dimensionName, it.value)
        }
    }

    override fun sendGoal(msg: Messages.GoalMessage) {
        if (msg.value == null) {
            Decibel.sdk.sendGoal(msg.goal)
        } else {
            Decibel.sdk.sendGoal(msg.goal, msg.value!!)
        }
    }

    override fun sendDataOverWifiOnly() {
        Decibel.sdk.sendDataOverWifiOnly()
    }

    override fun sendHttpError(msg: Long) {
        msg.toInt().let(Decibel.sdk::sendHttpError)
    }

    override fun getWebViewProperties(result: Messages.Result<String>) {
        log(message = "calling getWebViewProperties")
        result.success(Decibel.sdk.getWebViewParams())
    }

    override fun getSessionId(result: Messages.Result<String>) {
        log(message = "calling getSessionId")
        result.success(Decibel.sdk.getSessionId())
    }

    override fun getSessionUrl(result: Messages.Result<String>) {
        log(message = "calling getSessionUrl")
        result.success(Decibel.sdk.getSessionUrl())
    }

    override fun enableSessionForExperience(msg: Boolean) {
        msg.let {
            Decibel.sdk.enableSessionForExperience(it)
        }
    }

    override fun enableSessionForAnalysis(msg: Boolean) {
        msg.let {
            Decibel.sdk.enableSessionForAnalysis(it)
        }
    }

    override fun enableSessionForReplay(msg: Boolean) {
        msg.let {
            Decibel.sdk.enableSessionForReplay(it)
        }
    }

    override fun enableScreenForAnalysis(msg: Boolean) {
        msg.let {
            Decibel.sdk.enableSessionForExperience(it)
        }
    }

    //TODO: remove this exposed method from Android, this data is not needed
    private fun startCollectSessionsInfo() {
        binderScope.launch {
            Decibel.sdk.getSessionsInfoFlow().collect { newSessionInfo: Session ->
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
            Decibel.sdk.getCpuUsageFlow().collect { cpuUsage: Float ->
                log(
                        message = "new cpu usage metric from native: $cpuUsage",
                        level = Log.VERBOSE
                )
                performanceValues.cpuUsage = cpuUsage


            }
        }
    }

    private fun startCollectBatteryLevelMetric() {
        binderScope.launch {
            Decibel.sdk.getBatteryLevelFlow().collect { batteryLevel: Float ->
                log(
                        message = "new battery metric from native: $batteryLevel",
                        level = Log.VERBOSE
                )

                performanceValues.batteryLevel = batteryLevel

            }
        }
    }

    private fun startCollectAllocatedMemoryMetric() {

        binderScope.launch {
            Decibel.sdk.getMemoryUsageFlow().collect { memoryUsage: Float ->
                val totalMemory = Runtime.getRuntime().totalMemory()
                log(
                        message = "new memory metric from native: $memoryUsage",
                        level = Log.VERBOSE
                )
                performanceValues.memoryUsage = memoryUsage
            }
        }
    }

    private fun startCollectSdkConfig() {
        binderScope.launch {
            Decibel.sdk.getConfigFlow().collect { newConfig: SdkConfig? ->
                log(
                        message = "new SDK config from native. $newConfig",
                        level = Log.VERBOSE
                )

                val jsonObject = JSONObject()
                jsonObject.put("overrideUserConfig", newConfig?.mscOverrideUserConfigs)
                jsonObject.put("blockedFlutterSDKVersions", JSONArray(newConfig?.vcBlockedFlutterSDKVersions))
                jsonObject.put("blockedFlutterAppVersions", JSONArray(newConfig?.vcBlockedFlutterAppVersions))
                jsonObject.put("maskingColor", newConfig?.mMaskingColor)
                jsonObject.put("imageQualityType", newConfig?.vsImageQuality)
                jsonObject.put("showLocalLogs", newConfig?.daShowLocalLogs)
                jsonObject.put("maxScreenshots", newConfig?.vsScreenshotMaxCount)
                jsonObject.put("maxScreenDuration", newConfig?.vsScreenMaxDuration)
                jsonObject.put("disableScreenTracking", JSONArray(newConfig?.dstDisableScreenTracking))
                jsonObject.put("screensMasking", JSONArray(newConfig?.dstScreenMasking))
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
                arguments: Any?, eventSink: EventChannel.EventSink?) {
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
    // private val cpuUsageTrigger: Float = 0F
    // private val batteryLevelTrigger: Float = 10F
    // private val memoryUsageTrigger: Float = 0F
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
    var flutterEventSink: EventChannel.EventSink? = null

    private fun toJsonString(): String {
        val jsonObject = JSONObject()
        // jsonObject.put("isStressed", isStressed())
        jsonObject.put("cpuUsage", cpuUsage)
        jsonObject.put("memoryUsage", memoryUsage)
        jsonObject.put("batteryLevel", batteryLevel)
        val jsonId = JSONObject()
        jsonId.put("performance_metrics", jsonObject)
        return jsonId.toString()
    }

    private fun sendDataToFlutter() {

        flutterEventSink?.success(toJsonString())
    }

}
