//
import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/x151964320.dart';
import 'package:medallia_dxa/src/kd290553715.dart';
import 'package:medallia_dxa/src/i879958649.dart';
import 'package:medallia_dxa/src/ib857696735.dart';
import 'package:medallia_dxa/src/at230685829.dart';
import 'package:medallia_dxa/src/x209815696.dart';
import 'package:medallia_dxa/src/lw131648950.dart';
import 'package:medallia_dxa/src/fa681534490.dart';
import 'package:medallia_dxa/src/gz173740548.dart';
import 'package:medallia_dxa/src/xtn452802276.dart';
import 'package:medallia_dxa/src/e304042020.dart';
import 'package:medallia_dxa/src/pi955933532.dart';
import 'package:medallia_dxa/src/cr255041688.dart';
import 'package:medallia_dxa/src/lk966267635.dart';

class Czj87340461 with Ycj141979712, No764602450 {
  Czj87340461(
    this._vx415102866,
    this._v1061096855,
    this._st346769405,
    this.a594445117,
    this._oyn748964042,
    this.loq277875929,
    this.lq995494600,
    this.l1052757779,
    this._m387654750,
    this._uwq237360756,
    this._l555931931,
  ) {
    lov1049665190 = Timer.periodic(_l555931931.xrb160990073, (_i594036437) async {
      await apd1031024752();
    });
    _st346769405.p801556291.stream.listen((qtf217291910) {
      z1030976174 = true;
    });
  }

  final M733036222 _vx415102866;
  final R394369739 _v1061096855;
  Logger get m613848909 => _v1061096855.ezz897253968;
  final Lh204008816 _st346769405;
  final Xd808717711 a594445117;
  final Bs629109419 _oyn748964042;
  final Po1038099059 _m387654750;
  final X187482799 l1052757779;
  final WidgetsBinding loq277875929;
  final SchedulerBinding lq995494600;
  final Ol344142825 _uwq237360756;
  final Zpr170397169 _l555931931;
  late final M1047662934 _g750376039 = Ka583051250.fc892084085.svj653426109;
  @visibleForTesting
  late Timer lov1049665190;
  bool _dtn404420623 = false;
  bool _vxe61225236 = false;
  bool get _sr701931796 => _g750376039.ax436425620 != null;

  //
  Ib686664121 get _lpm927016841 {
    return _g750376039.ax436425620!;
  }

  @visibleForTesting
  bool z1030976174 = false;
  @visibleForTesting
  bool get e968983829 => z1030976174;
  set e968983829(bool yx873118961) {
    z1030976174 = yx873118961;
    if (!yx873118961) {
      _st346769405.r333851755();
    }
  }

  void _z741701957() {
    if (_dtn404420623) return;
    _dtn404420623 = true;
    loq277875929.addPostFrameCallback((_i594036437) async {
      _dtn404420623 = false;
      await _la773878522();
    });
  }

  Future<void> k306345260() async {
    e968983829 = true;
    await apd1031024752();
  }

  Future<void> xky260696644() async {
    await _la773878522();
  }

  void cu163679785() {
    if (lov1049665190.isActive) return;
    lov1049665190 = Timer.periodic(_l555931931.xrb160990073, (_i594036437) async {
      await apd1031024752();
    });
  }

  void c689591400() {
    lov1049665190.cancel();
  }

  void c86559478() {
    c689591400();
    cu163679785();
  }

  void rm145214087() {
    a594445117.u916995559();
  }

  Future<void> apd1031024752() async {
    if (!e968983829) return;
    return _la773878522();
  }

