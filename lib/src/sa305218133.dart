//
import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/hm369046998.dart';
import 'package:medallia_dxa/src/rsd17384820.dart';
import 'package:medallia_dxa/src/kf389194220.dart';
import 'package:medallia_dxa/src/tya757553471.dart';
import 'package:medallia_dxa/src/fr420442600.dart';
import 'package:medallia_dxa/src/e465455659.dart';
import 'package:medallia_dxa/src/nme586793813.dart';
import 'package:medallia_dxa/src/tm674086535.dart';
import 'package:medallia_dxa/src/mbc806890118.dart';
import 'package:medallia_dxa/src/czi371804067.dart';
import 'package:medallia_dxa/src/sb487303956.dart';
import 'package:medallia_dxa/src/do758138716.dart';
import 'package:medallia_dxa/src/p534491606.dart';
import 'package:medallia_dxa/src/tz64669965.dart';
import 'package:medallia_dxa/src/vz764152707.dart';
import 'package:medallia_dxa/src/m372442231.dart';

class Xc87340369 extends Uon142570932 with Yx141979836 {
  Xc87340369({
    required Xf187482707 n1052757999,
    required Yt204008844 kj674120100,
    required D170396941 he238486251,
    required V404394076 er421585426,
  })  : _wce346769153 = kj674120100,
        _cw555932135 = he238486251,
        _hg383165906 = n1052757999,
        super(er421585426) {
    tkt1049665114 = Timer.periodic(_cw555932135.ekl160990085, (_s594036265) async {
      await awt1031024780();
    });
    _g577401123 =
        _wce346769153.v801556415.stream.listen((k217291898) {
      lmw1030976082 = true;
    });
  }

  final Yt204008844 _wce346769153;
  final Xf187482707 _hg383165906;
  late final StreamSubscription<Duration> _g577401123;

  late final J764602542 _ohq679689462 =
      Z583051022.n892084105.ocb1001100479;
  late final R859070342 _xw768939334 =
      Z583051022.n892084105.dk507881119;
  late final Md733036098 _nwo415102830 =
      Z583051022.n892084105.vd190648930;
  late final A394369591 _ifl1061096811 = Z583051022.n892084105.gc751987941;
  late final Ea808717683 _wux495392338 = Z583051022.n892084105.yt594445249;
  late final Qr629109335 _h748963894 =
      Z583051022.n892084105.oj962720678;
  late final Iil672746480 _t387654818 =
      Z583051022.n892084105.sjf387023877;
  late final WidgetsBinding _sx657052755 =
      Z583051022.n892084105.qyo759432606;
  late final SchedulerBinding _vy346470567 =
      Z583051022.n892084105.xf995494452;
  late final Sm344142613 _ivo237360776 =
      Z583051022.n892084105.r946290646;
  final D170396941 _cw555932135;
  late final Xl1047663018 _j750376091 = Z583051022.n892084105.ltl653425985;
  @visibleForTesting
  late Timer tkt1049665114;
  bool _hg404420851 = false;
  bool _dcb61225448 = false;
  bool get _kg701932008 => _j750376091.v436425576 != null;

  //
  Wb686664005 get _wlq927016821 {
    return _j750376091.v436425576!;
  }

  @visibleForTesting
  bool lmw1030976082 = false;
  @visibleForTesting
  bool get g968984041 => lmw1030976082;
  set g968984041(bool nmv873118733) {
    lmw1030976082 = nmv873118733;
    if (!nmv873118733) {
      _wce346769153.f333851799();
    }
  }

  void _wql741702073() {
    if (_hg404420851) return;
    _hg404420851 = true;
    _sx657052755.addPostFrameCallback((_s594036265) async {
      _hg404420851 = false;
      await _n773878278();
    });
  }

  Future<void> i306345424() async {
    g968984041 = true;
    await awt1031024780();
  }

  Future<void> zam260696760() async {
    await _n773878278();
  }

  void psf163679957() {
    if (tkt1049665114.isActive) return;
    tkt1049665114 = Timer.periodic(_cw555932135.ekl160990085, (_s594036265) async {
      await awt1031024780();
    });
  }

  void xq689591444() {
    tkt1049665114.cancel();
  }

  void _r104659753() {
    _g577401123.cancel();
    _wce346769153.vt326102872();
  }

  void ihz145214075() {
    _wux495392338.cl916995355();
  }

  Future<void> awt1031024780() async {
    if (!g968984041) return;
    return _n773878278();
  }

  //
  void _f848453248() async {
    await _ohq679689462.c307149807();
    await _n773878278();
  }

