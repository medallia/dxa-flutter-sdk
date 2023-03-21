// ignore_for_file: avoid_positional_boolean_parameters

import 'dart:async';

import 'package:decibel_sdk/src/features/autoMasking/auto_masking_class.dart';
import 'package:decibel_sdk/src/features/autoMasking/auto_masking_enums.dart';
import 'package:decibel_sdk/src/features/frame_tracking.dart';
import 'package:decibel_sdk/src/features/manual_analytics/goals_and_dimensions.dart';
import 'package:decibel_sdk/src/features/manual_analytics/http_errors.dart';
import 'package:decibel_sdk/src/features/session_replay.dart';
import 'package:decibel_sdk/src/features/tracking.dart';
import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/dependency_injector.dart';
import 'package:decibel_sdk/src/utility/enums.dart' as enums;
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:decibel_sdk/src/utility/logger_sdk.dart';
import 'package:decibel_sdk/src/utility/placeholder_image.dart';
import 'package:decibel_sdk/src/utility/route_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart' as services;
import 'package:yaml/yaml.dart' as yaml_parser;

/// MedalliaDxa main class
class MedalliaDxaConfig {
  static final MedalliaDxaConfig _singleton = MedalliaDxaConfig._internal();
  factory MedalliaDxaConfig() {
    return _singleton;
  }
  MedalliaDxaConfig._internal()
      : _nativeApi = MedalliaDxaNativeApi(),
        _loadYaml = yaml_parser.loadYaml,
        _rootBundle = services.rootBundle,
        _loggerSDK = LoggerSDK.instance {
    final frameTracking = FrameTracking(
      postFrameCallback: WidgetsBindingNullSafe.instance!.addPostFrameCallback,
    );
    final autoMasking = AutoMasking();
    final placeholderImageConfig = PlaceholderImageConfig.instance;
    final WidgetsBinding widgetsBinding = WidgetsBindingNullSafe.instance!;
    final SchedulerBinding schedulerBinding =
        SchedulerBindingNullSafe.instance!;
    final ScreenshotTaker screenshotTaker =
        ScreenshotTaker(autoMasking: autoMasking);
    _sessionReplay = SessionReplay(
      this,
      _loggerSDK,
      frameTracking,
      autoMasking,
      placeholderImageConfig,
      widgetsBinding,
      schedulerBinding,
      screenshotTaker,
      _nativeApi,
    );
    final tracking = Tracking(this, _loggerSDK, _sessionReplay);
    _goalsAndDimensions = GoalsAndDimensions(_nativeApi);
    _httpErrors = HttpErrors(_nativeApi);
    DependencyInjector(
      config: this,
      autoMasking: autoMasking,
      frameTracking: frameTracking,
      loggerSdk: _loggerSDK,
      nativeApi: _nativeApi,
      placeholderImageConfig: placeholderImageConfig,
      tracking: tracking,
      sessionReplay: _sessionReplay,
    );
  }
  @visibleForTesting
  MedalliaDxaConfig.testing(
    this._nativeApi,
    this._loadYaml,
    this._goalsAndDimensions,
    this._rootBundle,
    this._sessionReplay,
    this._httpErrors,
    this._loggerSDK,
    AutoMasking autoMasking,
    FrameTracking frameTracking,
    PlaceholderImageConfig placeholderImageConfig,
    Tracking tracking,
  ) {
    DependencyInjector(
      config: this,
      autoMasking: autoMasking,
      frameTracking: frameTracking,
      loggerSdk: _loggerSDK,
      nativeApi: _nativeApi,
      placeholderImageConfig: placeholderImageConfig,
      tracking: tracking,
      sessionReplay: _sessionReplay,
    );
  }

  final MedalliaDxaNativeApi _nativeApi;
  final AssetBundle _rootBundle;
  final dynamic Function(
    String yaml,
  ) _loadYaml;
  late SessionReplay _sessionReplay;
  final LoggerSDK _loggerSDK;
  late final GoalsAndDimensions _goalsAndDimensions;
  late final HttpErrors _httpErrors;
  late final List<NavigatorObserver> _routeObserversToUse = [
    CustomRouteObserver.screenWidgetRouteObserver,
    CustomRouteObserver.generalRouteObserver
  ];
  final List<NavigatorObserver> currentRouteObservers = [];

  bool _trackingAllowed = false;
  bool _recordingAllowed = false;
  void setRecordingAllowed(bool value) {
    if (value) {
      _sessionReplay.startPeriodicTimer();
    } else {
      _sessionReplay.stopPeriodicTimer();
    }
    _recordingAllowed = value;
  }

