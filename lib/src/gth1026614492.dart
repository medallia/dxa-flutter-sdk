//

import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/ij290553119.dart';
import 'package:medallia_dxa/src/v848256101.dart';
import 'package:medallia_dxa/src/zm491040905.dart' as enums;

class MedalliaDxa {
  static G391383561 get _p194954969 =>
      _uqb722427917.hdo505118682;
  static final Sv733035730 _uqb722427917 = Sv733035730();
  static void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _p194954969.yo1049608112(widgetsToMask);
  }

  static Future<String?> getSessionId() async {
    return _p194954969.y964152920();
  }

  static Future<String?> getSessionUrl() async {
    return _p194954969.yc153018152();
  }

  static Future<String?> getWebViewProperties() async {
    return _p194954969.wu64206454();
  }

  static Future<void> initialize({required DxaConfig dxaConfig}) async {
    await Sv733035730().jz416743018(
      ax182435995: dxaConfig,
    );
  }

  static NavigatorObserver get routeObserver =>
      _p194954969.evo929328887;

  static void setRouterDelegateAndScreenNameCallback({
    required RouterDelegate routerDelegate,
    required String Function() screenNameCallback,
  }) {
    _p194954969.r55451558(
      routerDelegate,
      screenNameCallback,
    );
  }

  static void setHomeScreenName(String screenName) {
    _p194954969.pl612931875(screenName);
  }

  static void setRecordingDisabledScreenList(
    List<String> recordingDisabledScreens,
  ) {
    _p194954969.plz690466985(recordingDisabledScreens);
  }

  static void setTrackingDisabledScreenList(
    List<String> trackingDisabledScreens,
  ) {
    _p194954969.ej972092456(trackingDisabledScreens);
  }

  static void sendDataOverWifiOnly() {
    return _p194954969.i270943676();
  }

  static Future<void> sendGoal(String goalName, [double? value]) {
    return _p194954969.ix591150638(goalName, value);
  }

  static Future<void> sendHttpError(int statusCode) {
    return _p194954969.hdy433068415(statusCode);
  }

  static void setMaskColor(Color color) {
    _p194954969.ww257569616(color.withAlpha(255));
  }

  static void setImageQuality(ImageQuality imageQuality) {
    _p194954969.ph383026563(imageQuality);
  }

  static void setAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _p194954969.z989039733(widgetsToMask);
  }

  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
    return _p194954969.id947202796(dimensionName, e510790492: value);
  }

  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) {
    return _p194954969.vn66991572(dimensionName, value);
  }

  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) {
    return _p194954969.h777157337(dimensionName, value);
  }

  static Future<void> setConsents(
    enums.MedalliaDxaCustomerConsentType consents,
  ) {
    return _p194954969.dfm941172896(consents);
  }

  static Future<void> enableSessionForAnalytics(bool value) async {
    return _p194954969.i448533243(value);
  }

  static Future<void> enableSessionForRecording(bool value) async {
    return _p194954969.q219383008(value);
  }

  static Future<void> setRetention(bool value) async {
    return _p194954969.kjp504668787(value);
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