  Future<void> _la773878522() async {
    if (!_vx415102866.v740508740) return;
    if (!_sr701931796) return;
    if (xk878559463) {
      _z741701957();
      return;
    }
    if (_g750376039.fp602844315) {
      return _z741701957();
    }
    final Ib686664121 p531813971 = _lpm927016841;
    if (svj653426109.tz134583592(p531813971)) {
      return;
    }

    if (p531813971.enx986357153.last.lo89098261 &&
        p531813971.enx986357153.last.m304973798 == null) {
      _z741701957();
      return;
    }
    if (p531813971.une225674859) return;
    if (p531813971.brt20226808) return;
    if (!_vx415102866.zl884417646) {
      return _d1062211270(
        xc662082997: p531813971,
        xel305046894: B433203070(
          r876937644: Skn72708946.nw783797435,
        ),
      );
    }
    if (!p531813971.zl884417646) {
      final Skn72708946 r876937644 =
          p531813971.r876937644 ??
              Skn72708946.c717760015;
      return _d1062211270(
        xc662082997: p531813971,
        xel305046894: B433203070(
          r876937644: r876937644,
        ),
      );
    }
    if (_uwq237360756.yqb676812164) {
      return _d1062211270(
        xc662082997: p531813971,
        xel305046894: B433203070(
          r876937644: _uwq237360756.p256798127,
        ),
      );
    }

    if (_vxe61225236) return;

    //
    //
    //
    if (lq995494600.schedulerPhase == SchedulerPhase.idle) {
      _vxe61225236 = true;
      await loq277875929.endOfFrame;
      _vxe61225236 = false;
      if (!_sr701931796) return;
      if (_g750376039.fp602844315) {
        return _z741701957();
      }
    }
    if (!u276415330) {
      _z741701957();
      return;
    }
    if (ocz146327590 > 0) {
      return;
    }
    final int un13584350 = p531813971.h161819528;
    final String m526226811 = p531813971.ej652312439;
    final int jmh152848117 = DateTime.now().millisecondsSinceEpoch;
    final ByteData? usr323108845 = await l1052757779.b533881122(
      xc662082997: p531813971,
      qxl269944300: () => e968983829 = false,
      j981024668: _z741701957,
      h954939476: (zpf5430980) => _oyn748964042.ww16227104 = zpf5430980,
    );
    if (usr323108845 == null) return;
    await _b480729049(
      usr323108845.buffer.asUint8List(),
      un13584350,
      m526226811,
      jmh152848117,
      p531813971,
    );
  }

  Future<void> _b480729049(
    Uint8List t238766377,
    int ft228738351,
    String yc343814780,
    int jmh152848117,
    Ib686664121 xc662082997, {
    bool rtr450169144 = false,
  }) async {
    final B491807547 s815611346 = B491807547(
      t238766377: t238766377,
      ft228738351: ft228738351,
      yc343814780: yc343814780,
      jmh152848117: jmh152848117,
    );

    xc662082997.vy229772391.add(
      Nw627940128(
        s815611346: s815611346,
        rtr450169144: rtr450169144,
      ),
    );
    m613848909.d(
      'Save screenshot - screenName: $yc343814780 - screenId: $ft228738351 - startFocusTime: $jmh152848117',
    );
    await _m387654750.o521094036(s815611346);
  }

  //
  Future<void> w117538763(
    Lrh270264504 xc662082997,
  ) async {
    if (xc662082997.brt20226808) return;
    final int hs784534917 = xc662082997.t1032417917 - 500;
    if (!_vx415102866.zl884417646) {
      return _d1062211270(
        xc662082997: xc662082997,
        xel305046894: B433203070(
          r876937644: Skn72708946.nw783797435,
        ),
        ocw489874004: hs784534917,
      );
    }
    if (xc662082997.vy229772391.isEmpty) {
      return _d1062211270(
        xc662082997: xc662082997,
        xel305046894: B433203070(
          r876937644: Skn72708946.hbi1072278228,
        ),
        ocw489874004: hs784534917,
      );
    }
  }

  Future<void> _d1062211270({
    required Ib686664121 xc662082997,
    required B433203070 xel305046894,
    int? ocw489874004,
  }) async {
    await bij686691456(
      _d1062211270.hashCode,
    );
    return me376891725(
        _d1062211270.hashCode, () async {
      //
      //
      if (xc662082997.vy229772391.isNotEmpty &&
          xc662082997.vy229772391.last.rtr450169144) return;
      final ByteData lg629039197 =
          await _oyn748964042.hg817361846(
        xel305046894,
      );

      final int jmh152848117 =
          ocw489874004 ?? DateTime.now().millisecondsSinceEpoch;

      m613848909.d(
        '''
      _sendOnePlaceholderImageForThisScreen - 
      screenName: ${xc662082997.ej652312439} - 
      screenId: ${xc662082997.h161819528} -
      text: ${xel305046894.js266287019()}
      ''',
      );

      await _b480729049(
        lg629039197.buffer.asUint8List(),
        xc662082997.h161819528,
        xc662082997.ej652312439,
        jmh152848117,
        xc662082997,
        rtr450169144: true,
      );
    });
  }

  bool get u276415330 {
    bool pc669940877 = true;
    try {
      lq995494600.currentFrameTimeStamp;
    } catch (e) {
      if (lq995494600.hasScheduledFrame) {
        pc669940877 = false;
      }
    }
    return pc669940877;
  }
}
