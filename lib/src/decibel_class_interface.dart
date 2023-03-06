import 'package:decibel_sdk/decibel_sdk.dart';
import 'package:decibel_sdk/src/decibel_config.dart';
import 'package:decibel_sdk/src/utility/enums.dart' as enums;
import 'package:flutter/material.dart';

class DecibelSdk {
  static void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return DecibelConfig().disableAutoMasking(widgetsToMask);
  }

  static void enableAllLogs() {
    DecibelConfig().enableAllLogs();
  }

  static void enableSelectedLogs({
    bool tracking = false,
    bool sessionReplay = false,
    bool frameTracking = false,
    bool routeObserver = false,
    bool autoMasking = false,
    bool screenWidget = false,
    bool maskWidget = false,
  }) {
    return DecibelConfig().enableSelectedLogs(
      tracking: tracking,
      sessionReplay: sessionReplay,
      frameTracking: frameTracking,
      routeObserver: routeObserver,
      autoMasking: autoMasking,
      screenWidget: screenWidget,
      maskWidget: maskWidget,
    );
  }

  static Future<String?> getSessionId() async {
    return DecibelConfig().getSessionId();
  }

  static Future<String?> getWebViewProperties() async {
    return DecibelConfig().getWebViewProperties();
  }

  static Future<void> initialize(
    int account,
    int property, [
    List<enums.DecibelCustomerConsentType> consents = const [
      enums.DecibelCustomerConsentType.all
    ],
  ]) async {
    await DecibelConfig().initialize(account, property, consents);
  }

  static List<NavigatorObserver> get routeObservers =>
      DecibelConfig().currentRouteObservers;

  static void sendDataOverWifiOnly() {
    return DecibelConfig().sendDataOverWifiOnly();
  }

  static Future<void> sendGoal(String goalName, [double? value]) {
    return DecibelConfig().sendGoal(goalName, value);
  }

  static Future<void> sendHttpError(int statusCode) {
    return DecibelConfig().sendHttpError(statusCode);
  }

  static void setAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return DecibelConfig().setAutoMasking(widgetsToMask);
  }

  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
    return DecibelConfig().setDimensionWithBool(dimensionName, value: value);
  }

  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) {
    return DecibelConfig().setDimensionWithNumber(dimensionName, value);
  }

  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) {
    return DecibelConfig().setDimensionWithString(dimensionName, value);
  }

  static Future<void> setDisableConsents(
    List<enums.DecibelCustomerConsentType> consents,
  ) {
    return DecibelConfig().setDisableConsents(consents);
  }

  static Future<void> setEnableConsents(
    List<enums.DecibelCustomerConsentType> consents,
  ) {
    return DecibelConfig().setEnableConsents(consents);
  }

  static Future<void> enableSessionForExperience(bool value) async {
    return DecibelConfig().enableSessionForExperience(value);
  }

  static Future<void> enableSessionForAnalysis(bool value) async {
    return DecibelConfig().enableSessionForAnalysis(value);
  }

  static Future<void> enableSessionForReplay(bool value) async {
    return DecibelConfig().enableSessionForReplay(value);
  }

  static Future<void> enableScreenForAnalysis(bool value) async {
    return DecibelConfig().enableScreenForAnalysis(value);
  }
}
