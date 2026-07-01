//

import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/ov17384723.dart';
import 'package:medallia_dxa/src/r441315456.dart';
import 'package:medallia_dxa/src/gr736528719.dart' as enums;

class MedalliaDxa {
  static U391383294 get _mx194954286 {
    assert(() {
      if (!Q859070433().v282130385) {
        debugPrint('MedalliaDxa must be initialized before calling any method');
      }
      return true;
    }());
    return Q859070433().s505117997;
  }

  static void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _mx194954286.v1049607495(widgetsToMask);
  }

  static Future<String?> getSessionId() async {
    return _mx194954286.nfu964152495();
  }

  static Future<String?> getSessionUrl() async {
    return _mx194954286.i153017823();
  }

  static Future<String?> getWebViewProperties() async {
    return _mx194954286.gnz64205953();
  }

  static Future<void> initialize({required DxaConfig dxaConfig}) async {
    await Q859070433().jj416742557(d182436460: dxaConfig);
  }

  static NavigatorObserver get routeObserver =>
      _mx194954286.zmo929328128;

  static void setRouterDelegateAndScreenNameCallback({
    required RouterDelegate routerDelegate,
    required String Function() screenNameCallback,
  }) {
    _mx194954286.t55450961(
      routerDelegate,
      screenNameCallback,
    );
  }

  static void setOverridenScreenNameCallback(
    String? Function(RouteSettings) screenNameCallback,
  ) {
    _mx194954286.en280651811(screenNameCallback);
  }

  @Deprecated(
    'Use instead [setAlternativeScreenNames] to change the default screen name',
  )
  static void setHomeScreenName(String screenName) {
    _mx194954286.mv612932564(screenName);
  }

  //
  static void setAlternativeScreenNames(Map<String, String> alternativeNames) {
    _mx194954286.y553736172(alternativeNames);
  }

  static void setRecordingDisabledScreenList(
    List<String> recordingDisabledScreens,
  ) {
    _mx194954286.c690467422(recordingDisabledScreens);
  }

  static void setTrackingDisabledScreenList(
    List<String> trackingDisabledScreens,
  ) {
    _mx194954286.pn972093151(trackingDisabledScreens);
  }

  static void startNewScreenName(String newScreenName) {
    _mx194954286.g393527904(newScreenName);
  }

  static void sendDataOverWifiOnly(bool value) {
    return _mx194954286.lgz270944075(value);
  }

  static Future<void> sendGoal(String goalName, [double? value]) {
    return _mx194954286.m591150297(goalName, value);
  }

  static Future<void> sendHttpError(int statusCode) {
    return _mx194954286.wc433068936(statusCode);
  }

  static Future<void> sendError(String errorMessage) {
    return _mx194954286.i575266416(errorMessage);
  }

  static void setMaskColor(Color color) {
    _mx194954286.lz257569191(color.withAlpha(255));
  }

  static void setImageQuality(ImageQuality imageQuality) {
    _mx194954286.re383027060(imageQuality);
  }

  static void enableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _mx194954286.yc36339059(widgetsToMask);
  }

  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
    return _mx194954286.t947202075(dimensionName, lgn510790059: value);
  }

  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) {
    return _mx194954286.qh66991907(dimensionName, value);
  }

  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) {
    return _mx194954286.ss777156654(dimensionName, value);
  }

  static Future<void> setConsents(
    enums.MedalliaDxaCustomerConsentType consents,
  ) {
    return _mx194954286.mc941173335(consents);
  }

  static Future<void> setRetention(bool value) async {
    return _mx194954286.s504668292(value);
  }
}

class DxaConfig {
  final int property;
  final int account;
  final enums.MedalliaDxaCustomerConsentType consents;

  final bool crashReporterEnabled;
  final bool mobileDataEnabled;
  final bool enhancedLogsEnabled;
  DxaConfig({
    required this.property,
    required this.account,
    this.consents = enums.MedalliaDxaCustomerConsentType.analyticsAndRecording,
    this.crashReporterEnabled = true,
    this.mobileDataEnabled = true,
    this.enhancedLogsEnabled = false,
  });
}
