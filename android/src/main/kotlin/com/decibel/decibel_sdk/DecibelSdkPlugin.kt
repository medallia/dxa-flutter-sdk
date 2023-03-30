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
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.plugins.FlutterPlugin
import kotlinx.coroutines.*
import java.lang.ref.WeakReference
import java.util.Date

/** DecibelSdkPlugin */
class DecibelSdkPlugin : FlutterPlugin, Messages.MedalliaDxaNativeApi {

    private val logTag = "DXA-FLUTTER"

    private val enableLogs = false

    private var latestFlutterActivity: WeakReference<Activity> = WeakReference(null)

    private val binderScope = CoroutineScope(Dispatchers.Main + SupervisorJob())

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        log("Attaching to engine...")
        Messages.MedalliaDxaNativeApi.setup(flutterPluginBinding.binaryMessenger, this)
        ActivityProvider.addListen(onFlutterActivityResumedListener)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        log("Detaching from engine...")
        Messages.MedalliaDxaNativeApi.setup(binding.binaryMessenger, null)
        ActivityProvider.removeListener(onFlutterActivityResumedListener)
        latestFlutterActivity.clear()
        binderScope.cancel()
    }


    override fun initialize(arg: Messages.SessionMessage) {
        log(
                message = "calling initialize: account=${arg.account} - property${arg.property} - " +
                        "version=${arg.version} - consents=${arg.consents}"
        )
        arg.consents.let {
            val consents = translateConsentsFlutterToAndroid(it.map(Long::toInt))
            Decibel.sdk.initialize(
                    customer = Customer(arg.account, arg.property),
                    customerConsent = consents,
                    platform = Multiplatform(type = PlatformType.FLUTTER)
            )
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

    override fun setEnableConsents(arg: Messages.ConsentsMessage) {
        arg.consents.let {
            val consents = translateConsentsFlutterToAndroid(it.map(Long::toInt))
            Decibel.sdk.enableUserConsent(consents)
        }
    }

    override fun setDisableConsents(arg: Messages.ConsentsMessage) {
        arg.consents.let {
            val consents = translateConsentsFlutterToAndroid(it.map(Long::toInt))
            Decibel.sdk.disableUserConsent(consents)
        }
    }

    override fun saveScreenshot(
            msg: Messages.ScreenshotMessage,
            result: Messages.Result<Void>?
    ) {
        msg.run {
            val initTime = Date().time
            log(
                    message = "calling saveScreenshot: screenID=${screenId} - screenName${screenName} - " +
                            "startFocusTime=${startFocusTime} - screenshotDataSize=${screenshotData?.size}"
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

    private val onFlutterActivityResumedListener = object : ActivityResumedListener {
        override fun onActivityResumed(activity: Activity) {
            if (activity is FlutterActivity || activity is FlutterFragmentActivity) {
                log("Detected flutter activity: $activity")
                latestFlutterActivity = WeakReference(activity)
            }
        }
    }

    private fun translateConsentsFlutterToAndroid(consents: List<Int>): List<CustomerConsentType> {
        return consents.map {
            when (it) {
                0 -> CustomerConsentType.ALL
                1 -> CustomerConsentType.RECORD_SCREEN
                2 -> CustomerConsentType.TRACK_SCREEN
                3 -> CustomerConsentType.NONE
                else -> CustomerConsentType.ALL
            }
        }
    }

    private fun log(message: String, error: Boolean = false) {
        if (!enableLogs) return
        if (error) {
            Log.e(logTag, message)
        } else {
            Log.i(logTag, message)
        }
    }

}