//
//

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/ker151964282.dart';
import 'package:medallia_dxa/src/tvh7916755.dart';
import 'package:medallia_dxa/src/md848256723.dart';
import 'package:medallia_dxa/src/bmv491041343.dart' as enums;
import 'package:medallia_dxa/src/bmv491041343.dart';
import 'package:medallia_dxa/src/w598168703.dart';
import 'package:medallia_dxa/src/xgt360100180.dart';
import 'package:medallia_dxa/src/i252672438.dart';
import 'package:medallia_dxa/src/yx943817927.dart';
import 'package:medallia_dxa/src/jk131648876.dart';
import 'package:medallia_dxa/src/hd681534656.dart';
import 'package:medallia_dxa/src/oa452802110.dart';
import 'package:medallia_dxa/src/i955933574.dart';
import 'package:medallia_dxa/src/ex255041602.dart';

//
class Sl733036132 {
  Sl733036132({
    required Mf808717653 mt594445287,
    required Bz1038099113 yz1002117466,
    required Zao170396971 e238486221,
    required Zzc886530182 m778468834,
    required W325315743 gg962191538,
    required this.fgf281063958,
    required this.l821880613,
  }) {
    _lru194954351 = B391383231(
      w387023907: yz1002117466,
      e238486221: e238486221,
      m778468834: m778468834,
      mt594445287: mt594445287,
      gg962191538: gg962191538,
      nv413488939: uk929328193,
      uf294200026: uf294200026,
      nfl55450896: nfl55450896,
      b612932501: b612932501,
      mp690467359: mp690467359,
      da972093086: da972093086,
      cq553736109: cq553736109,
    );
  }

  late final B391383231 _lru194954351;
  B391383231 get o505118060 => _lru194954351;
  late final Nw859070368 _wtt768939360 =
      Klj583051048.yrd892084143.jm507881145;
  late final Uqs87340407 _ny447603114 =
      Klj583051048.yrd892084143.vcb522099968;
  late final W1047662988 _rn750376125 = Klj583051048.yrd892084143.e653426023;
  late final Bcw394369553 _l381625548 = Klj583051048.yrd892084143.vyc751987907;
  late final Ekg520943180 _yz398446742 =
      Klj583051048.yrd892084143.zql349873237;
  final String fgf281063958;
  MedalliaDxaCustomerConsentType l821880613;

  bool _d182681518 = false;
  bool _h84173918 = false;
  //
  //
  bool get gvk884417716 => _h84173918;
  bool get bcl901481744 => _d182681518;

  bool _zm963053259 = false;
  bool _e1045368241 = false;
  bool get shz945440374 => _zm963053259;
  bool get th101453237 =>
      _e1045368241 || _zm963053259;

  @visibleForTesting
  NavigatorObserver uk929328193() {
    _l381625548.r141628500(Ym355692403.kg380883685, 'get new route observer');
    return _yz398446742.vrs37041223();
  }

  @visibleForTesting
  void nfl55450896(
    RouterDelegate fg262923917,
    String Function() q628754347,
  ) {
    _l381625548.r141628500(
        Ym355692403.kg380883685, 'set router delegate name callback');

    _yz398446742.uc315757518(fg262923917);
    _yz398446742
        .nfl55450896(q628754347);
  }

  @visibleForTesting
  void b612932501(String l343814822) {
    _yz398446742.dl888190516({'/': l343814822});
  }

  @visibleForTesting
  void cq553736109(Map<String, String> a872650399) {
    _l381625548.r141628500(
      Ym355692403.kg380883685,
      '_setAlternativeScreenNames $a872650399',
    );

    _yz398446742.dl888190516(a872650399);
  }

  Future<void> ft460196049(bool wvb510790122) async {
    _l381625548.r141628500(
      Ym355692403.kg380883685,
      'Tracking permission set to: $wvb510790122',
    );
    _d182681518 = wvb510790122;
    //
    if (!wvb510790122) {
      await _zsh630025058(false);
      if (_wtt768939360.k378495669) return;
      await _rn750376125.hew531893183();
    }
  }

  void da972093086(List<String> vj881907503) {
    _l381625548.r141628500(
      Ym355692403.kg380883685,
      'setTrackingDisabledScreenList $vj881907503',
    );
    _rn750376125.da972093086(vj881907503);
  }

  void mp690467359(List<String> by275274679) {
    _l381625548.r141628500(
      Ym355692403.kg380883685,
      'setRecordingDisabledScreenList $by275274679',
    );
    _rn750376125.mp690467359(by275274679);
  }

  Future<void> _zsh630025058(bool wvb510790122) async {
    _l381625548.r141628500(
      Ym355692403.kg380883685,
      'Recording permission set to: $wvb510790122',
    );
    _h84173918 = wvb510790122;
    if (wvb510790122) {
      _ny447603114.rk163679987();
    } else {
      _ny447603114.gl689591474();
      if (_wtt768939360.k378495669) return;
      await _ny447603114.zgy260696734();
    }
  }

  Future<void> ia418529629({
    required bool k1021267765,
    required bool cqv394447604,
  }) async {
    _l381625548.r141628500(
      Ym355692403.pd577029474,
      'setSamplingData stopTrackingDueToSample: $k1021267765 stopRecordingDueToSampling: $cqv394447604',
    );
    _zm963053259 = k1021267765;
    _e1045368241 = cqv394447604;

    if (th101453237) {
      _ny447603114.gl689591474();
    } else {
      _ny447603114.rk163679987();
    }
    if (shz945440374) {
      await _rn750376125.hew531893183();
    }
  }

  Future<void> uf294200026(
    enums.MedalliaDxaCustomerConsentType xw1060737119,
  ) async {
    _l381625548.r141628500(
      Ym355692403.in959100866,
      'Set consent to $xw1060737119',
    );
    l821880613 = xw1060737119;
    switch (xw1060737119) {
      case enums.MedalliaDxaCustomerConsentType.none:
        //
        await ft460196049(false);

        break;
      case enums.MedalliaDxaCustomerConsentType.analytics:
        await _zsh630025058(false);
        await ft460196049(true);
        break;
      case enums.MedalliaDxaCustomerConsentType.analyticsAndRecording:
        await _zsh630025058(true);
        await ft460196049(true);
        break;
      default:
    }
  }
}
