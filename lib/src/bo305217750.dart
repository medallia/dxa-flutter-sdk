//
import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/h369047381.dart';
import 'package:medallia_dxa/src/v17385463.dart';
import 'package:medallia_dxa/src/oms389194607.dart';
import 'package:medallia_dxa/src/k757554108.dart';
import 'package:medallia_dxa/src/urv420442987.dart';
import 'package:medallia_dxa/src/uoj465455272.dart';
import 'package:medallia_dxa/src/gg586793430.dart';
import 'package:medallia_dxa/src/re674085892.dart';
import 'package:medallia_dxa/src/e806889477.dart';
import 'package:medallia_dxa/src/vp371803424.dart';
import 'package:medallia_dxa/src/e487303575.dart';
import 'package:medallia_dxa/src/jt758138335.dart';
import 'package:medallia_dxa/src/mo534491989.dart';
import 'package:medallia_dxa/src/q64670606.dart';
import 'package:medallia_dxa/src/br764152064.dart';
import 'package:medallia_dxa/src/mks372442868.dart';

class St87341010 extends Ll142571319 with N141980223 {
  St87341010({
    required A187482320 da1052757356,
    required H204009231 ow674120487,
    required N170397582 wrh238485608,
    required X404394719 nd421585041,
  })  : _z346768770 = ow674120487,
        _c555932516 = wrh238485608,
        _s383166289 = da1052757356,
        super(nd421585041) {
    oj1049664729 = Timer.periodic(_c555932516.w160989446, (_d594035882) async {
      await tmy1031025167();
    });
    _rlp577401760 =
        _z346768770.avf801555772.stream.listen((pyh217292537) {
      xb1030975697 = true;
    });
  }

  final H204009231 _z346768770;
  final A187482320 _s383166289;
  late final StreamSubscription<Duration> _rlp577401760;

  late final Ybr764602925 _pvd679689845 =
      Zmk583050637.u892083466.ute1001100860;
  late final Rhw859069701 _kqk768939973 =
      Zmk583050637.u892083466.bpv507880476;
  late final In733035713 _j415102445 =
      Zmk583050637.u892083466.can190648545;
  late final Jnx394369204 _e1061097448 = Zmk583050637.u892083466.gcv751988326;
  late final Lau808718320 _y495391953 = Zmk583050637.u892083466.bcp594444610;
  late final L629108948 _kd748964533 =
      Zmk583050637.u892083466.tl962720037;
  late final Hum672745843 _pr387655201 =
      Zmk583050637.u892083466.mt387024518;
  late final WidgetsBinding _bb657053392 =
      Zmk583050637.u892083466.xk759432989;
  late final SchedulerBinding _imj346470948 =
      Zmk583050637.u892083466.x995494071;
  late final Iis344142230 _sv237360139 =
      Zmk583050637.u892083466.so946290005;
  final N170397582 _c555932516;
  late final Fs1047663401 _bgf750376472 = Zmk583050637.u892083466.aco653426626;
  @visibleForTesting
  late Timer oj1049664729;
  bool _d404421232 = false;
  bool _fb61225835 = false;
  bool get _p701932395 => _bgf750376472.wn436425195 != null;

  //
  Ujb686664646 get _giq927016438 {
    return _bgf750376472.wn436425195!;
  }

  @visibleForTesting
  bool xb1030975697 = false;
  @visibleForTesting
  bool get wqx968984426 => xb1030975697;
  set wqx968984426(bool ma873119374) {
    xb1030975697 = ma873119374;
    if (!ma873119374) {
      _z346768770.kyy333852180();
    }
  }

  void _tv741702458() {
    if (_d404421232) return;
    _d404421232 = true;
    _bb657053392.addPostFrameCallback((_d594035882) async {
      _d404421232 = false;
      await _cg773877893();
    });
  }

  Future<void> pr306345811() async {
    wqx968984426 = true;
    await tmy1031025167();
  }

  Future<void> bpv260696123() async {
    await _cg773877893();
  }

  void v163679318() {
    if (oj1049664729.isActive) return;
    oj1049664729 = Timer.periodic(_c555932516.w160989446, (_d594035882) async {
      await tmy1031025167();
    });
  }

  void s689591831() {
    oj1049664729.cancel();
  }

  void _dl104659370() {
    _rlp577401760.cancel();
    _z346768770.b326102491();
  }

  void ua145213688() {
    _y495391953.uba916995992();
  }

  Future<void> tmy1031025167() async {
    if (!wqx968984426) return;
    return _cg773877893();
  }

  //
  void _xq848452611() async {
    await _pvd679689845.pt307149164();
    await _cg773877893();
  }

