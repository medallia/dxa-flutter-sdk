import Flutter
import MedalliaDXAFlutter
import UIKit

public class MedalliaDxaPlugin: NSObject, FlutterPlugin, MedalliaDxaNativeApiPigeon {

    private static var flutterEventSink: FlutterEventSink? = nil
    public static func register(with registrar: FlutterPluginRegistrar) {
        let messenger: FlutterBinaryMessenger = registrar.messenger()
        let api: MedalliaDxaNativeApiPigeon & NSObjectProtocol = MedalliaDxaPlugin.init()
        MedalliaDxaNativeApiPigeonSetup.setUp(binaryMessenger: messenger, api: api)
        FlutterEventChannel(name: "medallia.dxa.streamChannel", binaryMessenger: messenger)
            .setStreamHandler(onPerformanceChangeListener)
    }
    func initialize(
        msg: SessionMessagePigeon,
        completion: @escaping (Result<LiveConfigurationFromInitializePigeon, any Error>) -> Void
    ) {
        var liveConfiguration: MedalliaDXAFlutter.LiveConfigurationMultiplatform

        let nativeConsents: Consent = translateConsentsFlutterToIos(
            flutterConsents: Int(msg.consents))
        let configuration = Configuration(
            account: String(describing: msg.account), property: String(describing: msg.property),
            consent: nativeConsents, crashReporterEnabled: msg.crashReporterEnabled,
            mobileDataEnable: msg.mobileDataEnabled, enhancedLogsEnabled: msg.enhancedLogs)
        liveConfiguration = DXA.initialize(
            configuration: configuration,
            multiplatform: Platform(
                type: .flutter, version: String(describing: msg.version), language: "Dart"),
            dxaDelegate: self)

        let fltLiveConfiguration = buildLiveConfigurationFromInitializeClass(
            liveConfiguration: liveConfiguration)
        completion(.success(fltLiveConfiguration))
    }

    func startScreen(
        msg: StartScreenMessagePigeon, completion: @escaping (Result<Void, any Error>) -> Void
    ) {
        DXA.startNewScreen(name: msg.screenName, id: Int(msg.screenId), timestampInMilliseconds: Int(msg.startTime))
        completion(.success(()))
    }

    func endScreen(msg: EndScreenMessagePigeon, completion: @escaping (Result<Void, any Error>) -> Void) {
        DXA.endScreen(endRecordingTime: TimeInterval(msg.endTime / 1000))
        completion(.success(()))
    }

    func setConsents(value: Int64) throws {
        let nativeConsents: Consent = translateConsentsFlutterToIos(flutterConsents: Int(value))
        DXA.setConsent(nativeConsents)
    }

    func saveScreenshot(
        msg: ScreenshotMessagePigeon, completion: @escaping (Result<Void, any Error>) -> Void
    ) {
        DXA.saveScreenShot(screenshot: msg.screenshotData.data, isPlaceholder: msg.isPlaceholder, timestampInMilliseconds: Int(msg.startFocusTime))
        completion(.success(()))
    }

    func sendTouchEvents(touchEvents: [TouchEventNativeClassPigeon], completion: @escaping (Result<Void, any Error>) -> Void) {
        let flutterEvents: [FlutterEvent] = touchEvents.compactMap { touchEvent -> FlutterEvent in
            let touchesMapped: [FlutterTouch] = touchEvent.d.compactMap { touchDetail in
                
                guard let x = touchDetail?.x, let y = touchDetail?.y
                else {
                    return nil
                }
                return FlutterTouch(
                    x: Int(x),
                    y: Int(y),
                    offsetX: convertInt64ToInt(touchDetail?.oX),
                    offsetY: convertInt64ToInt(touchDetail?.oY),
                    clickForce: convertInt64ToInt(touchDetail?.cf),
                    scrollID: convertInt64ToInt(touchDetail?.sID),
                    parentScrollID: convertInt64ToInt(touchDetail?.pID)
                )
            }
            return FlutterEvent(
                offset: Int(touchEvent.o),
                data: touchesMapped,
                type: translateTouchType(value: touchEvent.t)
            )
        }
        DXA.sendTouchEvents(touches: flutterEvents)
        completion(.success(()))
    }

    func sendDimensionWithString(msg: DimensionStringMessagePigeon) throws {
        DXA.send(dimension: msg.dimensionName, value: msg.value)
    }

    func sendDimensionWithNumber(msg: DimensionNumberMessagePigeon) throws {
        DXA.send(dimension: msg.dimensionName, value: msg.value)
    }

