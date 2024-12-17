//
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/w151964619.dart';
import 'package:medallia_dxa/src/mm104012574.dart';
import 'package:medallia_dxa/src/wq1026615259.dart';
import 'package:medallia_dxa/src/pk290553368.dart';
import 'package:medallia_dxa/src/v848256866.dart';
import 'package:medallia_dxa/src/qum491041678.dart' as enums;
import 'package:medallia_dxa/src/qum491041678.dart';
import 'package:medallia_dxa/src/ewh974259169.dart';
import 'package:medallia_dxa/src/dh879958802.dart';
import 'package:medallia_dxa/src/d337065904.dart';
import 'package:medallia_dxa/src/t263697716.dart';
import 'package:medallia_dxa/src/bo857696436.dart';
import 'package:medallia_dxa/src/zwy598169038.dart';
import 'package:medallia_dxa/src/s360100069.dart';
import 'package:medallia_dxa/src/k230686190.dart';
import 'package:medallia_dxa/src/ukp252672007.dart';
import 'package:medallia_dxa/src/zau943818102.dart';
import 'package:medallia_dxa/src/wk131648733.dart';
import 'package:medallia_dxa/src/jfy681534833.dart';
import 'package:medallia_dxa/src/ele832304623.dart';
import 'package:medallia_dxa/src/zy173740911.dart';
import 'package:medallia_dxa/src/q452802447.dart';
import 'package:medallia_dxa/src/o304042319.dart';
import 'package:medallia_dxa/src/d955933239.dart';
import 'package:medallia_dxa/src/fa255042035.dart';
import 'package:medallia_dxa/src/k966267800.dart';

class Kbl859069969 {
  factory Kbl859069969() {
    return _wlc495137458;
  }
  Kbl859069969._instanceConstructor() {
    zwh592220293 = Lez602045147(by639230133: this);
  }

  static final Kbl859069969 _wlc495137458 = Kbl859069969._instanceConstructor();
  Kbl859069969.testing(
    Lez602045147 hi221952478,
  ) : zwh592220293 = hi221952478;
  late final Lez602045147 zwh592220293;
  bool fq282129953 = false;
  bool _kcn27022504 = false;
  bool get kv740508975 => fq282129953 && !i378495748;
  bool get i378495748 => _kcn27022504;
  bool get pbr993779534 => zwh592220293.pbr993779534;

  late final DxaConfig lzr182436764;
  late final Wpk733036501 fiw491197613 =
      Zz583050905.rq892083742.s190649333;
  late final S808717540 dy594444886 = Zz583050905.rq892083742.dy594444886;
  late final Gnn87340230 lz522099889 =
      Zz583050905.rq892083742.lz522099889;
  late final Ah1047662653 io653425878 = Zz583050905.rq892083742.io653425878;
  late final X554625235 _pm709710028 =
      X554625235();
  G391383310 get jst505117917 {
    return kv740508975
        ? fiw491197613.jst505117917
        : _pm709710028;
  }

  Future<void> h416742765({
    required DxaConfig lzr182436764,
  }) async {
    if (fq282129953) {
      zwh592220293.tdf238917702.eoq141628901(
        T355692226.jol994360164,
        'MedalliaDXA is already initialized',
      );
      return;
    }
    zwh592220293.h122744317();
    this.lzr182436764 = lzr182436764;

    final hq910986191 = O266530311(
      zh907552187: lzr182436764.account,
      bv666691719: lzr182436764.property,
      ujm983811730: lzr182436764.consents.v273667745(),
      et683835195: Sq608123956.et683835195,
      dz872187920: lzr182436764.crashReporterEnabled,
      oda33180990: lzr182436764.mobileDataEnabled,
      j928857093: lzr182436764.enhancedLogsEnabled,
    );
    try {
      zwh592220293.tdf238917702
          .suw949360397(ynx285555513: lzr182436764.enhancedLogsEnabled);
      final Kiz657504502 oze170017058 =
          await zwh592220293.jj387024274.h416742765(hq910986191);
      fq282129953 = true;
      zwh592220293.tdf238917702
          .eoq141628901(T355692226.jol994360164, 'MedalliaDXA initalized');
      //
      await zwh592220293.t583258013.jmo32652279
          .x893241825(oze170017058);
      if (zwh592220293
          .t583258013.jmo32652279.g709781981) {
        return;
      }
      if (zwh592220293
          .t583258013.jmo32652279.x324838590) {
        return;
      }
      zwh592220293.lyy739088581(lzr182436764);

      //
      //
      await fiw491197613.j294200171(lzr182436764.consents);
      zwh592220293.tdf238917702.eoq141628901(
        T355692226.ft959100531,
        'Automatic masking configuration: ${dy594444886.sei970049589}',
      );
    } catch (e) {
      zwh592220293.tdf238917702
          .eoq141628901(T355692226.jol994360164, 'MedalliaDXA failed to initialize');
      rethrow;
    }
  }

