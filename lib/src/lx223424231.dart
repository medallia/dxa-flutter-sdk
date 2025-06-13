//

import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/wsu17385396.dart';
import 'package:medallia_dxa/src/e441315879.dart';
import 'package:medallia_dxa/src/aj736529384.dart' as enums;

class MedalliaDxa {
  static Ia391383641 get _b194954889 {
    assert(() {
      if (!V859069766().q282129782) {
        debugPrint('MedalliaDxa must be initialized before calling any method');
      }
      return true;
    }());
    return V859069766().l505118602;
  }

  static void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _b194954889.kz1049608160(widgetsToMask);
  }

  static Future<String?> getSessionId() async {
    return _b194954889.x964152840();
  }

  static Future<String?> getSessionUrl() async {
    return _b194954889.x153018232();
  }

  static Future<String?> getWebViewProperties() async {
    return _b194954889.k64206374();
  }

  static Future<void> initialize({required DxaConfig dxaConfig}) async {
    await V859069766().a416742970(fh182436043: dxaConfig);
  }

  static NavigatorObserver get routeObserver =>
      _b194954889.crh929328807;

  static void setRouterDelegateAndScreenNameCallback({
    required RouterDelegate routerDelegate,
    required String Function() screenNameCallback,
  }) {
    _b194954889.con55451638(
      routerDelegate,
      screenNameCallback,
    );
  }

  static void setOverridenScreenNameCallback(
    String? Function(RouteSettings) screenNameCallback,
  ) {
    _b194954889.et280652420(screenNameCallback);
  }

  @Deprecated(
    'Use instead [setAlternativeScreenNames] to change the default screen name',
  )
  static void setHomeScreenName(String screenName) {
    _b194954889.snn612931955(screenName);
  }

  //
  static void setAlternativeScreenNames(Map<String, String> alternativeNames) {
    _b194954889.jnm553735499(alternativeNames);
  }

  static void setRecordingDisabledScreenList(
    List<String> recordingDisabledScreens,
  ) {
    _b194954889.vuq690467065(recordingDisabledScreens);
  }

  static void setTrackingDisabledScreenList(
    List<String> trackingDisabledScreens,
  ) {
    _b194954889.xg972092536(trackingDisabledScreens);
  }

  static void startNewScreenName(String newScreenName) {
    _b194954889.p393527495(newScreenName);
  }

  static void sendDataOverWifiOnly(bool value) {
    return _b194954889.pk270943724(value);
  }

  static Future<void> sendGoal(String goalName, [double? value]) {
    return _b194954889.b591150718(goalName, value);
  }

  static Future<void> sendHttpError(int statusCode) {
    return _b194954889.sm433068335(statusCode);
  }

  static Future<void> sendError(String errorMessage) {
    return _b194954889.idv575266007(errorMessage);
  }

  static void setMaskColor(Color color) {
    _b194954889.gzp257569536(color.withAlpha(255));
  }

  static void setImageQuality(ImageQuality imageQuality) {
    _b194954889.jw383026643(imageQuality);
  }

  static void enableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _b194954889.sa36339668(widgetsToMask);
  }

  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
    return _b194954889.k947202748(dimensionName, fch510790412: value);
  }

  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) {
    return _b194954889.ci66991492(dimensionName, value);
  }

  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) {
    return _b194954889.q777157257(dimensionName, value);
  }

  static Future<void> setConsents(
    enums.MedalliaDxaCustomerConsentType consents,
  ) {
    return _b194954889.q941172976(consents);
  }

  static Future<void> setRetention(bool value) async {
    return _b194954889.ob504668707(value);
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
