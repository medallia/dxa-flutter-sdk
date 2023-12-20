//
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/et290553557.dart';
import 'package:medallia_dxa/src/bcn974258988.dart';
import 'package:medallia_dxa/src/vf252672202.dart';
import 'package:medallia_dxa/src/o943818171.dart';
import 'package:medallia_dxa/src/ld209815862.dart';
import 'package:medallia_dxa/src/gc681534908.dart';
import 'package:medallia_dxa/src/wst173740962.dart';
import 'package:medallia_dxa/src/s452802370.dart';
import 'package:medallia_dxa/src/kua304042370.dart';
import 'package:medallia_dxa/src/w255041854.dart';
import 'package:medallia_dxa/src/kk966267733.dart';

class M1047662832 with C764602868, WidgetsBindingObserver {
  M1047662832(
    this.t491197536,
    this._s1061096497,
    this._n447602902,
    this._x399099932,
    this._chp336585197,
  ) {
    _chp336585197.addObserver(this);
  }

  final Xh733036312 t491197536;
  final Z394369901 _s1061096497;
  final Bt87340043 _n447602902;
  final Ogh1013317448 _x399099932;
  final WidgetsBinding _chp336585197;
  late final Fnc520943408 _x398447082 =
      Lgg583050836.dh892083923.t349873449;
  Logger get bc613848811 => _s1061096497.dnd326301223;
  final Pwn1038099413 _ibu1037595245 = Pwn1038099413();
  final List<Q686663711> _g403891508 = [];
  List<Q686663711>? _ppy728063710 = [];
  final StreamController<Q686663711> ro398417356 =
      StreamController.broadcast();
  final List<L785065072> tf742410502 =
      [];
  final List<Completer> nn554015289 =
      List.empty(growable: true);
  final List<Completer> p695813653 =
      List.empty(growable: true);
  List<String> _v1027063300 = [];
  void j972093410(List<String> vjy881907283) {
    _v1027063300 = vjy881907283;
  }

  List<String> _l444608383 = [];
  void xq690467683(List<String> k275274443) {
    _l444608383 = k275274443;
  }

  List<Q686663711> get k605165522 => _g403891508;
  List<Q686663711>? xyl813143959;
  bool get xyh602844477 => yi565192171;
  bool yi565192171 = false;

  Size? _d670081532;
  Size get go193980959 => _d670081532!;
  set go193980959(Size wz409602748) {
    if (wz409602748 == _d670081532) return;
    //
    if (_d670081532 == null) {
      _d670081532 = wz409602748;
    } else {
      _d670081532 = wz409602748;
      vm267113029();
    }
  }

  void _lvy510844774(Q686663711 f662082579) {
    _g403891508.add(f662082579);
  }

  Q686663711? get qt436425266 {
    final List<Q686663711> lg64402970 =
        List<Q686663711>.from(k605165522)
          ..removeWhere((b412700498) => b412700498.r469235355);
    if (lg64402970.isEmpty) return null;
    return lg64402970.single;
  }

  bool vu134583438(Q686663711 f497095244) {
    if (_ppy728063710 == null) return true;
    Q686663711? f662082579;
    try {
      f662082579 = _gyo710236245(
        _ppy728063710!,
      );
    } catch (e) {
      ox865956103();
      return true;
    }
    if (f662082579 != f497095244) {
      ox865956103();
      return true;
    }
    return false;
  }

  void ox865956103() {
    _x398447082.fmf483954464();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState sq933775618) {
    if (!t491197536.oy740509154) return;
    bc613848811.d('didChangeAppLifecycleState $sq933775618');

    super.didChangeAppLifecycleState(sq933775618);

    switch (sq933775618) {
      case AppLifecycleState.resumed:
        _g247375525();
        break;

      default:
        if (sq933775618 == AppLifecycleState.paused ||
            sq933775618 == AppLifecycleState.inactive) {
          _ww999118044();
        }
    }
  }

  @override
  void didChangeMetrics() {
    if (!t491197536.oy740509154) return;
    bc613848811.d('didChangeMetrics');

    b653425691.go193980959 =
        _chp336585197.platformDispatcher.views.first.physicalSize;

    super.didChangeMetrics();
  }