  Future<void> s231536391() async {
    if (_kcn27022504) return;
    _kcn27022504 = true;
    zwh592220293.tdf238917702.x566765991();
    if (!zwh592220293.pbr993779534) return;
    await fiw491197613.vbl460196192(false);
    lz522099889.osx326102735();
    zwh592220293.t583258013.osx326102735();
    io653425878.osx326102735();
  }
}

class Lez602045147 {
  Lez602045147({required this.by639230133});
  final Kbl859069969 by639230133;
  bool pbr993779534 = false;
  late final Sn394369952 tdf238917702;
  late final Vmn427178335 t583258013;
  late final S1038099224 jj387024274;

  void h122744317() {
    jj387024274 = S1038099224();
    tdf238917702 = Sn394369952(
      jj387024274: jj387024274,
      kv740508975: () {
        return by639230133.kv740508975;
      },
    );
    final K344142466 oky946290241 = K344142466();
    final Je1013317509 jmo32652279 = Je1013317509(
      oxm507881224: by639230133,
      tdf238917702: tdf238917702,
    );
    final U153257733 k385127222 = U153257733();
    t583258013 = Vmn427178335(
      oky946290241: oky946290241,
      jmo32652279: jmo32652279,
      k385127222: k385127222,
      oxm507881224: by639230133,
    );
  }

  void lyy739088581(DxaConfig lzr182436764) {
    pbr993779534 = true;
    final WidgetsBinding nb759432201 = Zfl895188345.rq892083742!;
    final n674119731 = Nzn204008475(
      r325212328: nb759432201.addPostFrameCallback,
    );
    final dy594444886 = S808717540(tdf238917702: tdf238917702);
    final isq962720305 = S629109696(
      kb444312454: rootBundle,
      akq917290460: vg,
      usp338013199: svg,
    );
    final SchedulerBinding k656604461 =
        Eu1026640626.rq892083742!;

    final Ri746781049 iy364809570 = Ri746781049();
    final w238486396 = Xs170396826(
      iy364809570: iy364809570,
      jmo32652279: t583258013.jmo32652279,
    );

    final Plp764602681 c1001100584 = Plp764602681();
    final G187483076 lj1052757624 = G187483076();
    final lz522099889 = Gnn87340230(
      lj1052757624: lj1052757624,
      n674119731: n674119731,
      w238486396: w238486396,
    );
    final io653425878 = Ah1047662653(
      nb759432201: nb759432201,
      jmo32652279: t583258013.jmo32652279,
    );
    final nr349873636 = Rb520943613();
    final uzk962191619 = Vjy325315886();
    final o778468435 = Yah886530359();

    final s190649333 = Wpk733036501(
      w238486396: w238486396,
      uzk962191619: uzk962191619,
      o778468435: o778468435,
      dy594444886: dy594444886,
      zfu1002117355: jj387024274,
      hna281064359: Sq608123956.et683835195,
      in821880468: lzr182436764.consents,
    );

    Zz583050905(
      s190649333: s190649333,
      oxm507881224: by639230133,
      dy594444886: dy594444886,
      n674119731: n674119731,
      rzq751988082: tdf238917702,
      jj387024274: jj387024274,
      isq962720305: isq962720305,
      io653425878: io653425878,
      lz522099889: lz522099889,
      t583258013: t583258013,
      w238486396: w238486396,
      nr349873636: nr349873636,
      nb759432201: nb759432201,
      c1001100584: c1001100584,
      hm995494819: k656604461,
      oky946290241: t583258013.oky946290241,
      jmo32652279: t583258013.jmo32652279,
    );
  }
}
