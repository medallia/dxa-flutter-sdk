//
import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/ejt151964422.dart';
import 'package:medallia_dxa/src/et290553557.dart';
import 'package:medallia_dxa/src/dar879959007.dart';
import 'package:medallia_dxa/src/pqa857696377.dart';
import 'package:medallia_dxa/src/j230685987.dart';
import 'package:medallia_dxa/src/ld209815862.dart';
import 'package:medallia_dxa/src/yio131648528.dart';
import 'package:medallia_dxa/src/gc681534908.dart';
import 'package:medallia_dxa/src/wst173740962.dart';
import 'package:medallia_dxa/src/s452802370.dart';
import 'package:medallia_dxa/src/kua304042370.dart';
import 'package:medallia_dxa/src/p955933434.dart';
import 'package:medallia_dxa/src/w255041854.dart';
import 'package:medallia_dxa/src/kk966267733.dart';

class Bt87340043 with Cvq141980134, C764602868 {
  Bt87340043(
    this._q415102516,
    this._s1061096497,
    this._i346768987,
    this.ug594444955,
    this._e748964204,
    this.v277876095,
    this.nw995494766,
    this.leb1052757685,
    this._ue387655160,
    this._v237361106,
    this._xk555931837,
  ) {
    vb1049665280 = Timer.periodic(_xk555931837.eu160989919, (_n594036595) async {
      await lf1031025110();
    });
    _i346768987.fd801556197.stream.listen((xz217292064) {
      n1030976264 = true;
    });
  }

  final Xh733036312 _q415102516;
  final Z394369901 _s1061096497;
  Logger get bc613848811 => _s1061096497.vka897254390;
  final B204008662 _i346768987;
  final Jux808717353 ug594444955;
  final O629109517 _e748964204;
  final Pwn1038099413 _ue387655160;
  final Qh187482889 leb1052757685;
  final WidgetsBinding v277876095;
  final SchedulerBinding nw995494766;
  final Td344142415 _v237361106;
  final Ji170396759 _xk555931837;
  late final M1047662832 _ch750376385 = Lgg583050836.dh892083923.b653425691;
  @visibleForTesting
  late Timer vb1049665280;
  bool _p404421033 = false;
  bool _nb61225138 = false;
  bool get _gne701931698 => _ch750376385.qt436425266 != null;

  //
  Q686663711 get _zab927016495 {
    return _ch750376385.qt436425266!;
  }

  @visibleForTesting
  bool n1030976264 = false;
  @visibleForTesting
  bool get b968983731 => n1030976264;
  set b968983731(bool cup873119063) {
    n1030976264 = cup873119063;
    if (!cup873119063) {
      _i346768987.mlx333852109();
    }
  }

  void _e741701859() {
    if (_p404421033) return;
    _p404421033 = true;
    v277876095.addPostFrameCallback((_n594036595) async {
      _p404421033 = false;
      await _ba773878620();
    });
  }

  Future<void> pcg306345098() async {
    b968983731 = true;
    await lf1031025110();
  }

  Future<void> na260697058() async {
    await _ba773878620();
  }

  void iyh163680143() {
    if (vb1049665280.isActive) return;
    vb1049665280 = Timer.periodic(_xk555931837.eu160989919, (_n594036595) async {
      await lf1031025110();
    });
  }

  void gfh689591758() {
    vb1049665280.cancel();
  }

  void tx86559568() {
    gfh689591758();
    iyh163680143();
  }

  void oj145214241() {
    ug594444955.gzl916995137();
  }

  Future<void> lf1031025110() async {
    if (!b968983731) return;
    return _ba773878620();
  }

