// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_positional_boolean_parameters
import 'package:pigeon/pigeon.dart';
//Built using  Flutter 3.0.3

class StartScreenMessage {
  final String screenName;
  final int screenId;
  final int startTime;
  final bool isBackground;
  const StartScreenMessage({
    required this.screenName,
    required this.screenId,
    required this.startTime,
    required this.isBackground,
  });
}

class EndScreenMessage {
  final String screenName;
  final int screenId;
  final int endTime;
  final int screenRecordingEndTime;
  final bool isBackground;
  EndScreenMessage({
    required this.screenName,
    required this.screenId,
    required this.endTime,
    required this.screenRecordingEndTime,
    required this.isBackground,
  });
}

class SessionMessage {
  final int account;
  final int property;
  final int consents;
  final String version;
  final bool crashReporterEnabled;
  final bool mobileDataEnabled;
  final bool enhancedLogs;
  const SessionMessage({
    required this.account,
    required this.property,
    required this.consents,
    required this.version,
    required this.crashReporterEnabled,
    required this.mobileDataEnabled,
    required this.enhancedLogs,
  });
}

class ScreenshotMessage {
  final Uint8List screenshotData;
  final int screenId;
  final String screenName;
  final int startFocusTime;
  final bool isPlaceholder;
  const ScreenshotMessage({
    required this.screenshotData,
    required this.screenId,
    required this.screenName,
    required this.startFocusTime,
    required this.isPlaceholder,
  });
}

class DimensionStringMessage {
  final String dimensionName;
  final String value;
  const DimensionStringMessage({
    required this.dimensionName,
    required this.value,
  });
}

class DimensionNumberMessage {
  final String dimensionName;
  final double value;
  const DimensionNumberMessage({
    required this.dimensionName,
    required this.value,
  });
}

class DimensionBoolMessage {
  final String dimensionName;
  final bool value;
  const DimensionBoolMessage({
    required this.dimensionName,
    required this.value,
  });
}

class GoalMessage {
  final String goal;
  final double? value;
  const GoalMessage({
    required this.goal,
    required this.value,
  });
}

class LiveConfigurationPigeon {
  bool? overrideUserConfig;
  List<String?>? blockedFlutterSDKVersions;
  List<String?>? blockedFlutterAppVersions;
  String? maskingColor;
  bool? showLocalLogs;
  bool? allowLocalLogs;
  int? imageQualityType;
  int? videoQualityType;
  List<String?>? disableScreenTracking;
  List<String?>? screensMasking;
  String? appVersion;
  LiveConfigurationPigeon({
    this.overrideUserConfig,
    this.blockedFlutterSDKVersions,
    this.blockedFlutterAppVersions,
    this.maskingColor,
    this.showLocalLogs,
    this.allowLocalLogs,
    this.imageQualityType,
    this.videoQualityType,
    this.disableScreenTracking,
    this.screensMasking,
    this.appVersion,
  });
}

@HostApi()
abstract class MedalliaDxaNativeApi {
  @async
  LiveConfigurationPigeon initialize(SessionMessage msg);
  @async
  void startScreen(StartScreenMessage msg);
  @async
  void endScreen(EndScreenMessage msg);
  void setConsents(int value);
  @async
  void saveScreenshot(ScreenshotMessage msg);
  void sendDimensionWithString(DimensionStringMessage msg);
  void sendDimensionWithNumber(DimensionNumberMessage msg);
  void sendDimensionWithBool(DimensionBoolMessage msg);
  void sendGoal(GoalMessage msg);
  void sendError(String errorMessage);
  void sendDataOverWifiOnly(bool value);
  void sendHttpError(int msg);
  void sendImageQuality(int imageQuality);
  void setRetention(bool value);
  void saveLog(String log);
  @async
  String getWebViewProperties();
  @async
  String getSessionId();
  @async
  String getSessionUrl();
}
