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
import 'package:flutter/services.dart' as services;
import 'package:yaml/yaml.dart' as yaml_parser;

/// DecibelSdk main class
class DecibelConfig {
  static final DecibelConfig _singleton = DecibelConfig._internal();
  factory DecibelConfig() {
    return _singleton;
  }
  DecibelConfig._internal()
      : _api = DecibelSdkApi(),
        _loadYaml = yaml_parser.loadYaml,
        _rootBundle = services.rootBundle,
        _loggerSDK = LoggerSDK.instance {
    _sessionReplay = SessionReplay.instance..decibelConfig = this;
    _goalsAndDimensions = GoalsAndDimensions(_api);
    _httpErrors = HttpErrors(_api);
  }
  @visibleForTesting
  DecibelConfig.testing(
    this._api,
    this._loadYaml,
    this._goalsAndDimensions,
    this._rootBundle,
    this._sessionReplay,
    this._httpErrors,
    this._loggerSDK,
  );

  final DecibelSdkApi _api;
  final AssetBundle _rootBundle;
  final dynamic Function(
    String yaml,
  ) _loadYaml;
  late SessionReplay _sessionReplay;
  final LoggerSDK _loggerSDK;
  late final GoalsAndDimensions _goalsAndDimensions;
  late final HttpErrors _httpErrors;
  final List<NavigatorObserver> routeObservers = [
    CustomRouteObserver.screenWidgetRouteObserver,
    CustomRouteObserver.generalRouteObserver
  ];

  bool _trackingAllowed = false;
  bool _recordingAllowed = false;
  void setRecordingAllowed(bool value) {
    if (value) {
      _sessionReplay.start();
    } else {
      _sessionReplay.stop();
    }
    _recordingAllowed = value;
  }

  bool get recordingAllowed => _recordingAllowed;
  bool get trackingAllowed => _trackingAllowed;

  /// Initializes DecibelSdk
  Future<void> initialize(
    int account,
    int property,
    List<enums.DecibelCustomerConsentType> consents,
  ) async {
    final yamlString =
        await _rootBundle.loadString('packages/decibel_sdk/pubspec.yaml');
    final yaml_parser.YamlMap parsedYaml =
        _loadYaml(yamlString) as yaml_parser.YamlMap;
    final String version = parsedYaml['version'] as String;
    _setEnableConsentsForFlutter(consents);
    final sessionMessage = SessionMessage()
      ..account = account
      ..property = property
      ..consents = consents.toIndexList()
      ..version = version;
    await _api.initialize(sessionMessage);
  }

  /// Enable the Customer Consents list passed as parameter
  Future<void> setEnableConsents(
    List<enums.DecibelCustomerConsentType> consents,
  ) async {
    _setEnableConsentsForFlutter(consents);
    await _api.setEnableConsents(
      ConsentsMessage()..consents = consents.toIndexList(),
    );
  }

  /// Disable the Customer Consents list passed as parameter
  Future<void> setDisableConsents(
    List<enums.DecibelCustomerConsentType> consents,
  ) async {
    if (consents.contains(enums.DecibelCustomerConsentType.all)) {
      setRecordingAllowed(false);
      _trackingAllowed = false;
    } else {
      if (consents.contains(enums.DecibelCustomerConsentType.tracking)) {
        _trackingAllowed = false;
      }
      if (consents
          .contains(enums.DecibelCustomerConsentType.recordingAndTracking)) {
        setRecordingAllowed(false);
        _trackingAllowed = false;
      }
    }
    await _api.setDisableConsents(
      ConsentsMessage()..consents = consents.toIndexList(),
    );
  }

  ///Set custom dimension with string
  Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) async {
    await _goalsAndDimensions.setDimensionWithString(dimensionName, value);
  }

  ///Set custom dimension with number
  Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) async {
    await _goalsAndDimensions.setDimensionWithNumber(dimensionName, value);
  }

  ///Set custom dimension with bool
  Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) async {
    await _goalsAndDimensions.setDimensionWithBool(
      dimensionName,
      value: value,
    );
  }

  ///Send goals
  Future<void> sendGoal(String goalName, [double? value]) async {
    await _goalsAndDimensions.sendGoal(goalName, value);
  }

  Future<String?> getWebViewProperties() async {
    return _api.getWebViewProperties();
  }

  //Set the automasking configuration
  void setAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    final Set<AutoMaskingType> allWidgets = {};

    for (final element in widgetsToMask) {
      allWidgets.add(AutoMaskingType(autoMaskingTypeEnum: element));
    }
    _sessionReplay.autoMasking.autoMaskingTypeSet = allWidgets;
  }

  ///Only for debug purposes
  Future<String?> getSessionId() async {
    return Future.delayed(Duration(seconds: 3)).then((_) {
      return _api.getSessionId();
    });
  }

  ///Enable Logs for every SDK module.
  ///Call this BEFORE initialize
  void enableAllLogs() => _loggerSDK.all();

  ///Enable Logs only for the selected modules. All modules are disabled by default.
  ///Call this BEFORE initialize
  void enableSelectedLogs({
    bool tracking = false,
    bool sessionReplay = false,
    bool frameTracking = false,
    bool routeObserver = false,
    bool autoMasking = false,
    bool screenWidget = false,
    bool maskWidget = false,
  }) =>
      _loggerSDK.selected(
        enabled: true,
        tracking: tracking,
        sessionReplay: sessionReplay,
        frameTracking: frameTracking,
        routeObserver: routeObserver,
        autoMasking: autoMasking,
        screenWidget: screenWidget,
        maskWidget: maskWidget,
      );
  void sendDataOverWifiOnly() {
    _api.sendDataOverWifiOnly();
  }

  Future<void> sendHttpError(
    int statusCode,
  ) async {
    await _httpErrors.sendStatusCode(statusCode);
  }

  void _setEnableConsentsForFlutter(
    List<enums.DecibelCustomerConsentType> consents,
  ) {
    if (consents.contains(enums.DecibelCustomerConsentType.none)) {
      _trackingAllowed = false;
      setRecordingAllowed(false);
      return;
    }
    if (consents
            .contains(enums.DecibelCustomerConsentType.recordingAndTracking) ||
        consents.contains(enums.DecibelCustomerConsentType.all)) {
      setRecordingAllowed(true);
      _trackingAllowed = true;
      return;
    }
    if (consents.contains(enums.DecibelCustomerConsentType.tracking)) {
      setRecordingAllowed(false);
      _trackingAllowed = true;
    }
  }
}