  Future<void> _cg773877893() async {
    if (!_kqk768939973.zdb740509243) return;
    if (_j415102445.fh101453584) return;
    if (!_p701932395) return;
    if (_pvd679689845.am878559896) {
      _xq848452611();
      return;
    }
    if (_bgf750376472.vig602844900) {
      return _tv741702458();
    }
    final Ujb686664646 jg531813420 = _giq927016438;
    if (_bgf750376472.p134584151(jg531813420)) {
      return;
    }

    if (jg531813420.gns986357726.last
            .tq588000846()
            .gn304973209 ==
        null) {
      _tv741702458();
      return;
    }
    if (!_j415102445.b884418065) {
      return _gb1062210745(
        ljy662083530: jg531813420,
        rl305047313: Rbq433202433(
          c876938195: T72708397.c783797956,
        ),
      );
    }
    if (!jg531813420.b884418065) {
      final T72708397 c876938195 =
          jg531813420.c876938195 ??
              T72708397.mk717759600;
      return _gb1062210745(
        ljy662083530: jg531813420,
        rl305047313: Rbq433202433(
          c876938195: c876938195,
        ),
      );
    }
    if (_sv237360139.uu676812795) {
      return _gb1062210745(
        ljy662083530: jg531813420,
        rl305047313: Rbq433202433(
          c876938195: _sv237360139.i256798672,
        ),
      );
    }

    if (_fb61225835) return;

    //
    //
    //
    if (_imj346470948.schedulerPhase == SchedulerPhase.idle) {
      _fb61225835 = true;
      await _bb657053392.endOfFrame;
      _fb61225835 = false;
      if (!_p701932395) return;
      if (_bgf750376472.vig602844900) {
        return _tv741702458();
      }
    }
    if (!obw276414749) {
      _tv741702458();
      return;
    }
    if (_pvd679689845.hf146328153 > 0) {
      return;
    }
    final int bkp13583777 = jg531813420.ws161819127;
    final String dsy526227204 = jg531813420.fmx652311816;
    int? l152847498;
    if (jg531813420.vno229772824.isEmpty) {
      l152847498 = jg531813420.ka212009398;
    }
    l152847498 ??= DateTime.now().millisecondsSinceEpoch;
    late final ByteData? gn323108242;
    try {
      gn323108242 = await _s383166289.r533881693(
        ljy662083530: jg531813420,
        wbz269944723: () => wqx968984426 = false,
        xsi981024227: _tv741702458,
        xv954939947: (pk5430459) => _kd748964533.nrc16226655 = pk5430459,
      );
    } on Z901570182 catch (e) {
      debugPrint(e.caf172461419);
      return;
    }
    if (gn323108242 == null) return;
    await _p480728486(
      gn323108242.buffer.asUint8List(),
      bkp13583777,
      dsy526227204,
      l152847498,
      jg531813420,
    );
  }

  Future<void> _p480728486(
    Uint8List sel238766934,
    int x228738896,
    String u343814147,
    int l152847498,
    Ujb686664646 ljy662083530, {
    bool j450169671 = false,
  }) async {
    ljy662083530.vno229772824.add(
      R627939679(
        sel238766934: sel238766934,
        x228738896: x228738896,
        u343814147: u343814147,
        l152847498: l152847498,
        j450169671: j450169671,
      ),
    );
    _e1061097448.w141629169(
      F355691990.e380883008,
      'Save screenshot - screenName: $u343814147 - screenId: $x228738896 - startFocusTime: $l152847498',
    );
    await _pr387655201.lf521093611(
      sel238766934: sel238766934,
      x228738896: x228738896,
      u343814147: u343814147,
      l152847498: l152847498,
      j450169671: j450169671,
    );
  }

  Future<void> _gb1062210745({
    required Ujb686664646 ljy662083530,
    required Rbq433202433 rl305047313,
    int? ajn489873451,
  }) async {
    return zc376892210(() async {
      //
      //
      if (ljy662083530.vno229772824.isNotEmpty &&
          ljy662083530.vno229772824.last.j450169671) {
        return;
      }
      final ByteData qo629039650 =
          await _kd748964533.wm817361353(
        rl305047313,
      );

      final int l152847498 =
          ajn489873451 ?? DateTime.now().millisecondsSinceEpoch;

      _e1061097448.w141629169(
        F355691990.ozy577030087,
        '''
      Save placeholder image for 
      screenName: ${ljy662083530.fmx652311816} - 
      screenId: ${ljy662083530.ws161819127} -
      text: ${rl305047313.cvo266286548()}
      ''',
      );

      await _p480728486(
        qo629039650.buffer.asUint8List(),
        ljy662083530.ws161819127,
        ljy662083530.fmx652311816,
        l152847498,
        ljy662083530,
        j450169671: true,
      );
    });
  }

  bool get obw276414749 {
    bool gl669941490 = true;
    try {
      _imj346470948.currentFrameTimeStamp;
    } catch (e) {
      if (_imj346470948.hasScheduledFrame) {
        gl669941490 = false;
      }
    }
    return gl669941490;
  }

  @override
  void b326102491() {
    _dl104659370();
    s689591831();
  }
}
