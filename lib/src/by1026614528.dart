//

import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/znj290553027.dart';
import 'package:medallia_dxa/src/dl848256441.dart';
import 'package:medallia_dxa/src/uv491041109.dart' as enums;

class MedalliaDxa {
  static Jfs391384021 get _q194955013 =>
      _mj722428369.yqs505118214;
  static final X733035790 _mj722428369 = X733035790();
  static void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _q194955013.k1049607788(widgetsToMask);
  }

  static Future<String?> getSessionId() async {
    return _q194955013.hlr964153220();
  }

  static Future<String?> getSessionUrl() async {
    return _q194955013.ne153018100();
  }

  static Future<String?> getWebViewProperties() async {
    return _q194955013.uz64206762();
  }

  static Future<void> initialize({required DxaConfig dxaConfig}) async {
    await X733035790().kvo416743350(
      n182436167: dxaConfig,
    );
  }

  static NavigatorObserver get routeObserver =>
      _q194955013.hzm929328939;

  static void setRouterDelegateAndScreenNameCallback({
    required RouterDelegate routerDelegate,
    required String Function() screenNameCallback,
  }) {
    _q194955013.y55451258(
      routerDelegate,
      screenNameCallback,
    );
  }

  static void setHomeScreenName(String screenName) {
    _q194955013.j612931839(screenName);
  }

  static void setRecordingDisabledScreenList(
    List<String> recordingDisabledScreens,
  ) {
    _q194955013.txq690467189(recordingDisabledScreens);
  }

  static void setTrackingDisabledScreenList(
    List<String> trackingDisabledScreens,
  ) {
    _q194955013.ipf972092916(trackingDisabledScreens);
  }

  static void sendDataOverWifiOnly() {
    return _q194955013.zjj270943328();
  }

  static Future<void> sendGoal(String goalName, [double? value]) {
    return _q194955013.lu591151090(goalName, value);
  }

  static Future<void> sendHttpError(int statusCode) {
    return _q194955013.tf433068195(statusCode);
  }

  static void setMaskColor(Color color) {
    _q194955013.g257569420(color.withAlpha(255));
  }

  static void setImageQuality(ImageQuality imageQuality) {
    _q194955013.xyf383026271(imageQuality);
  }

  static void setAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _q194955013.jh989040041(widgetsToMask);
  }

  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
    return _q194955013.xw947202864(dimensionName, rjc510790272: value);
  }

  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) {
    return _q194955013.tce66991112(dimensionName, value);
  }

  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) {
    return _q194955013.mgs777157381(dimensionName, value);
  }

  static Future<void> setConsents(
    enums.MedalliaDxaCustomerConsentType consents,
  ) {
    return _q194955013.il941173116(consents);
  }

  static Future<void> enableSessionForAnalytics(bool value) async {
    return _q194955013.abc448533287(value);
  }

  static Future<void> enableSessionForRecording(bool value) async {
    return _q194955013.r219383100(value);
  }

  static Future<void> setRetention(bool value) async {
    return _q194955013.x504669103(value);
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
