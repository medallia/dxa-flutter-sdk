//
import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/e151963874.dart';
import 'package:medallia_dxa/src/ls290553137.dart';
import 'package:medallia_dxa/src/thu879958075.dart';
import 'package:medallia_dxa/src/b857697181.dart';
import 'package:medallia_dxa/src/gw230686407.dart';
import 'package:medallia_dxa/src/ic209816274.dart';
import 'package:medallia_dxa/src/mao131649524.dart';
import 'package:medallia_dxa/src/mlm681535064.dart';
import 'package:medallia_dxa/src/l173740102.dart';
import 'package:medallia_dxa/src/e452801702.dart';
import 'package:medallia_dxa/src/rxm439716018.dart';
import 'package:medallia_dxa/src/kb304042598.dart';
import 'package:medallia_dxa/src/hj955932958.dart';
import 'package:medallia_dxa/src/fsv255042266.dart';
import 'package:medallia_dxa/src/gxe966267057.dart';

class O87341039 with Cax141980162, His764602896 {
  O87341039(
    this._iz415102416,
    this._zah1061097429,
    this._kx346768831,
    this.h594444671,
    this._n748964488,
    this.j277876379,
    this.ogk995494026,
    this.op1052757329,
    this._n387655196,
    this._g237360182,
    this._iet555932505,
  ) {
    jum1049664740 = Timer.periodic(_iet555932505.ar160989499, (_dk594035863) async {
      await c1031025202();
    });
    _kx346768831.jwc801555713.stream.listen((fss217292484) {
      vf1030975724 = true;
    });
  }

  final P733035772 _iz415102416;
  final A394369161 _zah1061097429;
  Logger get qa613848335 => _zah1061097429.gcu897253394;
  final X204009266 _kx346768831;
  final Ctr808718285 h594444671;
  final Pqd629108969 _n748964488;
  final Uso1038098481 _n387655196;
  final Mg187482349 op1052757329;
  final WidgetsBinding j277876379;
  final SchedulerBinding ogk995494026;
  final Qig344142251 _g237360182;
  final Va170397619 _iet555932505;
  late final S1047663380 _d750376485 = Pg583050672.vpo892083511.vn653426687;
  @visibleForTesting
  late Timer jum1049664740;
  bool _w404421197 = false;
  bool _dyz61225814 = false;
  bool get _gbu701932374 => _d750376485.ir436425174 != null;

  //
  Szr686664699 get _w927016395 {
    return _d750376485.ir436425174!;
  }

  @visibleForTesting
  bool vf1030975724 = false;
  @visibleForTesting
  bool get rez968984407 => vf1030975724;
  set rez968984407(bool r873119411) {
    vf1030975724 = r873119411;
    if (!r873119411) {
      _kx346768831.qu333852201();
    }
  }

  void _hrl741702407() {
    if (_w404421197) return;
    _w404421197 = true;
    j277876379.addPostFrameCallback((_dk594035863) async {
      _w404421197 = false;
      await _rof773877944();
    });
  }

  Future<void> d306345838() async {
    rez968984407 = true;
    await c1031025202();
  }

  Future<void> j260696070() async {
    await _rof773877944();
  }

  void rc163679339() {
    if (jum1049664740.isActive) return;
    jum1049664740 = Timer.periodic(_iet555932505.ar160989499, (_dk594035863) async {
      await c1031025202();
    });
  }

  void cw689591850() {
    jum1049664740.cancel();
  }

  void oi86558900() {
    cw689591850();
    rc163679339();
  }

  void hgt145213637() {
    h594444671.e916996005();
  }

  Future<void> c1031025202() async {
    if (!rez968984407) return;
    return _rof773877944();
  }

