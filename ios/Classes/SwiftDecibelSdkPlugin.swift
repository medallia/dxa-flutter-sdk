import Flutter
import UIKit
import MedalliaDXAFlutter

public class SwiftDecibelSdkPlugin: NSObject, FlutterPlugin, FLTMedalliaDxaNativeApi {
        
    public static func register(with registrar: FlutterPluginRegistrar) {
        let messenger : FlutterBinaryMessenger = registrar.messenger()
        let api : FLTMedalliaDxaNativeApi & NSObjectProtocol = SwiftDecibelSdkPlugin.init()
        FLTMedalliaDxaNativeApiSetup(messenger, api);
      }

    public func initializeMsg(_ msg: FLTSessionMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        if  let consents = msg.consents as? Int {
            let nativeConsents: Consent = translateConsentsFlutterToIos(flutterConsents: consents)
            let configuration = Configuration(account: String(describing: msg.account), property: String(describing: msg.property),consent: nativeConsents)
            configuration.endpoint = .production
            DXA.initialize(configuration: configuration, multiplatform: Platform(type: .flutter, version: String(describing: msg.version), language: "Dart"), dxaDelegate: self)
        } else  {
            let configuration = Configuration(account: String(describing: msg.account), property: String(describing: msg.property))
            configuration.endpoint = .production
            DXA.initialize(configuration: configuration, multiplatform: Platform(type: .flutter, version: String(describing: msg.version), language: "Dart"), dxaDelegate: self)
        }
       
    }

    public func startScreenMsg(_ msg: FLTStartScreenMessage, completion: @escaping (FlutterError?) -> Void) {
        
        if let screenId = msg.screenId as? Int{
            DXA.startNewScreen(name: msg.screenName, id: screenId)
            completion(nil)
        }
    }
    
    public func endScreenMsg(_ msg: FLTEndScreenMessage, completion: @escaping (FlutterError?) -> Void) {
           DXA.endScreen()
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
        print(msg.startFocusTime)
        print((msg.startFocusTime as? TimeInterval)! / 1000)
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

    public func getWebViewProperties(completion: (String?, FlutterError?)->Void) {
        let webViewProperties = DXA.webViewProperties
        if webViewProperties != nil {
            completion(webViewProperties, nil);
            return
        }
        
        completion(nil,FlutterError(code: "getWebViewProperties", message: "Unexpect null value, session has not been initalized", details: nil));     
        
    }
    
    public func getSessionId(completion: (String?, FlutterError?)->Void) {
        let sessionId = DXA.sessionId
        if sessionId != nil {
            completion(sessionId,nil);
            return
        }
        
        completion(nil,FlutterError(code: "getSessionId", message: "Unexpect null value, session has not been initalized", details: nil));     
    }

    public func getSessionUrl(completion: (String?, FlutterError?)->Void) {
        let sessionUrl = DXA.sessionURL
        if sessionUrl != nil {
            completion(sessionUrl,nil);
            return
        }
        
        completion(nil,FlutterError(code: "getSessionUrl", message: "Unexpect null value, session has not been initalized", details: nil));     
    }

    public func enableSession(forExperienceValue value: NSNumber, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DXA.enableSessionForExperience(value as! Bool)
    }
    
    public func enableSession(forAnalysisValue value: NSNumber, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DXA.enableSessionForAnalysis(value as! Bool)
    }
    
    public func enableSession(forReplayValue value: NSNumber, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DXA.enableSessionForReplay(value as! Bool)
    }
    
    public func enableScreen(forAnalysisValue value: NSNumber, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DXA.enableScreenForAnalysis(value as! Bool)
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
    
    
}

extension SwiftDecibelSdkPlugin : DXADelegate {
    public func liveConfig(_ configuration: MedalliaDXAFlutter.LiveConfigurationFlutter) {
        print("configuration:")
        print(configuration)
    }
    
    public func performance(_ data: PerformanceFlutter) {
        print("PerformanceFlutter:")
        print(data)
    }
}
