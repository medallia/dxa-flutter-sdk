//
import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/l369046961.dart';
import 'package:medallia_dxa/src/ov17384723.dart';
import 'package:medallia_dxa/src/t389194123.dart';
import 'package:medallia_dxa/src/yy757553496.dart';
import 'package:medallia_dxa/src/r420442511.dart';
import 'package:medallia_dxa/src/d465455692.dart';
import 'package:medallia_dxa/src/xax586793778.dart';
import 'package:medallia_dxa/src/f674086624.dart';
import 'package:medallia_dxa/src/rm806890209.dart';
import 'package:medallia_dxa/src/mp371804100.dart';
import 'package:medallia_dxa/src/q487304051.dart';
import 'package:medallia_dxa/src/joh758138683.dart';
import 'package:medallia_dxa/src/e534491569.dart';
import 'package:medallia_dxa/src/iik64670058.dart';
import 'package:medallia_dxa/src/r764152804.dart';
import 'package:medallia_dxa/src/pu372442128.dart';

class Tzo87340342 extends Hn142570963 with Gd141979867 {
  Tzo87340342({
    required K187482676 em1052757896,
    required F204008939 u674120131,
    required Hla170397034 gme238486156,
    required Pf404394043 xql421585525,
  })  : _ms346769254 = u674120131,
        _zh555932032 = gme238486156,
        _ld383165877 = em1052757896,
        super(xql421585525) {
    bfv1049665085 = Timer.periodic(_zh555932032.gco160990178, (_gjh594036302) async {
      await u1031024875();
    });
    _c577401156 =
        _ms346769254.u801556440.stream.listen((b217291805) {
      d1030976053 = true;
    });
  }

  final F204008939 _ms346769254;
  final K187482676 _ld383165877;
  late final StreamSubscription<Duration> _c577401156;

  late final Duo764602569 _i679689361 =
      B583051113.dfo892084206.m1001100504;
  late final Q859070433 _u768939297 =
      B583051113.dfo892084206.cdw507881208;
  late final Hbb733036069 _szj415102729 =
      B583051113.dfo892084206.zz190648837;
  late final Zwh394369616 _opx1061096716 = B583051113.dfo892084206.fg751987842;
  late final Km808717588 _voi495392309 = B583051113.dfo892084206.mm594445222;
  late final Ss629109296 _tlc748963921 =
      B583051113.dfo892084206.uk962720705;
  late final I672746391 _f387654853 =
      B583051113.dfo892084206.cva387023970;
  late final WidgetsBinding _z657052724 =
      B583051113.dfo892084206.rhs759432697;
  late final SchedulerBinding _bjd346470592 =
      B583051113.dfo892084206.jc995494483;
  late final Sj344142706 _zbv237360879 =
      B583051113.dfo892084206.ku946290609;
  final Hla170397034 _zh555932032;
  late final Wec1047663053 _gxq750376188 = B583051113.dfo892084206.jot653425958;
  @visibleForTesting
  late Timer bfv1049665085;
  bool _emw404420756 = false;
  bool _r61225359 = false;
  bool get _bog701931919 => _gxq750376188.od436425487 != null;

  //
  R686663970 get _ka927016722 {
    return _gxq750376188.od436425487!;
  }

  @visibleForTesting
  bool d1030976053 = false;
  @visibleForTesting
  bool get o968983950 => d1030976053;
  set o968983950(bool age873118826) {
    d1030976053 = age873118826;
    if (!age873118826) {
      _ms346769254.pmj333851888();
    }
  }

  void _y741702110() {
    if (_emw404420756) return;
    _emw404420756 = true;
    _z657052724.addPostFrameCallback((_gjh594036302) async {
      _emw404420756 = false;
      await _vs773878369();
    });
  }

  Future<void> v306345399() async {
    o968983950 = true;
    await u1031024875();
  }

  Future<void> fp260696799() async {
    await _vs773878369();
  }

  void mpj163679922() {
    if (bfv1049665085.isActive) return;
    bfv1049665085 = Timer.periodic(_zh555932032.gco160990178, (_gjh594036302) async {
      await u1031024875();
    });
  }

  void z689591539() {
    bfv1049665085.cancel();
  }

  void _x104659790() {
    _c577401156.cancel();
    _ms346769254.az326102847();
  }

  void ye145213980() {
    _voi495392309.i916995452();
  }

  Future<void> u1031024875() async {
    if (!o968983950) return;
    return _vs773878369();
  }

  //
  void _lxk848453351() async {
    await _i679689361.kdm307149704();
    await _vs773878369();
  }

