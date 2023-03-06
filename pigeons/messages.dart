// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:pigeon/pigeon.dart';

// TODO: Enum supported on Pigeon, but not List<Enum>. Waiting to talk about consents change.
// enum DecibelCustomerConsentType {
//   all,
//   recordingAndTracking,
//   tracking,
//   none,
// }

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
  final bool isBackground;
  EndScreenMessage({
    required this.screenName,
    required this.screenId,
    required this.endTime,
    required this.isBackground,
  });
}

class SessionMessage {
  final int account;
  final int property;
  final List<int?> consents;
  final String version;
  const SessionMessage({
    required this.account,
    required this.property,
    required this.consents,
    required this.version,
  });
}

class ConsentsMessage {
  final List<int?> consents;
  const ConsentsMessage({
    required this.consents,
  });
}

class ScreenshotMessage {
  final Uint8List screenshotData;
  final int screenId;
  final String screenName;
  final int startFocusTime;
  const ScreenshotMessage({
    required this.screenshotData,
    required this.screenId,
    required this.screenName,
    required this.startFocusTime,
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

@HostApi()
abstract class MedalliaDxaNativeApi {
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
  void sendDataOverWifiOnly();
  void sendHttpError(int msg);
  void enableSessionForExperience(bool value);
  void enableSessionForAnalysis(bool value);
  void enableSessionForReplay(bool value);
  void enableScreenForAnalysis(bool value);
  @async
  String getWebViewProperties();
  @async
  String getSessionId();
}
