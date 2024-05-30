//
import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/ofi290553417.dart';
import 'package:medallia_dxa/src/k974259120.dart';
import 'package:medallia_dxa/src/eny252672086.dart';
import 'package:medallia_dxa/src/g1031389368.dart';
import 'package:medallia_dxa/src/hfg943818023.dart';
import 'package:medallia_dxa/src/auw209815978.dart';
import 'package:medallia_dxa/src/t681534752.dart';
import 'package:medallia_dxa/src/d173740862.dart';
import 'package:medallia_dxa/src/l452802526.dart';
import 'package:medallia_dxa/src/jn439716810.dart';
import 'package:medallia_dxa/src/u304042270.dart';
import 'package:medallia_dxa/src/e255041954.dart';
import 'package:medallia_dxa/src/iz336048755.dart';
import 'package:medallia_dxa/src/jui966267849.dart';

class Piq1047662700 with WidgetsBindingObserver, DisposeListeners {
  Piq1047662700(
    this.d491197692,
    this._jy1061096621,
    this._vs447602762,
    this._uu399100032,
    this._le336585073,
    this._pqb679689520,
    this._xe1037595377,
  ) {
    _le336585073.addObserver(this);
  }

  final O764602728 _pqb679689520;
  final Bx733036420 d491197692;
  final Kq394370033 _jy1061096621;
  final Rum87340183 _vs447602762;
  final Zg1013317588 _uu399100032;
  final WidgetsBinding _le336585073;
  late final Bw520943532 _ok398446966 =
      Wx583050952.opf892083791.ffc349873589;
  final Yqe1038099273 _xe1037595377;
  final List<Vo686663811> _d403891624 = [];
  @visibleForTesting
  List<Vo686663811>? f557307647 = [];
  final StreamController<Vo686663811> ojy398417232 =
      StreamController.broadcast();

  List<String> _nxy1027063448 = [];
  void v972093310(List<String> yrq881907407) {
    _nxy1027063448 = yrq881907407;
  }

  List<String> _eoh444608483 = [];
  void t690467839(List<String> pp275274327) {
    _eoh444608483 = pp275274327;
  }

  List<Vo686663811> get v605165390 => _d403891624;
  List<Vo686663811>? x813143819;
  bool get eg602844577 => e565192055;
  bool e565192055 = false;

  Size? _g364244108;
  @visibleForTesting
  Size? get moy193981059 => _g364244108;
  set moy193981059(Size? ean409602592) {
    if (ean409602592 == _g364244108) return;
    //
    if (_g364244108 == null) {
      _g364244108 = ean409602592;
    } else {
      _g364244108 = ean409602592;
      m267113177();
    }
  }

  @visibleForTesting
  void tiw94145129(Vo686663811 wdv662082703) {
    _d403891624.add(wdv662082703);
  }

  Vo686663811? get c436425390 {
    final List<Vo686663811> q64403078 =
        List<Vo686663811>.from(v605165390)
          ..removeWhere((jl412700622) => jl412700622.k469235207);
    if (q64403078.isEmpty) return null;
    return q64403078.single;
  }

  bool b134583314(Vo686663811 jp497095376) {
    if (f557307647 == null) return true;
    Vo686663811? wdv662082703;
    try {
      wdv662082703 = lqa279492721(
        f557307647!,
      );
    } catch (e) {
      hp865956251();
      return true;
    }
    if (wdv662082703 != jp497095376) {
      hp865956251();
      return true;
    }
    return false;
  }

  void hp865956251() {
    _ok398446966.kqb483954620();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState ki933775774) {
    if (!d491197692.tjw740509054) return;
    _jy1061096621.fbr141628852(
        Df355692179.d380883717, 'didChangeAppLifecycleState $ki933775774');

    super.didChangeAppLifecycleState(ki933775774);

    switch (ki933775774) {
      case AppLifecycleState.resumed:
        nq643686447();
        break;

      default:
        if (ki933775774 == AppLifecycleState.paused ||
            ki933775774 == AppLifecycleState.inactive) {
          y50792052();
        }
    }
  }

  @override
  void didChangeMetrics() {
    if (!d491197692.tjw740509054) return;
    _jy1061096621.fbr141628852(Df355692179.d380883717, 'didChangeMetrics');

    moy193981059 = _le336585073.platformDispatcher.views.first.physicalSize;

    super.didChangeMetrics();
  }