  Future<void> _vs773878369() async {
    if (!_u768939297.s740508895) return;
    if (_szj415102729.rch101453300) return;
    if (!_bog701931919) return;
    if (_i679689361.wv878559356) {
      _lxk848453351();
      return;
    }
    if (_gxq750376188.mdc602844160) {
      return _y741702110();
    }
    final R686663970 qj531814088 = _ka927016722;
    if (_gxq750376188.dk134583731(qj531814088)) {
      return;
    }

    if (qj531814088.mu986357050.last
            .dr588000426()
            .c304973693 ==
        null) {
      _y741702110();
      return;
    }
    if (!_szj415102729.awr884417781) {
      return _che1062211165(
        dl662082862: qj531814088,
        yh305047029: Fi433203173(
          rj876937527: Rvb72709065.gxt783797280,
        ),
      );
    }
    if (!qj531814088.awr884417781) {
      final Rvb72709065 rj876937527 =
          qj531814088.rj876937527 ??
              Rvb72709065.vi717760148;
      return _che1062211165(
        dl662082862: qj531814088,
        yh305047029: Fi433203173(
          rj876937527: rj876937527,
        ),
      );
    }
    if (_zbv237360879.rj676812063) {
      return _che1062211165(
        dl662082862: qj531814088,
        yh305047029: Fi433203173(
          rj876937527: _zbv237360879.fhe256798004,
        ),
      );
    }

    if (_r61225359) return;

    //
    //
    //
    if (_bjd346470592.schedulerPhase == SchedulerPhase.idle) {
      _r61225359 = true;
      await _z657052724.endOfFrame;
      _r61225359 = false;
      if (!_bog701931919) return;
      if (_gxq750376188.mdc602844160) {
        return _y741702110();
      }
    }
    if (!zr276415481) {
      _y741702110();
      return;
    }
    if (_i679689361.t146327741 > 0) {
      return;
    }
    final int d13584197 = qj531814088.go161819411;
    final String uff526226912 = qj531814088.ov652312556;
    int? hfp152847982;
    if (qj531814088.b229772540.isEmpty) {
      hfp152847982 = qj531814088.kmj212009810;
    }
    hfp152847982 ??= DateTime.now().millisecondsSinceEpoch;
    late final ByteData? s323108726;
    try {
      s323108726 = await _ld383165877.nz533881273(
        dl662082862: qj531814088,
        enn269944183: () => o968983950 = false,
        fz981024519: _y741702110,
        u954939599: (x5430879) => _tlc748963921.nor16227259 = x5430879,
      );
    } on J901569634 catch (e) {
      debugPrint(e.riv172461967);
      return;
    }
    if (s323108726 == null) return;
    await _n480728898(
      s323108726.buffer.asUint8List(),
      d13584197,
      uff526226912,
      hfp152847982,
      qj531814088,
    );
  }

  Future<void> _n480728898(
    Uint8List za238766514,
    int zlx228738484,
    String y343814887,
    int hfp152847982,
    R686663970 dl662082862, {
    bool dn450169251 = false,
  }) async {
    dl662082862.b229772540.add(
      Tw627940283(
        za238766514: za238766514,
        zlx228738484: zlx228738484,
        y343814887: y343814887,
        hfp152847982: hfp152847982,
        dn450169251: dn450169251,
      ),
    );
    _opx1061096716.no141628437(
      X355692338.qb380883620,
      'Save screenshot - screenName: $y343814887 - screenId: $zlx228738484 - startFocusTime: $hfp152847982',
    );
    await _f387654853.e521093903(
      za238766514: za238766514,
      zlx228738484: zlx228738484,
      y343814887: y343814887,
      hfp152847982: hfp152847982,
      dn450169251: dn450169251,
    );
  }

  Future<void> _che1062211165({
    required R686663970 dl662082862,
    required Fi433203173 yh305047029,
    int? ev489874127,
  }) async {
    return sfj376891862(() async {
      //
      //
      if (dl662082862.b229772540.isNotEmpty &&
          dl662082862.b229772540.last.dn450169251) {
        return;
      }
      final ByteData k629039302 =
          await _tlc748963921.ks817361709(
        yh305047029,
      );

      final int hfp152847982 =
          ev489874127 ?? DateTime.now().millisecondsSinceEpoch;

      _opx1061096716.no141628437(
        X355692338.k577029411,
        '''
      Save placeholder image for 
      screenName: ${dl662082862.ov652312556} - 
      screenId: ${dl662082862.go161819411} -
      text: ${yh305047029.i266286896()}
      ''',
      );

      await _n480728898(
        k629039302.buffer.asUint8List(),
        dl662082862.go161819411,
        dl662082862.ov652312556,
        hfp152847982,
        dl662082862,
        dn450169251: true,
      );
    });
  }

  bool get zr276415481 {
    bool cva669940758 = true;
    try {
      _bjd346470592.currentFrameTimeStamp;
    } catch (e) {
      if (_bjd346470592.hasScheduledFrame) {
        cva669940758 = false;
      }
    }
    return cva669940758;
  }

  @override
  void az326102847() {
    _x104659790();
    z689591539();
  }
}
