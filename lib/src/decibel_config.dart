// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: avoid_positional_boolean_parameters

import 'dart:async';

import 'package:decibel_sdk/src/decibel_class_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart' as services;
import 'package:yaml/yaml.dart' as yaml_parser;

import 'package:decibel_sdk/src/features/autoMasking/auto_masking_class.dart';
import 'package:decibel_sdk/src/features/autoMasking/auto_masking_enums.dart';
import 'package:decibel_sdk/src/features/consents.dart' as enums;
import 'package:decibel_sdk/src/features/event_channel/classes/live_configuration.dart';
import 'package:decibel_sdk/src/features/event_channel/classes/performance_metrics.dart';
import 'package:decibel_sdk/src/features/event_channel/event_channel_manager.dart';
import 'package:decibel_sdk/src/features/frame_tracking.dart';
import 'package:decibel_sdk/src/features/image_quality.dart';
import 'package:decibel_sdk/src/features/manual_analytics/goals_and_dimensions.dart';
import 'package:decibel_sdk/src/features/manual_analytics/http_errors.dart';
import 'package:decibel_sdk/src/features/manual_tracking/manual_tracking.dart';
import 'package:decibel_sdk/src/features/session_replay.dart';
import 'package:decibel_sdk/src/features/tracking/route_observer.dart';
import 'package:decibel_sdk/src/features/tracking/tracking.dart';
import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/dependency_injector.dart';
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:decibel_sdk/src/utility/global_settings.dart';
import 'package:decibel_sdk/src/utility/logger_sdk.dart';
import 'package:decibel_sdk/src/utility/placeholder_image.dart';

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
        _loggerSDK = LoggerSDK.instance,
        _customRouteObserver =
            CustomRouteObserver(RouteObserverOtherNavigators()) {
    final frameTracking = FrameTracking(
      postFrameCallback: WidgetsBindingNullSafe.instance!.addPostFrameCallback,
    );
    final autoMasking = AutoMasking();
    final placeholderImageConfig = PlaceholderImageConfig.instance;
    final WidgetsBinding widgetsBinding = WidgetsBindingNullSafe.instance!;
    final SchedulerBinding schedulerBinding =
        SchedulerBindingNullSafe.instance!;

    final PerformanceMetrics performanceMetrics = PerformanceMetrics();

    final LiveConfiguration liveConfiguration = LiveConfiguration();
    final DefaultGlobalSettings defaultGlobalSettings = DefaultGlobalSettings();
    _globalSettings = GlobalSettings(
      liveConfiguration: liveConfiguration,
      defaultGlobalSettings: defaultGlobalSettings,
    );
    _eventChannelManager = EventChannelManager(
      performanceMetrics: performanceMetrics,
      liveConfiguration: liveConfiguration,
    );
    final ScreenshotTaker screenshotTaker =
        ScreenshotTaker(autoMasking: autoMasking, medalliaDxaConfig: this);
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
      performanceMetrics,
      _globalSettings,
    );
    final Tracking tracking =
        Tracking(this, _loggerSDK, _sessionReplay, liveConfiguration);
    _manualTracking = ManualTracking();
    _goalsAndDimensions = GoalsAndDimensions(this, _nativeApi, _loggerSDK);
    _httpErrors = HttpErrors(this, _nativeApi, _loggerSDK);

    DependencyInjector(
      config: this,
      autoMasking: autoMasking,
      frameTracking: frameTracking,
      loggerSdk: _loggerSDK,
      nativeApi: _nativeApi,
      placeholderImageConfig: placeholderImageConfig,
      tracking: tracking,
      manualTracking: _manualTracking,
      sessionReplay: _sessionReplay,
      eventChannelManager: _eventChannelManager,
      globalSettings: _globalSettings,
      customRouteObserver: _customRouteObserver,
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
    this._manualTracking,
    this._eventChannelManager,
    this._customRouteObserver,
    AutoMasking autoMasking,
    FrameTracking frameTracking,
    PlaceholderImageConfig placeholderImageConfig,
    Tracking tracking,
    GlobalSettings globalSettings,
  ) {
    DependencyInjector(
      config: this,
      autoMasking: autoMasking,
      frameTracking: frameTracking,
      loggerSdk: _loggerSDK,
      nativeApi: _nativeApi,
      placeholderImageConfig: placeholderImageConfig,
      tracking: tracking,
      manualTracking: _manualTracking,
      sessionReplay: _sessionReplay,
      eventChannelManager: _eventChannelManager,
      globalSettings: globalSettings,
      customRouteObserver: _customRouteObserver,
    );
  }

  final MedalliaDxaNativeApi _nativeApi;
  final AssetBundle _rootBundle;
  final dynamic Function(
    String yaml,
  ) _loadYaml;
  late SessionReplay _sessionReplay;
  final LoggerSDK _loggerSDK;
  final CustomRouteObserver _customRouteObserver;
  late final ManualTracking _manualTracking;
  late final GoalsAndDimensions _goalsAndDimensions;
  late final HttpErrors _httpErrors;
  late final EventChannelManager _eventChannelManager;
  late final GlobalSettings _globalSettings;
  List<NavigatorObserver> get currentRouteObservers => _initialized
      ? _customRouteObserver.getNewObservers(
          automaticTracking: automaticTracking,
        )
      : [];

  bool _trackingAllowed = false;
  bool _recordingAllowedValue = false;
  bool get _recordingAllowed => _recordingAllowedValue;
  set _recordingAllowed(bool value) {
    _recordingAllowedValue = value;
    if (value) {
      _sessionReplay.startPeriodicTimer();
    } else {
      _sessionReplay.stopPeriodicTimer();
      if (_blocked) return;
      _sessionReplay.sendPlaceholderImage();
    }
  }

  bool get recordingAllowed => _recordingAllowed;
  bool get trackingAllowed => _trackingAllowed;
  bool _initialized = false;
  bool _blocked = false;
  void blockSdk() {
    _blocked = true;
    _trackingAllowed = false;
    _recordingAllowed = false;
  }

  bool get isSdkRunning => _initialized && !_blocked;
  late bool automaticTracking;
  late final String sdkVersion;

  /// Initializes MedalliaDxa
  Future<void> initialize({
    required DxaConfig dxaConfig,
  }) async {
    sdkVersion = await _getVersion();
    _manualTracking.enabled = dxaConfig.manualScreenTrackingEnabled;
    automaticTracking = !dxaConfig.manualScreenTrackingEnabled;

    final sessionMessage = SessionMessage(
      account: dxaConfig.account,
      property: dxaConfig.property,
      consents: dxaConfig.consents.integerValue(),
      version: sdkVersion,
      crashReporterEnabled: dxaConfig.crashReporterEnabled,
      mobileDataEnabled: dxaConfig.mobileDataEnabled,
    );

    final LiveConfigurationPigeon liveConfigurationPigeon =
        await _nativeApi.initialize(sessionMessage);

    _eventChannelManager.liveConfiguration
        .updateFromPigeonClass(liveConfigurationPigeon);
    if (!_eventChannelManager.liveConfiguration.isCurrentSdkVersionBlocked) {
      _setEnableConsentsForFlutter(dxaConfig.consents);
      _initialized = true;
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
  Future<void> setConsents(
    enums.DecibelCustomerConsentType consents,
  ) async {
    _setEnableConsentsForFlutter(consents);
    await _nativeApi.setConsents(
      consents.integerValue(),
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
    assert(_initialized);
    return _nativeApi.getWebViewProperties();
  }

  //Set the automasking configuration
  void setAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    final Set<AutoMaskingType> allWidgets = {};

    for (final element in widgetsToMask) {
      allWidgets.add(AutoMaskingType(enumType: element));
    }
    _sessionReplay.autoMasking.autoMaskingTypeSet = allWidgets;
  }

  void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToUnmask) {
    final Set<AutoMaskingType> allWidgets = {};

    for (final element in widgetsToUnmask) {
      allWidgets.add(AutoMaskingType(enumType: element));
    }
    _sessionReplay.autoMasking
        .removeUnmaskedTypesFromAutoMaskingTypeSet(allWidgets);
  }

  ///Only for debug purposes
  Future<String> getSessionId() async {
    assert(_initialized);
    final String sessionIdWithPrefix = await _nativeApi.getSessionId();
    return sessionIdWithPrefix.lastIndexOf('-').let((it) {
      return sessionIdWithPrefix.substring(it + 1);
    });
  }

  Future<String> getSessionUrl() async {
    assert(_initialized);
    return _nativeApi.getSessionUrl();
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
    bool manualAnalytics = false,
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
        manualAnalytics: manualAnalytics,
      );
  void sendDataOverWifiOnly() {
    _nativeApi.sendDataOverWifiOnly();
  }

  Future<void> sendHttpError(
    int statusCode,
  ) async {
    await _httpErrors.sendStatusCode(statusCode);
  }

  void setMaskColor(Color color) {
    _globalSettings.userMaskColor = color;
  }

  Future<void> setImageQuality(ImageQuality imageQuality) async {
    _globalSettings.userImageQuality = imageQuality;
    await _nativeApi.sendImageQuality(imageQuality.integerValue());
  }

  void startNewScreen(String name) {
    _manualTracking.startNewScreen(name);
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
    enums.DecibelCustomerConsentType consents,
  ) {
    switch (consents) {
      case enums.DecibelCustomerConsentType.none:
        _trackingAllowed = false;
        _recordingAllowed = false;

        break;
      case enums.DecibelCustomerConsentType.tracking:
        _recordingAllowed = false;
        _trackingAllowed = true;
        break;
      case enums.DecibelCustomerConsentType.recordingAndTracking:
        _recordingAllowed = true;
        _trackingAllowed = true;
        break;
      default:
    }
  }
}
