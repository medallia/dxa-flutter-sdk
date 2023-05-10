// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:decibel_sdk/src/features/event_channel/event_channel_manager.dart';
import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/dependency_injector.dart';

class LiveConfiguration implements EventChannelClass {
  static const String jsonKey = 'live_configuration';
  bool? overrideUserConfig;
  List<String?>? blockedFlutterSDKVersions;
  List<String?>? blockedFlutterAppVersions;
  String? maskingColor;
  bool? showLocalLogs;
  int? imageQualityType;
  int? maxScreenshots;
  int? maxScreenDuration;
  List<String?>? disableScreenTracking;
  List<String?>? screensMasking;
  LiveConfiguration({
    this.overrideUserConfig,
    this.blockedFlutterSDKVersions,
    this.blockedFlutterAppVersions,
    this.maskingColor,
    this.showLocalLogs,
    this.imageQualityType,
    this.maxScreenshots,
    this.maxScreenDuration,
    this.disableScreenTracking,
    this.screensMasking,
  });

  void runTasksAfterUpdate() {
    if (showLocalLogs == true) {
      DependencyInjector.instance.loggerSdk.all();
    }
  }

  @override
  void updateFromJson(Map<String, dynamic> jsonData) {
    final Map<String, dynamic> json = jsonData[jsonKey] as Map<String, dynamic>;
    overrideUserConfig =
        json['overrideUserConfig'] as bool? ?? overrideUserConfig;

    maskingColor = json['maskingColor'] as String? ?? maskingColor;
    showLocalLogs = json['showLocalLogs'] as bool? ?? showLocalLogs;
    imageQualityType = json['imageQualityType'] as int? ?? imageQualityType;
    maxScreenshots = json['maxScreenshots'] as int? ?? maxScreenshots;
    maxScreenDuration = json['maxScreenDuration'] as int? ?? maxScreenDuration;

    blockedFlutterSDKVersions =
        (json['blockedFlutterSDKVersions'] as List<dynamic>?)
                ?.map((e) => e as String)
                .toList() ??
            blockedFlutterSDKVersions;
    blockedFlutterAppVersions =
        (json['blockedFlutterAppVersions'] as List<dynamic>?)
                ?.map((e) => e as String)
                .toList() ??
            blockedFlutterAppVersions;
    disableScreenTracking = (json['disableScreenTracking'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        disableScreenTracking;
    screensMasking = (json['screensMasking'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        screensMasking;

    runTasksAfterUpdate();
  }

  void updateFromPigeon(LiveConfigurationPigeon liveConfigurationFromPigeon) {
    overrideUserConfig =
        liveConfigurationFromPigeon.overrideUserConfig ?? overrideUserConfig;
    blockedFlutterSDKVersions =
        liveConfigurationFromPigeon.blockedFlutterSDKVersions ??
            blockedFlutterSDKVersions;
    blockedFlutterAppVersions =
        liveConfigurationFromPigeon.blockedFlutterAppVersions ??
            blockedFlutterAppVersions;
    maskingColor = liveConfigurationFromPigeon.maskingColor ?? maskingColor;
    showLocalLogs = liveConfigurationFromPigeon.showLocalLogs ?? showLocalLogs;
    imageQualityType =
        liveConfigurationFromPigeon.imageQualityType ?? imageQualityType;
    maxScreenshots =
        liveConfigurationFromPigeon.maxScreenshots ?? maxScreenshots;
    maxScreenDuration =
        liveConfigurationFromPigeon.maxScreenDuration ?? maxScreenDuration;
    disableScreenTracking = liveConfigurationFromPigeon.disableScreenTracking ??
        disableScreenTracking;
    screensMasking =
        liveConfigurationFromPigeon.screensMasking ?? screensMasking;
    runTasksAfterUpdate();
  }

  @override
  String toString() {
    return 'LiveConfiguration(useLiveConfiguration: $overrideUserConfig, blockedFlutterSDKVersions: $blockedFlutterSDKVersions, blockedFlutterAppVersions: $blockedFlutterAppVersions, maskingColor: $maskingColor, showLocalLogs: $showLocalLogs, imageQualityType: $imageQualityType, maxScreenshots: $maxScreenshots, maxScreenDuration: $maxScreenDuration, disableScreenTracking: $disableScreenTracking, screensMasking: $screensMasking)';
  }
}
