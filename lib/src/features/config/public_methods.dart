import 'dart:async';

import 'package:decibel_sdk/src/features/autoMasking/auto_masking_enums.dart';
import 'package:decibel_sdk/src/features/consents.dart' as enums;
import 'package:decibel_sdk/src/features/consents.dart';
import 'package:decibel_sdk/src/features/image_quality.dart';
import 'package:decibel_sdk/src/features/manual_analytics/goals_and_dimensions.dart';
import 'package:decibel_sdk/src/features/manual_analytics/http_errors.dart';
import 'package:decibel_sdk/src/features/manual_tracking/manual_tracking.dart';
import 'package:decibel_sdk/src/features/session_replay.dart';

import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:decibel_sdk/src/utility/global_settings.dart';
import 'package:decibel_sdk/src/utility/logger_sdk.dart';
import 'package:flutter/material.dart';

//Class to control all public methods so assertions can be thrown and calls
//can be blocked if necessary. The initialize method is the only exception.
class PublicMethodsMedalliaConfig {
  final MedalliaDxaNativeApi _nativeApi;
  final GlobalSettings _globalSettings;
  final ManualTracking _manualTracking;
  final HttpErrors _httpErrors;
  final LoggerSDK _loggerSDK;
  final SessionReplay _sessionReplay;
  final GoalsAndDimensions _goalsAndDimensions;
  final List<NavigatorObserver> Function() _getCurrentRouteObservers;
  final Function(enums.DecibelCustomerConsentType) _setConsentsForFlutter;
  PublicMethodsMedalliaConfig({
    required MedalliaDxaNativeApi nativeApi,
    required GlobalSettings globalSettings,
    required ManualTracking manualTracking,
    required HttpErrors httpErrors,
    required LoggerSDK loggerSDK,
    required SessionReplay sessionReplay,
    required GoalsAndDimensions goalsAndDimensions,
    required List<NavigatorObserver> Function() getCurrentRouteObservers,
    required Function(enums.DecibelCustomerConsentType) setConsentsForFlutter,
  })  : _nativeApi = nativeApi,
        _globalSettings = globalSettings,
        _manualTracking = manualTracking,
        _httpErrors = httpErrors,
        _loggerSDK = loggerSDK,
        _sessionReplay = sessionReplay,
        _goalsAndDimensions = goalsAndDimensions,
        _getCurrentRouteObservers = getCurrentRouteObservers,
        _setConsentsForFlutter = setConsentsForFlutter;

  List<NavigatorObserver> get currentRouteObservers =>
      _getCurrentRouteObservers();

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
    enums.DecibelCustomerConsentType consents,
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

  void startNewScreen(String name) {
    _manualTracking.startNewScreen(name);
  }
}