  Q686663711 a38580875({
    required String jtl459293064,
    required String o652312273,
    required List<Th958538812> l986356743,
    required List<Th958538812> vl916462825,
  }) {
    Vj72708852? v876937226;
    late final bool j901481580;
    late final bool fi884417992;

    _v1027063300.contains(o652312273).n265147919((tjd144550224) {
      j901481580 = !tjd144550224;
    });
    _l444608383.contains(o652312273).n265147919((tjd144550224) {
      fi884417992 = !tjd144550224;
    });

    bool a51384410 = j901481580;
    bool vn61260518 = fi884417992;

    final String jdw1017888386 = o652312273;

    //
    if (_x399099932
        .mzo68325513(jdw1017888386)) {
      a51384410 = false;
    }

    //
    if (_x399099932
        .t317035809(jdw1017888386)) {
      vn61260518 = false;
      v876937226 = Vj72708852.fc335361469;
    }
    //
    if (!fi884417992) {
      v876937226 = Vj72708852.ma717760425;
    }

    final int m212009583 = DateTime.now().millisecondsSinceEpoch;

    final Q686663711 f662082579 = Q686663711.standard(
      jtl459293064: jtl459293064,
      l986356743: l986356743,
      vl916462825: vl916462825,
      m212009583: m212009583,
      o652312273: o652312273,
      fi884417992: vn61260518,
      j901481580: a51384410,
      v876937226: v876937226,
    );

    return f662082579;
  }

  //
  Future<void> yqp64444211(
    List<Q686663711> fg859565636, {
    bool a136056525 = false,
  }) async {
    final Completer o468299526 = Completer();
    await s756758546(
      (o468299526) => pob528426665(
        fg859565636,
        o468299526,
        a136056525: a136056525,
      ),
      o468299526,
    );
  }

  //
  Q686663711 _gyo710236245(
    List<Q686663711> fg859565636,
  ) {
    final List<Q686663711> y1054695639 = [];
    final List<Q686663711> y455359654 = [];
    for (final candidate in fg859565636) {
      if (candidate.x243852546) continue;
      if (candidate.v368020543) continue;
      if (candidate.gd408143950.v4311451) {
        y1054695639.add(candidate);
        if (!candidate.l986356743.last.ud447819824) {
          y455359654.add(candidate);
        }
      }
    }
    if (y1054695639.length == 1) return y1054695639.first;

    //
    //
    //
    //
    //
    //
    //
    //
    //
    if (y1054695639.length > 1) {
      late Q686663711 y888252859;

      //
      y888252859 = y1054695639.singleWhere(
        (b412700498) => b412700498.l986356743.any((b412700498) => b412700498.ud447819824),
      );

      //
      //
      y455359654.sort(
        (ssa170825095, t14385246) => ssa170825095.l986356743.last.qen77243966
            .compareTo(t14385246.l986356743.last.qen77243966),
      );

      //
      for (var ww499530410 = 0; ww499530410 < y455359654.length - 1; ww499530410++) {
        final ohl451901467 =
            y455359654[ww499530410].l986356743.last as Enj176059985;

        final bool bgc137001631 =
            ohl451901467
                    .eq219402613.c968880786 ==
                y455359654[ww499530410 + 1]
                    .l986356743
                    .first
                    .c968880786;
        final bool d112500087 =
            ohl451901467
                .eq219402613.ib435388018
                .contains(
          y455359654[ww499530410 + 1]
              .l986356743
              .first
              .c968880786,
        );

        if (!bgc137001631 &&
            !d112500087) {
          throw StateError('non opaque route is not a valid nestedRoute');
        }
      }

      //
      //
      if ((y455359654.first.l986356743.last
                  as Enj176059985)
              .eq219402613 ==
          y888252859.l986356743.first) {
        return y455359654.first;
      }

      //
      //
      if ((y455359654.first.l986356743.last
                  as Enj176059985)
              .c968880786 ==
          y888252859.l986356743.first.c968880786) {
        return y455359654.first;
      }

      //
      //
      if ((y455359654.first.l986356743.last
              as Enj176059985)
          .eq219402613
          .ib435388018
          .contains(
            y888252859.l986356743.first.c968880786,
          )) {
        return y455359654.first;
      }

      //
      //
      if (y888252859.l986356743
          .lastWhere((b412700498) => b412700498.ud447819824)
          .ib435388018
          .contains(
            y455359654
                .last.l986356743.last.c968880786,
          )) {
        return y455359654.first;
      }
      throw StateError(
        'opaque route candidate shouldnt be painted under non opaque candidate 2',
      );
    }
    throw StateError('not found');
  }