  Future<void> _rof773877944() async {
    if (!_iz415102416.zg740509190) return;
    if (_iz415102416.yt101453613) return;
    if (!_gbu701932374) return;
    if (o878559909) {
      _hrl741702407();
      return;
    }
    if (_d750376485.gn602844889) {
      return _hrl741702407();
    }
    final Szr686664699 iqt531813393 = _w927016395;
    if (vn653426687.j134584170(iqt531813393)) {
      return;
    }

    if (iqt531813393.dm986357731.last
            .ybl588000883()
            .uc304973220 ==
        null) {
      _hrl741702407();
      return;
    }
    if (iqt531813393.b225674281) return;
    if (iqt531813393.jss20226234) return;
    if (!_iz415102416.j884418092) {
      return _sgg1062210692(
        fxm662083575: iqt531813393,
        yv305047340: O433202492(
          zzq876938222: V72708368.e783798009,
        ),
      );
    }
    if (!iqt531813393.j884418092) {
      final V72708368 zzq876938222 =
          iqt531813393.zzq876938222 ??
              V72708368.zbc717759565;
      return _sgg1062210692(
        fxm662083575: iqt531813393,
        yv305047340: O433202492(
          zzq876938222: zzq876938222,
        ),
      );
    }
    if (_g237360182.q676812742) {
      return _sgg1062210692(
        fxm662083575: iqt531813393,
        yv305047340: O433202492(
          zzq876938222: _g237360182.w256798701,
        ),
      );
    }

    if (_dyz61225814) return;

    //
    //
    //
    if (ogk995494026.schedulerPhase == SchedulerPhase.idle) {
      _dyz61225814 = true;
      await j277876379.endOfFrame;
      _dyz61225814 = false;
      if (!_gbu701932374) return;
      if (_d750376485.gn602844889) {
        return _hrl741702407();
      }
    }
    if (!dj276414752) {
      _hrl741702407();
      return;
    }
    if (w146328164 > 0) {
      return;
    }
    final int qzk13583772 = iqt531813393.kxj161819082;
    final String tdt526227257 = iqt531813393.dxl652311861;
    final int yku152847543 = DateTime.now().millisecondsSinceEpoch;
    late final ByteData? i323108271;
    try {
      i323108271 = await op1052757329.eb533881696(
        fxm662083575: iqt531813393,
        qj269944750: () => rez968984407 = false,
        wdo981024222: _hrl741702407,
        a954939926: (dv5430406) => _n748964488.z16226658 = dv5430406,
      );
    } on Jlq901570235 catch (e) {
      debugPrint(e.sny172461398);
      return;
    }
    if (i323108271 == null) return;
    await _ot480728475(
      i323108271.buffer.asUint8List(),
      qzk13583772,
      tdt526227257,
      yku152847543,
      iqt531813393,
    );
  }

  Future<void> _ot480728475(
    Uint8List ua238766955,
    int q228738925,
    String lz343814206,
    int yku152847543,
    Szr686664699 fxm662083575, {
    bool hb450169722 = false,
  }) async {
    final Yzp491807097 kb815611792 = Yzp491807097(
      ua238766955: ua238766955,
      q228738925: q228738925,
      lz343814206: lz343814206,
      yku152847543: yku152847543,
    );

    fxm662083575.l229772837.add(
      Qg627939682(
        kb815611792: kb815611792,
        hb450169722: hb450169722,
      ),
    );
    qa613848335.d(
      'Save screenshot - screenName: $lz343814206 - screenId: $q228738925 - startFocusTime: $yku152847543',
    );
    await _n387655196.rm521093590(kb815611792);
  }

  //
  Future<void> myd117538185(
    Xt270265082 fxm662083575,
  ) async {
    if (_iz415102416.yt101453613) return;
    if (fxm662083575.jss20226234) return;
    final int k784535495 = fxm662083575.upi1032417343 - 500;
    if (!_iz415102416.j884418092) {
      return _sgg1062210692(
        fxm662083575: fxm662083575,
        yv305047340: O433202492(
          zzq876938222: V72708368.e783798009,
        ),
        hu489873430: k784535495,
      );
    }
    if (fxm662083575.l229772837.isEmpty) {
      return _sgg1062210692(
        fxm662083575: fxm662083575,
        yv305047340: O433202492(
          zzq876938222: V72708368.nfr1072277654,
        ),
        hu489873430: k784535495,
      );
    }
  }

  Future<void> _sgg1062210692({
    required Szr686664699 fxm662083575,
    required O433202492 yv305047340,
    int? hu489873430,
  }) async {
    await q686692034(
      _sgg1062210692.hashCode,
    );
    return okv376892175(
        _sgg1062210692.hashCode, () async {
      //
      //
      if (fxm662083575.l229772837.isNotEmpty &&
          fxm662083575.l229772837.last.hb450169722) return;
      final ByteData p629039647 =
          await _n748964488.w817361396(
        yv305047340,
      );

      final int yku152847543 =
          hu489873430 ?? DateTime.now().millisecondsSinceEpoch;

      qa613848335.d(
        '''
      _sendOnePlaceholderImageForThisScreen - 
      screenName: ${fxm662083575.dxl652311861} - 
      screenId: ${fxm662083575.kxj161819082} -
      text: ${yv305047340.h266286569()}
      ''',
      );

      await _ot480728475(
        p629039647.buffer.asUint8List(),
        fxm662083575.kxj161819082,
        fxm662083575.dxl652311861,
        yku152847543,
        fxm662083575,
        hb450169722: true,
      );
    });
  }

  bool get dj276414752 {
    bool i669941455 = true;
    try {
      ogk995494026.currentFrameTimeStamp;
    } catch (e) {
      if (ogk995494026.hasScheduledFrame) {
        i669941455 = false;
      }
    }
    return i669941455;
  }
}
