//
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/ker151964282.dart';
import 'package:medallia_dxa/src/dvg104012463.dart';
import 'package:medallia_dxa/src/l1026614890.dart';
import 'package:medallia_dxa/src/pe290553769.dart';
import 'package:medallia_dxa/src/md848256723.dart';
import 'package:medallia_dxa/src/bmv491041343.dart' as enums;
import 'package:medallia_dxa/src/bmv491041343.dart';
import 'package:medallia_dxa/src/ye974258768.dart';
import 'package:medallia_dxa/src/vc879958691.dart';
import 'package:medallia_dxa/src/kbd337065473.dart';
import 'package:medallia_dxa/src/on263697541.dart';
import 'package:medallia_dxa/src/ieo857696517.dart';
import 'package:medallia_dxa/src/w598168703.dart';
import 'package:medallia_dxa/src/xgt360100180.dart';
import 'package:medallia_dxa/src/ph230685791.dart';
import 'package:medallia_dxa/src/i252672438.dart';
import 'package:medallia_dxa/src/yx943817927.dart';
import 'package:medallia_dxa/src/jk131648876.dart';
import 'package:medallia_dxa/src/hd681534656.dart';
import 'package:medallia_dxa/src/qqu832304222.dart';
import 'package:medallia_dxa/src/n173740766.dart';
import 'package:medallia_dxa/src/oa452802110.dart';
import 'package:medallia_dxa/src/j304042238.dart';
import 'package:medallia_dxa/src/i955933574.dart';
import 'package:medallia_dxa/src/ex255041602.dart';
import 'package:medallia_dxa/src/yi966267433.dart';

class Nw859070368 {
  factory Nw859070368() {
    return _ktu495137539;
  }
  Nw859070368._instanceConstructor() {
    wqz592220468 = Oxg602045290(ve639230212: this);
  }

  static final Nw859070368 _ktu495137539 = Nw859070368._instanceConstructor();
  Nw859070368.testing(
    Oxg602045290 s221952111,
  ) : wqz592220468 = s221952111;
  late final Oxg602045290 wqz592220468;
  bool m282130320 = false;
  bool _icd27022617 = false;
  bool get a740508830 => m282130320 && !k378495669;
  bool get k378495669 => _icd27022617;
  bool get xs993779455 => wqz592220468.xs993779455;

  late final DxaConfig s182436397;
  late final Sl733036132 t491197724 =
      Klj583051048.yrd892084143.hxv190648900;
  late final Mf808717653 mt594445287 = Klj583051048.yrd892084143.mt594445287;
  late final Uqs87340407 vcb522099968 =
      Klj583051048.yrd892084143.vcb522099968;
  late final W1047662988 e653426023 = Klj583051048.yrd892084143.e653426023;
  late final Br554625378 _pz709710205 =
      Br554625378();
  B391383231 get o505118060 {
    return a740508830
        ? t491197724.o505118060
        : _pz709710205;
  }

  Future<void> p416742620({
    required DxaConfig s182436397,
  }) async {
    if (m282130320) {
      wqz592220468.fcv238918135.r141628500(
        Ym355692403.yy994360021,
        'MedalliaDXA is already initialized',
      );
      return;
    }
    wqz592220468.frt122743884();
    this.s182436397 = s182436397;

    final ey910985854 = Nfe266530742(
      xmi907551754: s182436397.account,
      lmf666691894: s182436397.property,
      rws983811875: s182436397.consents.g273667856(),
      nl683835018: Gru608124293.nl683835018,
      f872188321: s182436397.crashReporterEnabled,
      sg33180815: s182436397.mobileDataEnabled,
      arn928857524: s182436397.enhancedLogsEnabled,
    );
    try {
      wqz592220468.fcv238918135
          .sl949360316(m285555336: s182436397.enhancedLogsEnabled);
      final T657504583 fr170016915 =
          await wqz592220468.w387023907.p416742620(ey910985854);
      m282130320 = true;
      wqz592220468.fcv238918135
          .r141628500(Ym355692403.yy994360021, 'MedalliaDXA initalized');
      //
      await wqz592220468.p583257644.c32651846
          .o893241424(fr170016915);
      if (wqz592220468
          .p583257644.c32651846.mj709781612) {
        return;
      }
      if (wqz592220468
          .p583257644.c32651846.f324838671) {
        return;
      }
      wqz592220468.q739088756(s182436397);

      //
      //
      await t491197724.uf294200026(s182436397.consents);
      wqz592220468.fcv238918135.r141628500(
        Ym355692403.in959100866,
        'Automatic masking configuration: ${mt594445287.m970049924}',
      );
    } catch (e) {
      wqz592220468.fcv238918135
          .r141628500(Ym355692403.yy994360021, 'MedalliaDXA failed to initialize');
      rethrow;
    }
  }

