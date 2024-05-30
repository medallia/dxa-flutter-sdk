//
import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/sie151964570.dart';
import 'package:medallia_dxa/src/ofi290553417.dart';
import 'package:medallia_dxa/src/d879958851.dart';
import 'package:medallia_dxa/src/ls857696485.dart';
import 'package:medallia_dxa/src/x230686143.dart';
import 'package:medallia_dxa/src/auw209815978.dart';
import 'package:medallia_dxa/src/qp131648652.dart';
import 'package:medallia_dxa/src/t681534752.dart';
import 'package:medallia_dxa/src/d173740862.dart';
import 'package:medallia_dxa/src/l452802526.dart';
import 'package:medallia_dxa/src/jn439716810.dart';
import 'package:medallia_dxa/src/u304042270.dart';
import 'package:medallia_dxa/src/shn955933286.dart';
import 'package:medallia_dxa/src/e255041954.dart';
import 'package:medallia_dxa/src/iz336048755.dart';
import 'package:medallia_dxa/src/jui966267849.dart';

class Rum87340183 with O141980026, DisposeListeners {
  Rum87340183(
    this._x415102632,
    this._jy1061096621,
    this._ls346769095,
    this.unz594444807,
    this._t748964336,
    this.fr277876195,
    this.t995494898,
    this.krq1052757545,
    this._kp387655012,
    this._g237360974,
    this._y555931681,
    this._pqb679689520,
  ) {
    ngc1049665436 = Timer.periodic(_y555931681.ch160989763, (_ey594036719) async {
      await c1031024970();
    });
    _bqi577401061 =
        _ls346769095.b801556089.stream.listen((s217292220) {
      o1030976404 = true;
    });
  }

  final O764602728 _pqb679689520;
  final Bx733036420 _x415102632;
  final Kq394370033 _jy1061096621;
  final Ed204008522 _ls346769095;
  final Nk808717493 unz594444807;
  final L629109649 _t748964336;
  final Yqe1038099273 _kp387655012;
  final Hmt187483029 krq1052757545;
  final WidgetsBinding fr277876195;
  final SchedulerBinding t995494898;
  final Bjn344142547 _g237360974;
  final I170396875 _y555931681;
  late final Piq1047662700 _akr750376285 = Wx583050952.opf892083791.jy653425799;
  @visibleForTesting
  late Timer ngc1049665436;
  late final StreamSubscription<Duration> _bqi577401061;
  bool _cgl404420917 = false;
  bool _sbt61225006 = false;
  bool get _sse701931566 => _akr750376285.c436425390 != null;

  //
  Vo686663811 get _bt927016627 {
    return _akr750376285.c436425390!;
  }

  @visibleForTesting
  bool o1030976404 = false;
  @visibleForTesting
  bool get b968983599 => o1030976404;
  set b968983599(bool k873119179) {
    o1030976404 = k873119179;
    if (!k873119179) {
      _ls346769095.gs333851985();
    }
  }

  void _eew741701759() {
    if (_cgl404420917) return;
    _cgl404420917 = true;
    fr277876195.addPostFrameCallback((_ey594036719) async {
      _cgl404420917 = false;
      await _lrk773878720();
    });
  }

  Future<void> l306344982() async {
    b968983599 = true;
    await c1031024970();
  }

  Future<void> yts260696958() async {
    await _lrk773878720();
  }

  void ikv163680019() {
    if (ngc1049665436.isActive) return;
    ngc1049665436 = Timer.periodic(_y555931681.ch160989763, (_ey594036719) async {
      await c1031024970();
    });
  }

  void mdq689591634() {
    ngc1049665436.cancel();
  }

  void _g104659695() {
    _bqi577401061.cancel();
    _ls346769095.xy326102686();
  }

  void jj86559692() {
    mdq689591634();
    ikv163680019();
  }

  void odx145214397() {
    unz594444807.rj916995293();
  }

  Future<void> c1031024970() async {
    if (!b968983599) return;
    return _lrk773878720();
  }

