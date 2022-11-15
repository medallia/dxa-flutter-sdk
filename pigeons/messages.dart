import 'package:pigeon/pigeon.dart';

// TODO: Enum supported on Pigeon, but not List<Enum>. Waiting to talk about consents change.
// enum DecibelCustomerConsentType {
//   all,
//   recordingAndTracking,
//   tracking,
//   none,
// }

class StartScreenMessage {
  String? screenName;
  int? screenId;
  int? startTime;
  bool? isBackground;
}

class EndScreenMessage {
  String? screenName;
  int? screenId;
  int? endTime;
  bool? isBackground;
}

class SessionMessage {
  int? account;
  int? property;
  List<int?>? consents;
  String? version;
}

class ConsentsMessage {
  List<int?>? consents;
}

class ScreenshotMessage {
  Uint8List? screenshotData;
  int? screenId;
  String? screenName;
  int? startFocusTime;
}

class DimensionStringMessage {
  String? dimensionName;
  String? value;
}

class DimensionNumberMessage {
  String? dimensionName;
  double? value;
}

class DimensionBoolMessage {
  String? dimensionName;
  bool? value;
}

class GoalMessage {
  String? goal;
  double? value;
}

@HostApi()
abstract class DecibelSdkApi {
  void initialize(SessionMessage msg);
  void startScreen(StartScreenMessage msg);
  void endScreen(EndScreenMessage msg);
  void setEnableConsents(ConsentsMessage msg);
  void setDisableConsents(ConsentsMessage msg);
  void saveScreenshot(ScreenshotMessage msg);
  void sendDimensionWithString(DimensionStringMessage msg);
  void sendDimensionWithNumber(DimensionNumberMessage msg);
  void sendDimensionWithBool(DimensionBoolMessage msg);
  void sendGoal(GoalMessage msg);
  @async
  String getWebViewProperties();
}
