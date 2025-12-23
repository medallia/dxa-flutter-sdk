//
//

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/d369047140.dart';
import 'package:medallia_dxa/src/jhb17385158.dart';
import 'package:medallia_dxa/src/top441316181.dart';
import 'package:medallia_dxa/src/cu736529050.dart' as enums;
import 'package:medallia_dxa/src/cu736529050.dart';
import 'package:medallia_dxa/src/wmd254783262.dart';
import 'package:medallia_dxa/src/zxx553097223.dart';
import 'package:medallia_dxa/src/dfy465455513.dart';
import 'package:medallia_dxa/src/tbg305218023.dart';
import 'package:medallia_dxa/src/iir721559784.dart';
import 'package:medallia_dxa/src/p806889780.dart';
import 'package:medallia_dxa/src/df487303334.dart';
import 'package:medallia_dxa/src/u64670399.dart';
import 'package:medallia_dxa/src/xx764151857.dart';

//
class Bfn733036016 {
  Bfn733036016({
    required Bya808718017 nk594444403,
    required Yqm672745538 h1002117838,
    required M170397375 vtj238485849,
    required I886530834 j778468982,
    required Mn325316363 r962192166,
    required this.k281063810,
    required this.izv821879985,
  }) {
    _it194955259 = Fm391383851(
      bs387024823: h1002117838,
      vtj238485849: vtj238485849,
      j778468982: j778468982,
      nk594444403: nk594444403,
      r962192166: r962192166,
      a413488319: n929329109,
      ojw294199630: ojw294199630,
      htf55451268: htf55451268,
      dlt280652790: dlt280652790,
      lz612931585: lz612931585,
      hg690467211: hg690467211,
      f393527733: f393527733,
      z972092682: z972092682,
      nye553735225: nye553735225,
    );
  }

  late final Fm391383851 _it194955259;
  Fm391383851 get kyr505118456 => _it194955259;
  late final Rtv859069492 _h768939764 =
      L583050428.buw892083259.nm507880749;
  late final Hoe87340771 _yk447603262 =
      L583050428.buw892083259.ja522100372;
  late final A1047663128 _s750376745 = L583050428.buw892083259.qb653426419;
  late final Cqd394369413 _j381626200 = L583050428.buw892083259.sx751988567;
  late final V520943064 _lk398447362 =
      L583050428.buw892083259.yyv349874113;
  final String k281063810;
  MedalliaDxaCustomerConsentType izv821879985;

  bool _wq182680634 = false;
  bool _j84174794 = false;
  //
  //
  bool get i884418336 => _j84174794;
  bool get vku901482116 => _wq182680634;

  bool _ci963052895 = false;
  bool _bv1045368357 = false;
  bool get jgl945440226 => _ci963052895;
  bool get d101453345 =>
      _bv1045368357 || _ci963052895;

  @visibleForTesting
  NavigatorObserver n929329109() {
    _j381626200.n141629376(Gs355691751.pgu380883313, 'get new route observer');
    return _lk398447362.tf37042131();
  }

  @visibleForTesting
  void htf55451268(
    RouterDelegate vgq262923545,
    String Function() sj628753471,
  ) {
    _j381626200.n141629376(
      Gs355691751.pgu380883313,
      'set router delegate name callback',
    );

    _lk398447362.usf315756634(vgq262923545);
    _lk398447362
        .htf55451268(sj628753471);
  }

  @visibleForTesting
  void dlt280652790(
    String? Function(RouteSettings) xf966661430,
  ) {
    _lk398447362.dlt280652790(xf966661430);
  }

  @visibleForTesting
  void lz612931585(String j343814450) {
    _lk398447362.fpz888190368({'/': j343814450});
  }

  @visibleForTesting
  void nye553735225(Map<String, String> jng872649995) {
    _j381626200.n141629376(
      Gs355691751.pgu380883313,
      '_setAlternativeScreenNames $jng872649995',
    );

    _lk398447362.fpz888190368(jng872649995);
  }

  Future<void> q460196677(bool qdt510790270) async {
    _j381626200.n141629376(
      Gs355691751.pgu380883313,
      'Tracking permission set to: $qdt510790270',
    );
    _wq182680634 = qdt510790270;
    //
    if (!qdt510790270) {
      await _y630024438(false, vsi1073705488: false);
      if (_h768939764.ztm378495265) return;
      await _s750376745.sg531892267();
    }
  }

  void z972092682(List<String> j881906875) {
    _j381626200.n141629376(
      Gs355691751.pgu380883313,
      'setTrackingDisabledScreenList $j881906875',
    );
    _s750376745.z972092682(j881906875);
  }

  void hg690467211(List<String> vbc275273763) {
    _j381626200.n141629376(
      Gs355691751.pgu380883313,
      'setRecordingDisabledScreenList $vbc275273763',
    );
    _s750376745.hg690467211(vbc275273763);
  }

  void f393527733(String h111095987) {
    _s750376745.f393527733(h111095987);
  }

  Future<void> _y630024438(
    bool qdt510790270, {
    bool vsi1073705488 = true,
  }) async {
    _j381626200.n141629376(
      Gs355691751.pgu380883313,
      'Recording permission set to: $qdt510790270',
    );
    _j84174794 = qdt510790270;
    if (qdt510790270) {
      _yk447603262.s163679591();
    } else {
      _yk447603262.bla689592102();
      if (_h768939764.ztm378495265) return;
      if (vsi1073705488) {
        await _yk447603262.it260696330();
      }
    }
  }

  Future<void> px418529993({
    required bool hwq1021267105,
    required bool dwb394447200,
  }) async {
    _j381626200.n141629376(
      Gs355691751.ne577029878,
      'setSamplingData stopTrackingDueToSample: $hwq1021267105 stopRecordingDueToSampling: $dwb394447200',
    );
    _ci963052895 = hwq1021267105;
    _bv1045368357 = dwb394447200;

    if (d101453345) {
      _yk447603262.bla689592102();
    } else {
      _yk447603262.s163679591();
    }
    if (jgl945440226) {
      await _s750376745.sg531892267();
    }
  }

  Future<void> ojw294199630(
    enums.MedalliaDxaCustomerConsentType kd1060737995,
  ) async {
    _j381626200.n141629376(
      Gs355691751.sq959099990,
      'Set consent to $kd1060737995',
    );
    izv821879985 = kd1060737995;
    switch (kd1060737995) {
      case enums.MedalliaDxaCustomerConsentType.none:
        //
        await q460196677(false);

        break;
      case enums.MedalliaDxaCustomerConsentType.analytics:
        await _y630024438(false);
        await q460196677(true);
        break;
      case enums.MedalliaDxaCustomerConsentType.analyticsAndRecording:
        await _y630024438(true);
        await q460196677(true);
        break;
      default:
    }
  }
}
