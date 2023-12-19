//
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/kd290553715.dart';
import 'package:medallia_dxa/src/s974258826.dart';
import 'package:medallia_dxa/src/nq252672364.dart';
import 'package:medallia_dxa/src/v943817757.dart';
import 'package:medallia_dxa/src/x209815696.dart';
import 'package:medallia_dxa/src/fa681534490.dart';
import 'package:medallia_dxa/src/gz173740548.dart';
import 'package:medallia_dxa/src/xtn452802276.dart';
import 'package:medallia_dxa/src/e304042020.dart';
import 'package:medallia_dxa/src/cr255041688.dart';
import 'package:medallia_dxa/src/lk966267635.dart';

class M1047662934 with No764602450, WidgetsBindingObserver {
  M1047662934(
    this.kmn491197894,
    this._v1061096855,
    this._e447603056,
    this._sy399100346,
    this._afg336584779,
  ) {
    _afg336584779.addObserver(this);
  }

  final M733036222 kmn491197894;
  final R394369739 _v1061096855;
  final Czj87340461 _e447603056;
  final M1013317358 _sy399100346;
  final WidgetsBinding _afg336584779;
  late final Irv520943254 _wtq398446668 =
      Ka583051250.fc892084085.g349873295;
  Logger get m613848909 => _v1061096855.a326301569;
  final Po1038099059 _rr1037595595 = Po1038099059();
  final List<Ib686664121> _k403891346 = [];
  List<Ib686664121>? _xfz728063864 = [];
  final StreamController<Ib686664121> scr398417002 =
      StreamController.broadcast();
  final List<V785065430> wc742410400 =
      [];
  final List<Completer> jug554015647 =
      List.empty(growable: true);
  final List<Completer> xcy695814067 =
      List.empty(growable: true);
  List<String> _m1027063714 = [];
  void j972092996(List<String> wcf881907701) {
    _m1027063714 = wcf881907701;
  }

  List<String> _an444608217 = [];
  void rg690467525(List<String> wup275274605) {
    _an444608217 = wup275274605;
  }

  List<Ib686664121> get lw605165172 => _k403891346;
  List<Ib686664121>? oob813143601;
  bool get fp602844315 => yr565191757;
  bool yr565191757 = false;

  Size? _grq670081114;
  Size get qaq193981369 => _grq670081114!;
  set qaq193981369(Size f409602842) {
    if (f409602842 == _grq670081114) return;
    //
    if (_grq670081114 == null) {
      _grq670081114 = f409602842;
    } else {
      _grq670081114 = f409602842;
      xwg267113443();
    }
  }

  void _gu510844608(Ib686664121 xc662082997) {
    _k403891346.add(xc662082997);
  }

  Ib686664121? get ax436425620 {
    final List<Ib686664121> lz64403388 =
        List<Ib686664121>.from(lw605165172)
          ..removeWhere((v412700404) => v412700404.w469235517);
    if (lz64403388.isEmpty) return null;
    return lz64403388.single;
  }

  bool tz134583592(Ib686664121 og497095658) {
    if (_xfz728063864 == null) return true;
    Ib686664121? xc662082997;
    try {
      xc662082997 = _p710236659(
        _xfz728063864!,
      );
    } catch (e) {
      tih865956001();
      return true;
    }
    if (xc662082997 != og497095658) {
      tih865956001();
      return true;
    }
    return false;
  }

  void tih865956001() {
    _wtq398446668.hqa483954310();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState vf933775524) {
    if (!kmn491197894.v740508740) return;
    m613848909.d('didChangeAppLifecycleState $vf933775524');

    super.didChangeAppLifecycleState(vf933775524);

    switch (vf933775524) {
      case AppLifecycleState.resumed:
        _ni247375619();
        break;

      default:
        if (vf933775524 == AppLifecycleState.paused ||
            vf933775524 == AppLifecycleState.inactive) {
          _m999118202();
        }
    }
  }

  @override
  void didChangeMetrics() {
    if (!kmn491197894.v740508740) return;
    m613848909.d('didChangeMetrics');

    svj653426109.qaq193981369 =
        _afg336584779.platformDispatcher.views.first.physicalSize;

    super.didChangeMetrics();
  }

