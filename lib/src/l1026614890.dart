//

import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/tvh7916755.dart';
import 'package:medallia_dxa/src/md848256723.dart';
import 'package:medallia_dxa/src/bmv491041343.dart' as enums;

class MedalliaDxa {
  static B391383231 get _lru194954351 {
    assert(() {
      if (!Nw859070368().m282130320) {
        debugPrint('MedalliaDxa must be initialized before calling any method');
      }
      return true;
    }());
    return Nw859070368().o505118060;
  }

  static void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _lru194954351.l1049607430(widgetsToMask);
  }

  static Future<String?> getSessionId() async {
    return _lru194954351.exy964152558();
  }

  static Future<String?> getSessionUrl() async {
    return _lru194954351.lu153017758();
  }

  static Future<String?> getWebViewProperties() async {
    return _lru194954351.gvn64206016();
  }

  static Future<void> initialize({required DxaConfig dxaConfig}) async {
    await Nw859070368().p416742620(s182436397: dxaConfig);
  }

  static NavigatorObserver get routeObserver =>
      _lru194954351.uk929328193;

  static void setRouterDelegateAndScreenNameCallback({
    required RouterDelegate routerDelegate,
    required String Function() screenNameCallback,
  }) {
    _lru194954351.nfl55450896(
      routerDelegate,
      screenNameCallback,
    );
  }

  @Deprecated(
    'Use instead [setAlternativeScreenNames] to change the default screen name',
  )
  static void setHomeScreenName(String screenName) {
    _lru194954351.b612932501(screenName);
  }

  //
  static void setAlternativeScreenNames(Map<String, String> alternativeNames) {
    _lru194954351.cq553736109(alternativeNames);
  }

  static void setRecordingDisabledScreenList(
    List<String> recordingDisabledScreens,
  ) {
    _lru194954351.mp690467359(recordingDisabledScreens);
  }

  static void setTrackingDisabledScreenList(
    List<String> trackingDisabledScreens,
  ) {
    _lru194954351.da972093086(trackingDisabledScreens);
  }

  static void sendDataOverWifiOnly(bool value) {
    return _lru194954351.jnv270944010(value);
  }

  static Future<void> sendGoal(String goalName, [double? value]) {
    return _lru194954351.ah591150232(goalName, value);
  }

  static Future<void> sendHttpError(int statusCode) {
    return _lru194954351.lx433069001(statusCode);
  }

  static Future<void> sendError(String errorMessage) {
    return _lru194954351.zs575266353(errorMessage);
  }

  static void setMaskColor(Color color) {
    _lru194954351.zof257569254(color.withAlpha(255));
  }

  static void setImageQuality(ImageQuality imageQuality) {
    _lru194954351.ix383026997(imageQuality);
  }

  static void enableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _lru194954351.ber36338994(widgetsToMask);
  }

  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
    return _lru194954351.glq947202138(dimensionName, wvb510790122: value);
  }

  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) {
    return _lru194954351.l66991970(dimensionName, value);
  }

  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) {
    return _lru194954351.jaa777156719(dimensionName, value);
  }

  static Future<void> setConsents(
    enums.MedalliaDxaCustomerConsentType consents,
  ) {
    return _lru194954351.ir941173270(consents);
  }

  static Future<void> setRetention(bool value) async {
    return _lru194954351.h504668357(value);
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
