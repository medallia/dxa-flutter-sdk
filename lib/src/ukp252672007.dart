//
import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/w151964619.dart';
import 'package:medallia_dxa/src/xgu7916898.dart';
import 'package:medallia_dxa/src/pk290553368.dart';
import 'package:medallia_dxa/src/dh879958802.dart';
import 'package:medallia_dxa/src/bo857696436.dart';
import 'package:medallia_dxa/src/k230686190.dart';
import 'package:medallia_dxa/src/m209816059.dart';
import 'package:medallia_dxa/src/wk131648733.dart';
import 'package:medallia_dxa/src/jfy681534833.dart';
import 'package:medallia_dxa/src/zy173740911.dart';
import 'package:medallia_dxa/src/q452802447.dart';
import 'package:medallia_dxa/src/uzh439716763.dart';
import 'package:medallia_dxa/src/d955933239.dart';
import 'package:medallia_dxa/src/fa255042035.dart';
import 'package:medallia_dxa/src/r336048674.dart';
import 'package:medallia_dxa/src/k966267800.dart';

class Gnn87340230 with Hd141979947, DisposeListeners {
  Gnn87340230({
    required G187483076 lj1052757624,
    required Nzn204008475 n674119731,
    required Xs170396826 w238486396,
  })  : _gep346769046 = n674119731,
        _wdd555931760 = w238486396,
        _g383165509 = lj1052757624 {
    pho1049665485 = Timer.periodic(_wdd555931760.ei160989714, (_t594036670) async {
      await p1031024923();
    });
    _ja577401012 =
        _gep346769046.f801556008.stream.listen((qy217292269) {
      v1030976453 = true;
    });
  }

  final Nzn204008475 _gep346769046;
  final G187483076 _g383165509;
  late final StreamSubscription<Duration> _ja577401012;

  late final Plp764602681 _dqj679689569 =
      Zz583050905.rq892083742.c1001100584;
  late final Kbl859069969 _der768939217 =
      Zz583050905.rq892083742.oxm507881224;
  late final Wpk733036501 _b415102713 =
      Zz583050905.rq892083742.s190649333;
  late final Sn394369952 _a1061096700 = Zz583050905.rq892083742.rzq751988082;
  late final S808717540 _ii495392709 = Zz583050905.rq892083742.dy594444886;
  late final S629109696 _c748964257 =
      Zz583050905.rq892083742.isq962720305;
  late final S1038099224 _q387654965 =
      Zz583050905.rq892083742.jj387024274;
  late final WidgetsBinding _qnv657053124 =
      Zz583050905.rq892083742.nb759432201;
  late final SchedulerBinding _c346470704 =
      Zz583050905.rq892083742.hm995494819;
  late final K344142466 _f237360927 =
      Zz583050905.rq892083742.oky946290241;
  final Xs170396826 _wdd555931760;
  late final Ah1047662653 _a750376204 = Zz583050905.rq892083742.io653425878;
  @visibleForTesting
  late Timer pho1049665485;
  bool _h404420964 = false;
  bool _jii61225087 = false;
  bool get _e701931647 => _a750376204.s436425471 != null;

  //
  Yv686663890 get _l927016674 {
    return _a750376204.s436425471!;
  }

  @visibleForTesting
  bool v1030976453 = false;
  @visibleForTesting
  bool get t968983678 => v1030976453;
  set t968983678(bool w873119130) {
    v1030976453 = w873119130;
    if (!w873119130) {
      _gep346769046.q333851904();
    }
  }

  void _h741701678() {
    if (_h404420964) return;
    _h404420964 = true;
    _qnv657053124.addPostFrameCallback((_t594036670) async {
      _h404420964 = false;
      await _ek773878673();
    });
  }

  Future<void> d306345031() async {
    t968983678 = true;
    await p1031024923();
  }

  Future<void> odi260696879() async {
    await _ek773878673();
  }

  void uo163680066() {
    if (pho1049665485.isActive) return;
    pho1049665485 = Timer.periodic(_wdd555931760.ei160989714, (_t594036670) async {
      await p1031024923();
    });
  }

  void pfy689591555() {
    pho1049665485.cancel();
  }

  void _d104659646() {
    _ja577401012.cancel();
    _gep346769046.osx326102735();
  }

  void d145214444() {
    _ii495392709.lco916995212();
  }

  Future<void> p1031024923() async {
    if (!t968983678) return;
    return _ek773878673();
  }

  //
  void _m848453399() async {
    await _dqj679689569.c307149432();
    await _ek773878673();
  }

