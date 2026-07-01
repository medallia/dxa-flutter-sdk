//
//

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/l369046961.dart';
import 'package:medallia_dxa/src/ov17384723.dart';
import 'package:medallia_dxa/src/r441315456.dart';
import 'package:medallia_dxa/src/gr736528719.dart' as enums;
import 'package:medallia_dxa/src/gr736528719.dart';
import 'package:medallia_dxa/src/scs254782667.dart';
import 'package:medallia_dxa/src/ykd553098194.dart';
import 'package:medallia_dxa/src/d465455692.dart';
import 'package:medallia_dxa/src/dx305218098.dart';
import 'package:medallia_dxa/src/ul721560381.dart';
import 'package:medallia_dxa/src/rm806890209.dart';
import 'package:medallia_dxa/src/q487304051.dart';
import 'package:medallia_dxa/src/iik64670058.dart';
import 'package:medallia_dxa/src/r764152804.dart';

//
class Hbb733036069 {
  Hbb733036069({
    required Km808717588 mm594445222,
    required I672746391 myy1002117403,
    required Hla170397034 gme238486156,
    required Yk886530247 ge778468771,
    required S325315806 x962191603,
    required this.nh281064023,
    required this.n821880676,
  }) {
    _mx194954286 = U391383294(
      cva387023970: myy1002117403,
      gme238486156: gme238486156,
      ge778468771: ge778468771,
      mm594445222: mm594445222,
      x962191603: x962191603,
      wg413489002: zmo929328128,
      z294199963: z294199963,
      t55450961: t55450961,
      en280651811: en280651811,
      mv612932564: mv612932564,
      c690467422: c690467422,
      g393527904: g393527904,
      pn972093151: pn972093151,
      y553736172: y553736172,
    );
  }

  late final U391383294 _mx194954286;
  U391383294 get s505117997 => _mx194954286;
  late final Q859070433 _u768939297 =
      B583051113.dfo892084206.cdw507881208;
  late final Tzo87340342 _id447603179 =
      B583051113.dfo892084206.wv522100033;
  late final Wec1047663053 _gxq750376188 = B583051113.dfo892084206.jot653425958;
  late final Zwh394369616 _isi381625485 = B583051113.dfo892084206.fg751987842;
  late final Zbo520943117 _wl398446807 =
      B583051113.dfo892084206.ls349873172;
  final String nh281064023;
  MedalliaDxaCustomerConsentType n821880676;

  bool _kti182681583 = false;
  bool _y84173855 = false;
  //
  //
  bool get awr884417781 => _y84173855;
  bool get jq901481809 => _kti182681583;

  bool _fb963053194 = false;
  bool _rvv1045368304 = false;
  bool get p945440311 => _fb963053194;
  bool get rch101453300 =>
      _rvv1045368304 || _fb963053194;

  @visibleForTesting
  NavigatorObserver zmo929328128() {
    _isi381625485.no141628437(X355692338.qb380883620, 'get new route observer');
    return _wl398446807.k37041158();
  }

  @visibleForTesting
  void t55450961(
    RouterDelegate sxt262923980,
    String Function() i628754410,
  ) {
    _isi381625485.no141628437(
      X355692338.qb380883620,
      'set router delegate name callback',
    );

    _wl398446807.fx315757455(sxt262923980);
    _wl398446807
        .t55450961(i628754410);
  }

  @visibleForTesting
  void en280651811(
    String? Function(RouteSettings) lu966661859,
  ) {
    _wl398446807.en280651811(lu966661859);
  }

  @visibleForTesting
  void mv612932564(String y343814887) {
    _wl398446807.hh888190581({'/': y343814887});
  }

  @visibleForTesting
  void y553736172(Map<String, String> jg872650462) {
    _isi381625485.no141628437(
      X355692338.qb380883620,
      '_setAlternativeScreenNames $jg872650462',
    );

    _wl398446807.hh888190581(jg872650462);
  }

  Future<void> cix460195984(bool lgn510790059) async {
    _isi381625485.no141628437(
      X355692338.qb380883620,
      'Tracking permission set to: $lgn510790059',
    );
    _kti182681583 = lgn510790059;
    //
    if (!lgn510790059) {
      await _xc630024995(false, qr1073705413: false);
      if (_u768939297.w378495732) return;
      await _gxq750376188.bk531893246();
    }
  }

  void pn972093151(List<String> zaf881907566) {
    _isi381625485.no141628437(
      X355692338.qb380883620,
      'setTrackingDisabledScreenList $zaf881907566',
    );
    _gxq750376188.pn972093151(zaf881907566);
  }

  void c690467422(List<String> vc275274742) {
    _isi381625485.no141628437(
      X355692338.qb380883620,
      'setRecordingDisabledScreenList $vc275274742',
    );
    _gxq750376188.c690467422(vc275274742);
  }

  void g393527904(String i111096678) {
    _gxq750376188.g393527904(i111096678);
  }

  Future<void> _xc630024995(
    bool lgn510790059, {
    bool qr1073705413 = true,
  }) async {
    _isi381625485.no141628437(
      X355692338.qb380883620,
      'Recording permission set to: $lgn510790059',
    );
    _y84173855 = lgn510790059;
    if (lgn510790059) {
      _id447603179.mpj163679922();
    } else {
      _id447603179.z689591539();
      if (_u768939297.w378495732) return;
      if (qr1073705413) {
        await _id447603179.fp260696799();
      }
    }
  }

  Future<void> co418529564({
    required bool syv1021267828,
    required bool qvk394447541,
  }) async {
    _isi381625485.no141628437(
      X355692338.k577029411,
      'setSamplingData stopTrackingDueToSample: $syv1021267828 stopRecordingDueToSampling: $qvk394447541',
    );
    _fb963053194 = syv1021267828;
    _rvv1045368304 = qvk394447541;

    if (rch101453300) {
      _id447603179.z689591539();
    } else {
      _id447603179.mpj163679922();
    }
    if (p945440311) {
      await _gxq750376188.bk531893246();
    }
  }

  Future<void> z294199963(
    enums.MedalliaDxaCustomerConsentType y1060737054,
  ) async {
    _isi381625485.no141628437(
      X355692338.g959100803,
      'Set consent to $y1060737054',
    );
    n821880676 = y1060737054;
    switch (y1060737054) {
      case enums.MedalliaDxaCustomerConsentType.none:
        //
        await cix460195984(false);

        break;
      case enums.MedalliaDxaCustomerConsentType.analytics:
        await _xc630024995(false);
        await cix460195984(true);
        break;
      case enums.MedalliaDxaCustomerConsentType.analyticsAndRecording:
        await _xc630024995(true);
        await cix460195984(true);
        break;
      default:
    }
  }
}
