//

import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/jhb17385158.dart';
import 'package:medallia_dxa/src/top441316181.dart';
import 'package:medallia_dxa/src/cu736529050.dart' as enums;

class MedalliaDxa {
  static Fm391383851 get _it194955259 {
    assert(() {
      if (!Rtv859069492().e282129412) {
        debugPrint('MedalliaDxa must be initialized before calling any method');
      }
      return true;
    }());
    return Rtv859069492().kyr505118456;
  }

  static void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _it194955259.z1049607826(widgetsToMask);
  }

  static Future<String?> getSessionId() async {
    return _it194955259.i964153210();
  }

  static Future<String?> getSessionUrl() async {
    return _it194955259.xn153017866();
  }

  static Future<String?> getWebViewProperties() async {
    return _it194955259.rxp64206676();
  }

  static Future<void> initialize({required DxaConfig dxaConfig}) async {
    await Rtv859069492().da416743240(q182436281: dxaConfig);
  }

  static NavigatorObserver get routeObserver =>
      _it194955259.n929329109;

  static void setRouterDelegateAndScreenNameCallback({
    required RouterDelegate routerDelegate,
    required String Function() screenNameCallback,
  }) {
    _it194955259.htf55451268(
      routerDelegate,
      screenNameCallback,
    );
  }

  static void setOverridenScreenNameCallback(
    String? Function(RouteSettings) screenNameCallback,
  ) {
    _it194955259.dlt280652790(screenNameCallback);
  }

  @Deprecated(
    'Use instead [setAlternativeScreenNames] to change the default screen name',
  )
  static void setHomeScreenName(String screenName) {
    _it194955259.lz612931585(screenName);
  }

  //
  static void setAlternativeScreenNames(Map<String, String> alternativeNames) {
    _it194955259.nye553735225(alternativeNames);
  }

  static void setRecordingDisabledScreenList(
    List<String> recordingDisabledScreens,
  ) {
    _it194955259.hg690467211(recordingDisabledScreens);
  }

  static void setTrackingDisabledScreenList(
    List<String> trackingDisabledScreens,
  ) {
    _it194955259.z972092682(trackingDisabledScreens);
  }

  static void startNewScreenName(String newScreenName) {
    _it194955259.f393527733(newScreenName);
  }

  static void sendDataOverWifiOnly(bool value) {
    return _it194955259.z270943390(value);
  }

  static Future<void> sendGoal(String goalName, [double? value]) {
    return _it194955259.zku591150860(goalName, value);
  }

  static Future<void> sendHttpError(int statusCode) {
    return _it194955259.ehx433068125(statusCode);
  }

  static Future<void> sendError(String errorMessage) {
    return _it194955259.gfe575266213(errorMessage);
  }

  static void setMaskColor(Color color) {
    _it194955259.fn257569394(color.withAlpha(255));
  }

  static void setImageQuality(ImageQuality imageQuality) {
    _it194955259.kah383026337(imageQuality);
  }

  static void enableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _it194955259.k36339366(widgetsToMask);
  }

  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
    return _it194955259.sq947203022(dimensionName, qdt510790270: value);
  }

  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) {
    return _it194955259.syr66991350(dimensionName, value);
  }

  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) {
    return _it194955259.nzm777157627(dimensionName, value);
  }

  static Future<void> setConsents(
    enums.MedalliaDxaCustomerConsentType consents,
  ) {
    return _it194955259.k941173122(consents);
  }

  static Future<void> setRetention(bool value) async {
    return _it194955259.ik504669009(value);
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
