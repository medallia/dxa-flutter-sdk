//

import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/kd290553715.dart';
import 'package:medallia_dxa/src/h848256521.dart';
import 'package:medallia_dxa/src/ppg491041509.dart' as enums;

class MedalliaDxa {
  static O391383141 get _g194954421 =>
      _dp722428513.e505118134;
  static final M733036222 _dp722428513 = M733036222();
  static void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _g194954421.tuh1049607644(widgetsToMask);
  }

  static void enableAllLogs() {
    _g194954421.tn493278346();
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
    return _g194954421.lpg867098153(
      svj653426109: tracking,
      wyr522100186: sessionReplay,
      e674120024: frameTracking,
      c784773125: routeObserver,
      a594445117: autoMasking,
      e424271896: screenWidget,
      mzf870832788: maskWidget,
      fj915506567: manualAnalytics,
    );
  }

  static Future<String?> getSessionId() async {
    return _g194954421.af964152372();
  }

  static Future<String?> getSessionUrl() async {
    return _g194954421.zi153017668();
  }

  static Future<String?> getWebViewProperties() async {
    return _g194954421.ol64205850();
  }

  static Future<void> initialize({required DxaConfig dxaConfig}) async {
    await M733036222().qai416742406(
      l182436599: dxaConfig,
    );
  }

  static NavigatorObserver get routeObserver =>
      _g194954421.xi929328283;

  static void setRouterDelegateAndScreenNameCallback({
    required RouterDelegate routerDelegate,
    required String Function() screenNameCallback,
  }) {
    _g194954421.f55451082(
      routerDelegate,
      screenNameCallback,
    );
  }

  static void setHomeScreenName(String screenName) {
    _g194954421.bkt612932431(screenName);
  }

  static void setRecordingDisabledScreenList(
    List<String> recordingDisabledScreens,
  ) {
    _g194954421.rg690467525(recordingDisabledScreens);
  }

  static void setTrackingDisabledScreenList(
    List<String> trackingDisabledScreens,
  ) {
    _g194954421.j972092996(trackingDisabledScreens);
  }

  static void sendDataOverWifiOnly() {
    return _g194954421.dsn270944208();
  }

  static Future<void> sendGoal(String goalName, [double? value]) {
    return _g194954421.scq591150146(goalName, value);
  }

  static Future<void> sendHttpError(int statusCode) {
    return _g194954421.o433068819(statusCode);
  }

  static void setMaskColor(Color color) {
    _g194954421.wig257569084(color.withAlpha(255));
  }

  static void setImageQuality(ImageQuality imageQuality) {
    _g194954421.i383027183(imageQuality);
  }

  static void setAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _g194954421.b989040153(widgetsToMask);
  }

  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
    return _g194954421.w947202176(dimensionName, mor510789936: value);
  }

  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) {
    return _g194954421.gt66992056(dimensionName, value);
  }

  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) {
    return _g194954421.rr777156789(dimensionName, value);
  }

  static Future<void> setConsents(
    enums.MedalliaDxaCustomerConsentType consents,
  ) {
    return _g194954421.lh941173452(consents);
  }

  static Future<void> enableSessionForExperience(bool value) async {
    return _g194954421.mtb377776001(value);
  }

  static Future<void> enableSessionForAnalysis(bool value) async {
    return _g194954421.z536845906(value);
  }

  static Future<void> enableSessionForReplay(bool value) async {
    return _g194954421.ph644739368(value);
  }

  static Future<void> enableScreenForAnalysis(bool value) async {
    return _g194954421.xfb378423614(value);
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
