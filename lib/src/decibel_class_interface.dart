// ignore_for_file: avoid_positional_boolean_parameters

import 'package:decibel_sdk/decibel_sdk.dart';
import 'package:decibel_sdk/src/decibel_config.dart';
import 'package:decibel_sdk/src/features/consents.dart' as enums;
import 'package:flutter/material.dart';

class DecibelSdk {
  static void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return MedalliaDxaConfig().disableAutoMasking(widgetsToMask);
  }

  static void enableAllLogs() {
    MedalliaDxaConfig().enableAllLogs();
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
    return MedalliaDxaConfig().enableSelectedLogs(
        tracking: tracking,
        sessionReplay: sessionReplay,
        frameTracking: frameTracking,
        routeObserver: routeObserver,
        autoMasking: autoMasking,
        screenWidget: screenWidget,
        maskWidget: maskWidget,
        manualAnalytics: manualAnalytics);
  }

  static Future<String?> getSessionId() async {
    return MedalliaDxaConfig().getSessionId();
  }

  static Future<String?> getSessionUrl() async {
    return MedalliaDxaConfig().getSessionUrl();
  }

  static Future<String?> getWebViewProperties() async {
    return MedalliaDxaConfig().getWebViewProperties();
  }

  static Future<void> initialize(
    int account,
    int property, {
    enums.DecibelCustomerConsentType consents =
        enums.DecibelCustomerConsentType.recordingAndTracking,
    bool manualScreenTrackingEnabled = false,
  }) async {
    await MedalliaDxaConfig().initialize(
      account,
      property,
      consents: consents,
      manualScreenTrackingEnabled: manualScreenTrackingEnabled,
    );
  }

  static List<NavigatorObserver> get routeObservers =>
      MedalliaDxaConfig().currentRouteObservers;

  static void sendDataOverWifiOnly() {
    return MedalliaDxaConfig().sendDataOverWifiOnly();
  }

  static Future<void> sendGoal(String goalName, [double? value]) {
    return MedalliaDxaConfig().sendGoal(goalName, value);
  }

  static Future<void> sendHttpError(int statusCode) {
    return MedalliaDxaConfig().sendHttpError(statusCode);
  }

  static void setAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return MedalliaDxaConfig().setAutoMasking(widgetsToMask);
  }

  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
    return MedalliaDxaConfig()
        .setDimensionWithBool(dimensionName, value: value);
  }

  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) {
    return MedalliaDxaConfig().setDimensionWithNumber(dimensionName, value);
  }

  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) {
    return MedalliaDxaConfig().setDimensionWithString(dimensionName, value);
  }

  static Future<void> setConsents(
    enums.DecibelCustomerConsentType consents,
  ) {
    return MedalliaDxaConfig().setConsents(consents);
  }

  static void startNewScreen(String name) =>
      MedalliaDxaConfig().startNewScreen(name);

  static Future<void> enableSessionForExperience(bool value) async {
    return MedalliaDxaConfig().enableSessionForExperience(value);
  }

  static Future<void> enableSessionForAnalysis(bool value) async {
    return MedalliaDxaConfig().enableSessionForAnalysis(value);
  }

  static Future<void> enableSessionForReplay(bool value) async {
    return MedalliaDxaConfig().enableSessionForReplay(value);
  }

  static Future<void> enableScreenForAnalysis(bool value) async {
    return MedalliaDxaConfig().enableScreenForAnalysis(value);
  }
}
