import 'package:decibel_sdk/src/features/event_channel/event_channel_manager.dart';
import 'package:decibel_sdk/src/features/image_quality.dart';
import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/dependency_injector.dart';
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:flutter/material.dart';

class LiveConfiguration implements EventChannelClass {
  static const String jsonKey = 'live_configuration';

  bool get overrideUserConfig => _overrideUserConfig ?? false;
  Color? get maskingColor => _maskingColor;
  Duration? get videoQualityType => _videoQualityType;
  int? get maxScreenshots => _maxScreenshots;
  Duration? get maxScreenDuration => _maxScreenDuration;
  ImageQuality? get imageQualityType => _imageQualityType;
  bool? _overrideUserConfig;
  List<String?>? _blockedFlutterSDKVersions;
  List<String?>? _blockedFlutterAppVersions;
  bool isCurrentSdkVersionBlocked = false;
  bool isCurrentAppVersionBlocked = false;
  String? _maskingColorString;
  Color? _maskingColor;
  bool? _showLocalLogs;
  int? _imageQualityTypeInt;
  ImageQuality? _imageQualityType;
  int? _videoQualityTypeInt;
  Duration? _videoQualityType;
  int? _maxScreenshots;
  int? _maxScreenDurationInt;
  Duration? _maxScreenDuration;
  List<String?>? _disableScreenTracking;
  List<String?>? _screensMasking;
  String? _appVersion;
  Future<void> runTasksAfterUpdate() async {
    convertNativeValuesToFlutterValues();
    if (_showLocalLogs == true) {
      localLogsEnablingLogic();
    }

    if (videoQualityType != null) {
      DependencyInjector.instance.sessionReplay.updateFrameRate();
    }
    if (_blockedFlutterSDKVersions != null &&
        _blockedFlutterSDKVersions!.isNotEmpty) {
      final String sdkVersion = DependencyInjector.instance.config.sdkVersion;
      if (_blockedFlutterSDKVersions!.contains(sdkVersion)) {
        isCurrentSdkVersionBlocked = true;
        await DependencyInjector.instance.config.blockSdk();
      } else {
        isCurrentSdkVersionBlocked = false;
      }
    }
    if (_blockedFlutterAppVersions != null &&
        _blockedFlutterAppVersions!.isNotEmpty) {
      if (_blockedFlutterAppVersions!.contains(_appVersion)) {
        isCurrentAppVersionBlocked = true;
        await DependencyInjector.instance.config.blockSdk();
      } else {
        isCurrentAppVersionBlocked = false;
      }
    }
    if (DependencyInjector.instance.config.blocked) {
      if (!isCurrentAppVersionBlocked && !isCurrentSdkVersionBlocked) {
        await DependencyInjector.instance.config.unblockSdk();
      }
    }
  }

  void convertNativeValuesToFlutterValues() {
    if (_maskingColorString != null) {
      final String maskingColorSantizedScreen =
          _maskingColorString!.sanitizeStringToHex;
      final int? maskingColorInt =
          int.tryParse(maskingColorSantizedScreen, radix: 16);
      if (maskingColorInt != null) {
        _maskingColor = Color.fromARGB(
          255,
          (maskingColorInt & 0xFF0000) >> 16,
          (maskingColorInt & 0x00FF00) >> 8,
          maskingColorInt & 0x0000FF,
        );
      }
    }
    if (_videoQualityTypeInt != null) {
      _videoQualityType = _convertFromQualityTypeIntToDurationInMiliseconds(
        _videoQualityTypeInt!,
      );
    }
    if (_maxScreenDurationInt != null) {
      _maxScreenDuration = Duration(minutes: _maxScreenDurationInt!);
    }
    if (_imageQualityTypeInt != null) {
      _imageQualityType =
          ImageQualityConverter.getImageQuality(_imageQualityTypeInt!);
    }
  }

  void localLogsEnablingLogic() {
    final loggerInstance = DependencyInjector.instance.loggerSdk;
    if (overrideUserConfig) {
      loggerInstance.all();
      return;
    }
    if (!loggerInstance.enabled) {
      loggerInstance.all();
      return;
    }
  }

