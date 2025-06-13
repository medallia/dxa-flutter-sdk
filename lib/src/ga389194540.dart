//
//

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/uf369047318.dart';
import 'package:medallia_dxa/src/wsu17385396.dart';
import 'package:medallia_dxa/src/e441315879.dart';
import 'package:medallia_dxa/src/aj736529384.dart' as enums;
import 'package:medallia_dxa/src/aj736529384.dart';
import 'package:medallia_dxa/src/td254783084.dart';
import 'package:medallia_dxa/src/wrv553097589.dart';
import 'package:medallia_dxa/src/bh465455339.dart';
import 'package:medallia_dxa/src/e305217685.dart';
import 'package:medallia_dxa/src/jq721559962.dart';
import 'package:medallia_dxa/src/m806889542.dart';
import 'package:medallia_dxa/src/s487303636.dart';
import 'package:medallia_dxa/src/sjx64670669.dart';
import 'package:medallia_dxa/src/mry764152131.dart';

//
class G733035650 {
  G733035650({
    required Egt808718259 w594444545,
    required I672745776 htl1002118076,
    required Iqa170397645 k238485547,
    required Gji886530656 xp778469124,
    required I325316217 uom962191956,
    required this.lt281063664,
    required this.squ821880259,
  }) {
    _b194954889 = Ia391383641(
      dgh387024581: htl1002118076,
      k238485547: k238485547,
      xp778469124: xp778469124,
      w594444545: w594444545,
      uom962191956: uom962191956,
      lf413488589: crh929328807,
      l294199356: l294199356,
      con55451638: con55451638,
      et280652420: et280652420,
      snn612931955: snn612931955,
      vuq690467065: vuq690467065,
      p393527495: p393527495,
      xg972092536: xg972092536,
      jnm553735499: jnm553735499,
    );
  }

  late final Ia391383641 _b194954889;
  Ia391383641 get l505118602 => _b194954889;
  late final V859069766 _ws768939910 =
      Fn583050702.gj892083529.j507880543;
  late final Xp87340945 _lah447603532 =
      Fn583050702.gj892083529.vm522100710;
  late final W1047663466 _otj750376539 = Fn583050702.gj892083529.vk653426561;
  late final Vqj394369271 _o381625898 = Fn583050702.gj892083529.z751988261;
  late final Hoh520942762 _t398447216 =
      Fn583050702.gj892083529.d349873843;
  final String lt281063664;
  MedalliaDxaCustomerConsentType squ821880259;

  bool _vwa182680904 = false;
  bool _w84174520 = false;
  //
  //
  bool get rg884418130 => _w84174520;
  bool get c901482486 => _vwa182680904;

  bool _o963052589 = false;
  bool _t1045368663 = false;
  bool get cd945439888 => _o963052589;
  bool get v101453651 =>
      _t1045368663 || _o963052589;

  @visibleForTesting
  NavigatorObserver crh929328807() {
    _o381625898.rw141629106(F355691925.llr380882947, 'get new route observer');
    return _t398447216.lel37041825();
  }

  @visibleForTesting
  void con55451638(
    RouterDelegate kd262923371,
    String Function() ubp628753741,
  ) {
    _o381625898.rw141629106(
      F355691925.llr380882947,
      'set router delegate name callback',
    );

    _t398447216.kob315756840(kd262923371);
    _t398447216
        .con55451638(ubp628753741);
  }

  @visibleForTesting
  void et280652420(
    String? Function(RouteSettings) wfy966661188,
  ) {
    _t398447216.et280652420(wfy966661188);
  }

  @visibleForTesting
  void snn612931955(String x343814208) {
    _t398447216.e888190162({'/': x343814208});
  }

  @visibleForTesting
  void jnm553735499(Map<String, String> wc872649849) {
    _o381625898.rw141629106(
      F355691925.llr380882947,
      '_setAlternativeScreenNames $wc872649849',
    );

    _t398447216.e888190162(wc872649849);
  }

  Future<void> tft460196407(bool fch510790412) async {
    _o381625898.rw141629106(
      F355691925.llr380882947,
      'Tracking permission set to: $fch510790412',
    );
    _vwa182680904 = fch510790412;
    //
    if (!fch510790412) {
      await _wkr630024580(false, hgl1073705826: false);
      if (_ws768939910.xqb378495059) return;
      await _otj750376539.c531892569();
    }
  }

  void xg972092536(List<String> em881907145) {
    _o381625898.rw141629106(
      F355691925.llr380882947,
      'setTrackingDisabledScreenList $em881907145',
    );
    _otj750376539.xg972092536(em881907145);
  }

  void vuq690467065(List<String> tll275274065) {
    _o381625898.rw141629106(
      F355691925.llr380882947,
      'setRecordingDisabledScreenList $tll275274065',
    );
    _otj750376539.vuq690467065(tll275274065);
  }

  void p393527495(String jwx111096257) {
    _otj750376539.p393527495(jwx111096257);
  }

  Future<void> _wkr630024580(
    bool fch510790412, {
    bool hgl1073705826 = true,
  }) async {
    _o381625898.rw141629106(
      F355691925.llr380882947,
      'Recording permission set to: $fch510790412',
    );
    _w84174520 = fch510790412;
    if (fch510790412) {
      _lah447603532.c163679253();
    } else {
      _lah447603532.f689591892();
      if (_ws768939910.xqb378495059) return;
      if (hgl1073705826) {
        await _lah447603532.vh260696184();
      }
    }
  }

  Future<void> oeb418530235({
    required bool ivn1021267411,
    required bool f394446866,
  }) async {
    _o381625898.rw141629106(
      F355691925.io577030020,
      'setSamplingData stopTrackingDueToSample: $ivn1021267411 stopRecordingDueToSampling: $f394446866',
    );
    _o963052589 = ivn1021267411;
    _t1045368663 = f394446866;

    if (v101453651) {
      _lah447603532.f689591892();
    } else {
      _lah447603532.c163679253();
    }
    if (cd945439888) {
      await _otj750376539.c531892569();
    }
  }

  Future<void> l294199356(
    enums.MedalliaDxaCustomerConsentType o1060737721,
  ) async {
    _o381625898.rw141629106(
      F355691925.xny959100196,
      'Set consent to $o1060737721',
    );
    squ821880259 = o1060737721;
    switch (o1060737721) {
      case enums.MedalliaDxaCustomerConsentType.none:
        //
        await tft460196407(false);

        break;
      case enums.MedalliaDxaCustomerConsentType.analytics:
        await _wkr630024580(false);
        await tft460196407(true);
        break;
      case enums.MedalliaDxaCustomerConsentType.analyticsAndRecording:
        await _wkr630024580(true);
        await tft460196407(true);
        break;
      default:
    }
  }
}
