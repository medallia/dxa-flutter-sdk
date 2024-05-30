import com.medallia.dxa.common.enums.DeviceUnderStress
import com.medallia.dxa.common.internal.logic.providers.AppVersionProvider

data class SessionInfo(
    val accountId: Long,
    val propertyId: Long,
    val localSessionId: String,
    val platform: com.medallia.dxa.common.internal.models.Multiplatform,
    val connectivityType: com.medallia.dxa.common.enums.ConnectivityType,
    val ipHandling: Int,
    val sdkVersion: String
) {

    fun toHashMap(): HashMap<String, Any> {
        return hashMapOf(
            "accountId" to accountId,
            "propertyId" to propertyId,
            "localSessionId" to localSessionId,
            "platform" to platform,
            "connectivityType" to connectivityType,
            "ipHandling" to ipHandling,
            "sdkVersion" to sdkVersion
        )
    }
}

data class SdkConfigInfo(
    val mscOverrideUserConfigs: Boolean,
    val vcBlockedFlutterSDKVersions: List<String>,
    val vcBlockedFlutterAppVersions: List<String>,
    val mMaskingColor: Int?,
    val vsImageQuality: com.medallia.dxa.common.internal.models.ImageQualityLevel?,
    val vsVideoQuality: com.medallia.dxa.common.internal.models.VideoQualityLevel,
    val daShowLocalLogs: Boolean,
    val daAllowLogs: Boolean,
    val vsScreenshotMaxCount: Int,
    val vsScreenMaxDuration: Int,
    val dstDisableScreenTracking: List<String>,
    val dstScreenMasking: List<String>
) {

    fun toHashMap(): HashMap<String, Any?> {
        return hashMapOf(
            "overrideUserConfig" to mscOverrideUserConfigs,
            "blockedFlutterSDKVersions" to vcBlockedFlutterSDKVersions,
            "blockedFlutterAppVersions" to vcBlockedFlutterAppVersions,
            "maskingColor" to mMaskingColor?.let { Integer.toHexString(it) },
            "imageQualityType" to vsImageQuality?.level,
            "videoQualityType" to vsVideoQuality.level,
            "showLocalLogs" to daShowLocalLogs,
            "allowLocalLogs" to daAllowLogs,
            "maxScreenshots" to vsScreenshotMaxCount,
            "maxScreenDuration" to vsScreenMaxDuration,
            "disableScreenTracking" to dstDisableScreenTracking,
            "screensMasking" to dstScreenMasking,
            "appVersion" to AppVersionProvider.version
        )
    }
}


data class SamplingFlutterInfo(
    val stopTrackingDueToSampling: Boolean,
    val stopRecordingDueToSampling: Boolean,
) {

    fun toHashMap(): HashMap<String, Any> {
        return hashMapOf(
            "stopTrackingDueToSampling" to stopTrackingDueToSampling,
            "stopRecordingDueToSampling" to stopRecordingDueToSampling
        )
    }
}

data class PerformanceData(
    val cpuUsage: Float,
    val memoryUsage: Float,
    val batteryLevel: Float,
    val deviceUnderStress: DeviceUnderStress
) {

    fun toHashMap(): HashMap<String, Any> {
        val isStressed = translateDeviceStressedTypeToString(deviceUnderStress)
        return hashMapOf(
            "cpuUsage" to cpuUsage,
            "memoryUsage" to memoryUsage,
            "batteryLevel" to batteryLevel,
            "isStressed" to isStressed
        )
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