  Future<void> m231536310() async {
    if (_icd27022617) return;
    _icd27022617 = true;
    wqz592220468.fcv238918135.j566765590();
    if (!wqz592220468.xs993779455) return;
    await t491197724.ft460196049(false);
    vcb522099968.bq326102910();
    wqz592220468.p583257644.bq326102910();
    e653426023.bq326102910();
  }
}

class Oxg602045290 {
  Oxg602045290({required this.ve639230212});
  final Nw859070368 ve639230212;
  bool xs993779455 = false;
  late final Bcw394369553 fcv238918135;
  late final J427178222 p583257644;
  late final Bz1038099113 w387023907;

  void frt122743884() {
    w387023907 = Bz1038099113();
    fcv238918135 = Bcw394369553(
      w387023907: w387023907,
      a740508830: () {
        return ve639230212.a740508830;
      },
    );
    final U344142643 e946290672 = U344142643();
    final Jb1013317172 c32651846 = Jb1013317172(
      jm507881145: ve639230212,
      fcv238918135: fcv238918135,
    );
    final Oc153257652 rn385127047 = Oc153257652();
    p583257644 = J427178222(
      e946290672: e946290672,
      c32651846: c32651846,
      rn385127047: rn385127047,
      jm507881145: ve639230212,
    );
  }

  void q739088756(DxaConfig s182436397) {
    xs993779455 = true;
    final WidgetsBinding wf759432632 = Mo895188168.yrd892084143!;
    final pe674120066 = Ig204008874(
      sf325212441: wf759432632.addPostFrameCallback,
    );
    final mt594445287 = Mf808717653(fcv238918135: fcv238918135);
    final ags962720640 = Pv629109361(
      pl444312119: rootBundle,
      b917290093: vg,
      xf338013630: svg,
    );
    final SchedulerBinding jmk656604316 =
        Vu1026640707.yrd892084143!;

    final Qc746780872 c364809427 = Qc746780872();
    final e238486221 = Zao170396971(
      c364809427: c364809427,
      c32651846: p583257644.c32651846,
    );

    final Irn764602504 pr1001100441 = Irn764602504();
    final M187482741 grq1052757961 = M187482741();
    final vcb522099968 = Uqs87340407(
      grq1052757961: grq1052757961,
      pe674120066: pe674120066,
      e238486221: e238486221,
    );
    final e653426023 = W1047662988(
      wf759432632: wf759432632,
      c32651846: p583257644.c32651846,
    );
    final zql349873237 = Ekg520943180();
    final gg962191538 = W325315743();
    final m778468834 = Zzc886530182();

    final hxv190648900 = Sl733036132(
      e238486221: e238486221,
      gg962191538: gg962191538,
      m778468834: m778468834,
      mt594445287: mt594445287,
      yz1002117466: w387023907,
      fgf281063958: Gru608124293.nl683835018,
      l821880613: s182436397.consents,
    );

    Klj583051048(
      hxv190648900: hxv190648900,
      jm507881145: ve639230212,
      mt594445287: mt594445287,
      pe674120066: pe674120066,
      vyc751987907: fcv238918135,
      w387023907: w387023907,
      ags962720640: ags962720640,
      e653426023: e653426023,
      vcb522099968: vcb522099968,
      p583257644: p583257644,
      e238486221: e238486221,
      zql349873237: zql349873237,
      wf759432632: wf759432632,
      pr1001100441: pr1001100441,
      r995494418: jmk656604316,
      e946290672: p583257644.e946290672,
      c32651846: p583257644.c32651846,
    );
  }
}
