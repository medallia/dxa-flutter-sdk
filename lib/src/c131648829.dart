//
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/yq290553848.dart';
import 'package:medallia_dxa/src/brz974258689.dart';
import 'package:medallia_dxa/src/nn252672487.dart';
import 'package:medallia_dxa/src/b943817878.dart';
import 'package:medallia_dxa/src/z209815579.dart';
import 'package:medallia_dxa/src/jpa681534609.dart';
import 'package:medallia_dxa/src/cfn173740687.dart';
import 'package:medallia_dxa/src/xwa452802159.dart';
import 'package:medallia_dxa/src/pr304042159.dart';
import 'package:medallia_dxa/src/pa255041555.dart';
import 'package:medallia_dxa/src/xp966267512.dart';

class T1047663069 with Wx764602585, WidgetsBindingObserver {
  T1047663069(
    this.oa491197773,
    this._o1061096732,
    this._yyb447603195,
    this._g399100209,
    this._fyh336584896,
  ) {
    _fyh336584896.addObserver(this);
  }

  final V733036085 oa491197773;
  final N394369600 _o1061096732;
  final Mb87340326 _yyb447603195;
  final F1013317221 _g399100209;
  final WidgetsBinding _fyh336584896;
  late final Mdb520943133 _f398446791 =
      V583051129.h892084222.kj349873156;
  Logger get n613849030 => _o1061096732.utd326301450;
  final Kn1038099192 _oy1037595456 = Kn1038099192();
  final List<W686663986> _hbu403891225 = [];
  List<W686663986>? _gms728063987 = [];
  final StreamController<W686663986> mm398417121 =
      StreamController.broadcast();
  final List<Dy785065309> pa742410283 =
      [];
  final List<Completer> thb554015508 =
      List.empty(growable: true);
  final List<Completer> hwo695813944 =
      List.empty(growable: true);
  List<String> _ks1027063593 = [];
  void z972093135(List<String> lp881907582) {
    _ks1027063593 = lp881907582;
  }

  List<String> _wli444608082 = [];
  void zhi690467406(List<String> p275274726) {
    _wli444608082 = p275274726;
  }

  List<W686663986> get vcw605165311 => _hbu403891225;
  List<W686663986>? cad813143738;
  bool get wk602844176 => c565191878;
  bool c565191878 = false;

  Size? _rj670081233;
  Size get wh193981234 => _rj670081233!;
  set wh193981234(Size hvo409602961) {
    if (hvo409602961 == _rj670081233) return;
    //
    if (_rj670081233 == null) {
      _rj670081233 = hvo409602961;
    } else {
      _rj670081233 = hvo409602961;
      uwe267113320();
    }
  }

  void _r510844491(W686663986 ber662082878) {
    _hbu403891225.add(ber662082878);
  }

  W686663986? get h436425503 {
    final List<W686663986> h64403255 =
        List<W686663986>.from(vcw605165311)
          ..removeWhere((jnk412700287) => jnk412700287.o469235638);
    if (h64403255.isEmpty) return null;
    return h64403255.single;
  }

  bool oh134583715(W686663986 dn497095521) {
    if (_gms728063987 == null) return true;
    W686663986? ber662082878;
    try {
      ber662082878 = _su710236536(
        _gms728063987!,
      );
    } catch (e) {
      p865955882();
      return true;
    }
    if (ber662082878 != dn497095521) {
      p865955882();
      return true;
    }
    return false;
  }

  void p865955882() {
    _f398446791.ku483954189();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState d933775407) {
    if (!oa491197773.vvn740508879) return;
    n613849030.d('didChangeAppLifecycleState $d933775407');

    super.didChangeAppLifecycleState(d933775407);

    switch (d933775407) {
      case AppLifecycleState.resumed:
        _gif247375752();
        break;

      default:
        if (d933775407 == AppLifecycleState.paused ||
            d933775407 == AppLifecycleState.inactive) {
          _r999118321();
        }
    }
  }

  @override
  void didChangeMetrics() {
    if (!oa491197773.vvn740508879) return;
    n613849030.d('didChangeMetrics');

    c653425974.wh193981234 =
        _fyh336584896.platformDispatcher.views.first.physicalSize;

    super.didChangeMetrics();
  }

