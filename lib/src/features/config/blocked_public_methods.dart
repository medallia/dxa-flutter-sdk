import 'package:decibel_sdk/decibel_sdk.dart';
import 'package:decibel_sdk/src/features/config/public_methods.dart';
import 'package:flutter/widgets.dart';

class BlockedPublicMethodsMedalliaConfig
    implements PublicMethodsMedalliaConfig {
  BlockedPublicMethodsMedalliaConfig({
    required this.getCurrentRouteObservers,
  });
  final List<NavigatorObserver> Function() getCurrentRouteObservers;

  void debugPrintSdkBlockedMessage() {
    assert(() {
      debugPrint('DXA SDK is blocked by liveconfig');

      return true;
    }());
  }

  //This call should not be blocked because otherwise the SDK cannot unblock
  //itself and track correctly
  @override
  List<NavigatorObserver> get currentRouteObservers =>
      getCurrentRouteObservers();

  @override
  void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToUnmask) {
    debugPrintSdkBlockedMessage();
  }

  @override
  void enableAllLogs() {
    debugPrintSdkBlockedMessage();
  }

  @override
  Future<void> enableScreenForAnalysis(bool value) {
    debugPrintSdkBlockedMessage();
    return Future.value();
  }

  @override
  void enableSelectedLogs({
    bool tracking = false,
    bool sessionReplay = false,
    bool frameTracking = false,
    bool routeObserver = false,
    bool autoMasking = false,
    bool screenWidget = false,
    bool maskWidget = false,
    bool manualAnalytics = false,
  }) {
    debugPrintSdkBlockedMessage();
  }

  @override
  Future<void> enableSessionForAnalysis(bool value) {
    debugPrintSdkBlockedMessage();
    return Future.value();
  }

  @override
  Future<void> enableSessionForExperience(bool value) {
    debugPrintSdkBlockedMessage();
    return Future.value();
  }

  @override
  Future<void> enableSessionForReplay(bool value) {
    debugPrintSdkBlockedMessage();
    return Future.value();
  }

  @override
  Future<String> getSessionId() {
    debugPrintSdkBlockedMessage();
    return Future.value('');
  }

  @override
  Future<String> getSessionUrl() {
    debugPrintSdkBlockedMessage();
    return Future.value('');
  }

  @override
  Future<String?> getWebViewProperties() {
    debugPrintSdkBlockedMessage();
    return Future.value();
  }

  @override
  void sendDataOverWifiOnly() {
    debugPrintSdkBlockedMessage();
  }

  @override
  Future<void> sendGoal(String goalName, [double? value]) {
    debugPrintSdkBlockedMessage();
    return Future.value();
  }

  @override
  Future<void> sendHttpError(int statusCode) {
    debugPrintSdkBlockedMessage();
    return Future.value();
  }

  @override
  void setAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    debugPrintSdkBlockedMessage();
  }

  @override
  Future<void> setConsents(DecibelCustomerConsentType consents) {
    debugPrintSdkBlockedMessage();
    return Future.value();
  }

  @override
  Future<void> setDimensionWithBool(String dimensionName,
      {required bool value}) {
    debugPrintSdkBlockedMessage();
    return Future.value();
  }

  @override
  Future<void> setDimensionWithNumber(String dimensionName, double value) {
    debugPrintSdkBlockedMessage();
    return Future.value();
  }

  @override
  Future<void> setDimensionWithString(String dimensionName, String value) {
    debugPrintSdkBlockedMessage();
    return Future.value();
  }

  @override
  Future<void> setImageQuality(ImageQuality imageQuality) {
    debugPrintSdkBlockedMessage();
    return Future.value();
  }

  @override
  void setMaskColor(Color color) {
    debugPrintSdkBlockedMessage();
  }

  @override
  void startNewScreen(String name) {
    debugPrintSdkBlockedMessage();
  }
}
