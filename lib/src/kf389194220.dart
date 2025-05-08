//
//

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/hm369046998.dart';
import 'package:medallia_dxa/src/rsd17384820.dart';
import 'package:medallia_dxa/src/diw441315559.dart';
import 'package:medallia_dxa/src/r736528680.dart' as enums;
import 'package:medallia_dxa/src/r736528680.dart';
import 'package:medallia_dxa/src/yk254782636.dart';
import 'package:medallia_dxa/src/eg553098165.dart';
import 'package:medallia_dxa/src/e465455659.dart';
import 'package:medallia_dxa/src/sa305218133.dart';
import 'package:medallia_dxa/src/au721560410.dart';
import 'package:medallia_dxa/src/mbc806890118.dart';
import 'package:medallia_dxa/src/sb487303956.dart';
import 'package:medallia_dxa/src/tz64669965.dart';
import 'package:medallia_dxa/src/vz764152707.dart';

//
class Md733036098 {
  Md733036098({
    required Ea808717683 yt594445249,
    required Iil672746480 zh1002117500,
    required D170396941 he238486251,
    required F886530208 q778468804,
    required Wm325315769 w962191508,
    required this.nos281063984,
    required this.wb821880579,
  }) {
    _qd194954313 = S391383193(
      sjf387023877: zh1002117500,
      he238486251: he238486251,
      q778468804: q778468804,
      yt594445249: yt594445249,
      w962191508: w962191508,
      uk413488909: h929328231,
      mlb294200060: mlb294200060,
      ilg55450934: ilg55450934,
      a280651844: a280651844,
      y612932531: y612932531,
      s690467385: s690467385,
      jo393527815: jo393527815,
      hxx972093112: hxx972093112,
      gna553736075: gna553736075,
    );
  }

  late final S391383193 _qd194954313;
  S391383193 get khf505118026 => _qd194954313;
  late final R859070342 _xw768939334 =
      Z583051022.n892084105.dk507881119;
  late final Xc87340369 _xn447603084 =
      Z583051022.n892084105.cd522100006;
  late final Xl1047663018 _j750376091 = Z583051022.n892084105.ltl653425985;
  late final A394369591 _isp381625578 = Z583051022.n892084105.gc751987941;
  late final O520943210 _uu398446768 =
      Z583051022.n892084105.qgk349873267;
  final String nos281063984;
  MedalliaDxaCustomerConsentType wb821880579;

  bool _xcr182681480 = false;
  bool _jdr84173944 = false;
  //
  //
  bool get zi884417682 => _jdr84173944;
  bool get mii901481782 => _xcr182681480;

  bool _rce963053293 = false;
  bool _z1045368215 = false;
  bool get ph945440336 => _rce963053293;
  bool get tpk101453203 =>
      _z1045368215 || _rce963053293;

  @visibleForTesting
  NavigatorObserver h929328231() {
    _isp381625578.tog141628530(Qqg355692373.yjj380883651, 'get new route observer');
    return _uu398446768.n37041249();
  }

  @visibleForTesting
  void ilg55450934(
    RouterDelegate rj262923947,
    String Function() oor628754317,
  ) {
    _isp381625578.tog141628530(
      Qqg355692373.yjj380883651,
      'set router delegate name callback',
    );

    _uu398446768.lh315757544(rj262923947);
    _uu398446768
        .ilg55450934(oor628754317);
  }

  @visibleForTesting
  void a280651844(
    String? Function(RouteSettings) e966661764,
  ) {
    _uu398446768.a280651844(e966661764);
  }

  @visibleForTesting
  void y612932531(String bt343814784) {
    _uu398446768.v888190482({'/': bt343814784});
  }

  @visibleForTesting
  void gna553736075(Map<String, String> tg872650425) {
    _isp381625578.tog141628530(
      Qqg355692373.yjj380883651,
      '_setAlternativeScreenNames $tg872650425',
    );

    _uu398446768.v888190482(tg872650425);
  }

  Future<void> r460196087(bool ovs510790092) async {
    _isp381625578.tog141628530(
      Qqg355692373.yjj380883651,
      'Tracking permission set to: $ovs510790092',
    );
    _xcr182681480 = ovs510790092;
    //
    if (!ovs510790092) {
      await _i630025028(false, hme1073705378: false);
      if (_xw768939334.p378495635) return;
      await _j750376091.w531893145();
    }
  }

  void hxx972093112(List<String> iip881907465) {
    _isp381625578.tog141628530(
      Qqg355692373.yjj380883651,
      'setTrackingDisabledScreenList $iip881907465',
    );
    _j750376091.hxx972093112(iip881907465);
  }

  void s690467385(List<String> sn275274641) {
    _isp381625578.tog141628530(
      Qqg355692373.yjj380883651,
      'setRecordingDisabledScreenList $sn275274641',
    );
    _j750376091.s690467385(sn275274641);
  }

  void jo393527815(String cef111096577) {
    _j750376091.jo393527815(cef111096577);
  }

  Future<void> _i630025028(
    bool ovs510790092, {
    bool hme1073705378 = true,
  }) async {
    _isp381625578.tog141628530(
      Qqg355692373.yjj380883651,
      'Recording permission set to: $ovs510790092',
    );
    _jdr84173944 = ovs510790092;
    if (ovs510790092) {
      _xn447603084.psf163679957();
    } else {
      _xn447603084.xq689591444();
      if (_xw768939334.p378495635) return;
      if (hme1073705378) {
        await _xn447603084.zam260696760();
      }
    }
  }

  Future<void> m418529659({
    required bool zv1021267731,
    required bool r394447570,
  }) async {
    _isp381625578.tog141628530(
      Qqg355692373.a577029444,
      'setSamplingData stopTrackingDueToSample: $zv1021267731 stopRecordingDueToSampling: $r394447570',
    );
    _rce963053293 = zv1021267731;
    _z1045368215 = r394447570;

    if (tpk101453203) {
      _xn447603084.xq689591444();
    } else {
      _xn447603084.psf163679957();
    }
    if (ph945440336) {
      await _j750376091.w531893145();
    }
  }

  Future<void> mlb294200060(
    enums.MedalliaDxaCustomerConsentType o1060737145,
  ) async {
    _isp381625578.tog141628530(
      Qqg355692373.ad959100900,
      'Set consent to $o1060737145',
    );
    wb821880579 = o1060737145;
    switch (o1060737145) {
      case enums.MedalliaDxaCustomerConsentType.none:
        //
        await r460196087(false);

        break;
      case enums.MedalliaDxaCustomerConsentType.analytics:
        await _i630025028(false);
        await r460196087(true);
        break;
      case enums.MedalliaDxaCustomerConsentType.analyticsAndRecording:
        await _i630025028(true);
        await r460196087(true);
        break;
      default:
    }
  }
}