    func sendDimensionWithBool(msg: DimensionBoolMessagePigeon) throws {
        DXA.send(dimension: msg.dimensionName, value: msg.value)
    }

    func sendGoal(msg: GoalMessagePigeon) throws {

        guard let goalValue = msg.value else {
            DXA.send(goal: msg.goal)
            return
        }
        DXA.send(goal: msg.goal, with: Float(goalValue))

    }

    func sendError(errorMessage: String) throws {
        DXA.sendError(errorMessage)
    }

    func sendDataOverWifiOnly(value: Bool) throws {
        DXA.mobileDataEnable = !value
    }

    func sendHttpError(msg: Int64) throws {
        DXA.sendHTTPError(statusCode: Int(msg))
    }

    func sendImageQuality(imageQuality: Int64) throws {
        guard let imageQualityValue = ImageQualityType(rawValue: Int(imageQuality)) else {
            return
        }
        DXA.setImageQuality(imageQualityValue)
    }

    func setRetention(value: Bool) throws {
        DXA.setRetention(value)

    }

    func saveLog(log: String) throws {
        DXA.saveLog(message: log)
    }

    func getWebViewProperties(completion: @escaping (Result<String, any Error>) -> Void) {
        let webViewProperties = DXA.webViewProperties
        if webViewProperties != nil {
            completion(.success(webViewProperties!))
            return
        }

        completion(
            .failure(
                PigeonError(
                    code: "getWebViewProperties",
                    message: "Unexpected null value, session has not been initialized", details: "")
            ))

    }

    func getSessionId(completion: @escaping (Result<String, any Error>) -> Void) {
        let sessionId = DXA.sessionId
        if sessionId != nil {
            completion(.success(sessionId!))
            return
        }

        completion(
            .failure(
                PigeonError(
                    code: "getSessionId",
                    message: "Unexpected null value, session has not been initialized", details: nil
                )))

    }

    func getSessionUrl(completion: @escaping (Result<String, any Error>) -> Void) {
        //Check to prevent exceptions when multiple sessionURLs are returned
        var hasCompletionBeenCalled = false
        DXA.sessionURL = { sessionUrl in
            if hasCompletionBeenCalled {
                return
            }
            hasCompletionBeenCalled = true
            if sessionUrl != nil {
                completion(.success(sessionUrl!))
                return
            }
            completion(
                .failure(
                    PigeonError(
                        code: "getSessionUrl",
                        message: "Unexpected null value, session has not been initialized",
                        details: nil)))
        }
    }

