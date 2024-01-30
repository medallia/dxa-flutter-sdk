//

import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/pf290553034.dart';
import 'package:medallia_dxa/src/a848256432.dart';
import 'package:medallia_dxa/src/vdk491041116.dart' as enums;

class MedalliaDxa {
  static Qc391384028 get _sq194955020 =>
      _vkc722428376.y505118223;
  static final Y733035783 _vkc722428376 = Y733035783();
  static void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _sq194955020.k1049607781(widgetsToMask);
  }

  static Future<String?> getSessionId() async {
    return _sq194955020.j964153229();
  }

  static Future<String?> getSessionUrl() async {
    return _sq194955020.ia153018109();
  }

  static Future<String?> getWebViewProperties() async {
    return _sq194955020.dqf64206755();
  }

  static Future<void> initialize({required DxaConfig dxaConfig}) async {
    await Y733035783().q416743359(
      hjt182436174: dxaConfig,
    );
  }

  static NavigatorObserver get routeObserver =>
      _sq194955020.bly929328930;

  static void setRouterDelegateAndScreenNameCallback({
    required RouterDelegate routerDelegate,
    required String Function() screenNameCallback,
  }) {
    _sq194955020.yzv55451251(
      routerDelegate,
      screenNameCallback,
    );
  }

  static void setHomeScreenName(String screenName) {
    _sq194955020.y612931830(screenName);
  }

  static void setRecordingDisabledScreenList(
    List<String> recordingDisabledScreens,
  ) {
    _sq194955020.qw690467196(recordingDisabledScreens);
  }

  static void setTrackingDisabledScreenList(
    List<String> trackingDisabledScreens,
  ) {
    _sq194955020.de972092925(trackingDisabledScreens);
  }

  static void sendDataOverWifiOnly() {
    return _sq194955020.a270943337();
  }

  static Future<void> sendGoal(String goalName, [double? value]) {
    return _sq194955020.h591151099(goalName, value);
  }

  static Future<void> sendHttpError(int statusCode) {
    return _sq194955020.a433068202(statusCode);
  }

  static void setMaskColor(Color color) {
    _sq194955020.q257569413(color.withAlpha(255));
  }

  static void setImageQuality(ImageQuality imageQuality) {
    _sq194955020.zml383026262(imageQuality);
  }

  static void setAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _sq194955020.s989040032(widgetsToMask);
  }

  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
    return _sq194955020.tk947202873(dimensionName, hy510790281: value);
  }

  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) {
    return _sq194955020.atg66991105(dimensionName, value);
  }

  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) {
    return _sq194955020.zwm777157388(dimensionName, value);
  }

  static Future<void> setConsents(
    enums.MedalliaDxaCustomerConsentType consents,
  ) {
    return _sq194955020.s941173109(consents);
  }

  static Future<void> enableSessionForAnalytics(bool value) async {
    return _sq194955020.yn448533294(value);
  }

  static Future<void> enableSessionForRecording(bool value) async {
    return _sq194955020.cnp219383093(value);
  }

  static Future<void> setRetention(bool value) async {
    return _sq194955020.oer504669094(value);
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