  W686663986 o38581158({
    required String oc459292837,
    required String j652312572,
    required List<X958539025> y986357034,
    required List<X958539025> sb916463044,
  }) {
    Vme72709081? hmz876937511;
    late final bool mtr901481793;
    late final bool j884417765;

    _ks1027063593.contains(j652312572).hd265148194((nr144550013) {
      mtr901481793 = !nr144550013;
    });
    _wli444608082.contains(j652312572).hd265148194((nr144550013) {
      j884417765 = !nr144550013;
    });

    bool r51384695 = mtr901481793;
    bool fxq61260747 = j884417765;

    final String jy1017888687 = j652312572;

    //
    if (_g399100209
        .vcm68325796(jy1017888687)) {
      r51384695 = false;
    }

    //
    if (_g399100209
        .ta317035532(jy1017888687)) {
      fxq61260747 = false;
      hmz876937511 = Vme72709081.lzd335361168;
    }
    //
    if (!j884417765) {
      hmz876937511 = Vme72709081.le717760132;
    }

    final int hdi212009794 = DateTime.now().millisecondsSinceEpoch;

    final W686663986 ber662082878 = W686663986.standard(
      oc459292837: oc459292837,
      y986357034: y986357034,
      sb916463044: sb916463044,
      hdi212009794: hdi212009794,
      j652312572: j652312572,
      j884417765: fxq61260747,
      mtr901481793: r51384695,
      hmz876937511: hmz876937511,
    );

    return ber662082878;
  }

  //
  Future<void> mr64443934(
    List<W686663986> i859565929, {
    bool mf136056800 = false,
  }) async {
    final Completer i468299307 = Completer();
    await v756758847(
      (i468299307) => ik528426884(
        i859565929,
        i468299307,
        mf136056800: mf136056800,
      ),
      i468299307,
    );
  }

  //
  W686663986 _su710236536(
    List<W686663986> i859565929,
  ) {
    final List<W686663986> r1054695930 = [];
    final List<W686663986> ey455359883 = [];
    for (final candidate in i859565929) {
      if (candidate.ee243852335) continue;
      if (candidate.n368020754) continue;
      if (candidate.s408144227.w4311222) {
        r1054695930.add(candidate);
        if (!candidate.y986357034.last.vm447820061) {
          ey455359883.add(candidate);
        }
      }
    }
    if (r1054695930.length == 1) return r1054695930.first;

    //
    //
    //
    //
    //
    //
    //
    //
    //
    if (r1054695930.length > 1) {
      late W686663986 qpg888252566;

      //
      qpg888252566 = r1054695930.singleWhere(
        (jnk412700287) => jnk412700287.y986357034.any((jnk412700287) => jnk412700287.vm447820061),
      );

      //
      //
      ey455359883.sort(
        (x170824874, j14385523) => x170824874.y986357034.last.b77244179
            .compareTo(j14385523.y986357034.last.b77244179),
      );

      //
      for (var jm499530631 = 0; jm499530631 < ey455359883.length - 1; jm499530631++) {
        final dm451901750 =
            ey455359883[jm499530631].y986357034.last as H176060284;

        final bool ssa137001906 =
            dm451901750
                    .kp219402328.kf968881087 ==
                ey455359883[jm499530631 + 1]
                    .y986357034
                    .first
                    .kf968881087;
        final bool wf112499802 =
            dm451901750
                .kp219402328.ir435388255
                .contains(
          ey455359883[jm499530631 + 1]
              .y986357034
              .first
              .kf968881087,
        );

        if (!ssa137001906 &&
            !wf112499802) {
          throw StateError('non opaque route is not a valid nestedRoute');
        }
      }

      //
      //
      if ((ey455359883.first.y986357034.last
                  as H176060284)
              .kp219402328 ==
          qpg888252566.y986357034.first) {
        return ey455359883.first;
      }

      //
      //
      if ((ey455359883.first.y986357034.last
                  as H176060284)
              .kf968881087 ==
          qpg888252566.y986357034.first.kf968881087) {
        return ey455359883.first;
      }

      //
      //
      if ((ey455359883.first.y986357034.last
              as H176060284)
          .kp219402328
          .ir435388255
          .contains(
            qpg888252566.y986357034.first.kf968881087,
          )) {
        return ey455359883.first;
      }

      //
      //
      if (qpg888252566.y986357034
          .lastWhere((jnk412700287) => jnk412700287.vm447820061)
          .ir435388255
          .contains(
            ey455359883
                .last.y986357034.last.kf968881087,
          )) {
        return ey455359883.first;
      }
      throw StateError(
        'opaque route candidate shouldnt be painted under non opaque candidate 2',
      );
    }
    throw StateError('not found');
  }

