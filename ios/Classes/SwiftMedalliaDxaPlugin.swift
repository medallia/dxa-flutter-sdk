import Flutter
import UIKit
import MedalliaDXAFlutter

public class SwiftMedalliaDxaPlugin: NSObject, FlutterPlugin, FLTMedalliaDxaNativeApi {
    
    private static var flutterEventSink: FlutterEventSink? = nil
    public static func register(with registrar: FlutterPluginRegistrar) {
        let messenger : FlutterBinaryMessenger = registrar.messenger()
        let api : FLTMedalliaDxaNativeApi & NSObjectProtocol = SwiftMedalliaDxaPlugin.init()
        SetUpFLTMedalliaDxaNativeApi(messenger, api);
        FlutterEventChannel(name: "multiplatform.flutter.streamChannel", binaryMessenger: messenger).setStreamHandler(onPerformanceChangeListener)
    }
    
    public func initializeMsg(_ msg: FLTSessionMessage, completion: @escaping (FLTLiveConfigurationPigeon?, FlutterError?) -> Void) {
        var liveConfiguration: MedalliaDXAFlutter.LiveConfigurationMultiplatform
        
        let nativeConsents: Consent = translateConsentsFlutterToIos(flutterConsents: msg.consents)
        let configuration = Configuration(account: String(describing: msg.account), property: String(describing: msg.property),consent: nativeConsents, crashReporterEnabled: msg.crashReporterEnabled, mobileDataEnable: msg.mobileDataEnabled, enhancedLogsEnabled: msg.enhancedLogs)
        
        liveConfiguration = DXA.initialize(configuration: configuration, multiplatform: Platform(type: .flutter, version: String(describing: msg.version), language: "Dart"), dxaDelegate: self)
                
        let fltLiveConfiguration = buildLiveConfigurationPigeonClass(liveConfiguration: liveConfiguration)
        fltLiveConfiguration.appVersion = DXA.appVersion
        completion(fltLiveConfiguration, nil)
        
    }
    
    public func startScreenMsg(_ msg: FLTStartScreenMessage, completion: @escaping (FlutterError?) -> Void) {
        DXA.startNewScreen(name: msg.screenName, id: msg.screenId)
        completion(nil)
     
    }
    
    public func endScreenMsg(_ msg: FLTEndScreenMessage, completion: @escaping (FlutterError?) -> Void) {
        DXA.endScreen(endRecordingTime: TimeInterval(msg.screenRecordingEndTime/1000))
        completion(nil)
    }
    
    public func setConsentsValue(_ value: Int, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        let nativeConsents: Consent = translateConsentsFlutterToIos(flutterConsents: value)
        DXA.setConsent(nativeConsents)
    }
    
    public func saveScreenshotMsg(_ msg: FLTScreenshotMessage, completion: @escaping (FlutterError?) -> Void) {
        DXA.saveScreenShot(screenshot: msg.screenshotData.data, id: msg.screenId, screenName: msg.screenName, screenShotTime: TimeInterval(msg.startFocusTime/1000))
        completion(nil)
    }
    
    public func sendDimension(withStringMsg msg: FLTDimensionStringMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DXA.send(dimension: msg.dimensionName, value: msg.value)
    }
    
    public func sendDimension(withNumberMsg msg: FLTDimensionNumberMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        
        DXA.send(dimension: msg.dimensionName, value: msg.value)
        
    }
    
    public func sendDimension(withBoolMsg msg: FLTDimensionBoolMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        
        DXA.send(dimension: msg.dimensionName, value: msg.value)
        
    }
    
    public func sendGoalMsg(_ msg: FLTGoalMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        
        guard let goalValue = msg.value as? Float else {
            DXA.send(goal: msg.goal)
            return
        }
        DXA.send(goal: msg.goal, with: goalValue)
        
    }
    
    public func sendErrorErrorMessage(_ errorMessage: String, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DXA.sendError(errorMessage)
    }
    
    public func sendDataOverWifiOnlyValue(_ value: Bool, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DXA.mobileDataEnable = !value
    }
    
    public func sendHttpErrorMsg(_ msg: Int, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DXA.sendHTTPError(statusCode: msg)
    }
    
