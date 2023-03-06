import Flutter
import UIKit
import DecibelCoreFlutter

public class SwiftDecibelSdkPlugin: NSObject, FlutterPlugin, FLTMedalliaDxaNativeApi {
        
    public static func register(with registrar: FlutterPluginRegistrar) {
        let messenger : FlutterBinaryMessenger = registrar.messenger()
        let api : FLTMedalliaDxaNativeApi & NSObjectProtocol = SwiftDecibelSdkPlugin.init()
        FLTMedalliaDxaNativeApiSetup(messenger, api);
      }

    public func initializeMsg(_ msg: FLTSessionMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        if  let consents = msg.consents as? [Int] {
            DecibelSDK.multiPlatform.initialize(account: String(describing: msg.account),
                                                property: String(describing: msg.property),
                                                consents: consents,
                                                multiPlatform: SDKMultiPlatform(type: .flutter, version: String(describing: msg.version), language: "Dart"))
        } else  {
            DecibelSDK.multiPlatform.initialize(account: String(describing: msg.account),
                                                property: String(describing: msg.property),
                                                multiPlatform: SDKMultiPlatform(type: .flutter, version: String(describing: msg.version), language: "Dart"))
        }
        DecibelSDK.multiPlatform.setLogLevel(.info)

    }

    public func startScreenMsg(_ msg: FLTStartScreenMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        if let screenId = msg.screenId as? Int, let isBackground = msg.isBackground as? Bool{
            DecibelSDK.multiPlatform.set(screen: msg.screenName, id: screenId, fromBackground: isBackground)
        }
    }
    
    public func endScreenMsg(_ msg: FLTEndScreenMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
       if let screenId = msg.screenId as? Int, let isBackground = msg.isBackground as? Bool{
           DecibelSDK.multiPlatform.endScreen(goesToBackground: isBackground)
       }
    }

    public func setEnableConsentsMsg(_ msg: FLTConsentsMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        if let consents = msg.consents as? [Int] {
            DecibelSDK.multiPlatform.setEnableConsents(consents)
        }
    }

    public func setDisableConsentsMsg(_ msg: FLTConsentsMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        if let consents = msg.consents as? [Int] {
            DecibelSDK.multiPlatform.setDisableConsents(consents)
        }
    }

    public func saveScreenshotMsg(_ msg: FLTScreenshotMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        if let screenId = msg.screenId as? Int,
           let startFocusTime = msg.startFocusTime as? TimeInterval {
            DecibelSDK.multiPlatform.saveScreenShot(screenshot: msg.screenshotData.data, id: screenId, screenName: msg.screenName, startFocusTime: startFocusTime)
        }
    }
    
    public func sendDimension(withStringMsg msg: FLTDimensionStringMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DecibelSDK.multiPlatform.send(dimension: msg.dimensionName, withString: msg.value)
    }
    
    public func sendDimension(withNumberMsg msg: FLTDimensionNumberMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
 
        guard let dimensionValue = msg.value as? Double else {
            return
        }
        
        DecibelSDK.multiPlatform.send(dimension: msg.dimensionName, withNumber: dimensionValue)
    }
    
    public func sendDimension(withBoolMsg msg: FLTDimensionBoolMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        
        guard let dimensionValue = msg.value as? Bool else {
            return
        }
        
        DecibelSDK.multiPlatform.send(dimension: msg.dimensionName, withBool: dimensionValue)
    }
    
    public func sendGoalMsg(_ msg: FLTGoalMessage, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {

        guard let goalValue = msg.value as? Float else {
            DecibelSDK.multiPlatform.send(goal: msg.goal)
            return
        }

        DecibelSDK.multiPlatform.send(goal: msg.goal, with: goalValue)
    }
    
    public func sendDataOverWifiOnlyWithError(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DecibelSDK.settings.mobileDataEnable = false;
    }

    public func sendHttpErrorMsg(_ msg: NSNumber, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DecibelSDK.multiPlatform.sendHTTPError(statusCode: Int(truncating: msg))
    }

    public func getWebViewProperties(completion: (String?, FlutterError?)->Void) {
        completion(DecibelSDK.multiPlatform.getWebViewProperties(), nil);
        
    }
    
    public func getSessionId(completion: (String?, FlutterError?)->Void) {
        let sessionId = DecibelSDK.multiPlatform.getSessionId()
        if sessionId != nil {
            completion(sessionId,nil);
            return
        }
        
        completion(nil,FlutterError(code: "getSessionId", message: "Unexpect null value, session has not been initalized", details: nil));     
        }

    public func enableSession(forExperienceValue value: NSNumber, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DecibelSDK.multiPlatform.enableSessionForExperience(value as! Bool)

    }
    
    public func enableSession(forAnalysisValue value: NSNumber, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DecibelSDK.multiPlatform.enableSessionForAnalysis(value as! Bool)
    }
    
    public func enableSession(forReplayValue value: NSNumber, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DecibelSDK.multiPlatform.enableSessionForReplay(value as! Bool)
    }
    
    public func enableScreen(forAnalysisValue value: NSNumber, error: AutoreleasingUnsafeMutablePointer<FlutterError?>) {
        DecibelSDK.multiPlatform.enableScreenForAnalysis(value as! Bool)
    }
    
    
}
