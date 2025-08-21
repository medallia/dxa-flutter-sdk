//

import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/v17385463.dart';
import 'package:medallia_dxa/src/bg441315940.dart';
import 'package:medallia_dxa/src/z736529323.dart' as enums;

class MedalliaDxa {
  static Tm391383578 get _ay194954954 {
    assert(() {
      if (!Rhw859069701().u282129717) {
        debugPrint('MedalliaDxa must be initialized before calling any method');
      }
      return true;
    }());
    return Rhw859069701().xk505118665;
  }

  static void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _ay194954954.cc1049608099(widgetsToMask);
  }

  static Future<String?> getSessionId() async {
    return _ay194954954.s964152907();
  }

  static Future<String?> getSessionUrl() async {
    return _ay194954954.xj153018171();
  }

  static Future<String?> getWebViewProperties() async {
    return _ay194954954.q64206437();
  }

  static Future<void> initialize({required DxaConfig dxaConfig}) async {
    await Rhw859069701().c416743033(n182435976: dxaConfig);
  }

  static NavigatorObserver get routeObserver =>
      _ay194954954.j929328868;

  static void setRouterDelegateAndScreenNameCallback({
    required RouterDelegate routerDelegate,
    required String Function() screenNameCallback,
  }) {
    _ay194954954.h55451573(
      routerDelegate,
      screenNameCallback,
    );
  }

  static void setOverridenScreenNameCallback(
    String? Function(RouteSettings) screenNameCallback,
  ) {
    _ay194954954.r280652487(screenNameCallback);
  }

  @Deprecated(
    'Use instead [setAlternativeScreenNames] to change the default screen name',
  )
  static void setHomeScreenName(String screenName) {
    _ay194954954.yig612931888(screenName);
  }

  //
  static void setAlternativeScreenNames(Map<String, String> alternativeNames) {
    _ay194954954.rp553735432(alternativeNames);
  }

  static void setRecordingDisabledScreenList(
    List<String> recordingDisabledScreens,
  ) {
    _ay194954954.z690467002(recordingDisabledScreens);
  }

  static void setTrackingDisabledScreenList(
    List<String> trackingDisabledScreens,
  ) {
    _ay194954954.vf972092475(trackingDisabledScreens);
  }

  static void startNewScreenName(String newScreenName) {
    _ay194954954.il393527428(newScreenName);
  }

  static void sendDataOverWifiOnly(bool value) {
    return _ay194954954.ug270943663(value);
  }

  static Future<void> sendGoal(String goalName, [double? value]) {
    return _ay194954954.k591150653(goalName, value);
  }

  static Future<void> sendHttpError(int statusCode) {
    return _ay194954954.h433068396(statusCode);
  }

  static Future<void> sendError(String errorMessage) {
    return _ay194954954.uoh575265940(errorMessage);
  }

  static void setMaskColor(Color color) {
    _ay194954954.mz257569603(color.withAlpha(255));
  }

  static void setImageQuality(ImageQuality imageQuality) {
    _ay194954954.poa383026576(imageQuality);
  }

  static void enableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _ay194954954.sy36339607(widgetsToMask);
  }

  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
    return _ay194954954.dp947202815(dimensionName, ky510790479: value);
  }

  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) {
    return _ay194954954.l66991559(dimensionName, value);
  }

  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) {
    return _ay194954954.sai777157322(dimensionName, value);
  }

  static Future<void> setConsents(
    enums.MedalliaDxaCustomerConsentType consents,
  ) {
    return _ay194954954.ep941172915(consents);
  }

  static Future<void> setRetention(bool value) async {
    return _ay194954954.thf504668768(value);
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