  Future<void> _ba773878620() async {
    if (!_q415102516.oy740509154) return;
    if (!_gne701931698) return;
    if (blz878559553) {
      _e741701859();
      return;
    }
    if (_ch750376385.xyh602844477) {
      return _e741701859();
    }
    final Q686663711 e531814389 = _zab927016495;
    if (b653425691.vu134583438(e531814389)) {
      return;
    }

    if (e531814389.l986356743.last.e89098675 &&
        e531814389.l986356743.last.uw304973376 == null) {
      _e741701859();
      return;
    }
    if (e531814389.w225675213) return;
    if (e531814389.qli20226910) return;
    if (!_q415102516.fi884417992) {
      return _le1062211424(
        f662082579: e531814389,
        yos305046728: Wpy433202904(
          v876937226: Vj72708852.qy783797533,
        ),
      );
    }
    if (!e531814389.fi884417992) {
      final Vj72708852 v876937226 =
          e531814389.v876937226 ??
              Vj72708852.ma717760425;
      return _le1062211424(
        f662082579: e531814389,
        yos305046728: Wpy433202904(
          v876937226: v876937226,
        ),
      );
    }
    if (_v237361106.eug676811810) {
      return _le1062211424(
        f662082579: e531814389,
        yos305046728: Wpy433202904(
          v876937226: _v237361106.nqa256797705,
        ),
      );
    }

    if (_nb61225138) return;

    //
    //
    //
    if (nw995494766.schedulerPhase == SchedulerPhase.idle) {
      _nb61225138 = true;
      await v277876095.endOfFrame;
      _nb61225138 = false;
      if (!_gne701931698) return;
      if (_ch750376385.xyh602844477) {
        return _e741701859();
      }
    }
    if (!k276415172) {
      _e741701859();
      return;
    }
    if (v146327936 > 0) {
      return;
    }
    final int dy13583992 = e531814389.q161819182;
    final String pkr526226653 = e531814389.o652312273;
    final int eg152848211 = DateTime.now().millisecondsSinceEpoch;
    final ByteData? wum323108427 = await leb1052757685.gdg533880964(
      f662082579: e531814389,
      d269943882: () => b968983731 = false,
      xbn981024314: _e741701859,
      r954939890: (vj5431138) => _e748964204.g16226950 = vj5431138,
    );
    if (wum323108427 == null) return;
    await _q480728703(
      wum323108427.buffer.asUint8List(),
      dy13583992,
      pkr526226653,
      eg152848211,
      e531814389,
    );
  }

  Future<void> _q480728703(
    Uint8List uf238766223,
    int f228738185,
    String duz343815130,
    int eg152848211,
    Q686663711 f662082579, {
    bool ig450168990 = false,
  }) async {
    final Hy491807389 wf815610996 = Hy491807389(
      uf238766223: uf238766223,
      f228738185: f228738185,
      duz343815130: duz343815130,
      eg152848211: eg152848211,
    );

    f662082579.vze229772737.add(
      Sdb627939974(
        wf815610996: wf815610996,
        ig450168990: ig450168990,
      ),
    );
    bc613848811.d(
      'Save screenshot - screenName: $duz343815130 - screenId: $f228738185 - startFocusTime: $eg152848211',
    );
    await _ue387655160.l521093682(wf815610996);
  }

  //
  Future<void> w117538413(
    G270264606 f662082579,
  ) async {
    if (f662082579.qli20226910) return;
    final int u784534563 = f662082579.c1032418267 - 500;
    if (!_q415102516.fi884417992) {
      return _le1062211424(
        f662082579: f662082579,
        yos305046728: Wpy433202904(
          v876937226: Vj72708852.qy783797533,
        ),
        u489874418: u784534563,
      );
    }
    if (f662082579.vze229772737.isEmpty) {
      return _le1062211424(
        f662082579: f662082579,
        yos305046728: Wpy433202904(
          v876937226: Vj72708852.bz1072278386,
        ),
        u489874418: u784534563,
      );
    }
  }

  Future<void> _le1062211424({
    required Q686663711 f662082579,
    required Wpy433202904 yos305046728,
    int? u489874418,
  }) async {
    await gp686691622(
      _le1062211424.hashCode,
    );
    return nny376891627(
        _le1062211424.hashCode, () async {
      //
      //
      if (f662082579.vze229772737.isNotEmpty &&
          f662082579.vze229772737.last.ig450168990) return;
      final ByteData p629039611 =
          await _e748964204.f817361424(
        yos305046728,
      );

      final int eg152848211 =
          u489874418 ?? DateTime.now().millisecondsSinceEpoch;

      bc613848811.d(
        '''
      _sendOnePlaceholderImageForThisScreen - 
      screenName: ${f662082579.o652312273} - 
      screenId: ${f662082579.q161819182} -
      text: ${yos305046728.j266286605()}
      ''',
      );

      await _q480728703(
        p629039611.buffer.asUint8List(),
        f662082579.q161819182,
        f662082579.o652312273,
        eg152848211,
        f662082579,
        ig450168990: true,
      );
    });
  }

  bool get k276415172 {
    bool nw669941035 = true;
    try {
      nw995494766.currentFrameTimeStamp;
    } catch (e) {
      if (nw995494766.hasScheduledFrame) {
        nw669941035 = false;
      }
    }
    return nw669941035;
  }
}