  //mr64443934_su710236536_su710236536
  Future<void> ik528426884(
    List<W686663986> i859565929,
    Completer i468299307, {
    bool mf136056800 = false,
  }) async {
    //
    await s612389540();

    if (i468299307.isCompleted) return;

    if (!oa491197773.mtr901481793) return;

    late bool gu978332358;
    //
    //
    //
    //
    //
    //
    if (cad813143738 != null) {
      gu978332358 = true;
      cad813143738 = null;
    } else {
      gu978332358 = mf136056800;
    }
    if (h436425503 != null) {
      await j867603884(h436425503!.oc459292837);
    }
    await og551885303();
    if (i468299307.isCompleted) return;
    //
    while (wk602844176) {
      await r333851872();
      if (i468299307.isCompleted) return;
    }

    //
    W686663986? ber662082878;
    while (ber662082878 == null) {
      try {
        ber662082878 =
            _su710236536(i859565929);
      } catch (e) {
        await r333851872();
        if (i468299307.isCompleted) return;
      }
    }
    if (i468299307.isCompleted) return;
    if (!ber662082878.mtr901481793) {
      return;
    }
    _r510844491(
      ber662082878,
    );
    _gms728063987 = i859565929;
    n613849030.d(
      ' 🔵 Start Screen - name: ${ber662082878.j652312572} - id: ${ber662082878.hp161819395}',
    );
    await _oy1037595456.mr64443934(
      Yi186123021(
        a343814903: ber662082878.j652312572,
        fm228738468: ber662082878.hp161819395,
        lv312325989: ber662082878.hdi212009794,
        mf136056800: gu978332358,
      ),
    );
    mm398417121.add(ber662082878);
    await _yyb447603195.zj306345383();
  }

  Future<void> j867603884(
    String fm228738468, {
    bool mf136056800 = false,
  }) async {
    if (!oa491197773.vvn740508879) return;
    late W686663986 ber662082878;
    late W686663986? g497434562;

    if (h436425503?.oc459292837 == fm228738468) {
      g497434562 = h436425503;
    } else {
      g497434562 = null;
    }

    //
    //
    if (g497434562 == null) return;
    _yyb447603195.k145213964();
    final Completer v31360424 = o696465902();
    ber662082878 = g497434562;
    //
    //
    final int bb290460113 = vcw605165311.indexOf(ber662082878);
    final int pn594633297 = DateTime.now().millisecondsSinceEpoch;
    final Ezf270264371 o578647150 =
        ber662082878.h712080315(pn594633297);
    vcw605165311[bb290460113] = o578647150;
    _gms728063987 = null;
    final String nku777338356 = o578647150.j652312572;
    final int sg236312108 = o578647150.hp161819395;
    final int qza101383604 = o578647150.go1032418038;

    await iy619207934();

    late int g884440249;
    if (o578647150.j225674976) {
      g884440249 =
          o578647150.td442675054;
    } else {
      g884440249 = qza101383604;
      await _yyb447603195.zs117538624(
        o578647150,
      );
    }
    final P882558099 xor350794278 = P882558099(
      a343814903: nku777338356,
      fm228738468: sg236312108,
      fw724616931: qza101383604,
      f355705346: g884440249,
      mf136056800: mf136056800,
    );
    n613849030.d(
      ' 🟡 End Screen - name: ${xor350794278.a343814903} - id: ${xor350794278.fm228738468} - endTime ${xor350794278.fw724616931} - recordingEndTime ${xor350794278.f355705346}',
    );
    await _oy1037595456.j867603884(xor350794278);
    v31360424.complete();
  }

  Future<void> l531893230() async {
    if (h436425503 == null) return;
    await j867603884(
      h436425503!.oc459292837,
    );
  }

  Future<void> _r999118321() async {
    //
    //
    //
    if (cad813143738 != null) return;
    //
    if (h436425503 == null) return;
    cad813143738 =
        _gms728063987;
    await j867603884(
      h436425503!.oc459292837,
      mf136056800: true,
    );
  }

  Future<void> _gif247375752() async {
    //
    if (cad813143738 == null) return;

    final List<W686663986> y944302024 =
        cad813143738!
            .map(
              (fwj286663416) => fwj286663416.hom623466154(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();

    cad813143738 = null;
    await mr64443934(
      y944302024,
      mf136056800: true,
    );
  }

  Future<void> uwe267113320() async {
    if (h436425503 == null) return;
    if (_gms728063987 == null) return;
    final d557307726 = _gms728063987;
    await j867603884(h436425503!.oc459292837);
    final List<W686663986> pk286015806 =
        d557307726!
            .map(
              (fwj286663416) => fwj286663416.hom623466154(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();
    await mr64443934(pk286015806);
  }
}
