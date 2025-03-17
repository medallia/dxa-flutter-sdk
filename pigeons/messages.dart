// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_positional_boolean_parameters
import 'package:pigeon/pigeon.dart';
//Built using  Flutter 3.0.3

@ConfigurePigeon(
  PigeonOptions(
    dartOut:
        'lib/src/features/native_comms/generated_code/pigeon/pigeon.g.dart',
    dartOptions: DartOptions(),
    javaOut: 'android/src/main/kotlin/com/medallia/medallia_dxa/Messages.java',
    javaOptions: JavaOptions(package: 'com.medallia.medallia_dxa'),
    swiftOut: 'ios/medallia_dxa/Sources/medallia_dxa/Messages.g.swift',
    swiftOptions: SwiftOptions(),
  ),
)
class StartScreenMessagePigeon {
  final String screenName;
  final int screenId;
  final int startTime;
  final bool isBackground;
  const StartScreenMessagePigeon({
    required this.screenName,
    required this.screenId,
    required this.startTime,
    required this.isBackground,
  });
}

class EndScreenMessagePigeon {
  final String screenName;
  final int screenId;
  final int endTime;
  final int screenRecordingEndTime;
  final bool isBackground;
  EndScreenMessagePigeon({
    required this.screenName,
    required this.screenId,
    required this.endTime,
    required this.screenRecordingEndTime,
    required this.isBackground,
  });
}

class SessionMessagePigeon {
  final int account;
  final int property;
  final int consents;
  final String version;
  final bool crashReporterEnabled;
  final bool mobileDataEnabled;
  final bool enhancedLogs;
  const SessionMessagePigeon({
    required this.account,
    required this.property,
    required this.consents,
    required this.version,
    required this.crashReporterEnabled,
    required this.mobileDataEnabled,
    required this.enhancedLogs,
  });
}

class ScreenshotMessagePigeon {
  final Uint8List screenshotData;
  final int screenId;
  final String screenName;
  final int startFocusTime;
  final bool isPlaceholder;
  const ScreenshotMessagePigeon({
    required this.screenshotData,
    required this.screenId,
    required this.screenName,
    required this.startFocusTime,
    required this.isPlaceholder,
  });
}

class DimensionStringMessagePigeon {
  final String dimensionName;
  final String value;
  const DimensionStringMessagePigeon({
    required this.dimensionName,
    required this.value,
  });
}

class DimensionNumberMessagePigeon {
  final String dimensionName;
  final double value;
  const DimensionNumberMessagePigeon({
    required this.dimensionName,
    required this.value,
  });
}

class DimensionBoolMessagePigeon {
  final String dimensionName;
  final bool value;
  const DimensionBoolMessagePigeon({
    required this.dimensionName,
    required this.value,
  });
}

class GoalMessagePigeon {
  final String goal;
  final double? value;
  const GoalMessagePigeon({
    required this.goal,
    required this.value,
  });
}

class LiveConfigurationFromInitializePigeon {
  bool? overrideUserConfig;
  List<String?>? blockedFlutterSDKVersions;
  List<String?>? blockedFlutterAppVersions;
  List<String?>? blockedNativeSDKVersions;
  String? maskingColor;
  bool? showLocalLogs;
  bool? allowLocalLogs;
  int? imageQualityType;
  int? videoQualityType;
  List<String?>? disableScreenTracking;
  List<String?>? screensMasking;
  String? appVersion;
  String? nativeSDKVersion;
  LiveConfigurationFromInitializePigeon({
    this.overrideUserConfig,
    this.blockedFlutterSDKVersions,
    this.blockedFlutterAppVersions,
    this.blockedNativeSDKVersions,
    this.maskingColor,
    this.showLocalLogs,
    this.allowLocalLogs,
    this.imageQualityType,
    this.videoQualityType,
    this.disableScreenTracking,
    this.screensMasking,
    this.appVersion,
    this.nativeSDKVersion,
  });
}

class TouchDetailNativeClassPigeon {
  int y;
  int cf;
  int x;
  int? pID;
  int? oX;
  int? oY;
  int? sID;

  TouchDetailNativeClassPigeon({
    required this.y,
    required this.cf,
    required this.x,
    required this.pID,
    required this.oX,
    required this.oY,
    required this.sID,
  });
}

class TouchEventNativeClassPigeon {
  int o;
  List<TouchDetailNativeClassPigeon?> d;
  int t;
  TouchEventNativeClassPigeon({
    required this.o,
    required this.d,
    required this.t,
  });
}

@HostApi()
abstract class MedalliaDxaNativeApiPigeon {
  @async
  LiveConfigurationFromInitializePigeon initialize(SessionMessagePigeon msg);
  @async
  void startScreen(StartScreenMessagePigeon msg);
  @async
  void endScreen(EndScreenMessagePigeon msg);
  void setConsents(int value);
  @async
  void saveScreenshot(ScreenshotMessagePigeon msg);
  void sendDimensionWithString(DimensionStringMessagePigeon msg);
  void sendDimensionWithNumber(DimensionNumberMessagePigeon msg);
  void sendDimensionWithBool(DimensionBoolMessagePigeon msg);
  void sendGoal(GoalMessagePigeon msg);
  void sendError(String errorMessage);
  void sendDataOverWifiOnly(bool value);
  void sendHttpError(int msg);
  void sendImageQuality(int imageQuality);
  void setRetention(bool value);
  void saveLog(String log);
  @async
  void sendTouchEvents(List<TouchEventNativeClassPigeon> touchEvents);
  @async
  String getWebViewProperties();
  @async
  String getSessionId();
  @async
  String getSessionUrl();
}
