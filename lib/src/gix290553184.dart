//
//

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/lai151963827.dart';
import 'package:medallia_dxa/src/szs7917082.dart';
import 'package:medallia_dxa/src/mbl848256026.dart';
import 'package:medallia_dxa/src/mz491041014.dart' as enums;
import 'package:medallia_dxa/src/mz491041014.dart';
import 'package:medallia_dxa/src/skx598169270.dart';
import 'package:medallia_dxa/src/wq360100765.dart';
import 'package:medallia_dxa/src/ulo252672895.dart';
import 'package:medallia_dxa/src/z943818254.dart';
import 'package:medallia_dxa/src/cpo131649445.dart';
import 'package:medallia_dxa/src/x681534985.dart';
import 'package:medallia_dxa/src/v452801783.dart';
import 'package:medallia_dxa/src/ej955933007.dart';
import 'package:medallia_dxa/src/yyq255042187.dart';

//
class Ntp733035693 {
  Ntp733035693({
    required Sdw808718236 lr594444590,
    required Dzw1038098528 eyt1002118035,
    required Ay170397666 p238485508,
    required C886530639 ok778469163,
    required Sub325316182 p962191995,
    required this.qy281063647,
    required this.a821880300,
  }) {
    _e194954918 = Oqx391383670(
      r387024618: eyt1002118035,
      p238485508: p238485508,
      ok778469163: ok778469163,
      lr594444590: lr594444590,
      p962191995: p962191995,
      gru413488610: urf929328776,
      cz294199315: cz294199315,
      iv55451609: iv55451609,
      fki612931932: fki612931932,
      sit690467030: sit690467030,
      v972092503: v972092503,
      cqj553735524: cqj553735524,
    );
  }

  late final Oqx391383670 _e194954918;
  Oqx391383670 get geg505118629 => _e194954918;
  late final H859069801 _thh768939945 =
      Wyf583050721.wf892083558.aaq507880560;
  late final Cg87340990 _qy447603555 =
      Wyf583050721.wf892083558.aex522100681;
  late final Pf1047663429 _eh750376564 = Wyf583050721.wf892083558.o653426606;
  late final Nfs394369240 _i381625861 = Wyf583050721.wf892083558.b751988234;
  late final Gsm520942725 _h398447199 =
      Wyf583050721.wf892083558.nwc349873820;
  final String qy281063647;
  MedalliaDxaCustomerConsentType a821880300;

  bool _ahf182680935 = false;
  bool _zy84174487 = false;
  //
  //
  bool get byu884418173 => _zy84174487;
  bool get il901482457 => _ahf182680935;

  bool _c963052546 = false;
  bool _qpp1045368696 = false;
  bool get wu945439935 => _c963052546;
  bool get baf101453692 =>
      _qpp1045368696 || _c963052546;

  @visibleForTesting
  NavigatorObserver urf929328776() {
    _i381625861.ieh141629085(Cu355691962.qt380882988, 'get new route observer');
    return _h398447199.inw37041806();
  }

  @visibleForTesting
  void iv55451609(
    RouterDelegate sxc262923332,
    String Function() wr628753762,
  ) {
    _i381625861.ieh141629085(
        Cu355691962.qt380882988, 'set router delegate name callback');

    _h398447199.cm315756807(sxc262923332);
    _h398447199
        .iv55451609(wr628753762);
  }

  @visibleForTesting
  void fki612931932(String h343814255) {
    _h398447199.qzj888190205({'/': h343814255});
  }

  @visibleForTesting
  void cqj553735524(Map<String, String> od872649814) {
    _i381625861.ieh141629085(
      Cu355691962.qt380882988,
      '_setAlternativeScreenNames $od872649814',
    );

    _h398447199.qzj888190205(od872649814);
  }

  Future<void> s460196376(bool u510790435) async {
    _i381625861.ieh141629085(
      Cu355691962.qt380882988,
      'Tracking permission set to: $u510790435',
    );
    _ahf182680935 = u510790435;
    //
    if (!u510790435) {
      await _v630024619(false);
      if (_thh768939945.ner378495100) return;
      await _eh750376564.nl531892598();
    }
  }

  void v972092503(List<String> kxa881907174) {
    _i381625861.ieh141629085(
      Cu355691962.qt380882988,
      'setTrackingDisabledScreenList $kxa881907174',
    );
    _eh750376564.v972092503(kxa881907174);
  }

  void sit690467030(List<String> j275274110) {
    _i381625861.ieh141629085(
      Cu355691962.qt380882988,
      'setRecordingDisabledScreenList $j275274110',
    );
    _eh750376564.sit690467030(j275274110);
  }

  Future<void> _v630024619(bool u510790435) async {
    _i381625861.ieh141629085(
      Cu355691962.qt380882988,
      'Recording permission set to: $u510790435',
    );
    _zy84174487 = u510790435;
    if (u510790435) {
      _qy447603555.ksn163679290();
    } else {
      _qy447603555.mw689591931();
      if (_thh768939945.ner378495100) return;
      await _qy447603555.rma260696151();
    }
  }

  Future<void> t418530196({
    required bool aba1021267452,
    required bool wlg394446909,
  }) async {
    _i381625861.ieh141629085(
      Cu355691962.ic577030059,
      'setSamplingData stopTrackingDueToSample: $aba1021267452 stopRecordingDueToSampling: $wlg394446909',
    );
    _c963052546 = aba1021267452;
    _qpp1045368696 = wlg394446909;

    if (baf101453692) {
      _qy447603555.mw689591931();
    } else {
      _qy447603555.ksn163679290();
    }
    if (wu945439935) {
      await _eh750376564.nl531892598();
    }
  }

  Future<void> cz294199315(
    enums.MedalliaDxaCustomerConsentType q1060737686,
  ) async {
    _i381625861.ieh141629085(
      Cu355691962.sv959100171,
      'Set consent to $q1060737686',
    );
    a821880300 = q1060737686;
    switch (q1060737686) {
      case enums.MedalliaDxaCustomerConsentType.none:
        //
        await s460196376(false);

        break;
      case enums.MedalliaDxaCustomerConsentType.analytics:
        await _v630024619(false);
        await s460196376(true);
        break;
      case enums.MedalliaDxaCustomerConsentType.analyticsAndRecording:
        await _v630024619(true);
        await s460196376(true);
        break;
      default:
    }
  }
}
