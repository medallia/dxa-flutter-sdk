// ignore_for_file: avoid_positional_boolean_parameters

import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/features/config/medallia_dxa_config.dart';
import 'package:medallia_dxa/src/features/config/public_methods.dart';
import 'package:medallia_dxa/src/features/consents.dart' as enums;

class MedalliaDxa {
  static PublicMethodsMedalliaConfig get _publicMethods => config.publicMethods;
  static MedalliaDxaConfig config = MedalliaDxaConfig();
  static void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _publicMethods.disableAutoMasking(widgetsToMask);
  }

  static void enableAllLogs() {
    _publicMethods.enableAllLogs();
  }

  static void enableSelectedLogs({
    bool tracking = false,
    bool sessionReplay = false,
    bool frameTracking = false,
    bool routeObserver = false,
    bool autoMasking = false,
    bool screenWidget = false,
    bool maskWidget = false,
    bool manualAnalytics = false,
  }) {
    return _publicMethods.enableSelectedLogs(
      tracking: tracking,
      sessionReplay: sessionReplay,
      frameTracking: frameTracking,
      routeObserver: routeObserver,
      autoMasking: autoMasking,
      screenWidget: screenWidget,
      maskWidget: maskWidget,
      manualAnalytics: manualAnalytics,
    );
  }

  static Future<String?> getSessionId() async {
    return _publicMethods.getSessionId();
  }

  static Future<String?> getSessionUrl() async {
    return _publicMethods.getSessionUrl();
  }

  static Future<String?> getWebViewProperties() async {
    return _publicMethods.getWebViewProperties();
  }

  static Future<void> initialize({required DxaConfig dxaConfig}) async {
    await MedalliaDxaConfig().initialize(
      dxaConfig: dxaConfig,
    );
  }

  static NavigatorObserver get routeObserver =>
      _publicMethods.currentRouteObserver;

  static void setRouterDelegateAndScreenNameCallback({
    required RouterDelegate routerDelegate,
    required String Function() screenNameCallback,
  }) {
    _publicMethods.setRouterDelegateNameCallback(
      routerDelegate,
      screenNameCallback,
    );
  }

  static void setHomeScreenName(String screenName) {
    _publicMethods.setHomeScreenName(screenName);
  }

  static void setRecordingDisabledScreenList(
    List<String> recordingDisabledScreens,
  ) {
    _publicMethods.setRecordingDisabledScreenList(recordingDisabledScreens);
  }

  static void setTrackingDisabledScreenList(
    List<String> trackingDisabledScreens,
  ) {
    _publicMethods.setTrackingDisabledScreenList(trackingDisabledScreens);
  }

  static void sendDataOverWifiOnly() {
    return _publicMethods.sendDataOverWifiOnly();
  }

  static Future<void> sendGoal(String goalName, [double? value]) {
    return _publicMethods.sendGoal(goalName, value);
  }

  static Future<void> sendHttpError(int statusCode) {
    return _publicMethods.sendHttpError(statusCode);
  }

  static void setMaskColor(Color color) {
    _publicMethods.setMaskColor(color.withAlpha(255));
  }

  static void setImageQuality(ImageQuality imageQuality) {
    _publicMethods.setImageQuality(imageQuality);
  }

  static void setAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _publicMethods.setAutoMasking(widgetsToMask);
  }

  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
    return _publicMethods.setDimensionWithBool(dimensionName, value: value);
  }

  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) {
    return _publicMethods.setDimensionWithNumber(dimensionName, value);
  }

  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) {
    return _publicMethods.setDimensionWithString(dimensionName, value);
  }

  static Future<void> setConsents(
    enums.MedalliaDxaCustomerConsentType consents,
  ) {
    return _publicMethods.setConsents(consents);
  }

  static Future<void> enableSessionForExperience(bool value) async {
    return _publicMethods.enableSessionForExperience(value);
  }

  static Future<void> enableSessionForAnalysis(bool value) async {
    return _publicMethods.enableSessionForAnalysis(value);
  }

  static Future<void> enableSessionForReplay(bool value) async {
    return _publicMethods.enableSessionForReplay(value);
  }

  static Future<void> enableScreenForAnalysis(bool value) async {
    return _publicMethods.enableScreenForAnalysis(value);
  }
}

class DxaConfig {
  final int property;
  final int account;
  final enums.MedalliaDxaCustomerConsentType consents;

  final bool crashReporterEnabled;
  final bool mobileDataEnabled;
  DxaConfig({
    required this.property,
    required this.account,
    this.consents = enums.MedalliaDxaCustomerConsentType.recordingAndTracking,
    this.crashReporterEnabled = true,
    this.mobileDataEnabled = true,
  });
}
