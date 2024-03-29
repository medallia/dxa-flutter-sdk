import Flutter
import UIKit
import MedalliaDXAFlutter

public class SwiftMedalliaDxaPlugin: NSObject, FlutterPlugin, FLTMedalliaDxaNativeApi {

    private static var flutterEventSink: FlutterEventSink? = nil
    public static func register(with registrar: FlutterPluginRegistrar) {
        let messenger : FlutterBinaryMessenger = registrar.messenger()
        let api : FLTMedalliaDxaNativeApi & NSObjectProtocol = SwiftMedalliaDxaPlugin.init()
        FLTMedalliaDxaNativeApiSetup(messenger, api);
        FlutterEventChannel(name: "multiplatform.flutter.streamChannel", binaryMessenger: messenger).setStreamHandler(onPerformanceChangeListener)
    }
    
    public func initializeMsg(_ msg: FLTSessionMessage, completion: @escaping (FLTLiveConfigurationPigeon?, FlutterError?) -> Void) {
        var liveConfiguration: MedalliaDXAFlutter.LiveConfigurationFlutter
        if  let consents = msg.consents as? Int {
            let nativeConsents: Consent = translateConsentsFlutterToIos(flutterConsents: consents)
            let configuration = Configuration(account: String(describing: msg.account), property: String(describing: msg.property),consent: nativeConsents, crashReporterEnabled: msg.crashReporterEnabled as! Bool, mobileDataEnable: msg.mobileDataEnabled as! Bool)
            
            liveConfiguration = DXA.initialize(configuration: configuration, multiplatform: Platform(type: .flutter, version: String(describing: msg.version), language: "Dart"), dxaDelegate: self)
            
            
        } else  {
            let configuration = Configuration(account: String(describing: msg.account), property: String(describing: msg.property))
            liveConfiguration = DXA.initialize(configuration: configuration, multiplatform: Platform(type: .flutter, version: String(describing: msg.version), language: "Dart"), dxaDelegate: self)

        }
                
        let fltLiveConfiguration = buildLiveConfigurationPigeonClass(liveConfiguration: liveConfiguration)
        fltLiveConfiguration.appVersion = DXA.appVersion
        completion(fltLiveConfiguration, nil)
        
    }
    
    public func startScreenMsg(_ msg: FLTStartScreenMessage, completion: @escaping (FlutterError?) -> Void) {
        
        if let screenId = msg.screenId as? Int{
            DXA.startNewScreen(name: msg.screenName, id: screenId)
            completion(nil)
        }
    }
    
    public func endScreenMsg(_ msg: FLTEndScreenMessage, completion: @escaping (FlutterError?) -> Void) {
        if let screenRecordingEndTime = msg.screenRecordingEndTime as? TimeInterval {
            DXA.endScreen(endFocusTime: screenRecordingEndTime/1000)
        }
        
        completion(nil)
    }
    
    public func setConsentsValue(_ value: NSNumber, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        var nativeConsents: Consent
        if let consent = value as? Int {
            nativeConsents = translateConsentsFlutterToIos(flutterConsents: consent)
            DXA.setConsent(nativeConsents)
        }
    }
    
    public func saveScreenshotMsg(_ msg: FLTScreenshotMessage, completion: @escaping (FlutterError?) -> Void) {
        if let screenId = msg.screenId as? Int,
           let startFocusTime = msg.startFocusTime as? TimeInterval {
            DXA.saveScreenShot(screenshot: msg.screenshotData.data, id: screenId, screenName: msg.screenName, screenShotTime: startFocusTime/1000)
            completion(nil)
        }
    }
    
    public func sendDimension(withStringMsg msg: FLTDimensionStringMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DXA.send(dimension: msg.dimensionName, value: msg.value)
    }
    
    public func sendDimension(withNumberMsg msg: FLTDimensionNumberMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        
        guard let dimensionValue = msg.value as? Double else {
            return
        }
        DXA.send(dimension: msg.dimensionName, value: dimensionValue)
        
    }
    
    public func sendDimension(withBoolMsg msg: FLTDimensionBoolMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        
        guard let dimensionValue = msg.value as? Bool else {
            return
        }
        DXA.send(dimension: msg.dimensionName, value: dimensionValue)
        
    }
    
    public func sendGoalMsg(_ msg: FLTGoalMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        
        guard let goalValue = msg.value as? Float else {
            DXA.send(goal: msg.goal)
            return
        }
        DXA.send(goal: msg.goal, with: goalValue)
        
    }
    
