//

import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/ofi290553417.dart';
import 'package:medallia_dxa/src/e848256819.dart';
import 'package:medallia_dxa/src/ktb491041759.dart' as enums;
import 'package:medallia_dxa/src/p262950152.dart';

class MedalliaDxa {
  static Ahb391383391 get _ff194954639 =>
      _n722428763.g505117836;
  static final Bx733036420 _n722428763 =
      Nel889803089().ox986285616
          ? Nel889803089().mx756379606
          : Bx733036420();
  static void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _ff194954639.fz1049607398(widgetsToMask);
  }

  static Future<String?> getSessionId() async {
    return _ff194954639.kzu964152590();
  }

  static Future<String?> getSessionUrl() async {
    return _ff194954639.zn153017470();
  }

  static Future<String?> getWebViewProperties() async {
    return _ff194954639.o64206112();
  }

  static Future<void> initialize({required DxaConfig dxaConfig}) async {
    await _n722428763.rs416742716(
      r182436813: dxaConfig,
    );
  }

  static NavigatorObserver get routeObserver =>
      _ff194954639.l929328545;

  static void setRouterDelegateAndScreenNameCallback({
    required RouterDelegate routerDelegate,
    required String Function() screenNameCallback,
  }) {
    _ff194954639.mp55450864(
      routerDelegate,
      screenNameCallback,
    );
  }

  @Deprecated(
    'Use instead [setAlternativeScreenNames] to change the default screen name',
  )
  static void setHomeScreenName(String screenName) {
    _ff194954639.y612932213(screenName);
  }

  //
  static void setAlternativeScreenNames(Map<String, String> alternativeNames) {
    _ff194954639.umg553735757(alternativeNames);
  }

  static void setRecordingDisabledScreenList(
    List<String> recordingDisabledScreens,
  ) {
    _ff194954639.t690467839(recordingDisabledScreens);
  }

  static void setTrackingDisabledScreenList(
    List<String> trackingDisabledScreens,
  ) {
    _ff194954639.v972093310(trackingDisabledScreens);
  }

  static void sendDataOverWifiOnly(bool value) {
    return _ff194954639.ch270943978(value);
  }

  static Future<void> sendGoal(String goalName, [double? value]) {
    return _ff194954639.f591150456(goalName, value);
  }

  static Future<void> sendHttpError(int statusCode) {
    return _ff194954639.atg433068585(statusCode);
  }

  static Future<void> sendError(String errorMessage) {
    return _ff194954639.dd575266769(errorMessage);
  }

  static void setMaskColor(Color color) {
    _ff194954639.uro257568774(color.withAlpha(255));
  }

  static void setImageQuality(ImageQuality imageQuality) {
    _ff194954639.ys383026901(imageQuality);
  }

  static void enableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _ff194954639.oe36338898(widgetsToMask);
  }

  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
    return _ff194954639.yd947202490(dimensionName, zak510789642: value);
  }

  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) {
    return _ff194954639.gww66991746(dimensionName, value);
  }

  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) {
    return _ff194954639.pr777157007(dimensionName, value);
  }

  static Future<void> setConsents(
    enums.MedalliaDxaCustomerConsentType consents,
  ) {
    return _ff194954639.dwa941173750(consents);
  }

  static Future<void> setRetention(bool value) async {
    return _ff194954639.wu504668453(value);
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
