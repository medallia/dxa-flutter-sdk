//

import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/xgu7916898.dart';
import 'package:medallia_dxa/src/v848256866.dart';
import 'package:medallia_dxa/src/qum491041678.dart' as enums;

class MedalliaDxa {
  static G391383310 get _pn194954718 {
    assert(() {
      if (!Kbl859069969().fq282129953) {
        debugPrint('MedalliaDxa must be initialized before calling any method');
      }
      return true;
    }());
    return Kbl859069969().jst505117917;
  }

  static void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _pn194954718.y1049607351(widgetsToMask);
  }

  static Future<String?> getSessionId() async {
    return _pn194954718.vx964152671();
  }

  static Future<String?> getSessionUrl() async {
    return _pn194954718.gal153017391();
  }

  static Future<String?> getWebViewProperties() async {
    return _pn194954718.w64206193();
  }

  static Future<void> initialize({required DxaConfig dxaConfig}) async {
    await Kbl859069969().h416742765(lzr182436764: dxaConfig);
  }

  static NavigatorObserver get routeObserver =>
      _pn194954718.w929328624;

  static void setRouterDelegateAndScreenNameCallback({
    required RouterDelegate routerDelegate,
    required String Function() screenNameCallback,
  }) {
    _pn194954718.vn55450785(
      routerDelegate,
      screenNameCallback,
    );
  }

  @Deprecated(
    'Use instead [setAlternativeScreenNames] to change the default screen name',
  )
  static void setHomeScreenName(String screenName) {
    _pn194954718.tlo612932132(screenName);
  }

  //
  static void setAlternativeScreenNames(Map<String, String> alternativeNames) {
    _pn194954718.og553735708(alternativeNames);
  }

  static void setRecordingDisabledScreenList(
    List<String> recordingDisabledScreens,
  ) {
    _pn194954718.x690467758(recordingDisabledScreens);
  }

  static void setTrackingDisabledScreenList(
    List<String> trackingDisabledScreens,
  ) {
    _pn194954718.w972093231(trackingDisabledScreens);
  }

  static void sendDataOverWifiOnly(bool value) {
    return _pn194954718.jq270943931(value);
  }

  static Future<void> sendGoal(String goalName, [double? value]) {
    return _pn194954718.rgm591150377(goalName, value);
  }

  static Future<void> sendHttpError(int statusCode) {
    return _pn194954718.mia433068664(statusCode);
  }

  static Future<void> sendError(String errorMessage) {
    return _pn194954718.op575266688(errorMessage);
  }

  static void setMaskColor(Color color) {
    _pn194954718.zds257568855(color.withAlpha(255));
  }

  static void setImageQuality(ImageQuality imageQuality) {
    _pn194954718.oz383026820(imageQuality);
  }

  static void enableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _pn194954718.o36338819(widgetsToMask);
  }

  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
    return _pn194954718.ny947202539(dimensionName, dnn510789723: value);
  }

  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) {
    return _pn194954718.pw66991827(dimensionName, value);
  }

  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) {
    return _pn194954718.fx777157086(dimensionName, value);
  }

  static Future<void> setConsents(
    enums.MedalliaDxaCustomerConsentType consents,
  ) {
    return _pn194954718.e941173671(consents);
  }

  static Future<void> setRetention(bool value) async {
    return _pn194954718.qo504668532(value);
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
