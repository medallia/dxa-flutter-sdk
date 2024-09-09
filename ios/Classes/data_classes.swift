import MedalliaDXAFlutter


struct SamplingFlutterData: Codable {
    var stopTrackingDueToSampling: Bool
    var stopRecordingDueToSampling: Bool
}


struct LiveConfigurationFlutterData: Codable{
    var useLiveConfiguration: Bool
    var disableScreenTracking: [String]?
    var screensMasking: [String]?
    var imageQualityType: Int?
    var videoQualityType: Int?
    var maskingColor: String?
    var showLocalLogs: Bool?
    var allowLocalLogs: Bool?
    var blockedFlutterSDKVersions: [String]?
    var blockedFlutterAppVersions: [String]?

   enum CodingKeys: String, CodingKey {
        case useLiveConfiguration = "overrideUserConfig"
        case disableScreenTracking
        case screensMasking
        case imageQualityType
        case videoQualityType
        case maskingColor
        case showLocalLogs
        case allowLocalLogs
        case blockedFlutterSDKVersions
        case blockedFlutterAppVersions
    }

}

struct PerformanceFlutterData: Codable{
    var isStressed: String
    var battery: Double
    var memory: Double
    var cpu: Double

    enum CodingKeys: String, CodingKey {
        case isStressed
        case battery = "batteryLevel"
        case memory = "memoryUsage"
        case cpu = "cpuUsage"
    }
}
