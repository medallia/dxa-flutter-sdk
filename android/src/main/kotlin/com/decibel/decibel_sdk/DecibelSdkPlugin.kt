package com.decibel.decibel_sdk

import android.app.Activity
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
import java.lang.ref.WeakReference

/** DecibelSdkPlugin */
class DecibelSdkPlugin : FlutterPlugin, Messages.MedalliaDxaNativeApi {

    private var latestFlutterActivity: WeakReference<Activity> = WeakReference(null)

    private val onFlutterActivityResumedListener = object : ActivityResumedListener {
        override fun onActivityResumed(activity: Activity) {
            if (activity is FlutterActivity || activity is FlutterFragmentActivity) {
                latestFlutterActivity = WeakReference(activity)
            }
        }
    }

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        Messages.MedalliaDxaNativeApi.setup(flutterPluginBinding.binaryMessenger, this)
        ActivityProvider.addListen(onFlutterActivityResumedListener)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        Messages.MedalliaDxaNativeApi.setup(binding.binaryMessenger, null)
        ActivityProvider.removeListener(onFlutterActivityResumedListener)
        latestFlutterActivity.clear()
    }

    override fun initialize(arg: Messages.SessionMessage) {
        arg.consents.let {
            val consents = translateConsentsFlutterToAndroid(it.map(Long::toInt))
            Decibel.sdk.initialize(
                customer = Customer(arg.account, arg.property),
                customerConsent = consents,
                platform = Multiplatform(PlatformType.FLUTTER, arg.version)
            )
        }
    }

    override fun startScreen(msg: Messages.StartScreenMessage) {
        val currentActivity = latestFlutterActivity.get() ?: ActivityProvider.currentActivity ?: return
        Decibel.sdk.startScreen(msg.screenId, msg.screenName, msg.startTime, currentActivity)
    }

    override fun endScreen(msg: Messages.EndScreenMessage) {
        val currentActivity = latestFlutterActivity.get() ?: ActivityProvider.currentActivity ?: return
        Decibel.sdk.endScreen(msg.screenId, msg.screenName, msg.endTime, currentActivity)
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

    override fun saveScreenshot(arg: Messages.ScreenshotMessage) {
        arg.let {
            Decibel.sdk.saveScreenShot(it.screenshotData, it.screenId, it.screenName, it.startFocusTime)
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
        if(msg.value == null) {
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
        result.success(Decibel.sdk.getWebViewParams())
    }

    override fun getSessionId(result: Messages.Result<String>) {
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
}