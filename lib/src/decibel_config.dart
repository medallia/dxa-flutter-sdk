import 'dart:async';

import 'package:decibel_sdk/src/features/autoMasking/auto_masking_enums.dart';
import 'package:decibel_sdk/src/features/manual_analytics/goals_and_dimensions.dart';
import 'package:decibel_sdk/src/features/manual_analytics/http_errors.dart';
import 'package:decibel_sdk/src/features/session_replay.dart';
import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/enums.dart' as enums;
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:decibel_sdk/src/utility/logger_sdk.dart';
import 'package:decibel_sdk/src/utility/route_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yaml/yaml.dart';

/// DecibelSdk main class
class DecibelSdk {
  static DecibelSdkApi? _apiInstance;
  static GoalsAndDimensions? _goalsAndDimensionsInstance;
  static HttpErrors? _httpErrosInstance;

  static DecibelSdkApi get _api {
    return _apiInstance ??= DecibelSdkApi();
  }

  static GoalsAndDimensions get _goalsAndDimensions {
    return _goalsAndDimensionsInstance ??= GoalsAndDimensions(_api);
  }

  static HttpErrors get _httpErrors {
    return _httpErrosInstance ??= HttpErrors(_api);
  }

  static final List<NavigatorObserver> routeObservers = [
    CustomRouteObserver.screenWidgetRouteObserver,
    CustomRouteObserver.generalRouteObserver
  ];

  /// Initializes DecibelSdk
  static Future<void> initialize(
    int account,
    int property, [
    List<enums.DecibelCustomerConsentType>? consents,
  ]) async {
    final yamlString =
        await rootBundle.loadString('packages/decibel_sdk/pubspec.yaml');
    final YamlMap parsedYaml = loadYaml(yamlString) as YamlMap;
    final String version = parsedYaml['version'] as String;
    final sessionMessage = SessionMessage()
      ..account = account
      ..property = property
      ..consents = consents?.toIndexList()
      ..version = version;
    await _api.initialize(sessionMessage);
    if (consents != null) {
      if (consents.contains(enums.DecibelCustomerConsentType.all) ||
          consents.contains(
            enums.DecibelCustomerConsentType.recordingAndTracking,
          )) {
        await SessionReplay.instance.newScreen();
      }
    }
  }

  /// Enable the Customer Consents list passed as parameter
  static Future<void> setEnableConsents(
    List<enums.DecibelCustomerConsentType> consents,
  ) async {
    await _api.setEnableConsents(
      ConsentsMessage()..consents = consents.toIndexList(),
    );
    if (consents.contains(enums.DecibelCustomerConsentType.all) ||
        consents
            .contains(enums.DecibelCustomerConsentType.recordingAndTracking)) {
      SessionReplay.instance.start();
    }
  }

  /// Disable the Customer Consents list passed as parameter
  static Future<void> setDisableConsents(
    List<enums.DecibelCustomerConsentType> consents,
  ) async {
    await _api.setDisableConsents(
      ConsentsMessage()..consents = consents.toIndexList(),
    );
    if (consents.contains(enums.DecibelCustomerConsentType.all) ||
        consents
            .contains(enums.DecibelCustomerConsentType.recordingAndTracking)) {
      SessionReplay.instance.stop();
    }
  }

  ///Set custom dimension with string
  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) async {
    await _goalsAndDimensions.setDimensionWithString(dimensionName, value);
  }

  ///Set custom dimension with number
  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) async {
    await _goalsAndDimensions.setDimensionWithNumber(dimensionName, value);
  }

  ///Set custom dimension with bool
  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) async {
    await _goalsAndDimensions.setDimensionWithBool(
      dimensionName,
      value: value,
    );
  }

  ///Send goals
  static Future<void> sendGoal(String goalName, [double? value]) async {
    await _goalsAndDimensions.sendGoal(goalName, value);
  }

  static Future<String?> getWebViewProperties() async {
    return _api.getWebViewProperties();
  }

  //Set the automasking configuration
  static void setAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    final Set<AutoMaskingType> allWidgets = {};

    for (final element in widgetsToMask) {
      allWidgets.add(AutoMaskingType(autoMaskingTypeEnum: element));
    }
    SessionReplay.instance.autoMasking.autoMaskingTypeSet = allWidgets;
  }

  ///Only for debug purposes
  static Future<String?> getSessionId() async {
    return Future.delayed(Duration(seconds: 3)).then((_) {
      return _api.getSessionId();
    });
  }

  ///Enable Logs for every SDK module.
  ///Call this BEFORE initialize
  static void enableAllLogs() => LoggerSDK.all();

  ///Enable Logs only for the selected modules. All modules are disabled by default.
  ///Call this BEFORE initialize
  static void enableSelectedLogs({
    bool tracking = false,
    bool sessionReplay = false,
    bool frameTracking = false,
    bool routeObserver = false,
    bool autoMasking = false,
    bool screenWidget = false,
    bool maskWidget = false,
  }) =>
      LoggerSDK.selected(
        enabled: true,
        tracking: tracking,
        sessionReplay: sessionReplay,
        frameTracking: frameTracking,
        routeObserver: routeObserver,
        autoMasking: autoMasking,
        screenWidget: screenWidget,
        maskWidget: maskWidget,
      );
  static void sendDataOverWifiOnly() {
    _api.sendDataOverWifiOnly();
  }

  static Future<void> sendHttpError(
    int statusCode,
  ) async {
    await _httpErrors.sendStatusCode(statusCode);
  }
}