  Future<void> _lrk773878720() async {
    if (!_x415102632.tjw740509054) return;
    if (_x415102632.nf101452885) return;
    if (!_sse701931566) return;
    if (_pqb679689520.tc878559709) {
      _eew741701759();
      return;
    }
    if (_akr750376285.eg602844577) {
      return _eew741701759();
    }
    final Vo686663811 t531814249 = _bt927016627;
    if (_akr750376285.b134583314(t531814249)) {
      return;
    }

    if (t531814249.rt986356891.last
            .wbl588000523()
            .sxq304973532 ==
        null) {
      _eew741701759();
      return;
    }
    if (t531814249.hyq225675089) return;
    if (t531814249.txs20227010) return;
    if (!_x415102632.pf884417876) {
      return _jsr1062211580(
        wdv662082703: t531814249,
        ab305046612: Se433202756(
          m876937366: Ets72708712.jzs783797633,
        ),
      );
    }
    if (!t531814249.pf884417876) {
      final Ets72708712 m876937366 =
          t531814249.m876937366 ??
              Ets72708712.xpp717760309;
      return _jsr1062211580(
        wdv662082703: t531814249,
        ab305046612: Se433202756(
          m876937366: m876937366,
        ),
      );
    }
    if (_g237360974.ioc676811966) {
      return _jsr1062211580(
        wdv662082703: t531814249,
        ab305046612: Se433202756(
          m876937366: _g237360974.azm256797845,
        ),
      );
    }

    if (_sbt61225006) return;

    //
    //
    //
    if (t995494898.schedulerPhase == SchedulerPhase.idle) {
      _sbt61225006 = true;
      await fr277876195.endOfFrame;
      _sbt61225006 = false;
      if (!_sse701931566) return;
      if (_akr750376285.eg602844577) {
        return _eew741701759();
      }
    }
    if (!mzv276415064) {
      _eew741701759();
      return;
    }
    if (_pqb679689520.slj146327836 > 0) {
      return;
    }
    final int o13584100 = t531814249.zvv161819314;
    final String g526226497 = t531814249.du652312141;
    final int dxu152848335 = DateTime.now().millisecondsSinceEpoch;
    late final ByteData? y323108567;
    try {
      y323108567 = await krq1052757545.enx533880856(
        wdv662082703: t531814249,
        hk269944022: () => b968983599 = false,
        dv981024422: _eew741701759,
        j954939758: (ppb5431294) => _t748964336.vq16226842 = ppb5431294,
      );
    } on Z901569987 catch (e) {
      debugPrint(e.pui172461614);
      return;
    }
    if (y323108567 == null) return;
    await _r480728803(
      y323108567.buffer.asUint8List(),
      o13584100,
      g526226497,
      dxu152848335,
      t531814249,
    );
  }

  Future<void> _r480728803(
    Uint8List xv238766099,
    int wlz228738069,
    String p343814982,
    int dxu152848335,
    Vo686663811 wdv662082703, {
    bool m450168834 = false,
  }) async {
    final Zzh491807233 jqk815611112 = Zzh491807233(
      xv238766099: xv238766099,
      wlz228738069: wlz228738069,
      p343814982: p343814982,
      dxu152848335: dxu152848335,
    );

    wdv662082703.zjm229772637.add(
      U627939866(
        jqk815611112: jqk815611112,
        m450168834: m450168834,
      ),
    );
    _jy1061096621.fbr141628852(
      Df355692179.d380883717,
      'Save screenshot - screenName: $p343814982 - screenId: $wlz228738069 - startFocusTime: $dxu152848335',
    );
    await _kp387655012.w521093806(jqk815611112);
  }

  //
  Future<void> on117538545(
    O270264706 wdv662082703,
  ) async {
    if (_x415102632.nf101452885) return;
    if (wdv662082703.txs20227010) return;
    final int dg784534719 = wdv662082703.h1032418119 - 500;
    if (!_x415102632.pf884417876) {
      return _jsr1062211580(
        wdv662082703: wdv662082703,
        ab305046612: Se433202756(
          m876937366: Ets72708712.jzs783797633,
        ),
        t489874286: dg784534719,
      );
    }
    if (wdv662082703.zjm229772637.isEmpty) {
      return _jsr1062211580(
        wdv662082703: wdv662082703,
        ab305046612: Se433202756(
          m876937366: Ets72708712.s1072278510,
        ),
        t489874286: dg784534719,
      );
    }
  }

  Future<void> _jsr1062211580({
    required Vo686663811 wdv662082703,
    required Se433202756 ab305046612,
    int? t489874286,
  }) async {
    await asb686691770(
      _jsr1062211580.hashCode,
    );
    return jm376891511(
        _jsr1062211580.hashCode, () async {
      //
      //
      if (wdv662082703.zjm229772637.isNotEmpty &&
          wdv662082703.zjm229772637.last.m450168834) return;
      final ByteData ys629039463 =
          await _t748964336.m817361548(
        ab305046612,
      );

      final int dxu152848335 =
          t489874286 ?? DateTime.now().millisecondsSinceEpoch;

      _jy1061096621.fbr141628852(
        Df355692179.x577029250,
        '''
      Save placeholder image for 
      screenName: ${wdv662082703.du652312141} - 
      screenId: ${wdv662082703.zvv161819314} -
      text: ${ab305046612.jxo266286737()}
      ''',
      );

      await _r480728803(
        ys629039463.buffer.asUint8List(),
        wdv662082703.zvv161819314,
        wdv662082703.du652312141,
        dxu152848335,
        wdv662082703,
        m450168834: true,
      );
    });
  }

  bool get mzv276415064 {
    bool wq669941175 = true;
    try {
      t995494898.currentFrameTimeStamp;
    } catch (e) {
      if (t995494898.hasScheduledFrame) {
        wq669941175 = false;
      }
    }
    return wq669941175;
  }

  @override
  void xy326102686() {
    _g104659695();
    mdq689591634();
  }
}