  //yqp64444211_gyo710236245_gyo710236245
  Future<void> pob528426665(
    List<Q686663711> fg859565636,
    Completer o468299526, {
    bool a136056525 = false,
  }) async {
    //
    await edd612389769();

    if (o468299526.isCompleted) return;

    if (!t491197536.j901481580) return;

    late bool u978332651;
    //
    //
    //
    //
    //
    //
    if (xyl813143959 != null) {
      u978332651 = true;
      xyl813143959 = null;
    } else {
      u978332651 = a136056525;
    }
    if (qt436425266 != null) {
      await io867603585(qt436425266!.jtl459293064);
    }
    await bdc551885018();
    if (o468299526.isCompleted) return;
    //
    while (xyh602844477) {
      await mlx333852109();
      if (o468299526.isCompleted) return;
    }

    //
    Q686663711? f662082579;
    while (f662082579 == null) {
      try {
        f662082579 =
            _gyo710236245(fg859565636);
      } catch (e) {
        await mlx333852109();
        if (o468299526.isCompleted) return;
      }
    }
    if (o468299526.isCompleted) return;
    if (!f662082579.j901481580) {
      return;
    }
    _lvy510844774(
      f662082579,
    );
    _ppy728063710 = fg859565636;
    bc613848811.d(
      ' 🔵 Start Screen - name: ${f662082579.o652312273} - id: ${f662082579.q161819182}',
    );
    await _ibu1037595245.yqp64444211(
      Kyl186122784(
        duz343815130: f662082579.o652312273,
        f228738185: f662082579.q161819182,
        zf312325704: f662082579.m212009583,
        a136056525: u978332651,
      ),
    );
    ro398417356.add(f662082579);
    await _n447602902.pcg306345098();
  }

  Future<void> io867603585(
    String f228738185, {
    bool a136056525 = false,
  }) async {
    if (!t491197536.oy740509154) return;
    late Q686663711 f662082579;
    late Q686663711? oys497434351;

    if (qt436425266?.jtl459293064 == f228738185) {
      oys497434351 = qt436425266;
    } else {
      oys497434351 = null;
    }

    //
    //
    if (oys497434351 == null) return;
    _n447602902.oj145214241();
    final Completer f31360133 = l696465603();
    f662082579 = oys497434351;
    //
    //
    final int hx290459900 = k605165522.indexOf(f662082579);
    final int rbg594633596 = DateTime.now().millisecondsSinceEpoch;
    final G270264606 xb578647363 =
        f662082579.ql712080022(rbg594633596);
    k605165522[hx290459900] = xb578647363;
    _ppy728063710 = null;
    final String uat777338073 = xb578647363.o652312273;
    final int if236312321 = xb578647363.q161819182;
    final int xda101383321 = xb578647363.c1032418267;

    await px619208147();

    late int mym884440468;
    if (xb578647363.w225675213) {
      mym884440468 =
          xb578647363.cyi442674755;
    } else {
      mym884440468 = xda101383321;
      await _n447602902.w117538413(
        xb578647363,
      );
    }
    final Lp882558398 qvk350794507 = Lp882558398(
      duz343815130: uat777338073,
      f228738185: if236312321,
      o724617166: xda101383321,
      cdh355705647: mym884440468,
      a136056525: a136056525,
    );
    bc613848811.d(
      ' 🟡 End Screen - name: ${qvk350794507.duz343815130} - id: ${qvk350794507.f228738185} - endTime ${qvk350794507.o724617166} - recordingEndTime ${qvk350794507.cdh355705647}',
    );
    await _ibu1037595245.io867603585(qvk350794507);
    f31360133.complete();
  }

  Future<void> q531892931() async {
    if (qt436425266 == null) return;
    await io867603585(
      qt436425266!.jtl459293064,
    );
  }

  Future<void> _ww999118044() async {
    //
    //
    //
    if (xyl813143959 != null) return;
    //
    if (qt436425266 == null) return;
    xyl813143959 =
        _ppy728063710;
    await io867603585(
      qt436425266!.jtl459293064,
      a136056525: true,
    );
  }

  Future<void> _g247375525() async {
    //
    if (xyl813143959 == null) return;

    final List<Q686663711> gr944301797 =
        xyl813143959!
            .map(
              (t286663637) => t286663637.mn623466375(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();

    xyl813143959 = null;
    await yqp64444211(
      gr944301797,
      a136056525: true,
    );
  }

  Future<void> vm267113029() async {
    if (qt436425266 == null) return;
    if (_ppy728063710 == null) return;
    final sfv557307491 = _ppy728063710;
    await io867603585(qt436425266!.jtl459293064);
    final List<Q686663711> z286015507 =
        sfv557307491!
            .map(
              (t286663637) => t286663637.mn623466375(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();
    await yqp64444211(z286015507);
  }
}
