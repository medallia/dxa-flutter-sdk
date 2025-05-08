//

import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/rsd17384820.dart';
import 'package:medallia_dxa/src/diw441315559.dart';
import 'package:medallia_dxa/src/r736528680.dart' as enums;

class MedalliaDxa {
  static S391383193 get _qd194954313 {
    assert(() {
      if (!R859070342().fl282130358) {
        debugPrint('MedalliaDxa must be initialized before calling any method');
      }
      return true;
    }());
    return R859070342().khf505118026;
  }

  static void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _qd194954313.g1049607456(widgetsToMask);
  }

  static Future<String?> getSessionId() async {
    return _qd194954313.acg964152520();
  }

  static Future<String?> getSessionUrl() async {
    return _qd194954313.fx153017784();
  }

  static Future<String?> getWebViewProperties() async {
    return _qd194954313.y64206054();
  }

  static Future<void> initialize({required DxaConfig dxaConfig}) async {
    await R859070342().smp416742650(kk182436363: dxaConfig);
  }

  static NavigatorObserver get routeObserver =>
      _qd194954313.h929328231;

  static void setRouterDelegateAndScreenNameCallback({
    required RouterDelegate routerDelegate,
    required String Function() screenNameCallback,
  }) {
    _qd194954313.ilg55450934(
      routerDelegate,
      screenNameCallback,
    );
  }

  static void setOverridenScreenNameCallback(
    String? Function(RouteSettings) screenNameCallback,
  ) {
    _qd194954313.a280651844(screenNameCallback);
  }

  @Deprecated(
    'Use instead [setAlternativeScreenNames] to change the default screen name',
  )
  static void setHomeScreenName(String screenName) {
    _qd194954313.y612932531(screenName);
  }

  //
  static void setAlternativeScreenNames(Map<String, String> alternativeNames) {
    _qd194954313.gna553736075(alternativeNames);
  }

  static void setRecordingDisabledScreenList(
    List<String> recordingDisabledScreens,
  ) {
    _qd194954313.s690467385(recordingDisabledScreens);
  }

  static void setTrackingDisabledScreenList(
    List<String> trackingDisabledScreens,
  ) {
    _qd194954313.hxx972093112(trackingDisabledScreens);
  }

  static void startNewScreenName(String newScreenName) {
    _qd194954313.jo393527815(newScreenName);
  }

  static void sendDataOverWifiOnly(bool value) {
    return _qd194954313.e270944044(value);
  }

  static Future<void> sendGoal(String goalName, [double? value]) {
    return _qd194954313.n591150270(goalName, value);
  }

  static Future<void> sendHttpError(int statusCode) {
    return _qd194954313.vj433069039(statusCode);
  }

  static Future<void> sendError(String errorMessage) {
    return _qd194954313.cba575266327(errorMessage);
  }

  static void setMaskColor(Color color) {
    _qd194954313.k257569216(color.withAlpha(255));
  }

  static void setImageQuality(ImageQuality imageQuality) {
    _qd194954313.iu383026963(imageQuality);
  }

  static void enableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _qd194954313.fy36338964(widgetsToMask);
  }

  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
    return _qd194954313.vz947202172(dimensionName, ovs510790092: value);
  }

  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) {
    return _qd194954313.l66991940(dimensionName, value);
  }

  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) {
    return _qd194954313.iv777156681(dimensionName, value);
  }

  static Future<void> setConsents(
    enums.MedalliaDxaCustomerConsentType consents,
  ) {
    return _qd194954313.j941173296(consents);
  }

  static Future<void> setRetention(bool value) async {
    return _qd194954313.l504668387(value);
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