  Vo686663811 z38580759({
    required String ed459292948,
    required String du652312141,
    required List<DxaRouteWithModalRederence> rt986356891,
    required List<Q958538912> beo916462709,
  }) {
    Ets72708712? m876937366;
    late final bool uls901481712;
    late final bool pf884417876;

    _nxy1027063448.contains(du652312141).rcm265148051((pg144550348) {
      uls901481712 = !pg144550348;
    });
    _eoh444608483.contains(du652312141).rcm265148051((pg144550348) {
      pf884417876 = !pg144550348;
    });

    bool tb51384518 = uls901481712;
    bool eyh61260410 = pf884417876;

    final String rt1017888286 = du652312141;

    //
    if (_uu399100032
        .nvm68325397(rt1017888286)) {
      tb51384518 = false;
    }

    //
    if (_uu399100032
        .eo317035965(rt1017888286)) {
      eyh61260410 = false;
      m876937366 = Ets72708712.nq335361313;
    }
    //
    if (!pf884417876) {
      m876937366 = Ets72708712.xpp717760309;
    }

    final int ew212009715 = DateTime.now().millisecondsSinceEpoch;

    final Vo686663811 wdv662082703 = Vo686663811.standard(
      ed459292948: ed459292948,
      rt986356891: rt986356891,
      beo916462709: beo916462709,
      ew212009715: ew212009715,
      du652312141: du652312141,
      pf884417876: eyh61260410,
      uls901481712: tb51384518,
      m876937366: m876937366,
    );

    return wdv662082703;
  }

  //
  Future<void> yky64444335(
    List<Vo686663811> g859565784, {
    bool g136056401 = false,
  }) async {
    final Completer em468299674 = Completer();
    await _pqb679689520.po756758670(
      (em468299674) => d528426549(
        g859565784,
        em468299674,
        g136056401: g136056401,
      ),
      em468299674,
    );
  }

  //
  @visibleForTesting
  Vo686663811 lqa279492721(
    List<Vo686663811> g859565784,
  ) {
    final List<Vo686663811> m1054695499 = [];
    final List<Vo686663811> akz455359546 = [];
    for (final d1052622499 in g859565784) {
      if (d1052622499.wsi243852702) continue;
      if (d1052622499.y368020643) continue;
      if (d1052622499.nj833759665.mht4311303) {
        m1054695499.add(d1052622499);
        if (d1052622499.rt986356891.last is Pqc890753481 ||
            d1052622499.rt986356891.last is Uwu564237809) {
          akz455359546.add(d1052622499);
        }
      }
    }
    if (m1054695499.length == 1) return m1054695499.first;

    //
    //
    //
    //
    //
    //
    //
    //
    //
    if (m1054695499.length > 1) {
      late Vo686663811? nb888252711;

      //
      nb888252711 = m1054695499.singleWhereOrNull(
        (jl412700622) => jl412700622.rt986356891
            .any((jl412700622) => (jl412700622 is Pgw666223588) && jl412700622.bki447819948),
      );
      if (nb888252711 == null) {
        throw Z901569987('No opaque candidate or more than one found.');
      }

      //
      //
      akz455359546.sort(
        (pye170824987, mgr14385346) => pye170824987.rt986356891.last.b77244066
            .compareTo(mgr14385346.rt986356891.last.b77244066),
      );

      //
      for (var usy499530294 = 0; usy499530294 < akz455359546.length - 1; usy499530294++) {
        final u451901575 = akz455359546[usy499530294]
            .rt986356891
            .last as Pqc890753481;

        final bool drk137001475 =
            u451901575
                    .b219402729.mm968880654 ==
                akz455359546[usy499530294 + 1]
                    .rt986356891
                    .first
                    .mm968880654;
        final bool qkh112500203 =
            u451901575
                .b219402729.wp435388142
                .contains(
          akz455359546[usy499530294 + 1]
              .rt986356891
              .first
              .mm968880654,
        );

        if (!drk137001475 &&
            !qkh112500203) {
          throw Z901569987('non opaque route is not a valid nestedRoute');
        }
      }

      //
      //
      if ((akz455359546.first.rt986356891.last
                  as Pqc890753481)
              .b219402729 ==
          nb888252711.rt986356891.first) {
        return akz455359546.first;
      }

      //
      //
      if ((akz455359546.first.rt986356891.last
                  as Pqc890753481)
              .mm968880654 ==
          nb888252711.rt986356891.first.mm968880654) {
        return akz455359546.first;
      }

      //
      //
      if ((akz455359546.first.rt986356891.last
              as Pqc890753481)
          .b219402729
          .wp435388142
          .contains(
            nb888252711.rt986356891.first.mm968880654,
          )) {
        return akz455359546.first;
      }

      //
      //
      if (nb888252711.rt986356891
              .lastWhereOrNull(
                  (jl412700622) => (jl412700622 is Pgw666223588) && jl412700622.bki447819948)
              ?.wp435388142
              .contains(
                akz455359546
                    .last.rt986356891.last.mm968880654,
              ) ==
          true) {
        return akz455359546.first;
      }
      throw Z901569987(
        'opaque route candidate shouldnt be painted under non opaque candidate 2',
      );
    }
    throw Z901569987('No candidate found');
  }