  Future<void> _ek773878673() async {
    if (!_der768939217.kv740508975) return;
    if (_b415102713.z101452804) return;
    if (!_e701931647) return;
    if (_dqj679689569.wd878559628) {
      _m848453399();
      return;
    }
    if (_a750376204.j602844656) {
      return _h741701678();
    }
    final Yv686663890 hr531814200 = _l927016674;
    if (_a750376204.fjz134583363(hr531814200)) {
      return;
    }

    if (hr531814200.ymn986356938.last
            .nkt588000602()
            .u304973453 ==
        null) {
      _h741701678();
      return;
    }
    if (!_b415102713.hai884417797) {
      return _tsp1062211501(
        cg662082782: hr531814200,
        b305046533: Zte433202709(
          by876937415: Mf72708665.vq783797712,
        ),
      );
    }
    if (!hr531814200.hai884417797) {
      final Mf72708665 by876937415 =
          hr531814200.by876937415 ??
              Mf72708665.wk717760356;
      return _tsp1062211501(
        cg662082782: hr531814200,
        b305046533: Zte433202709(
          by876937415: by876937415,
        ),
      );
    }
    if (_f237360927.x676812015) {
      return _tsp1062211501(
        cg662082782: hr531814200,
        b305046533: Zte433202709(
          by876937415: _f237360927.jry256797892,
        ),
      );
    }

    if (_jii61225087) return;

    //
    //
    //
    if (_c346470704.schedulerPhase == SchedulerPhase.idle) {
      _jii61225087 = true;
      await _qnv657053124.endOfFrame;
      _jii61225087 = false;
      if (!_e701931647) return;
      if (_a750376204.j602844656) {
        return _h741701678();
      }
    }
    if (!xta276414985) {
      _h741701678();
      return;
    }
    if (_dqj679689569.o146327885 > 0) {
      return;
    }
    final int dfs13584053 = hr531814200.nwy161819363;
    final String x526226448 = hr531814200.anc652312092;
    final int vf152848286 = DateTime.now().millisecondsSinceEpoch;
    late final ByteData? yml323108486;
    try {
      yml323108486 = await _g383165509.oz533880905(
        cg662082782: hr531814200,
        z269943943: () => t968983678 = false,
        auf981024503: _h741701678,
        en954939711: (kpz5431215) => _c748964257.ibz16226891 = kpz5431215,
      );
    } on Ftf901569938 catch (e) {
      debugPrint(e.pf172461695);
      return;
    }
    if (yml323108486 == null) return;
    await _cmp480728754(
      yml323108486.buffer.asUint8List(),
      dfs13584053,
      x526226448,
      vf152848286,
      hr531814200,
    );
  }

  Future<void> _cmp480728754(
    Uint8List psf238766146,
    int fss228738116,
    String nrs343814935,
    int vf152848286,
    Yv686663890 cg662082782, {
    bool u450168915 = false,
  }) async {
    final Mmt491807312 wnq815611065 = Mmt491807312(
      psf238766146: psf238766146,
      fss228738116: fss228738116,
      nrs343814935: nrs343814935,
      vf152848286: vf152848286,
      u450168915: u450168915,
    );

    cg662082782.odj229772556.add(
      Ep627939915(
        wnq815611065: wnq815611065,
        u450168915: u450168915,
      ),
    );
    _a1061096700.eoq141628901(
      T355692226.z380883796,
      'Save screenshot - screenName: $nrs343814935 - screenId: $fss228738116 - startFocusTime: $vf152848286',
    );
    await _q387654965.gu521093887(wnq815611065);
  }

  Future<void> _tsp1062211501({
    required Yv686663890 cg662082782,
    required Zte433202709 b305046533,
    int? ps489874239,
  }) async {
    await p686691819(
      _tsp1062211501.hashCode,
    );
    return q376891430(
        _tsp1062211501.hashCode, () async {
      //
      //
      if (cg662082782.odj229772556.isNotEmpty &&
          cg662082782.odj229772556.last.u450168915) return;
      final ByteData wvi629039414 =
          await _c748964257.ndl817361629(
        b305046533,
      );

      final int vf152848286 =
          ps489874239 ?? DateTime.now().millisecondsSinceEpoch;

      _a1061096700.eoq141628901(
        T355692226.o577029331,
        '''
      Save placeholder image for 
      screenName: ${cg662082782.anc652312092} - 
      screenId: ${cg662082782.nwy161819363} -
      text: ${b305046533.b266286784()}
      ''',
      );

      await _cmp480728754(
        wvi629039414.buffer.asUint8List(),
        cg662082782.nwy161819363,
        cg662082782.anc652312092,
        vf152848286,
        cg662082782,
        u450168915: true,
      );
    });
  }

  bool get xta276414985 {
    bool v669941222 = true;
    try {
      _c346470704.currentFrameTimeStamp;
    } catch (e) {
      if (_c346470704.hasScheduledFrame) {
        v669941222 = false;
      }
    }
    return v669941222;
  }

  @override
  void osx326102735() {
    _d104659646();
    pfy689591555();
  }
}