  bool isThisScreenNameDisabledForTracking(String screenName) {
    return _disableScreenTracking?.contains(screenName) ?? false;
  }

  bool isThisScreenNameSetToBeMasked(String screenName) {
    return _screensMasking?.contains(screenName) ?? false;
  }

  Duration _convertFromQualityTypeIntToDurationInMiliseconds(
    int videoQualityType,
  ) {
    late final Duration duration;
    switch (videoQualityType) {
      case 0:
        duration = const Duration(milliseconds: 500);
        break;
      case 1:
        duration = const Duration(milliseconds: 250);
        break;
      case 2:
        duration = const Duration(milliseconds: 167);
        break;
      case 3:
        duration = const Duration(milliseconds: 125);

        break;
      case 4:
        duration = const Duration(milliseconds: 100);

        break;
      default:
        duration = const Duration(milliseconds: 250);
    }
    return duration;
  }

  @override
  void updateFromJson(Map<String, dynamic> jsonData) {
    final Map<String, dynamic> json = jsonData[jsonKey] as Map<String, dynamic>;
    _overrideUserConfig =
        json['overrideUserConfig'] as bool? ?? overrideUserConfig;

    _maskingColorString =
        json['maskingColor'] as String? ?? _maskingColorString;
    _showLocalLogs = json['showLocalLogs'] as bool? ?? _showLocalLogs;
    _imageQualityTypeInt =
        json['imageQualityType'] as int? ?? _imageQualityTypeInt;
    _videoQualityTypeInt =
        json['videoQualityType'] as int? ?? _videoQualityTypeInt;
    _maxScreenshots = json['maxScreenshots'] as int? ?? maxScreenshots;
    _maxScreenDurationInt =
        json['maxScreenDuration'] as int? ?? _maxScreenDurationInt;

    _blockedFlutterSDKVersions =
        (json['blockedFlutterSDKVersions'] as List<dynamic>?)
                ?.map((e) => e as String)
                .toList() ??
            _blockedFlutterSDKVersions;
    _blockedFlutterAppVersions =
        (json['blockedFlutterAppVersions'] as List<dynamic>?)
                ?.map((e) => e as String)
                .toList() ??
            _blockedFlutterAppVersions;
    _disableScreenTracking = (json['disableScreenTracking'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        _disableScreenTracking;
    _screensMasking = (json['screensMasking'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        _screensMasking;
    _appVersion = json['appVersion'] as String? ?? _appVersion;
    runTasksAfterUpdate();
  }

  Future<void> updateFromPigeonClass(
    LiveConfigurationPigeon liveConfigurationFromPigeon,
  ) async {
    _overrideUserConfig =
        liveConfigurationFromPigeon.overrideUserConfig ?? overrideUserConfig;
    _blockedFlutterSDKVersions =
        liveConfigurationFromPigeon.blockedFlutterSDKVersions ??
            _blockedFlutterSDKVersions;
    _blockedFlutterAppVersions =
        liveConfigurationFromPigeon.blockedFlutterAppVersions ??
            _blockedFlutterAppVersions;
    _maskingColorString =
        liveConfigurationFromPigeon.maskingColor ?? _maskingColorString;
    _showLocalLogs =
        liveConfigurationFromPigeon.showLocalLogs ?? _showLocalLogs;
    _imageQualityTypeInt =
        liveConfigurationFromPigeon.imageQualityType ?? _imageQualityTypeInt;
    _videoQualityTypeInt =
        liveConfigurationFromPigeon.videoQualityType ?? _videoQualityTypeInt;
    _maxScreenshots =
        liveConfigurationFromPigeon.maxScreenshots ?? maxScreenshots;
    _maxScreenDurationInt =
        liveConfigurationFromPigeon.maxScreenDuration ?? _maxScreenDurationInt;
    _disableScreenTracking =
        liveConfigurationFromPigeon.disableScreenTracking ??
            _disableScreenTracking;
    _screensMasking =
        liveConfigurationFromPigeon.screensMasking ?? _screensMasking;
    _appVersion = liveConfigurationFromPigeon.appVersion ?? _appVersion;
    await runTasksAfterUpdate();
  }
}
