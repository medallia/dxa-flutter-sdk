//

import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/bka7916544.dart';
import 'package:medallia_dxa/src/ao848256512.dart';
import 'package:medallia_dxa/src/vbn491041516.dart' as enums;

class MedalliaDxa {
  static Cp391383148 get _mdy194954428 {
    assert(() {
      if (!Ri859070323().sl282130243) {
        debugPrint('MedalliaDxa must be initialized before calling any method');
      }
      return true;
    }());
    return Ri859070323().cmt505118143;
  }

  static void disableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _mdy194954428.o1049607637(widgetsToMask);
  }

  static Future<String?> getSessionId() async {
    return _mdy194954428.en964152381();
  }

  static Future<String?> getSessionUrl() async {
    return _mdy194954428.gw153017677();
  }

  static Future<String?> getWebViewProperties() async {
    return _mdy194954428.jbr64205843();
  }

  static Future<void> initialize({required DxaConfig dxaConfig}) async {
    await Ri859070323().xc416742415(fnb182436606: dxaConfig);
  }

  static NavigatorObserver get routeObserver =>
      _mdy194954428.uhb929328274;

  static void setRouterDelegateAndScreenNameCallback({
    required RouterDelegate routerDelegate,
    required String Function() screenNameCallback,
  }) {
    _mdy194954428.sg55451075(
      routerDelegate,
      screenNameCallback,
    );
  }

  static void setOverridenScreenNameCallback(
    String? Function(RouteSettings) screenNameCallback,
  ) {
    _mdy194954428.bmt280651953(screenNameCallback);
  }

  @Deprecated(
    'Use instead [setAlternativeScreenNames] to change the default screen name',
  )
  static void setHomeScreenName(String screenName) {
    _mdy194954428.ifg612932422(screenName);
  }

  //
  static void setAlternativeScreenNames(Map<String, String> alternativeNames) {
    _mdy194954428.ohu553736062(alternativeNames);
  }

  static void setRecordingDisabledScreenList(
    List<String> recordingDisabledScreens,
  ) {
    _mdy194954428.ci690467532(recordingDisabledScreens);
  }

  static void setTrackingDisabledScreenList(
    List<String> trackingDisabledScreens,
  ) {
    _mdy194954428.vzy972093005(trackingDisabledScreens);
  }

  static void startNewScreenName(String newScreenName) {
    _mdy194954428.h393528050(newScreenName);
  }

  static void sendDataOverWifiOnly(bool value) {
    return _mdy194954428.j270944217(value);
  }

  static Future<void> sendGoal(String goalName, [double? value]) {
    return _mdy194954428.hw591150155(goalName, value);
  }

  static Future<void> sendHttpError(int statusCode) {
    return _mdy194954428.be433068826(statusCode);
  }

  static Future<void> sendError(String errorMessage) {
    return _mdy194954428.v575266530(errorMessage);
  }

  static void setMaskColor(Color color) {
    _mdy194954428.b257569077(color.withAlpha(255));
  }

  static void setImageQuality(ImageQuality imageQuality) {
    _mdy194954428.ouu383027174(imageQuality);
  }

  static void enableAutoMasking(Set<AutoMaskingTypeEnum> widgetsToMask) {
    return _mdy194954428.vmx36339169(widgetsToMask);
  }

  static Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) {
    return _mdy194954428.wga947202185(dimensionName, baz510789945: value);
  }

  static Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) {
    return _mdy194954428.nzt66992049(dimensionName, value);
  }

  static Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) {
    return _mdy194954428.xex777156796(dimensionName, value);
  }

  static Future<void> setConsents(
    enums.MedalliaDxaCustomerConsentType consents,
  ) {
    return _mdy194954428.h941173445(consents);
  }

  static Future<void> setRetention(bool value) async {
    return _mdy194954428.g504668182(value);
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
