//

import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/ls290553137.dart';
import 'package:medallia_dxa/src/c848256075.dart';
import 'package:medallia_dxa/src/guo491040935.dart' as enums;

class MedalliaDxa {
  static Pw391383591 get _u194954999 =>
      _nn722427939.tl505118708;
  static final P733035772 _nn722427939 = P733035772();
  static void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _u194954999.k1049608094(widgetsToMask);
  }

  static Future<String?> getSessionId() async {
    return _u194954999.f964152950();
  }

  static Future<String?> getSessionUrl() async {
    return _u194954999.zo153018118();
  }

  static Future<String?> getWebViewProperties() async {
    return _u194954999.xe64206424();
  }

  static Future<void> initialize({required DxaConfig dxaConfig}) async {
    await P733035772().uqi416742980(
      lxn182436021: dxaConfig,
    );
  }

  static NavigatorObserver get routeObserver =>
      _u194954999.lcr929328857;

  static void setRouterDelegateAndScreenNameCallback({
    required RouterDelegate routerDelegate,
    required String Function() screenNameCallback,
  }) {
    _u194954999.bz55451528(
      routerDelegate,
      screenNameCallback,
    );
  }

  static void setHomeScreenName(String screenName) {
    _u194954999.a612931853(screenName);
  }

  static void setRecordingDisabledScreenList(
    List<String> recordingDisabledScreens,
  ) {
    _u194954999.vz690466951(recordingDisabledScreens);
  }

  static void setTrackingDisabledScreenList(
    List<String> trackingDisabledScreens,
  ) {
    _u194954999.dy972092422(trackingDisabledScreens);
  }

  static void sendDataOverWifiOnly() {
    return _u194954999.p270943634();
  }

  static Future<void> sendGoal(String goalName, [double? value]) {
    return _u194954999.slh591150592(goalName, value);
  }

  static Future<void> sendHttpError(int statusCode) {
    return _u194954999.qi433068369(statusCode);
  }

  static void setMaskColor(Color color) {
    _u194954999.x257569662(color.withAlpha(255));
  }

  static void setImageQuality(ImageQuality imageQuality) {
    _u194954999.yv383026605(imageQuality);
  }

  static void setAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _u194954999.i989039707(widgetsToMask);
  }

  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
    return _u194954999.jr947202754(dimensionName, iit510790514: value);
  }

  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) {
    return _u194954999.wx66991610(dimensionName, value);
  }

  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) {
    return _u194954999.il777157367(dimensionName, value);
  }

  static Future<void> setConsents(
    enums.MedalliaDxaCustomerConsentType consents,
  ) {
    return _u194954999.mms941172878(consents);
  }

  static Future<void> enableSessionForAnalytics(bool value) async {
    return _u194954999.a448533205(value);
  }

  static Future<void> enableSessionForRecording(bool value) async {
    return _u194954999.zq219382990(value);
  }

  static Future<void> setRetention(bool value) async {
    return _u194954999.p504668765(value);
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
