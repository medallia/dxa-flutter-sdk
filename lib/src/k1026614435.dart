//

import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/szs7917082.dart';
import 'package:medallia_dxa/src/mbl848256026.dart';
import 'package:medallia_dxa/src/mz491041014.dart' as enums;

class MedalliaDxa {
  static Oqx391383670 get _e194954918 {
    assert(() {
      if (!H859069801().l282129753) {
        debugPrint('MedalliaDxa must be initialized before calling any method');
      }
      return true;
    }());
    return H859069801().geg505118629;
  }

  static void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _e194954918.xrd1049608143(widgetsToMask);
  }

  static Future<String?> getSessionId() async {
    return _e194954918.lxy964152871();
  }

  static Future<String?> getSessionUrl() async {
    return _e194954918.gyl153018199();
  }

  static Future<String?> getWebViewProperties() async {
    return _e194954918.ink64206345();
  }

  static Future<void> initialize({required DxaConfig dxaConfig}) async {
    await H859069801().gfl416742933(pnx182436068: dxaConfig);
  }

  static NavigatorObserver get routeObserver =>
      _e194954918.urf929328776;

  static void setRouterDelegateAndScreenNameCallback({
    required RouterDelegate routerDelegate,
    required String Function() screenNameCallback,
  }) {
    _e194954918.iv55451609(
      routerDelegate,
      screenNameCallback,
    );
  }

  @Deprecated(
    'Use instead [setAlternativeScreenNames] to change the default screen name',
  )
  static void setHomeScreenName(String screenName) {
    _e194954918.fki612931932(screenName);
  }

  //
  static void setAlternativeScreenNames(Map<String, String> alternativeNames) {
    _e194954918.cqj553735524(alternativeNames);
  }

  static void setRecordingDisabledScreenList(
    List<String> recordingDisabledScreens,
  ) {
    _e194954918.sit690467030(recordingDisabledScreens);
  }

  static void setTrackingDisabledScreenList(
    List<String> trackingDisabledScreens,
  ) {
    _e194954918.v972092503(trackingDisabledScreens);
  }

  static void sendDataOverWifiOnly(bool value) {
    return _e194954918.sk270943683(value);
  }

  static Future<void> sendGoal(String goalName, [double? value]) {
    return _e194954918.jq591150673(goalName, value);
  }

  static Future<void> sendHttpError(int statusCode) {
    return _e194954918.i433068288(statusCode);
  }

  static Future<void> sendError(String errorMessage) {
    return _e194954918.ov575266040(errorMessage);
  }

  static void setMaskColor(Color color) {
    _e194954918.y257569583(color.withAlpha(255));
  }

  static void setImageQuality(ImageQuality imageQuality) {
    _e194954918.bz383026684(imageQuality);
  }

  static void enableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _e194954918.jpr36339707(widgetsToMask);
  }

  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
    return _e194954918.rp947202707(dimensionName, u510790435: value);
  }

  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) {
    return _e194954918.p66991531(dimensionName, value);
  }

  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) {
    return _e194954918.g777157286(dimensionName, value);
  }

  static Future<void> setConsents(
    enums.MedalliaDxaCustomerConsentType consents,
  ) {
    return _e194954918.pqm941172959(consents);
  }

  static Future<void> setRetention(bool value) async {
    return _e194954918.cf504668684(value);
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