    public func sendDataOverWifiOnlyWithError(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DXA.mobileDataEnable = false;
    }
    
    public func sendHttpErrorMsg(_ msg: NSNumber, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DXA.sendHTTPError(statusCode: Int(truncating: msg))
    }
    
    public func sendImageQualityImageQuality(_ imageQuality: NSNumber, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        guard let imageQualityValue = ImageQualityType(rawValue: Int(truncating: imageQuality)) else {
            return
        }
        DXA.setImageQuality(imageQualityValue)
    }

    public func getWebViewProperties(completion: (String?, FlutterError?)->Void) {
        let webViewProperties = DXA.webViewProperties
        if webViewProperties != nil {
            completion(webViewProperties, nil);
            return
        }
        
        completion(nil,FlutterError(code: "getWebViewProperties", message: "Unexpected null value, session has not been initialized", details: nil));
        
    }
    
    public func getSessionId(completion: (String?, FlutterError?)->Void) {
        let sessionId = DXA.sessionId
        if sessionId != nil {
            completion(sessionId,nil);
            return
        }
        
        completion(nil,FlutterError(code: "getSessionId", message: "Unexpected null value, session has not been initialized", details: nil));
    }
    
    public func getSessionUrl(completion: @escaping (String?, FlutterError?)->Void) {
        DXA.sessionURL = {sessionUrl in
            if sessionUrl != nil {
                completion(sessionUrl,nil);
                return
            }
            completion(nil,FlutterError(code: "getSessionUrl", message: "Unexpected null value, session has not been initialized", details: nil));
        }
    }
    public func enableSession(forAnalyticsValue value: NSNumber, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DXA.enableSessionForAnalytics(value as! Bool)
    }
    
    public func enableSession(forRecordingValue value: NSNumber, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DXA.enableSessionForRecording(value as! Bool)
    }
    
    public func setRetentionValue(_ value: NSNumber, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DXA.setRetention(value as! Bool)
    }
    
    private func translateConsentsFlutterToIos(flutterConsents value: Int) -> Consent{
        var nativeConsent: Consent
        
        switch value {
        case 0:
            nativeConsent = .noConsent
        case 1:
            nativeConsent = .tracking
        case 2:
            nativeConsent = .recordingAndTracking
        default:
            nativeConsent = .noConsent
        }
        return nativeConsent
        
    }
    
    private static var onPerformanceChangeListener: NSObjectProtocol & FlutterStreamHandler = {
        class PerformanceChangeListener: NSObject, FlutterStreamHandler {
            
            func onListen(withArguments arguments: Any?,
                          eventSink: @escaping FlutterEventSink) -> FlutterError? {
                flutterEventSink = eventSink
                return nil
            }
            
            func onCancel(withArguments arguments: Any?) -> FlutterError? {
                flutterEventSink = nil
                return nil
            }
        }
        
        return PerformanceChangeListener()
    }()
    
    private func translateDeviceStressedTypeToString(nativeStresstedType value: DeviceStressedTypeFlutter) -> String{
        var nativeStresstedType: String
        
        switch value {
        case .battery:
            nativeStresstedType = "battery"
        case .cpu:
            nativeStresstedType = "cpu"
        case .memory:
            nativeStresstedType = "memory"
        default:
            nativeStresstedType = "none"
        }
        return nativeStresstedType
        
    }
    
