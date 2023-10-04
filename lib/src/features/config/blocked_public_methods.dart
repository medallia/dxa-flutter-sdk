import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/features/config/public_methods.dart';

class BlockedPublicMethodsMedalliaConfig
    implements PublicMethodsMedalliaConfig {
  BlockedPublicMethodsMedalliaConfig({
    required NavigatorObserver Function() getCurrentRouteObserver,
    required Function(RouterDelegate, String Function())
        setRouterDelegateNameCallback,
    required Function(List<String>) setTrackingDisabledScreenList,
    required Function(List<String>) setRecordingDisabledScreenList,
  })  : _getCurrentRouteObserver = getCurrentRouteObserver,
        _setRouterDelegateNameCallback = setRouterDelegateNameCallback,
        _setTrackingDisabledScreenList = setTrackingDisabledScreenList,
        _setRecordingDisabledScreenList = setRecordingDisabledScreenList;
  final NavigatorObserver Function() _getCurrentRouteObserver;
  final Function(RouterDelegate, String Function())
      _setRouterDelegateNameCallback;
  final Function(List<String>) _setTrackingDisabledScreenList;
  final Function(List<String>) _setRecordingDisabledScreenList;
  void debugPrintSdkBlockedMessage() {
    assert(() {
      debugPrint('DXA SDK is blocked by liveconfig');

      return true;
    }());
  }

  //This call should not be blocked because otherwise the SDK cannot unblock
  //itself and track correctly
  @override
  NavigatorObserver get currentRouteObserver => _getCurrentRouteObserver();

  //This call should not be blocked because otherwise the SDK cannot unblock
  //itself and track correctly
  @override
  void setRouterDelegateNameCallback(
    RouterDelegate routerDelegate,
    String Function() routerDelegateNameCallback,
  ) {
    _setRouterDelegateNameCallback(
      routerDelegate,
      routerDelegateNameCallback,
    );
  }

  //This call should not be blocked because otherwise the SDK cannot unblock
  //itself and track correctly
  @override
  void setRecordingDisabledScreenList(List<String> recordingDisabledScreens) {
    _setRecordingDisabledScreenList(recordingDisabledScreens);
  }

  //This call should not be blocked because otherwise the SDK cannot unblock
  //itself and track correctly
  @override
  void setTrackingDisabledScreenList(List<String> trackingDisabledScreens) {
    _setTrackingDisabledScreenList(trackingDisabledScreens);
  }

  @override
  void setHomeScreenName(String screenName) {
    debugPrintSdkBlockedMessage();
  }

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
  Future<void> setConsents(MedalliaDxaCustomerConsentType consents) {
    debugPrintSdkBlockedMessage();
    return Future.value();
  }

  @override
  Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
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
}