  Ib686664121 ch38581037({
    required String na459292718,
    required String ej652312439,
    required List<Xv958539162> enx986357153,
    required List<Xv958539162> pc916462927,
  }) {
    Skn72708946? r876937644;
    late final bool rd901481930;
    late final bool zl884417646;

    _m1027063714.contains(ej652312439).m265148329((dsk144550134) {
      rd901481930 = !dsk144550134;
    });
    _an444608217.contains(ej652312439).m265148329((dsk144550134) {
      zl884417646 = !dsk144550134;
    });

    bool glg51384828 = rd901481930;
    bool mt61260608 = zl884417646;

    final String i1017888548 = ej652312439;

    //
    if (_sy399100346
        .xh68325679(i1017888548)) {
      glg51384828 = false;
    }

    //
    if (_sy399100346
        .swl317035655(i1017888548)) {
      mt61260608 = false;
      r876937644 = Skn72708946.qu335361051;
    }
    //
    if (!zl884417646) {
      r876937644 = Skn72708946.c717760015;
    }

    final int blt212009929 = DateTime.now().millisecondsSinceEpoch;

    final Ib686664121 xc662082997 = Ib686664121.standard(
      na459292718: na459292718,
      enx986357153: enx986357153,
      pc916462927: pc916462927,
      blt212009929: blt212009929,
      ej652312439: ej652312439,
      zl884417646: mt61260608,
      rd901481930: glg51384828,
      r876937644: r876937644,
    );

    return xc662082997;
  }

  //
  Future<void> wyz64444053(
    List<Ib686664121> rlu859566050, {
    bool jc136056683 = false,
  }) async {
    final Completer l468299424 = Completer();
    await cn756758964(
      (l468299424) => rbn528426767(
        rlu859566050,
        l468299424,
        jc136056683: jc136056683,
      ),
      l468299424,
    );
  }

  //
  Ib686664121 _p710236659(
    List<Ib686664121> rlu859566050,
  ) {
    final List<Ib686664121> r1054695793 = [];
    final List<Ib686664121> lq455359744 = [];
    for (final candidate in rlu859566050) {
      if (candidate.hzu243852452) continue;
      if (candidate.dv368020889) continue;
      if (candidate.p408144360.n4311101) {
        r1054695793.add(candidate);
        if (!candidate.enx986357153.last.hv447820182) {
          lq455359744.add(candidate);
        }
      }
    }
    if (r1054695793.length == 1) return r1054695793.first;

    //
    //
    //
    //
    //
    //
    //
    //
    //
    if (r1054695793.length > 1) {
      late Ib686664121 k888252445;

      //
      k888252445 = r1054695793.singleWhere(
        (v412700404) => v412700404.enx986357153.any((v412700404) => v412700404.hv447820182),
      );

      //
      //
      lq455359744.sort(
        (cz170824737, hcf14385656) => cz170824737.enx986357153.last.ff77244312
            .compareTo(hcf14385656.enx986357153.last.ff77244312),
      );

      //
      for (var pp499530508 = 0; pp499530508 < lq455359744.length - 1; pp499530508++) {
        final vh451901885 =
            lq455359744[pp499530508].enx986357153.last as L176060407;

        final bool fov137001785 =
            vh451901885
                    .vm219402451.igp968880948 ==
                lq455359744[pp499530508 + 1]
                    .enx986357153
                    .first
                    .igp968880948;
        final bool roi112499921 =
            vh451901885
                .vm219402451.cf435388372
                .contains(
          lq455359744[pp499530508 + 1]
              .enx986357153
              .first
              .igp968880948,
        );

        if (!fov137001785 &&
            !roi112499921) {
          throw StateError('non opaque route is not a valid nestedRoute');
        }
      }

      //
      //
      if ((lq455359744.first.enx986357153.last
                  as L176060407)
              .vm219402451 ==
          k888252445.enx986357153.first) {
        return lq455359744.first;
      }

      //
      //
      if ((lq455359744.first.enx986357153.last
                  as L176060407)
              .igp968880948 ==
          k888252445.enx986357153.first.igp968880948) {
        return lq455359744.first;
      }

      //
      //
      if ((lq455359744.first.enx986357153.last
              as L176060407)
          .vm219402451
          .cf435388372
          .contains(
            k888252445.enx986357153.first.igp968880948,
          )) {
        return lq455359744.first;
      }

      //
      //
      if (k888252445.enx986357153
          .lastWhere((v412700404) => v412700404.hv447820182)
          .cf435388372
          .contains(
            lq455359744
                .last.enx986357153.last.igp968880948,
          )) {
        return lq455359744.first;
      }
      throw StateError(
        'opaque route candidate shouldnt be painted under non opaque candidate 2',
      );
    }
    throw StateError('not found');
  }