    private func buildLiveConfigurationPigeonClass(liveConfiguration: MedalliaDXAFlutter.LiveConfigurationFlutter) -> FLTLiveConfigurationPigeon {
        var showLocalLogs: NSNumber? = nil
        if liveConfiguration.showLocalLogs != nil {
            showLocalLogs = NSNumber(value:liveConfiguration.showLocalLogs!)
        }
        
        var imageQualityType: NSNumber? = nil
        if liveConfiguration.imageQualityType != nil {
            imageQualityType = NSNumber(value:liveConfiguration.imageQualityType!)
        }
        
        var videoQualityType: NSNumber? = nil
        if liveConfiguration.videoQualityType != nil {
            videoQualityType = NSNumber(value:liveConfiguration.videoQualityType!)
        }
        
        var maxScreenshots: NSNumber? = nil
        if liveConfiguration.maxScreenshots != nil {
            maxScreenshots = NSNumber(value:liveConfiguration.maxScreenshots!)
        }
        
        var maxScreenDuration: NSNumber? = nil
        if liveConfiguration.maxScreenDuration != nil {
            maxScreenDuration = NSNumber(value:liveConfiguration.maxScreenDuration!)
        }
        
        let fltLiveConfiguration = FLTLiveConfigurationPigeon.make(withOverrideUserConfig: NSNumber(value: liveConfiguration.useLiveConfiguration), blockedFlutterSDKVersions: liveConfiguration.blockedFlutterSDKVersions, blockedFlutterAppVersions: liveConfiguration.blockedFlutterAppVersions, maskingColor: liveConfiguration.maskingColor, showLocalLogs: showLocalLogs , imageQualityType: imageQualityType, videoQualityType: videoQualityType, maxScreenshots: maxScreenshots, maxScreenDuration: maxScreenDuration, disableScreenTracking: liveConfiguration.disableScreenTracking, screensMasking: liveConfiguration.screensMasking, appVersion: DXA.appVersion)
        return fltLiveConfiguration
    }
    
    
}
extension SwiftMedalliaDxaPlugin : DXADelegate {
    public func sampling(_ sampling: MedalliaDXAFlutter.SamplingFlutter) {

        if(SwiftMedalliaDxaPlugin.flutterEventSink==nil) {return}
        do {
            var dictData = [String: Any]()
            dictData["stopTrackingDueToSampling"] = !sampling.stopTrackingDueToSampling
            dictData["stopRecordingDueToSampling"] = !sampling.stopRecordingDueToSampling
            
            let dictId: [String: Any] = ["sampling_data": dictData]
            let jsonData = try JSONSerialization.data(withJSONObject: dictId, options: [.prettyPrinted, .sortedKeys])
            let jsonString = String(data: jsonData, encoding: .utf8)!
            
            DispatchQueue.main.async {
                SwiftMedalliaDxaPlugin.flutterEventSink?(jsonString)
            }
        } catch {
            print("Sampling data JSON serialization error: \(error)")
        }
    }
    
    public func liveConfig(_ configuration: MedalliaDXAFlutter.LiveConfigurationFlutter) {
        
        if(SwiftMedalliaDxaPlugin.flutterEventSink==nil) {return}
        do {
            var dictData = [String: Any]()
            dictData["overrideUserConfig"] = configuration.useLiveConfiguration
            dictData["disableScreenTracking"] = configuration.disableScreenTracking
            dictData["screensMasking"] = configuration.screensMasking
            dictData["imageQualityType"] = configuration.imageQualityType
            dictData["videoQualityType"] = configuration.videoQualityType
            dictData["maxScreenshots"] = configuration.maxScreenshots
            dictData["maxScreenDuration"] = configuration.maxScreenDuration
            dictData["maskingColor"] = configuration.maskingColor
            dictData["showLocalLogs"] = configuration.showLocalLogs
            dictData["blockedFlutterSDKVersions"] = configuration.blockedFlutterSDKVersions
            dictData["blockedFlutterAppVersions"] = configuration.blockedFlutterAppVersions
            
            let dictId: [String: Any] = ["live_configuration": dictData]
            let jsonData = try JSONSerialization.data(withJSONObject: dictId, options: [.prettyPrinted, .sortedKeys])
            let jsonString = String(data: jsonData, encoding: .utf8)!
            
            DispatchQueue.main.async {
                SwiftMedalliaDxaPlugin.flutterEventSink?(jsonString)
            }
        } catch {
            print("Live Config JSON serialization error: \(error)")
        }
    }
    
    public func performance(_ data: PerformanceFlutter) {

        if(SwiftMedalliaDxaPlugin.flutterEventSink==nil) {return}
        do {
            var isStressed = "none"
            if let firstStressedValue = data.isStressed.first  {
                isStressed = translateDeviceStressedTypeToString(nativeStresstedType: firstStressedValue)
            }
            
            let dictData: [String: Any] = ["cpuUsage": NSNumber(value: data.cpu), "memoryUsage": NSNumber(value:data.memory), "batteryLevel": NSNumber(value:data.battery), "isStressed": isStressed]
            let dictId: [String: Any] = ["performance_metrics": dictData]
            let jsonData = try JSONSerialization.data(withJSONObject: dictId, options: [.prettyPrinted, .sortedKeys])
            
            let jsonString = String(data: jsonData, encoding: .utf8)!

            DispatchQueue.main.async {
                SwiftMedalliaDxaPlugin.flutterEventSink?(jsonString)
            }
        } catch {
            print("Performance JSON serialization error: \(error)")
        }
    }
}