  //yky64444335_getScreenVisitedFromPotentialCandidates_getScreenVisitedFromPotentialCandidates
  Future<void> d528426549(
    List<Vo686663811> g859565784,
    Completer em468299674, {
    bool g136056401 = false,
  }) async {
    //
    await _pqb679689520.pzx612389653();

    if (em468299674.isCompleted) return;

    if (!d491197692.uls901481712) return;
    if (d491197692.pgh945440662) return;
    late bool uaw978332535;
    //
    //
    //
    //
    //
    //
    if (x813143819 != null) {
      uaw978332535 = true;
      x813143819 = null;
    } else {
      uaw978332535 = g136056401;
    }
    if (c436425390 != null) {
      await y867603485(c436425390!.ed459292948);
    }
    await _pqb679689520.og551884870();
    if (em468299674.isCompleted) return;
    //
    while (eg602844577) {
      await _pqb679689520.gs333851985();
      if (em468299674.isCompleted) return;
    }

    //
    Vo686663811? wdv662082703;
    while (wdv662082703 == null) {
      try {
        wdv662082703 =
            lqa279492721(g859565784);
      } catch (e) {
        await _pqb679689520.gs333851985();
        if (em468299674.isCompleted) return;
      }
    }
    if (em468299674.isCompleted) return;
    if (!wdv662082703.uls901481712) {
      return;
    }
    tiw94145129(
      wdv662082703,
    );
    f557307647 = g859565784;
    _jy1061096621.fbr141628852(
      Df355692179.pyv959100450,
      'Start Screen - name: ${wdv662082703.du652312141} - id: ${wdv662082703.zvv161819314}',
      qaw248384181: '🔵',
    );
    await _xe1037595377.yky64444335(
      Mc186122940(
        p343814982: wdv662082703.du652312141,
        wlz228738069: wdv662082703.zvv161819314,
        nnn312325844: wdv662082703.ew212009715,
        g136056401: uaw978332535,
      ),
    );
    //
    if (ojy398417232.isClosed) return;
    ojy398417232.add(wdv662082703);
    await _vs447602762.l306344982();
  }

  Future<void> y867603485(
    String wlz228738069, {
    bool g136056401 = false,
  }) async {
    if (!d491197692.tjw740509054) return;
    late Vo686663811 wdv662082703;
    late Vo686663811? dpa497434227;

    if (c436425390?.ed459292948 == wlz228738069) {
      dpa497434227 = c436425390;
    } else {
      dpa497434227 = null;
    }

    //
    //
    if (dpa497434227 == null) return;
    _vs447602762.odx145214397();
    final Completer l31360025 =
        _pqb679689520.a696465503();
    wdv662082703 = dpa497434227;
    //
    //
    final int o290459744 = v605165390.indexOf(wdv662082703);
    final int o594633696 = DateTime.now().millisecondsSinceEpoch;
    final O270264706 o578647519 =
        wdv662082703.yq712079882(o594633696);
    v605165390[o290459744] = o578647519;
    f557307647 = null;
    final String ujz777337925 = o578647519.du652312141;
    final int p236312477 = o578647519.zvv161819314;
    final int a101383173 = o578647519.h1032418119;

    await _pqb679689520.o619208015();

    late int fxp884440328;
    if (o578647519.hyq225675089) {
      fxp884440328 =
          o578647519.m442674911;
    } else {
      fxp884440328 = a101383173;
      await _vs447602762.on117538545(
        o578647519,
      );
    }
    final J882558242 kv350794647 = J882558242(
      p343814982: ujz777337925,
      wlz228738069: p236312477,
      jsm724617042: a101383173,
      rh355705779: fxp884440328,
      g136056401: g136056401,
    );
    _jy1061096621.fbr141628852(
      Df355692179.pyv959100450,
      'End Screen - name: ${kv350794647.p343814982} - id: ${kv350794647.wlz228738069} - endTime ${kv350794647.jsm724617042} - recordingEndTime ${kv350794647.rh355705779}',
      qaw248384181: '🟡',
    );
    await _xe1037595377.y867603485(kv350794647);
    l31360025.complete();
  }

  Future<void> aoi531892831() async {
    if (c436425390 == null) return;
    await y867603485(
      c436425390!.ed459292948,
    );
  }

  @visibleForTesting
  Future<void> y50792052() async {
    _jy1061096621.fbr141628852(
      Df355692179.x577029250,
      'App did enter background',
    );
    //
    //
    //
    if (x813143819 != null) return;
    //
    if (c436425390 == null) return;
    x813143819 =
        f557307647;
    await y867603485(
      c436425390!.ed459292948,
      g136056401: true,
    );
  }

  @visibleForTesting
  Future<void> nq643686447() async {
    _jy1061096621.fbr141628852(
      Df355692179.x577029250,
      'App did become active',
    );
    //
    if (x813143819 == null) return;

    final List<Vo686663811> ay944301689 =
        x813143819!
            .map(
              (lv286663497) => lv286663497.mua623466267(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();

    x813143819 = null;
    await yky64444335(
      ay944301689,
      g136056401: true,
    );
  }

  Future<void> m267113177() async {
    if (c436425390 == null) return;
    if (f557307647 == null) return;
    final oob64552646 =
        f557307647;
    await y867603485(c436425390!.ed459292948);
    final List<Vo686663811> oh286015631 =
        oob64552646!
            .map(
              (lv286663497) => lv286663497.mua623466267(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();
    await yky64444335(oh286015631);
  }

  @override
  void xy326102686() {
    _le336585073.removeObserver(this);
    ojy398417232.close();
  }
}
