//
import 'dart:async';

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/tr1040136189.dart';
import 'package:medallia_dxa/src/pea213709322.dart';
import 'package:medallia_dxa/src/kua800795776.dart';
import 'package:medallia_dxa/src/dfy465455513.dart';
import 'package:medallia_dxa/src/z674086197.dart';
import 'package:medallia_dxa/src/p806889780.dart';
import 'package:medallia_dxa/src/zbd371803153.dart';
import 'package:medallia_dxa/src/df487303334.dart';
import 'package:medallia_dxa/src/q758138094.dart';

class Fh73888579 extends Rr142571014 {
  Fh73888579({
    required WidgetsBinding udi975106051,
    required A1047663128 qb653426419,
    required Yqm672745538 bs387024823,
    required Sd404394990 nr421585312,
    required Ss645778156 f120909447,
  })  : _s750376745 = qb653426419,
        _wl252876973 = bs387024823,
        _xd215993134 = f120909447,
        super(nr421585312) {
    _oav670522770 = Timer.periodic(_xo598803483, (_qwn594036123) async {
      await jmx779578502();
    });
    _xd215993134.qn915655597(op1038160575);
    _s750376745.l344868814(_gx1047594776);

    udi975106051.pointerRouter
        .addGlobalRoute(_xd215993134.dc654600320);
  }
  static const Duration _xo598803483 = Duration(milliseconds: 500);
  late Timer _oav670522770;
  final Yqm672745538 _wl252876973;
  late final S764603164 _k679690052 =
      L583050428.buw892083259.c1001101069;

  late final Ss645778156 _xd215993134;
  final A1047663128 _s750376745;
  final Set<Ehm454350789> _bru810454320 = {};
  @override
  void jsm326102250() {
    WidgetsBinding.instance.pointerRouter
        .removeGlobalRoute(_xd215993134.dc654600320);
    _s750376745.eu724763696(_gx1047594776);
    _oav670522770.cancel();
  }

  void jaw1049996572(ScrollNotification vvs224376322) {
    _xd215993134.jvh811367936.qg174100474(vvs224376322);
  }

  void op1038160575(B475815397 ib716780806) {
    final n907871619 = ib716780806.n907871619;
    final S686664439? tm484511851 = _s750376745.lk436424922;
    if (tm484511851 == null) return;
    final int t557611714 =
        ib716780806.zx476595782 - tm484511851.mox212009095;
    final j456534160 = Ehm454350789(
      t557611714: t557611714,
      eb662565525: [ib716780806],
      g828748656: n907871619,
    );

    final s930695882 = _bru810454320.lookup(j456534160);
    if (s930695882 != null) {
      s930695882.eb662565525.add(ib716780806);
    } else {
      _bru810454320.add(j456534160);
    }
  }

  Future<void> _gx1047594776() async {
    await jmx779578502();
  }

  Future<void> jmx779578502() async {
    if (_bru810454320.isEmpty) return;
    final tvv776096299 = Set<Ehm454350789>.from(_bru810454320);
    _bru810454320.clear();
    final kw696558683 = _qvd586291803(tvv776096299);
    await _f265366371(kw696558683);
  }

  List<Asm157413706> _qvd586291803(
    Set<Ehm454350789> ps294602875,
  ) {
    return ps294602875.map((j456534160) {
      return _wl252876973.u297401173(
        t557611714: j456534160.t557611714,
        ib716780806: j456534160.eb662565525.map(
          (eb662565525) {
            final P426418307? fuf965612455 =
                eb662565525 is P426418307 ? eb662565525 : null;
            return _wl252876973.wzz779570692(
              mqe1067829781: eb662565525.bj319006408,
              aj666948562: eb662565525.haa9765413,
              z366422214: eb662565525.xxx474434553,
              mpu618241986: fuf965612455?.qi231120225,
              o362433676: fuf965612455?.f940896709,
              yz331658816: fuf965612455?.pd328021534,
              pxa1038027949: fuf965612455?.e298744593,
            );
          },
        ).toList(),
        n907871619: j456534160.g828748656.qdt510790270,
      );
    }).toList();
  }

  Future<void> _f265366371(
    List<Asm157413706> ps294602875,
  ) async {
    await _k679690052.qh729888135(
      nrp822065319: () async {
        await _wl252876973.ku173014208(ps294602875);
      },
    );
  }
}