  bool get recordingAllowed => _recordingAllowed;
  bool get trackingAllowed => _trackingAllowed;
  bool initialized = false;

  /// Initializes MedalliaDxa
  Future<void> initialize(
    int account,
    int property,
    List<enums.MedalliaDxaCustomerConsentType> consents,
  ) async {
    final String version = await _getVersion();
    _setObservers();
    _setEnableConsentsForFlutter(consents);
    final sessionMessage = SessionMessage(
      account: account,
      property: property,
      consents: consents.toIndexList(),
      version: version,
    );

    await _nativeApi.initialize(sessionMessage);
    initialized = true;
  }

  void _setObservers() {
    if (currentRouteObservers.isEmpty) {
      currentRouteObservers.addAll(_routeObserversToUse);
    }
  }

  Future<String> _getVersion() async {
    final yamlString =
        await _rootBundle.loadString('packages/decibel_sdk/pubspec.yaml');
    final yaml_parser.YamlMap parsedYaml =
        _loadYaml(yamlString) as yaml_parser.YamlMap;
    return parsedYaml['version'] as String;
  }

  /// Enable the Customer Consents list passed as parameter
  Future<void> setEnableConsents(
    List<enums.MedalliaDxaCustomerConsentType> consents,
  ) async {
    _setEnableConsentsForFlutter(consents);
    await _nativeApi.setEnableConsents(
      ConsentsMessage(consents: consents.toIndexList()),
    );
  }

  /// Disable the Customer Consents list passed as parameter
  Future<void> setDisableConsents(
    List<enums.MedalliaDxaCustomerConsentType> consents,
  ) async {
    if (consents.contains(enums.MedalliaDxaCustomerConsentType.all)) {
      setRecordingAllowed(false);
      _trackingAllowed = false;
    } else {
      if (consents.contains(enums.MedalliaDxaCustomerConsentType.tracking)) {
        _trackingAllowed = false;
      }
      if (consents.contains(
        enums.MedalliaDxaCustomerConsentType.recordingAndTracking,
      )) {
        setRecordingAllowed(false);
        _trackingAllowed = false;
      }
    }
    await _nativeApi.setDisableConsents(
      ConsentsMessage(consents: consents.toIndexList()),
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
    assert(initialized);
    return _nativeApi.getWebViewProperties();
  }

  //Set the automasking configuration
  void setAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    final Set<AutoMaskingType> allWidgets = {};

    for (final element in widgetsToMask) {
      allWidgets.add(AutoMaskingType(autoMaskingTypeEnum: element));
    }
    _sessionReplay.autoMasking.autoMaskingTypeSet = allWidgets;
  }

  void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToUnmask) {
    final Set<AutoMaskingType> allWidgets = {};

    for (final element in widgetsToUnmask) {
      allWidgets.add(AutoMaskingType(autoMaskingTypeEnum: element));
    }
    _sessionReplay.autoMasking
        .removeUnmaskedTypesFromAutoMaskingTypeSet(allWidgets);
  }

  ///Only for debug purposes
  Future<String> getSessionId() async {
    assert(initialized);
    return _nativeApi.getSessionId();
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
    _nativeApi.sendDataOverWifiOnly();
  }

  Future<void> sendHttpError(
    int statusCode,
  ) async {
    await _httpErrors.sendStatusCode(statusCode);
  }

  Future<void> enableSessionForExperience(bool value) async {
    return _nativeApi.enableSessionForExperience(value);
  }

  Future<void> enableSessionForAnalysis(bool value) async {
    return _nativeApi.enableSessionForAnalysis(value);
  }

  Future<void> enableSessionForReplay(bool value) async {
    return _nativeApi.enableSessionForReplay(value);
  }

  Future<void> enableScreenForAnalysis(bool value) async {
    return _nativeApi.enableScreenForAnalysis(value);
  }

  void _setEnableConsentsForFlutter(
    List<enums.MedalliaDxaCustomerConsentType> consents,
  ) {
    if (consents.contains(enums.MedalliaDxaCustomerConsentType.none)) {
      _trackingAllowed = false;
      setRecordingAllowed(false);
      return;
    }
    if (consents.contains(
          enums.MedalliaDxaCustomerConsentType.recordingAndTracking,
        ) ||
        consents.contains(enums.MedalliaDxaCustomerConsentType.all)) {
      setRecordingAllowed(true);
      _trackingAllowed = true;
      return;
    }
    if (consents.contains(enums.MedalliaDxaCustomerConsentType.tracking)) {
      setRecordingAllowed(false);
      _trackingAllowed = true;
    }
  }
}
