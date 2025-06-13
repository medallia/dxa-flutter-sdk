//
import 'dart:async';

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/x1040135823.dart';
import 'package:medallia_dxa/src/i213709688.dart';
import 'package:medallia_dxa/src/fx800796146.dart';
import 'package:medallia_dxa/src/bh465455339.dart';
import 'package:medallia_dxa/src/ke674085959.dart';
import 'package:medallia_dxa/src/m806889542.dart';
import 'package:medallia_dxa/src/kr371803491.dart';
import 'package:medallia_dxa/src/s487303636.dart';
import 'package:medallia_dxa/src/xe758138268.dart';

class K73888305 extends D142571380 {
  K73888305({
    required WidgetsBinding i975106417,
    required W1047663466 vk653426561,
    required I672745776 dgh387024581,
    required D404394652 y421585106,
    required Vo645778334 tt120909813,
  })  : _otj750376539 = vk653426561,
        _lda252877279 = dgh387024581,
        _v215992924 = tt120909813,
        super(y421585106) {
    _hl670522592 = Timer.periodic(_ms598803817, (_c594035945) async {
      await j779578868();
    });
    _v215992924.s915655391(z1038160845);
    _otj750376539.zh344868540(_p1047594602);

    i975106417.pointerRouter
        .addGlobalRoute(_v215992924.po654600690);
  }
  static const Duration _ms598803817 = Duration(milliseconds: 500);
  late Timer _hl670522592;
  final I672745776 _lda252877279;
  late final X764602990 _x679689782 =
      Fn583050702.gj892083529.j1001100927;

  late final Vo645778334 _v215992924;
  final W1047663466 _otj750376539;
  final Set<Qrg454350519> _n810454082 = {};
  @override
  void ul326102424() {
    WidgetsBinding.instance.pointerRouter
        .removeGlobalRoute(_v215992924.po654600690);
    _otj750376539.nv724763970(_p1047594602);
    _hl670522592.cancel();
  }

  void vp1049996398(ScrollNotification z224376688) {
    _v215992924.uot811368306.t174100104(z224376688);
  }

  void z1038160845(Yg475815063 fi716780660) {
    final zb907871473 = fi716780660.zb907871473;
    final X686664581? eb484512025 = _otj750376539.s436425128;
    if (eb484512025 == null) return;
    final int m557611952 =
        fi716780660.itd476596020 - eb484512025.v212009461;
    final se456534498 = Qrg454350519(
      m557611952: m557611952,
      xo662565863: [fi716780660],
      q828748290: zb907871473,
    );

    final fk930696120 = _n810454082.lookup(se456534498);
    if (fk930696120 != null) {
      fk930696120.xo662565863.add(fi716780660);
    } else {
      _n810454082.add(se456534498);
    }
  }

  Future<void> _p1047594602() async {
    await j779578868();
  }

  Future<void> j779578868() async {
    if (_n810454082.isEmpty) return;
    final vmw776096601 = Set<Qrg454350519>.from(_n810454082);
    _n810454082.clear();
    final ca696558889 = _kdj586292009(vmw776096601);
    await _nx265366033(ca696558889);
  }

  List<G157413432> _kdj586292009(
    Set<Qrg454350519> evh294603017,
  ) {
    return evh294603017.map((se456534498) {
      return _lda252877279.tvs297400871(
        m557611952: se456534498.m557611952,
        fi716780660: se456534498.xo662565863.map(
          (xo662565863) {
            final Lp426418673? k965612245 =
                xo662565863 is Lp426418673 ? xo662565863 : null;
            return _lda252877279.iig779571062(
              m1067830119: xo662565863.ws319006650,
              gtm666948256: xo662565863.ga9765719,
              fk366422452: xo662565863.cmj474434187,
              jwd618241712: k965612245?.gva231119891,
              zm362434046: k965612245?.wpd940896439,
              olu331659058: k965612245?.gbj328021868,
              u1038028255: k965612245?.rc298744419,
            );
          },
        ).toList(),
        zb907871473: se456534498.q828748290.fch510790412,
      );
    }).toList();
  }

  Future<void> _nx265366033(
    List<G157413432> evh294603017,
  ) async {
    await _x679689782.ks729887989(
      wy822065621: () async {
        await _lda252877279.eqw173014450(evh294603017);
      },
    );
  }
}
