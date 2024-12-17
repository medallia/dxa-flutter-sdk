//
//

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/w151964619.dart';
import 'package:medallia_dxa/src/xgu7916898.dart';
import 'package:medallia_dxa/src/v848256866.dart';
import 'package:medallia_dxa/src/qum491041678.dart' as enums;
import 'package:medallia_dxa/src/qum491041678.dart';
import 'package:medallia_dxa/src/zwy598169038.dart';
import 'package:medallia_dxa/src/s360100069.dart';
import 'package:medallia_dxa/src/ukp252672007.dart';
import 'package:medallia_dxa/src/zau943818102.dart';
import 'package:medallia_dxa/src/wk131648733.dart';
import 'package:medallia_dxa/src/jfy681534833.dart';
import 'package:medallia_dxa/src/q452802447.dart';
import 'package:medallia_dxa/src/d955933239.dart';
import 'package:medallia_dxa/src/fa255042035.dart';

//
class Wpk733036501 {
  Wpk733036501({
    required S808717540 dy594444886,
    required S1038099224 zfu1002117355,
    required Xs170396826 w238486396,
    required Yah886530359 o778468435,
    required Vjy325315886 uzk962191619,
    required this.hna281064359,
    required this.in821880468,
  }) {
    _pn194954718 = G391383310(
      jj387024274: zfu1002117355,
      w238486396: w238486396,
      o778468435: o778468435,
      dy594444886: dy594444886,
      uzk962191619: uzk962191619,
      j413488794: w929328624,
      j294200171: j294200171,
      vn55450785: vn55450785,
      tlo612932132: tlo612932132,
      x690467758: x690467758,
      w972093231: w972093231,
      og553735708: og553735708,
    );
  }

  late final G391383310 _pn194954718;
  G391383310 get jst505117917 => _pn194954718;
  late final Kbl859069969 _der768939217 =
      Zz583050905.rq892083742.oxm507881224;
  late final Gnn87340230 _wz447602715 =
      Zz583050905.rq892083742.lz522099889;
  late final Ah1047662653 _a750376204 = Zz583050905.rq892083742.io653425878;
  late final Sn394369952 _ns381625725 = Zz583050905.rq892083742.rzq751988082;
  late final Rb520943613 _ypn398446887 =
      Zz583050905.rq892083742.nr349873636;
  final String hna281064359;
  MedalliaDxaCustomerConsentType in821880468;

  bool _ol182681119 = false;
  bool _iyd84174319 = false;
  //
  //
  bool get hai884417797 => _iyd84174319;
  bool get rzr901481633 => _ol182681119;

  bool _tnz963053434 = false;
  bool _b1045367808 = false;
  bool get bf945440711 => _tnz963053434;
  bool get z101452804 =>
      _b1045367808 || _tnz963053434;

  @visibleForTesting
  NavigatorObserver w929328624() {
    _ns381625725.eoq141628901(T355692226.z380883796, 'get new route observer');
    return _ypn398446887.vq37041654();
  }

  @visibleForTesting
  void vn55450785(
    RouterDelegate tx262924092,
    String Function() bhp628753946,
  ) {
    _ns381625725.eoq141628901(
        T355692226.z380883796, 'set router delegate name callback');

    _ypn398446887.mm315757183(tx262924092);
    _ypn398446887
        .vn55450785(bhp628753946);
  }

  @visibleForTesting
  void tlo612932132(String nrs343814935) {
    _ypn398446887.qc888190853({'/': nrs343814935});
  }

  @visibleForTesting
  void og553735708(Map<String, String> jw872650542) {
    _ns381625725.eoq141628901(
      T355692226.z380883796,
      '_setAlternativeScreenNames $jw872650542',
    );

    _ypn398446887.qc888190853(jw872650542);
  }

  Future<void> vbl460196192(bool dnn510789723) async {
    _ns381625725.eoq141628901(
      T355692226.z380883796,
      'Tracking permission set to: $dnn510789723',
    );
    _ol182681119 = dnn510789723;
    //
    if (!dnn510789723) {
      await _cyh630024915(false);
      if (_der768939217.i378495748) return;
      await _a750376204.j531892750();
    }
  }

  void w972093231(List<String> s881907358) {
    _ns381625725.eoq141628901(
      T355692226.z380883796,
      'setTrackingDisabledScreenList $s881907358',
    );
    _a750376204.w972093231(s881907358);
  }

  void x690467758(List<String> bc275274246) {
    _ns381625725.eoq141628901(
      T355692226.z380883796,
      'setRecordingDisabledScreenList $bc275274246',
    );
    _a750376204.x690467758(bc275274246);
  }

  Future<void> _cyh630024915(bool dnn510789723) async {
    _ns381625725.eoq141628901(
      T355692226.z380883796,
      'Recording permission set to: $dnn510789723',
    );
    _iyd84174319 = dnn510789723;
    if (dnn510789723) {
      _wz447602715.uo163680066();
    } else {
      _wz447602715.pfy689591555();
      if (_der768939217.i378495748) return;
      await _wz447602715.odi260696879();
    }
  }

  Future<void> a418529516({
    required bool ot1021267588,
    required bool uzz394447685,
  }) async {
    _ns381625725.eoq141628901(
      T355692226.o577029331,
      'setSamplingData stopTrackingDueToSample: $ot1021267588 stopRecordingDueToSampling: $uzz394447685',
    );
    _tnz963053434 = ot1021267588;
    _b1045367808 = uzz394447685;

    if (z101452804) {
      _wz447602715.pfy689591555();
    } else {
      _wz447602715.uo163680066();
    }
    if (bf945440711) {
      await _a750376204.j531892750();
    }
  }

  Future<void> j294200171(
    enums.MedalliaDxaCustomerConsentType p1060737518,
  ) async {
    _ns381625725.eoq141628901(
      T355692226.ft959100531,
      'Set consent to $p1060737518',
    );
    in821880468 = p1060737518;
    switch (p1060737518) {
      case enums.MedalliaDxaCustomerConsentType.none:
        //
        await vbl460196192(false);

        break;
      case enums.MedalliaDxaCustomerConsentType.analytics:
        await _cyh630024915(false);
        await vbl460196192(true);
        break;
      case enums.MedalliaDxaCustomerConsentType.analyticsAndRecording:
        await _cyh630024915(true);
        await vbl460196192(true);
        break;
      default:
    }
  }
}