  Future<void> _n773878278() async {
    if (!_xw768939334.gb740508856) return;
    if (_nwo415102830.tpk101453203) return;
    if (!_kg701932008) return;
    if (_ohq679689462.q878559259) {
      _f848453248();
      return;
    }
    if (_j750376091.wju602844263) {
      return _wql741702073();
    }
    final Wb686664005 a531814063 = _wlq927016821;
    if (_j750376091.akv134583764(a531814063)) {
      return;
    }

    if (a531814063.rk986357085.last
            .l588000461()
            .a304973594 ==
        null) {
      _wql741702073();
      return;
    }
    if (!_nwo415102830.zi884417682) {
      return _xan1062211130(
        giw662082889: a531814063,
        tc305046930: Ai433203074(
          cfh876937552: Bgj72709038.l783797319,
        ),
      );
    }
    if (!a531814063.zi884417682) {
      final Bgj72709038 cfh876937552 =
          a531814063.cfh876937552 ??
              Bgj72709038.m717760243;
      return _xan1062211130(
        giw662082889: a531814063,
        tc305046930: Ai433203074(
          cfh876937552: cfh876937552,
        ),
      );
    }
    if (_ivo237360776.by676812152) {
      return _xan1062211130(
        giw662082889: a531814063,
        tc305046930: Ai433203074(
          cfh876937552: _ivo237360776.m256798035,
        ),
      );
    }

    if (_dcb61225448) return;

    //
    //
    //
    if (_vy346470567.schedulerPhase == SchedulerPhase.idle) {
      _dcb61225448 = true;
      await _sx657052755.endOfFrame;
      _dcb61225448 = false;
      if (!_kg701932008) return;
      if (_j750376091.wju602844263) {
        return _wql741702073();
      }
    }
    if (!a276415390) {
      _wql741702073();
      return;
    }
    if (_ohq679689462.yet146327770 > 0) {
      return;
    }
    final int g13584162 = a531814063.yf161819508;
    final String ugn526226823 = a531814063.mxi652312459;
    int? z152847881;
    if (a531814063.m229772443.isEmpty) {
      z152847881 = a531814063.l212009781;
    }
    z152847881 ??= DateTime.now().millisecondsSinceEpoch;
    late final ByteData? a323108625;
    try {
      a323108625 = await _hg383165906.kye533881310(
        giw662082889: a531814063,
        k269944080: () => g968984041 = false,
        uu981024608: _wql741702073,
        o954939560: (ib5430840) => _h748963894.ri16227292 = ib5430840,
      );
    } on Zqp901569541 catch (e) {
      debugPrint(e.fz172462056);
      return;
    }
    if (a323108625 == null) return;
    await _f480728869(
      a323108625.buffer.asUint8List(),
      g13584162,
      ugn526226823,
      z152847881,
      a531814063,
    );
  }

  Future<void> _f480728869(
    Uint8List n238766549,
    int gns228738515,
    String bt343814784,
    int z152847881,
    Wb686664005 giw662082889, {
    bool iln450169284 = false,
  }) async {
    giw662082889.m229772443.add(
      Yj627940316(
        n238766549: n238766549,
        gns228738515: gns228738515,
        bt343814784: bt343814784,
        z152847881: z152847881,
        iln450169284: iln450169284,
      ),
    );
    _ifl1061096811.tog141628530(
      Qqg355692373.yjj380883651,
      'Save screenshot - screenName: $bt343814784 - screenId: $gns228738515 - startFocusTime: $z152847881',
    );
    await _t387654818.rth521093992(
      n238766549: n238766549,
      gns228738515: gns228738515,
      bt343814784: bt343814784,
      z152847881: z152847881,
      iln450169284: iln450169284,
    );
  }

  Future<void> _xan1062211130({
    required Wb686664005 giw662082889,
    required Ai433203074 tc305046930,
    int? aa489874088,
  }) async {
    return cif376891825(() async {
      //
      //
      if (giw662082889.m229772443.isNotEmpty &&
          giw662082889.m229772443.last.iln450169284) {
        return;
      }
      final ByteData str629039265 =
          await _h748963894.yc817361738(
        tc305046930,
      );

      final int z152847881 =
          aa489874088 ?? DateTime.now().millisecondsSinceEpoch;

      _ifl1061096811.tog141628530(
        Qqg355692373.a577029444,
        '''
      Save placeholder image for 
      screenName: ${giw662082889.mxi652312459} - 
      screenId: ${giw662082889.yf161819508} -
      text: ${tc305046930.j266286935()}
      ''',
      );

      await _f480728869(
        str629039265.buffer.asUint8List(),
        giw662082889.yf161819508,
        giw662082889.mxi652312459,
        z152847881,
        giw662082889,
        iln450169284: true,
      );
    });
  }

  bool get a276415390 {
    bool yu669940849 = true;
    try {
      _vy346470567.currentFrameTimeStamp;
    } catch (e) {
      if (_vy346470567.hasScheduledFrame) {
        yu669940849 = false;
      }
    }
    return yu669940849;
  }

  @override
  void vt326102872() {
    _r104659753();
    xq689591444();
  }
}
