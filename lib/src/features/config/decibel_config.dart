// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: avoid_positional_boolean_parameters

import 'dart:async';

import 'package:decibel_sdk/src/features/autoMasking/auto_masking_class.dart';
import 'package:decibel_sdk/src/features/config/blocked_public_methods.dart';
import 'package:decibel_sdk/src/features/config/decibel_class_interface.dart';
import 'package:decibel_sdk/src/features/config/public_methods.dart';
import 'package:decibel_sdk/src/features/consents.dart' as enums;
import 'package:decibel_sdk/src/features/consents.dart';
import 'package:decibel_sdk/src/features/event_channel/classes/live_configuration.dart';
import 'package:decibel_sdk/src/features/event_channel/classes/performance_metrics.dart';
import 'package:decibel_sdk/src/features/event_channel/event_channel_manager.dart';
import 'package:decibel_sdk/src/features/frame_tracking.dart';
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
    _tracking = Tracking(this, _loggerSDK, _sessionReplay, liveConfiguration);
    _manualTracking = ManualTracking();
    _goalsAndDimensions = GoalsAndDimensions(this, _nativeApi, _loggerSDK);
    _httpErrors = HttpErrors(this, _nativeApi, _loggerSDK);
    _publicMethods = PublicMethodsMedalliaConfig(
      nativeApi: _nativeApi,
      globalSettings: _globalSettings,
      goalsAndDimensions: _goalsAndDimensions,
      httpErrors: _httpErrors,
      loggerSDK: _loggerSDK,
      manualTracking: _manualTracking,
      sessionReplay: _sessionReplay,
      getCurrentRouteObservers: _currentRouteObservers,
      setConsentsForFlutter: _setConsentsForFlutter,
    );
    _blockedPublicMethods = BlockedPublicMethodsMedalliaConfig(
      getCurrentRouteObservers: _currentRouteObservers,
    );
    DependencyInjector(
      config: this,
      autoMasking: autoMasking,
      frameTracking: frameTracking,
      loggerSdk: _loggerSDK,
      nativeApi: _nativeApi,
      placeholderImageConfig: placeholderImageConfig,
      tracking: _tracking,
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
    this._tracking,
    AutoMasking autoMasking,
    FrameTracking frameTracking,
    PlaceholderImageConfig placeholderImageConfig,
    GlobalSettings globalSettings,
  ) {
    _publicMethods = PublicMethodsMedalliaConfig(
      nativeApi: _nativeApi,
      globalSettings: globalSettings,
      goalsAndDimensions: _goalsAndDimensions,
      httpErrors: _httpErrors,
      loggerSDK: _loggerSDK,
      manualTracking: _manualTracking,
      sessionReplay: _sessionReplay,
      getCurrentRouteObservers: _currentRouteObservers,
      setConsentsForFlutter: _setConsentsForFlutter,
    );
    _blockedPublicMethods = BlockedPublicMethodsMedalliaConfig(
      getCurrentRouteObservers: _currentRouteObservers,
    );
    DependencyInjector(
      config: this,
      autoMasking: autoMasking,
      frameTracking: frameTracking,
      loggerSdk: _loggerSDK,
      nativeApi: _nativeApi,
      placeholderImageConfig: placeholderImageConfig,
      tracking: _tracking,
      manualTracking: _manualTracking,
      sessionReplay: _sessionReplay,
      eventChannelManager: _eventChannelManager,
      globalSettings: globalSettings,
      customRouteObserver: _customRouteObserver,
    );
  }

  final MedalliaDxaNativeApi _nativeApi;
  late final PublicMethodsMedalliaConfig _publicMethods;
  late final BlockedPublicMethodsMedalliaConfig _blockedPublicMethods;
  PublicMethodsMedalliaConfig get publicMethods {
    assert(_initialized, 'DXA SDK is stopped, it must be initialized');
    return blocked ? _blockedPublicMethods : _publicMethods;
  }

  final AssetBundle _rootBundle;
  final dynamic Function(
    String yaml,
  ) _loadYaml;
  late SessionReplay _sessionReplay;
  late Tracking _tracking;
  final LoggerSDK _loggerSDK;
  final CustomRouteObserver _customRouteObserver;
  late final ManualTracking _manualTracking;
  late final GoalsAndDimensions _goalsAndDimensions;
  late final HttpErrors _httpErrors;
  late final EventChannelManager _eventChannelManager;
  late final GlobalSettings _globalSettings;

  bool _trackingAllowed = false;

  bool _recordingAllowed = false;

  bool get recordingAllowed => _recordingAllowed;
  bool get trackingAllowed => _trackingAllowed;
  late DecibelCustomerConsentType lastConsents;
  bool _initialized = false;
  bool _blocked = false;
  bool get blocked => _blocked;

  bool get isSdkRunning => _initialized && !_blocked;
  late bool automaticTracking;
  late final String sdkVersion;

  /// Initializes MedalliaDxa.
  Future<void> initialize({
    required DxaConfig dxaConfig,
  }) async {
    sdkVersion = await _getVersion();
    lastConsents = dxaConfig.consents;
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
    _initialized = true;
    //Update LiveConfig
    await _eventChannelManager.liveConfiguration
        .updateFromPigeonClass(liveConfigurationPigeon);
    if (_eventChannelManager.liveConfiguration.isCurrentSdkVersionBlocked) {
      return;
    }
    if (_eventChannelManager.liveConfiguration.isCurrentAppVersionBlocked) {
      return;
    }
    _setConsentsForFlutter(dxaConfig.consents);
  }

  List<NavigatorObserver> _currentRouteObservers() => _initialized
      ? _customRouteObserver.getNewObservers(
          automaticTracking: automaticTracking,
        )
      : [];

  Future<void> _setTrackingAllowed(bool value) async {
    _trackingAllowed = value;
    //Setting tracking to false automatically disables recording too
    if (!value) {
      await _setRecordingAllowed(false);
      if (_blocked) return;
      await _tracking.closeCurrentScreen();
    }
  }

  Future<void> _setRecordingAllowed(bool value) async {
    _recordingAllowed = value;
    if (value) {
      _sessionReplay.startPeriodicTimer();
    } else {
      _sessionReplay.stopPeriodicTimer();
      if (_blocked) return;
      await _sessionReplay.sendPlaceholderImage();
    }
  }

  Future<void> blockSdk() async {
    _blocked = true;
    await _setTrackingAllowed(false);
  }

  Future<void> unblockSdk() async {
    if (!_blocked) return;
    _blocked = false;
    _setConsentsForFlutter(lastConsents);
  }

  Future<String> _getVersion() async {
    final yamlString =
        await _rootBundle.loadString('packages/decibel_sdk/pubspec.yaml');
    final yaml_parser.YamlMap parsedYaml =
        _loadYaml(yamlString) as yaml_parser.YamlMap;
    return parsedYaml['version'] as String;
  }

  void _setConsentsForFlutter(
    enums.DecibelCustomerConsentType newConsents,
  ) {
    lastConsents = newConsents;
    switch (newConsents) {
      case enums.DecibelCustomerConsentType.none:
        //Setting tracking to false automatically disables recording too
        _setTrackingAllowed(false);

        break;
      case enums.DecibelCustomerConsentType.tracking:
        _setRecordingAllowed(false);
        _setTrackingAllowed(true);
        break;
      case enums.DecibelCustomerConsentType.recordingAndTracking:
        _setRecordingAllowed(true);
        _setTrackingAllowed(true);
        break;
      default:
    }
  }
}
