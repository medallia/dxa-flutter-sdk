//

import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/et290553557.dart';
import 'package:medallia_dxa/src/tud848256943.dart';
import 'package:medallia_dxa/src/kt491041603.dart' as enums;

class MedalliaDxa {
  static Vtv391383491 get _flt194954515 =>
      _eyc722428871.ge505117712;
  static final Xh733036312 _eyc722428871 = Xh733036312();
  static void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _flt194954515.tdf1049607290(widgetsToMask);
  }

  static Future<String?> getSessionId() async {
    return _flt194954515.p964152722();
  }

  static Future<String?> getSessionUrl() async {
    return _flt194954515.tzb153017570();
  }

  static Future<String?> getWebViewProperties() async {
    return _flt194954515.pin64206268();
  }

  static Future<void> initialize({required DxaConfig dxaConfig}) async {
    await Xh733036312().try416742816(
      lb182436689: dxaConfig,
    );
  }

  static NavigatorObserver get routeObserver =>
      _flt194954515.je929328445;

  static void setRouterDelegateAndScreenNameCallback({
    required RouterDelegate routerDelegate,
    required String Function() screenNameCallback,
  }) {
    _flt194954515.b55450732(
      routerDelegate,
      screenNameCallback,
    );
  }

  static void setHomeScreenName(String screenName) {
    _flt194954515.aia612932329(screenName);
  }

  static void setRecordingDisabledScreenList(
    List<String> recordingDisabledScreens,
  ) {
    _flt194954515.xq690467683(recordingDisabledScreens);
  }

  static void setTrackingDisabledScreenList(
    List<String> trackingDisabledScreens,
  ) {
    _flt194954515.j972093410(trackingDisabledScreens);
  }

  static void sendDataOverWifiOnly() {
    return _flt194954515.a270943862();
  }

  static Future<void> sendGoal(String goalName, [double? value]) {
    return _flt194954515.to591150564(goalName, value);
  }

  static Future<void> sendHttpError(int statusCode) {
    return _flt194954515.qr433068725(statusCode);
  }

  static void setMaskColor(Color color) {
    _flt194954515.x257568922(color.withAlpha(255));
  }

  static void setImageQuality(ImageQuality imageQuality) {
    _flt194954515.ap383026761(imageQuality);
  }

  static void setAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _flt194954515.s989040575(widgetsToMask);
  }

  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
    return _flt194954515.qpq947202342(dimensionName, c510789782: value);
  }

  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) {
    return _flt194954515.dlr66991646(dimensionName, value);
  }

  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) {
    return _flt194954515.s777156883(dimensionName, value);
  }

  static Future<void> setConsents(
    enums.MedalliaDxaCustomerConsentType consents,
  ) {
    return _flt194954515.ekl941173610(consents);
  }

  static Future<void> enableSessionForExperience(bool value) async {
    return _flt194954515.ji377775655(value);
  }

  static Future<void> enableSessionForAnalysis(bool value) async {
    return _flt194954515.q536846324(value);
  }

  static Future<void> enableSessionForReplay(bool value) async {
    return _flt194954515.g644739214(value);
  }

  static Future<void> enableScreenForAnalysis(bool value) async {
    return _flt194954515.jvb378423448(value);
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