    private func translateConsentsFlutterToIos(flutterConsents value: Int) -> Consent {
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

            func onListen(
                withArguments arguments: Any?,
                eventSink: @escaping FlutterEventSink
            ) -> FlutterError? {
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

    private func buildLiveConfigurationFromInitializeClass(
        liveConfiguration: MedalliaDXAFlutter.LiveConfigurationMultiplatform
    ) -> LiveConfigurationFromInitializePigeon {

        var imageQualityType: Int64? = nil
        if liveConfiguration.imageQualityType != nil {
            imageQualityType = Int64(liveConfiguration.imageQualityType!)
        }

        var videoQualityType: Int64? = nil
        if liveConfiguration.videoQualityType != nil {
            videoQualityType = Int64(liveConfiguration.videoQualityType!)
        }

        let fltLiveConfiguration = LiveConfigurationFromInitializePigeon(
            overrideUserConfig: liveConfiguration.useLiveConfiguration,
            blockedFlutterSDKVersions: liveConfiguration.blockedFlutterSDKVersions,
            blockedFlutterAppVersions: liveConfiguration.blockedFlutterAppVersions,
            blockedNativeSDKVersions: liveConfiguration.sdkVersionsBlocked,
            maskingColor: liveConfiguration.maskingColor,
            showLocalLogs: liveConfiguration.showLocalLogs,
            allowLocalLogs: liveConfiguration.allowLogs, 
            imageQualityType: imageQualityType,
            videoQualityType: videoQualityType,
            disableScreenTracking: liveConfiguration.disableScreenTracking,
            screensMasking: liveConfiguration.screensMasking,
            appVersion: DXA.appVersion,
            nativeSDKVersion: DXA.sdkVersion
        )
        return fltLiveConfiguration
    }

}
extension MedalliaDxaPlugin: DXADelegate {
    public func sampling(_ sampling: MedalliaDXAFlutter.SamplingMultiplatform) {

        if MedalliaDxaPlugin.flutterEventSink == nil { return }
        do {
            let samplingFlutterData = SamplingFlutterData(
                stopTrackingDueToSampling: sampling.stopTrackingDueToSampling,
                stopRecordingDueToSampling: sampling.stopRecordingDueToSampling
            )

            let jsonData = try JSONEncoder().encode(samplingFlutterData)
            var dict =
                try JSONSerialization.jsonObject(with: jsonData, options: .allowFragments)
                as? [String: Any]
            if dict == nil {
                throw NSError(
                    domain: "DictError", code: 0,
                    userInfo: [NSLocalizedDescriptionKey: "Dict is nil"])
            }
            dict?["eventChannelId"] = "sampling_data"
            DispatchQueue.main.async {
                MedalliaDxaPlugin.flutterEventSink?(dict)
            }
        } catch {
            print("Sampling data JSON serialization error: \(error)")
        }
    }

    public func liveConfig(_ configuration: MedalliaDXAFlutter.LiveConfigurationMultiplatform) {

        if MedalliaDxaPlugin.flutterEventSink == nil { return }
        do {

            let liveConfigurationFlutterData = LiveConfigurationFlutterData(
                useLiveConfiguration: configuration.useLiveConfiguration,
                disableScreenTracking: configuration.disableScreenTracking,
                screensMasking: configuration.screensMasking,
                imageQualityType: configuration.imageQualityType,
                videoQualityType: configuration.videoQualityType,
                maskingColor: configuration.maskingColor,
                showLocalLogs: configuration.showLocalLogs,
                allowLocalLogs: configuration.allowLogs,
                blockedFlutterSDKVersions: configuration.blockedFlutterSDKVersions,
                blockedFlutterAppVersions: configuration.blockedFlutterAppVersions,
                blockedNativeSDKVersions: configuration.sdkVersionsBlocked
            )

            let jsonData: Data = try JSONEncoder().encode(liveConfigurationFlutterData)
            var dict =
                try JSONSerialization.jsonObject(with: jsonData, options: .allowFragments)
                as? [String: Any]
            if dict == nil {
                throw NSError(
                    domain: "DictError", code: 0,
                    userInfo: [NSLocalizedDescriptionKey: "Dict is nil"])
            }
            dict?["eventChannelId"] = "live_configuration"
            DispatchQueue.main.async {
                MedalliaDxaPlugin.flutterEventSink?(dict)
            }
        } catch {
            print("Live Config JSON serialization error: \(error)")
        }
    }

    public func performance(_ data: PerformanceMultiplatform) {

        if MedalliaDxaPlugin.flutterEventSink == nil { return }
        do {
            var isStressedString: String
            if let firstStressedValue = data.isStressed.first {
                isStressedString = translateDeviceStressedTypeToString(
                    nativeStresstedType: firstStressedValue)
            } else {
                isStressedString = "none"
            }
            let performanceFlutterData = PerformanceFlutterData(
                isStressed: isStressedString,
                battery: data.battery,
                memory: data.memory,
                cpu: data.cpu
            )

            let jsonData = try JSONEncoder().encode(performanceFlutterData)
            var dict =
                try JSONSerialization.jsonObject(with: jsonData, options: .allowFragments)
                as? [String: Any]
            if dict == nil {
                throw NSError(
                    domain: "DictError", code: 0,
                    userInfo: [NSLocalizedDescriptionKey: "Dict is nil"])
            }
            dict?["eventChannelId"] = "performance_metrics"

            DispatchQueue.main.async {
                MedalliaDxaPlugin.flutterEventSink?(dict)
            }
        } catch {
            print("Performance JSON serialization error: \(error)")
        }
    }

    private func translateDeviceStressedTypeToString(
        nativeStresstedType value: DeviceStressedTypeFlutter
    ) -> String {
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

    private func translateTouchType(
        value: Int64
    ) -> FlutterTouchType {
        var type: FlutterTouchType

        switch value {
        case 0:
            type = FlutterTouchType.touchBegan
        case 1:
            type = FlutterTouchType.touchMoved
        case 2:
            type = FlutterTouchType.touchEnded
        default:
            type = FlutterTouchType.touchEnded
        }
        return type

    }

    func convertInt64ToInt(_ value: Int64?) -> Int? {
        guard let value = value else {
            return nil
        }
        return Int(value)
    }

}
final class PigeonError: Error {
    let code: String
    let message: String?
    let details: Any?

    init(code: String, message: String?, details: Any?) {
        self.code = code
        self.message = message
        self.details = details
    }

    var localizedDescription: String {
        return
            "PigeonError(code: \(code), message: \(message ?? "<nil>"), details: \(details ?? "<nil>")"
    }
}
