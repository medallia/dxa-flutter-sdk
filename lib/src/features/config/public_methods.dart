// ignore_for_file: avoid_positional_boolean_parameters, use_setters_to_change_properties

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/features/autoMasking/auto_masking_enums.dart';
import 'package:medallia_dxa/src/features/consents.dart' as enums;
import 'package:medallia_dxa/src/features/consents.dart';
import 'package:medallia_dxa/src/features/image_quality.dart';
import 'package:medallia_dxa/src/features/manual_analytics/goals_and_dimensions.dart';
import 'package:medallia_dxa/src/features/manual_analytics/http_errors.dart';
import 'package:medallia_dxa/src/features/session_replay/session_replay.dart';
import 'package:medallia_dxa/src/messages.dart';
import 'package:medallia_dxa/src/utility/extensions.dart';
import 'package:medallia_dxa/src/utility/global_settings.dart';
import 'package:medallia_dxa/src/utility/logger_sdk.dart';

//Class to control all public methods so assertions can be thrown and calls
//can be blocked if necessary. The initialize method is the only exception.
class PublicMethodsMedalliaConfig {
  final MedalliaDxaNativeApi _nativeApi;
  final GlobalSettings _globalSettings;
  final HttpErrors _httpErrors;
  final LoggerSDK _loggerSDK;
  final SessionReplay _sessionReplay;
  final GoalsAndDimensions _goalsAndDimensions;
  final NavigatorObserver Function() _getCurrentRouteObserver;
  final Function(enums.MedalliaDxaCustomerConsentType) _setConsentsForFlutter;
  final Function(RouterDelegate, String Function())
      _setRouterDelegateNameCallback;
  final Function(String) _setHomeScreenName;
  final Function(List<String>) _setRecordingDisabledScreenList;
  final Function(List<String>) _setTrackingDisabledScreenList;
  PublicMethodsMedalliaConfig({
    required MedalliaDxaNativeApi nativeApi,
    required GlobalSettings globalSettings,
    required HttpErrors httpErrors,
    required LoggerSDK loggerSDK,
    required SessionReplay sessionReplay,
    required GoalsAndDimensions goalsAndDimensions,
    required NavigatorObserver Function() getCurrentRouteObserver,
    required Function(enums.MedalliaDxaCustomerConsentType)
        setConsentsForFlutter,
    required Function(
      RouterDelegate,
      String Function(),
    )
        setRouterDelegateNameCallback,
    required Function(String) setHomeScreenName,
    required Function(List<String>) setRecordingDisabledScreenList,
    required Function(List<String>) setTrackingDisabledScreenList,
  })  : _nativeApi = nativeApi,
        _globalSettings = globalSettings,
        _httpErrors = httpErrors,
        _loggerSDK = loggerSDK,
        _sessionReplay = sessionReplay,
        _goalsAndDimensions = goalsAndDimensions,
        _getCurrentRouteObserver = getCurrentRouteObserver,
        _setConsentsForFlutter = setConsentsForFlutter,
        _setRouterDelegateNameCallback = setRouterDelegateNameCallback,
        _setHomeScreenName = setHomeScreenName,
        _setRecordingDisabledScreenList = setRecordingDisabledScreenList,
        _setTrackingDisabledScreenList = setTrackingDisabledScreenList;

  NavigatorObserver get currentRouteObserver => _getCurrentRouteObserver();
  void setRouterDelegateNameCallback(
    RouterDelegate routerDelegate,
    String Function() routerNameCallback,
  ) {
    _setRouterDelegateNameCallback(
      routerDelegate,
      routerNameCallback,
    );
  }

  void setHomeScreenName(String screenName) {
    _setHomeScreenName(screenName);
  }

  void setRecordingDisabledScreenList(List<String> recordingDisabledScreens) {
    _setRecordingDisabledScreenList(recordingDisabledScreens);
  }

  void setTrackingDisabledScreenList(List<String> trackingDisabledScreens) {
    _setTrackingDisabledScreenList(trackingDisabledScreens);
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

  ///Only for debug purposes
  Future<String> getSessionId() async {
    final String sessionIdWithPrefix = await _nativeApi.getSessionId();
    return sessionIdWithPrefix.lastIndexOf('-').let((it) {
      return sessionIdWithPrefix.substring(it + 1);
    });
  }

  Future<String> getSessionUrl() async {
    return _nativeApi.getSessionUrl();
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

  /// Enable the Customer Consents list passed as parameter
  Future<void> setConsents(
    enums.MedalliaDxaCustomerConsentType consents,
  ) async {
    _setConsentsForFlutter(consents);
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

  ///Send goals
  Future<void> sendGoal(String goalName, [double? value]) async {
    await _goalsAndDimensions.sendGoal(goalName, value);
  }

  Future<String?> getWebViewProperties() async {
    return _nativeApi.getWebViewProperties();
  }

  void sendDataOverWifiOnly() {
    _nativeApi.sendDataOverWifiOnly();
  }

  Future<void> sendHttpError(
    int statusCode,
  ) async {
    await _httpErrors.sendStatusCode(statusCode);
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

  Future<void> setImageQuality(ImageQuality imageQuality) async {
    _globalSettings.userImageQuality = imageQuality;
    await _nativeApi.sendImageQuality(imageQuality.integerValue());
  }

  void setMaskColor(Color color) {
    _globalSettings.userMaskColor = color;
  }
}
