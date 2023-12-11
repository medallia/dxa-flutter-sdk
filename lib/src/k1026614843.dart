//

import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/yq290553848.dart';
import 'package:medallia_dxa/src/ydi848256642.dart';
import 'package:medallia_dxa/src/i491041390.dart' as enums;

class MedalliaDxa {
  static D391383278 get _gb194954302 =>
      _xwu722428650.gn505118013;
  static final V733036085 _xwu722428650 = V733036085();
  static void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _gb194954302.vr1049607511(widgetsToMask);
  }

  static void enableAllLogs() {
    _gb194954302.w493278209();
  }

  static void enableSelectedLogs({
    bool tracking = false,
    bool sessionReplay = false,
    bool frameTracking = false,
    bool routeObserver = false,
    bool autoMasking = false,
    bool screenWidget = false,
    bool maskWidget = false,
    bool manualAnalytics = false,
  }) {
    return _gb194954302.lj867098274(
      c653425974: tracking,
      c522100049: sessionReplay,
      ju674120147: frameTracking,
      gf784773262: routeObserver,
      ft594445238: autoMasking,
      qfd424272019: screenWidget,
      fc870832671: maskWidget,
      yp915506444: manualAnalytics,
    );
  }

  static Future<String?> getSessionId() async {
    return _gb194954302.yj964152511();
  }

  static Future<String?> getSessionUrl() async {
    return _gb194954302.eg153017807();
  }

  static Future<String?> getWebViewProperties() async {
    return _gb194954302.ucu64205969();
  }

  static Future<void> initialize({required DxaConfig dxaConfig}) async {
    await V733036085().b416742541(
      ds182436476: dxaConfig,
    );
  }

  static NavigatorObserver get routeObserver =>
      _gb194954302.j929328144;

  static void setRouterDelegateAndScreenNameCallback({
    required RouterDelegate routerDelegate,
    required String Function() screenNameCallback,
  }) {
    _gb194954302.uki55450945(
      routerDelegate,
      screenNameCallback,
    );
  }

  static void setHomeScreenName(String screenName) {
    _gb194954302.x612932548(screenName);
  }

  static void setRecordingDisabledScreenList(
    List<String> recordingDisabledScreens,
  ) {
    _gb194954302.zhi690467406(recordingDisabledScreens);
  }

  static void setTrackingDisabledScreenList(
    List<String> trackingDisabledScreens,
  ) {
    _gb194954302.z972093135(trackingDisabledScreens);
  }

  static void sendDataOverWifiOnly() {
    return _gb194954302.mu270944091();
  }

  static Future<void> sendGoal(String goalName, [double? value]) {
    return _gb194954302.u591150281(goalName, value);
  }

  static Future<void> sendHttpError(int statusCode) {
    return _gb194954302.whw433068952(statusCode);
  }

  static void setMaskColor(Color color) {
    _gb194954302.khh257569207(color.withAlpha(255));
  }

  static void setImageQuality(ImageQuality imageQuality) {
    _gb194954302.s383027044(imageQuality);
  }

  static void setAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _gb194954302.bvr989040274(widgetsToMask);
  }

  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
    return _gb194954302.q947202059(dimensionName, u510790075: value);
  }

  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) {
    return _gb194954302.im66991923(dimensionName, value);
  }

  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) {
    return _gb194954302.g777156670(dimensionName, value);
  }

  static Future<void> setConsents(
    enums.MedalliaDxaCustomerConsentType consents,
  ) {
    return _gb194954302.joe941173319(consents);
  }

  static Future<void> enableSessionForExperience(bool value) async {
    return _gb194954302.t377775882(value);
  }

  static Future<void> enableSessionForAnalysis(bool value) async {
    return _gb194954302.cv536846041(value);
  }

  static Future<void> enableSessionForReplay(bool value) async {
    return _gb194954302.soi644739491(value);
  }

  static Future<void> enableScreenForAnalysis(bool value) async {
    return _gb194954302.cw378423733(value);
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