    public func sendImageQualityImageQuality(_ imageQuality: Int, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        guard let imageQualityValue = ImageQualityType(rawValue: imageQuality) else {
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

    public func setRetentionValue(_ value: Bool, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DXA.setRetention(value)
    }
    
    public func saveLogLog(_ log: String, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DXA.saveLog(message: log)
    }
    
    private func translateConsentsFlutterToIos(flutterConsents value: Int) -> Consent{
        var nativeConsent: Consent
        
        switch value {
        case 0:
            nativeConsent = .none
        case 1:
            nativeConsent = .analytics
        case 2:
            nativeConsent = .analyticsAndRecording
        default:
            nativeConsent = .none
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
    
    
    private func buildLiveConfigurationPigeonClass(liveConfiguration: MedalliaDXAFlutter.LiveConfigurationMultiplatform) -> FLTLiveConfigurationPigeon {
        var showLocalLogs: NSNumber? = nil
        if liveConfiguration.showLocalLogs != nil {
            showLocalLogs = NSNumber(value:liveConfiguration.showLocalLogs!)
        }
        var allowLocalLogs: NSNumber? = nil
        if liveConfiguration.allowLogs != nil {
            allowLocalLogs = NSNumber(value:liveConfiguration.showLocalLogs!)
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
        
        let fltLiveConfiguration = FLTLiveConfigurationPigeon.make(withOverrideUserConfig: NSNumber(value: liveConfiguration.useLiveConfiguration), blockedFlutterSDKVersions: liveConfiguration.blockedFlutterSDKVersions, blockedFlutterAppVersions: liveConfiguration.blockedFlutterAppVersions, maskingColor: liveConfiguration.maskingColor, showLocalLogs: showLocalLogs, allowLocalLogs: allowLocalLogs , imageQualityType: imageQualityType, videoQualityType: videoQualityType, maxScreenshots: maxScreenshots, maxScreenDuration: maxScreenDuration, disableScreenTracking: liveConfiguration.disableScreenTracking, screensMasking: liveConfiguration.screensMasking, appVersion: DXA.appVersion)
        return fltLiveConfiguration
    }
    
    
}
extension SwiftMedalliaDxaPlugin : DXADelegate {
    public func sampling(_ sampling: MedalliaDXAFlutter.SamplingMultiplatform) {

        if(SwiftMedalliaDxaPlugin.flutterEventSink==nil) {return}
        do {
            let samplingFlutterData = SamplingFlutterData(
                stopTrackingDueToSampling: sampling.stopTrackingDueToSampling,
                stopRecordingDueToSampling: sampling.stopRecordingDueToSampling
            )
            
            
            let jsonData = try JSONEncoder().encode(samplingFlutterData)
            var dict = try JSONSerialization.jsonObject(with: jsonData, options: .allowFragments) as? [String: Any]
            if dict == nil {
                throw NSError(domain: "DictError", code: 0, userInfo: [NSLocalizedDescriptionKey: "Dict is nil"])
            }
            dict?["eventChannelId"] = "sampling_data"
            DispatchQueue.main.async {
                SwiftMedalliaDxaPlugin.flutterEventSink?(dict)
            }
        } catch {
            print("Sampling data JSON serialization error: \(error)")
        }
    }
    
    public func liveConfig(_ configuration: MedalliaDXAFlutter.LiveConfigurationMultiplatform) {
        
        if(SwiftMedalliaDxaPlugin.flutterEventSink==nil) {return}
        do {
            
            let liveConfigurationFlutterData = LiveConfigurationFlutterData(
                useLiveConfiguration: configuration.useLiveConfiguration,
                disableScreenTracking: configuration.disableScreenTracking,
                screensMasking: configuration.screensMasking,
                imageQualityType: configuration.imageQualityType,
                videoQualityType: configuration.videoQualityType,
                maxScreenDuration: configuration.maxScreenDuration,
                maxScreenshots: configuration.maxScreenshots,
                maskingColor: configuration.maskingColor,
                showLocalLogs: configuration.showLocalLogs,
                allowLocalLogs: configuration.allowLogs,
                blockedFlutterSDKVersions: configuration.blockedFlutterSDKVersions,
                blockedFlutterAppVersions: configuration.blockedFlutterAppVersions
            )
            
            

            let jsonData: Data = try JSONEncoder().encode(liveConfigurationFlutterData)
            var dict = try JSONSerialization.jsonObject(with: jsonData, options: .allowFragments) as? [String: Any]
            if dict == nil {
                throw NSError(domain: "DictError", code: 0, userInfo: [NSLocalizedDescriptionKey: "Dict is nil"])
            }
            dict?["eventChannelId"] = "live_configuration"
            DispatchQueue.main.async {
                SwiftMedalliaDxaPlugin.flutterEventSink?(dict)
            }
        } catch {
            print("Live Config JSON serialization error: \(error)")
        }
    }
    
    public func performance(_ data: PerformanceMultiplatform) {

        if(SwiftMedalliaDxaPlugin.flutterEventSink==nil) {return}
        do {
            var isStressedString : String
            if let firstStressedValue = data.isStressed.first  {
                isStressedString = translateDeviceStressedTypeToString(nativeStresstedType: firstStressedValue)
            } else{
                isStressedString = "none"
            }
            let performanceFlutterData = PerformanceFlutterData(
                isStressed: isStressedString,
                battery: data.battery,
                memory: data.memory,
                cpu: data.cpu
            )
            
            let jsonData = try JSONEncoder().encode(performanceFlutterData)
            var dict = try JSONSerialization.jsonObject(with: jsonData, options: .allowFragments) as? [String: Any]
            if dict == nil {
                throw NSError(domain: "DictError", code: 0, userInfo: [NSLocalizedDescriptionKey: "Dict is nil"])
            }
            dict?["eventChannelId"] = "performance_metrics"

            DispatchQueue.main.async {
                SwiftMedalliaDxaPlugin.flutterEventSink?(dict)
            }
        } catch {
            print("Performance JSON serialization error: \(error)")
        }
    }

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
}
