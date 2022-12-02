import 'dart:async';

import 'package:decibel_sdk/src/features/session_replay.dart';
import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/enums.dart' as enums;
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:decibel_sdk/src/utility/route_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yaml/yaml.dart';

/// DecibelSdk main class
class DecibelSdk {
  static DecibelSdkApi? _apiInstance;

  static DecibelSdkApi get _api {
    return _apiInstance ??= DecibelSdkApi();
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
    final dimension = DimensionStringMessage()
      ..dimensionName = dimensionName
      ..value = value;
    await _api.sendDimensionWithString(dimension);
  }

  ///Set custom dimension with number
  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) async {
    final dimension = DimensionNumberMessage()
      ..dimensionName = dimensionName
      ..value = value;
    await _api.sendDimensionWithNumber(dimension);
  }

  ///Set custom dimension with bool
  static Future<void> setDimensionWithBool(
    String dimensionName, {
    bool value = false,
  }) async {
    final dimension = DimensionBoolMessage()
      ..dimensionName = dimensionName
      ..value = value;
    await _api.sendDimensionWithBool(dimension);
  }

  ///Send goals
  static Future<void> sendGoal(String goalName, [double? value]) async {
    final goal = GoalMessage()
      ..goal = goalName
      ..value = value;
    await _api.sendGoal(goal);
  }

  static Future<String?> getWebViewProperties() async {
    return _api.getWebViewProperties();
  }

  //Set the automasking configuration
  static void setAutoMasking(Set<enums.AutoMaskingType> widgetsToMask) {
    SessionReplay.instance.autoMasking.autoMaskingTypeSet = widgetsToMask;
  }

  static Future<String?> getSessionId() async {
    return _api.getSessionId();
  }
}
