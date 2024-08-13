//
import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/ker151964282.dart';
import 'package:medallia_dxa/src/tvh7916755.dart';
import 'package:medallia_dxa/src/pe290553769.dart';
import 'package:medallia_dxa/src/vc879958691.dart';
import 'package:medallia_dxa/src/ieo857696517.dart';
import 'package:medallia_dxa/src/ph230685791.dart';
import 'package:medallia_dxa/src/sbd209815626.dart';
import 'package:medallia_dxa/src/jk131648876.dart';
import 'package:medallia_dxa/src/hd681534656.dart';
import 'package:medallia_dxa/src/n173740766.dart';
import 'package:medallia_dxa/src/oa452802110.dart';
import 'package:medallia_dxa/src/aq439716394.dart';
import 'package:medallia_dxa/src/i955933574.dart';
import 'package:medallia_dxa/src/ex255041602.dart';
import 'package:medallia_dxa/src/e336049043.dart';
import 'package:medallia_dxa/src/yi966267433.dart';

class Uqs87340407 with Ew141979802, DisposeListeners {
  Uqs87340407({
    required M187482741 grq1052757961,
    required Ig204008874 pe674120066,
    required Zao170396971 e238486221,
  })  : _cfm346769191 = pe674120066,
        _m555932097 = e238486221,
        _iaf383165940 = grq1052757961 {
    nr1049665148 = Timer.periodic(_m555932097.w160990115, (_qh594036239) async {
      await fo1031024810();
    });
    _zm577401093 =
        _cfm346769191.g801556377.stream.listen((i217291868) {
      oc1030976116 = true;
    });
  }

  final Ig204008874 _cfm346769191;
  final M187482741 _iaf383165940;
  late final StreamSubscription<Duration> _zm577401093;

  late final Irn764602504 _evr679689424 =
      Klj583051048.yrd892084143.pr1001100441;
  late final Nw859070368 _wtt768939360 =
      Klj583051048.yrd892084143.jm507881145;
  late final Sl733036132 _ho415102792 =
      Klj583051048.yrd892084143.hxv190648900;
  late final Bcw394369553 _q1061096781 = Klj583051048.yrd892084143.vyc751987907;
  late final Mf808717653 _oe495392372 = Klj583051048.yrd892084143.mt594445287;
  late final Pv629109361 _yw748963856 =
      Klj583051048.yrd892084143.ags962720640;
  late final Bz1038099113 _l387654788 =
      Klj583051048.yrd892084143.w387023907;
  late final WidgetsBinding _v657052789 =
      Klj583051048.yrd892084143.wf759432632;
  late final SchedulerBinding _f346470529 =
      Klj583051048.yrd892084143.r995494418;
  late final U344142643 _rqj237360814 =
      Klj583051048.yrd892084143.e946290672;
  final Zao170396971 _m555932097;
  late final W1047662988 _rn750376125 = Klj583051048.yrd892084143.e653426023;
  @visibleForTesting
  late Timer nr1049665148;
  bool _ue404420821 = false;
  bool _oil61225422 = false;
  bool get _m701931982 => _rn750376125.ojw436425550 != null;

  //
  H686664035 get _jsr927016787 {
    return _rn750376125.ojw436425550!;
  }

  @visibleForTesting
  bool oc1030976116 = false;
  @visibleForTesting
  bool get liw968984015 => oc1030976116;
  set liw968984015(bool bv873118763) {
    oc1030976116 = bv873118763;
    if (!bv873118763) {
      _cfm346769191.x333851825();
    }
  }

  void _xl741702047() {
    if (_ue404420821) return;
    _ue404420821 = true;
    _v657052789.addPostFrameCallback((_qh594036239) async {
      _ue404420821 = false;
      await _r773878304();
    });
  }

  Future<void> qdn306345462() async {
    liw968984015 = true;
    await fo1031024810();
  }

  Future<void> zgy260696734() async {
    await _r773878304();
  }

  void rk163679987() {
    if (nr1049665148.isActive) return;
    nr1049665148 = Timer.periodic(_m555932097.w160990115, (_qh594036239) async {
      await fo1031024810();
    });
  }

  void gl689591474() {
    nr1049665148.cancel();
  }

  void _h104659727() {
    _zm577401093.cancel();
    _cfm346769191.bq326102910();
  }

  void sy145214045() {
    _oe495392372.yr916995389();
  }

  Future<void> fo1031024810() async {
    if (!liw968984015) return;
    return _r773878304();
  }

  //
  void _ljk848453286() async {
    await _evr679689424.ask307149769();
    await _r773878304();
  }

