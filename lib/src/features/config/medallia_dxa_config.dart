// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: avoid_positional_boolean_parameters

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart' as services;
import 'package:medallia_dxa/src/features/autoMasking/auto_masking_class.dart';
import 'package:medallia_dxa/src/features/config/blocked_public_methods.dart';
import 'package:medallia_dxa/src/features/config/medallia_dxa_class_interface.dart';
import 'package:medallia_dxa/src/features/config/public_methods.dart';
import 'package:medallia_dxa/src/features/consents.dart' as enums;
import 'package:medallia_dxa/src/features/consents.dart';
import 'package:medallia_dxa/src/features/event_channel/classes/live_configuration.dart';
import 'package:medallia_dxa/src/features/event_channel/classes/performance_metrics.dart';
import 'package:medallia_dxa/src/features/event_channel/event_channel_manager.dart';
import 'package:medallia_dxa/src/features/frame_tracking.dart';
import 'package:medallia_dxa/src/features/manual_analytics/goals_and_dimensions.dart';
import 'package:medallia_dxa/src/features/manual_analytics/http_errors.dart';
import 'package:medallia_dxa/src/features/session_replay/screenshot_taker.dart';
import 'package:medallia_dxa/src/features/session_replay/session_replay.dart';
import 'package:medallia_dxa/src/features/tracking/route_tree_constructor.dart';
import 'package:medallia_dxa/src/features/tracking/tracking.dart';
import 'package:medallia_dxa/src/messages.dart';
import 'package:medallia_dxa/src/utility/dependency_injector.dart';
import 'package:medallia_dxa/src/utility/extensions.dart';
import 'package:medallia_dxa/src/utility/global_settings.dart';
import 'package:medallia_dxa/src/utility/logger_sdk.dart';
import 'package:medallia_dxa/src/utility/placeholder_image.dart';
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
        _rootBundle = services.rootBundle {
    _loggerSDK = LoggerSDK(
      isSdkRunning: () {
        return isSdkRunning;
      },
    );
    final frameTracking = FrameTracking(
      postFrameCallback: WidgetsBindingNullSafe.instance!.addPostFrameCallback,
      loggerSDK: _loggerSDK,
    );
    final autoMasking = AutoMasking(loggerSDK: _loggerSDK);
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
    final ScreenshotTaker screenshotTaker = ScreenshotTaker(
      autoMasking: autoMasking,
      widgetsBindingInstance: widgetsBinding,
    );
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
    _tracking = Tracking(
      this,
      _loggerSDK,
      _sessionReplay,
      liveConfiguration,
    );
    _routeTreeConstructor = RouteTreeConstructor(
      config: this,
      widgetsBindingInstance: widgetsBinding,
      startScreen: _tracking.startScreen,
      createScreenVisited: _tracking.createScreenVisited,
      loggerSDK: _loggerSDK,
    );
    _goalsAndDimensions = GoalsAndDimensions(this, _nativeApi, _loggerSDK);
    _httpErrors = HttpErrors(this, _nativeApi, _loggerSDK);
    _publicMethods = PublicMethodsMedalliaConfig(
      nativeApi: _nativeApi,
      globalSettings: _globalSettings,
      goalsAndDimensions: _goalsAndDimensions,
      httpErrors: _httpErrors,
      loggerSDK: _loggerSDK,
      sessionReplay: _sessionReplay,
      getCurrentRouteObserver: _currentRouteObserver,
      setConsentsForFlutter: _setConsentsForFlutter,
      setRouterDelegateNameCallback: _setRouterDelegateNameCallback,
      setHomeScreenName: _setHomeScreenName,
      setRecordingDisabledScreenList: setRecordingDisabledScreenList,
      setTrackingDisabledScreenList: setTrackingDisabledScreenList,
    );
    _blockedPublicMethods = BlockedPublicMethodsMedalliaConfig(
      getCurrentRouteObserver: _currentRouteObserver,
      setRouterDelegateNameCallback: _setRouterDelegateNameCallback,
      setRecordingDisabledScreenList: setRecordingDisabledScreenList,
      setTrackingDisabledScreenList: setTrackingDisabledScreenList,
    );
    DependencyInjector(
      config: this,
      autoMasking: autoMasking,
      frameTracking: frameTracking,
      loggerSdk: _loggerSDK,
      nativeApi: _nativeApi,
      placeholderImageConfig: placeholderImageConfig,
      tracking: _tracking,
      sessionReplay: _sessionReplay,
      eventChannelManager: _eventChannelManager,
      globalSettings: _globalSettings,
      routeTreeConstructor: _routeTreeConstructor,
    );
  }
  @visibleForTesting
  MedalliaDxaConfig.testing({
    required MedalliaDxaNativeApi nativeApi,
    required dynamic Function(String) loadYaml,
    required GoalsAndDimensions goalsAndDimensions,
    required AssetBundle rootBundle,
    required SessionReplay sessionReplay,
    required HttpErrors httpErrors,
    required LoggerSDK loggerSDK,
    required EventChannelManager eventChannelManager,
    required RouteTreeConstructor routeTreeConstructor,
    required Tracking tracking,
    required AutoMasking autoMasking,
    required FrameTracking frameTracking,
    required PlaceholderImageConfig placeholderImageConfig,
    required GlobalSettings globalSettings,
  })  : _nativeApi = nativeApi,
        _loadYaml = loadYaml,
        _goalsAndDimensions = goalsAndDimensions,
        _rootBundle = rootBundle,
        _sessionReplay = sessionReplay,
        _httpErrors = httpErrors,
        _loggerSDK = loggerSDK,
        _eventChannelManager = eventChannelManager,
        _routeTreeConstructor = routeTreeConstructor,
        _tracking = tracking {
    _publicMethods = PublicMethodsMedalliaConfig(
      nativeApi: _nativeApi,
      globalSettings: globalSettings,
      goalsAndDimensions: _goalsAndDimensions,
      httpErrors: _httpErrors,
      loggerSDK: _loggerSDK,
      sessionReplay: _sessionReplay,
      getCurrentRouteObserver: _currentRouteObserver,
      setConsentsForFlutter: _setConsentsForFlutter,
      setRouterDelegateNameCallback: _setRouterDelegateNameCallback,
      setHomeScreenName: _setHomeScreenName,
      setRecordingDisabledScreenList: setRecordingDisabledScreenList,
      setTrackingDisabledScreenList: setTrackingDisabledScreenList,
    );
    _blockedPublicMethods = BlockedPublicMethodsMedalliaConfig(
      getCurrentRouteObserver: _currentRouteObserver,
      setRouterDelegateNameCallback: _setRouterDelegateNameCallback,
      setRecordingDisabledScreenList: setRecordingDisabledScreenList,
      setTrackingDisabledScreenList: setTrackingDisabledScreenList,
    );
    DependencyInjector(
      config: this,
      autoMasking: autoMasking,
      frameTracking: frameTracking,
      loggerSdk: _loggerSDK,
      nativeApi: _nativeApi,
      placeholderImageConfig: placeholderImageConfig,
      tracking: _tracking,
      sessionReplay: _sessionReplay,
      eventChannelManager: _eventChannelManager,
      globalSettings: globalSettings,
      routeTreeConstructor: _routeTreeConstructor,
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
  late final LoggerSDK _loggerSDK;
  late final RouteTreeConstructor _routeTreeConstructor;
  late final GoalsAndDimensions _goalsAndDimensions;
  late final HttpErrors _httpErrors;
  late final EventChannelManager _eventChannelManager;
  late final GlobalSettings _globalSettings;

  bool _trackingAllowed = false;

  bool _recordingAllowed = false;

  bool get recordingAllowed => _recordingAllowed;
  bool get trackingAllowed => _trackingAllowed;
  late MedalliaDxaCustomerConsentType lastConsents;
  bool _initialized = false;
  bool _blocked = false;
  bool get blocked => _blocked;

  bool get isSdkRunning => _initialized && !_blocked;

  late final String sdkVersion;

  /// Initializes MedalliaDxa.
  Future<void> initialize({
    required DxaConfig dxaConfig,
  }) async {
    sdkVersion = await _getVersion();
    lastConsents = dxaConfig.consents;

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
    //set Consents for Flutter after the live configuration, because it
    //bootstraps features that may be blocked.
    _setConsentsForFlutter(dxaConfig.consents);
  }

  NavigatorObserver _currentRouteObserver() =>
      _routeTreeConstructor.getNewObservers();

  void _setRouterDelegateNameCallback(
    RouterDelegate routerDelegate,
    String Function() routerDelegateNameCallback,
  ) {
    _routeTreeConstructor.setRouterDelegate(routerDelegate);
    _routeTreeConstructor
        .setRouterDelegateNameCallback(routerDelegateNameCallback);
    // _customRouteObserver.setRouteInformationProvider(routeInformationProvider);
  }

  void _setHomeScreenName(String screenName) {
    _routeTreeConstructor.homeScreenName = screenName;
  }

  Future<void> _setTrackingAllowed(bool value) async {
    _trackingAllowed = value;
    //Setting tracking to false automatically disables recording too
    if (!value) {
      await _setRecordingAllowed(false);
      if (_blocked) return;
      await _tracking.closeCurrentScreen();
    }
  }

  void setTrackingDisabledScreenList(List<String> trackingDisabledScreens) {
    _tracking.setTrackingDisabledScreenList(trackingDisabledScreens);
  }

  void setRecordingDisabledScreenList(List<String> recordingDisabledScreens) {
    _tracking.setRecordingDisabledScreenList(recordingDisabledScreens);
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
    if (_blocked) return;
    _blocked = true;
    await _setTrackingAllowed(false);
  }

  Future<void> unblockSdk() async {
    if (!_blocked) return;
    _blocked = false;
    _setConsentsForFlutter(lastConsents);
    _tracking.updateTracking();
  }

  Future<String> _getVersion() async {
    final yamlString =
        await _rootBundle.loadString('packages/medallia_dxa/pubspec.yaml');
    final yaml_parser.YamlMap parsedYaml =
        _loadYaml(yamlString) as yaml_parser.YamlMap;
    return parsedYaml['version'] as String;
  }

  void _setConsentsForFlutter(
    enums.MedalliaDxaCustomerConsentType newConsents,
  ) {
    lastConsents = newConsents;
    switch (newConsents) {
      case enums.MedalliaDxaCustomerConsentType.none:
        //Setting tracking to false automatically disables recording too
        _setTrackingAllowed(false);

        break;
      case enums.MedalliaDxaCustomerConsentType.tracking:
        _setRecordingAllowed(false);
        _setTrackingAllowed(true);
        break;
      case enums.MedalliaDxaCustomerConsentType.recordingAndTracking:
        _setRecordingAllowed(true);
        _setTrackingAllowed(true);
        break;
      default:
    }
  }
}