  //wyz64444053_p710236659_p710236659
  Future<void> rbn528426767(
    List<Ib686664121> rlu859566050,
    Completer l468299424, {
    bool jc136056683 = false,
  }) async {
    //
    await nor612389423();

    if (l468299424.isCompleted) return;

    if (!kmn491197894.rd901481930) return;

    late bool xmg978332237;
    //
    //
    //
    //
    //
    //
    if (oob813143601 != null) {
      xmg978332237 = true;
      oob813143601 = null;
    } else {
      xmg978332237 = jc136056683;
    }
    if (ax436425620 != null) {
      await d867603751(ax436425620!.na459292718);
    }
    await ztx551885180();
    if (l468299424.isCompleted) return;
    //
    while (fp602844315) {
      await r333851755();
      if (l468299424.isCompleted) return;
    }

    //
    Ib686664121? xc662082997;
    while (xc662082997 == null) {
      try {
        xc662082997 =
            _p710236659(rlu859566050);
      } catch (e) {
        await r333851755();
        if (l468299424.isCompleted) return;
      }
    }
    if (l468299424.isCompleted) return;
    if (!xc662082997.rd901481930) {
      return;
    }
    _gu510844608(
      xc662082997,
    );
    _xfz728063864 = rlu859566050;
    m613848909.d(
      ' 🔵 Start Screen - name: ${xc662082997.ej652312439} - id: ${xc662082997.h161819528}',
    );
    await _rr1037595595.wyz64444053(
      Y186123142(
        yc343814780: xc662082997.ej652312439,
        ft228738351: xc662082997.h161819528,
        c312326126: xc662082997.blt212009929,
        jc136056683: xmg978332237,
      ),
    );
    scr398417002.add(xc662082997);
    await _e447603056.k306345260();
  }

  Future<void> d867603751(
    String ft228738351, {
    bool jc136056683 = false,
  }) async {
    if (!kmn491197894.v740508740) return;
    late Ib686664121 xc662082997;
    late Ib686664121? l497434441;

    if (ax436425620?.na459292718 == ft228738351) {
      l497434441 = ax436425620;
    } else {
      l497434441 = null;
    }

    //
    //
    if (l497434441 == null) return;
    _e447603056.rm145214087();
    final Completer trk31360291 = a696465765();
    xc662082997 = l497434441;
    //
    //
    final int ps290459994 = lw605165172.indexOf(xc662082997);
    final int ym594633434 = DateTime.now().millisecondsSinceEpoch;
    final Lrh270264504 vrt578647269 =
        xc662082997.k712080176(ym594633434);
    lw605165172[ps290459994] = vrt578647269;
    _xfz728063864 = null;
    final String s777338239 = vrt578647269.ej652312439;
    final int kum236312231 = vrt578647269.h161819528;
    final int ed101383487 = vrt578647269.t1032417917;

    await i619207797();

    late int qt884440114;
    if (vrt578647269.une225674859) {
      qt884440114 =
          vrt578647269.ueb442675173;
    } else {
      qt884440114 = ed101383487;
      await _e447603056.w117538763(
        vrt578647269,
      );
    }
    final C882557976 u350794413 = C882557976(
      yc343814780: s777338239,
      ft228738351: kum236312231,
      fg724616808: ed101383487,
      ufh355705481: qt884440114,
      jc136056683: jc136056683,
    );
    m613848909.d(
      ' 🟡 End Screen - name: ${u350794413.yc343814780} - id: ${u350794413.ft228738351} - endTime ${u350794413.fg724616808} - recordingEndTime ${u350794413.ufh355705481}',
    );
    await _rr1037595595.d867603751(u350794413);
    trk31360291.complete();
  }

  Future<void> krw531893093() async {
    if (ax436425620 == null) return;
    await d867603751(
      ax436425620!.na459292718,
    );
  }

  Future<void> _m999118202() async {
    //
    //
    //
    if (oob813143601 != null) return;
    //
    if (ax436425620 == null) return;
    oob813143601 =
        _xfz728063864;
    await d867603751(
      ax436425620!.na459292718,
      jc136056683: true,
    );
  }

  Future<void> _ni247375619() async {
    //
    if (oob813143601 == null) return;

    final List<Ib686664121> o944301891 =
        oob813143601!
            .map(
              (rgs286663283) => rgs286663283.ul623466017(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();

    oob813143601 = null;
    await wyz64444053(
      o944301891,
      jc136056683: true,
    );
  }

  Future<void> xwg267113443() async {
    if (ax436425620 == null) return;
    if (_xfz728063864 == null) return;
    final mmw557307845 = _xfz728063864;
    await d867603751(ax436425620!.na459292718);
    final List<Ib686664121> arb286015925 =
        mmw557307845!
            .map(
              (rgs286663283) => rgs286663283.ul623466017(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();
    await wyz64444053(arb286015925);
  }
}