  Future<void> _r773878304() async {
    if (!_wtt768939360.a740508830) return;
    if (_ho415102792.th101453237) return;
    if (!_m701931982) return;
    if (_evr679689424.e878559293) {
      _ljk848453286();
      return;
    }
    if (_rn750376125.kq602844225) {
      return _xl741702047();
    }
    final H686664035 e531814025 = _jsr927016787;
    if (_rn750376125.fcf134583794(e531814025)) {
      return;
    }

    if (e531814025.x986357115.last
            .fo588000491()
            .aun304973628 ==
        null) {
      _xl741702047();
      return;
    }
    if (!_ho415102792.gvk884417716) {
      return _cjz1062211100(
        kju662082927: e531814025,
        s305046964: K433203108(
          cxz876937590: Jq72709000.ua783797345,
        ),
      );
    }
    if (!e531814025.gvk884417716) {
      final Jq72709000 cxz876937590 =
          e531814025.cxz876937590 ??
              Jq72709000.bvv717760213;
      return _cjz1062211100(
        kju662082927: e531814025,
        s305046964: K433203108(
          cxz876937590: cxz876937590,
        ),
      );
    }
    if (_rqj237360814.be676812126) {
      return _cjz1062211100(
        kju662082927: e531814025,
        s305046964: K433203108(
          cxz876937590: _rqj237360814.vtz256798069,
        ),
      );
    }

    if (_oil61225422) return;

    //
    //
    //
    if (_f346470529.schedulerPhase == SchedulerPhase.idle) {
      _oil61225422 = true;
      await _v657052789.endOfFrame;
      _oil61225422 = false;
      if (!_m701931982) return;
      if (_rn750376125.kq602844225) {
        return _xl741702047();
      }
    }
    if (!dt276415416) {
      _xl741702047();
      return;
    }
    if (_evr679689424.xvh146327804 > 0) {
      return;
    }
    final int dk13584132 = e531814025.gc161819474;
    final String nk526226849 = e531814025.b652312493;
    final int ke152847919 = DateTime.now().millisecondsSinceEpoch;
    late final ByteData? t323108663;
    try {
      t323108663 = await _iaf383165940.vot533881336(
        kju662082927: e531814025,
        kdf269944118: () => liw968984015 = false,
        nt981024582: _xl741702047,
        rw954939534: (bgq5430814) => _yw748963856.kwm16227322 = bgq5430814,
      );
    } on Ol901569571 catch (e) {
      debugPrint(e.msj172462030);
      return;
    }
    if (t323108663 == null) return;
    await _qtc480728835(
      t323108663.buffer.asUint8List(),
      dk13584132,
      nk526226849,
      ke152847919,
      e531814025,
    );
  }

  Future<void> _qtc480728835(
    Uint8List edr238766579,
    int ukh228738549,
    String l343814822,
    int ke152847919,
    H686664035 kju662082927, {
    bool iq450169314 = false,
  }) async {
    final Hf491807713 nj815611144 = Hf491807713(
      edr238766579: edr238766579,
      ukh228738549: ukh228738549,
      l343814822: l343814822,
      ke152847919: ke152847919,
      iq450169314: iq450169314,
    );

    kju662082927.qro229772477.add(
      Xet627940346(
        nj815611144: nj815611144,
        iq450169314: iq450169314,
      ),
    );
    _q1061096781.r141628500(
      Ym355692403.kg380883685,
      'Save screenshot - screenName: $l343814822 - screenId: $ukh228738549 - startFocusTime: $ke152847919',
    );
    await _l387654788.s521093966(nj815611144);
  }

  Future<void> _cjz1062211100({
    required H686664035 kju662082927,
    required K433203108 s305046964,
    int? oy489874062,
  }) async {
    await qyl686691418(
      _cjz1062211100.hashCode,
    );
    return cz376891799(
        _cjz1062211100.hashCode, () async {
      //
      //
      if (kju662082927.qro229772477.isNotEmpty &&
          kju662082927.qro229772477.last.iq450169314) return;
      final ByteData ajf629039239 =
          await _yw748963856.ao817361772(
        s305046964,
      );

      final int ke152847919 =
          oy489874062 ?? DateTime.now().millisecondsSinceEpoch;

      _q1061096781.r141628500(
        Ym355692403.pd577029474,
        '''
      Save placeholder image for 
      screenName: ${kju662082927.b652312493} - 
      screenId: ${kju662082927.gc161819474} -
      text: ${s305046964.ge266286961()}
      ''',
      );

      await _qtc480728835(
        ajf629039239.buffer.asUint8List(),
        kju662082927.gc161819474,
        kju662082927.b652312493,
        ke152847919,
        kju662082927,
        iq450169314: true,
      );
    });
  }

  bool get dt276415416 {
    bool v669940823 = true;
    try {
      _f346470529.currentFrameTimeStamp;
    } catch (e) {
      if (_f346470529.hasScheduledFrame) {
        v669940823 = false;
      }
    }
    return v669940823;
  }

  @override
  void bq326102910() {
    _h104659727();
    gl689591474();
  }
}
