//
import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/lai151963827.dart';
import 'package:medallia_dxa/src/szs7917082.dart';
import 'package:medallia_dxa/src/gix290553184.dart';
import 'package:medallia_dxa/src/ns879958122.dart';
import 'package:medallia_dxa/src/qbt857697228.dart';
import 'package:medallia_dxa/src/su230686358.dart';
import 'package:medallia_dxa/src/yqb209816195.dart';
import 'package:medallia_dxa/src/cpo131649445.dart';
import 'package:medallia_dxa/src/x681534985.dart';
import 'package:medallia_dxa/src/o173740055.dart';
import 'package:medallia_dxa/src/v452801783.dart';
import 'package:medallia_dxa/src/t439716067.dart';
import 'package:medallia_dxa/src/ej955933007.dart';
import 'package:medallia_dxa/src/yyq255042187.dart';
import 'package:medallia_dxa/src/u336048474.dart';
import 'package:medallia_dxa/src/en966267104.dart';

class Cg87340990 with Y141980243, DisposeListeners {
  Cg87340990({
    required Jxo187482300 s1052757248,
    required Igd204009315 yi674120523,
    required Ay170397666 p238485508,
  })  : _s346768878 = yi674120523,
        _his555932424 = p238485508,
        _k383166269 = s1052757248 {
    eag1049664693 = Timer.periodic(_his555932424.c160989546, (_c594035910) async {
      await idh1031025251();
    });
    _o577401804 =
        _s346768878.b801555792.stream.listen((xxo217292437) {
      mxk1030975677 = true;
    });
  }

  final Igd204009315 _s346768878;
  final Jxo187482300 _k383166269;
  late final StreamSubscription<Duration> _o577401804;

  late final Jk764602945 _vq679689753 =
      Wyf583050721.wf892083558.ea1001100880;
  late final H859069801 _thh768939945 =
      Wyf583050721.wf892083558.aaq507880560;
  late final Ntp733035693 _iix415102337 =
      Wyf583050721.wf892083558.k190648461;
  late final Nfs394369240 _gi1061097348 = Wyf583050721.wf892083558.b751988234;
  late final Sdw808718236 _jv495391933 = Wyf583050721.wf892083558.lr594444590;
  late final Jo629108920 _ryq748964569 =
      Wyf583050721.wf892083558.n962720073;
  late final Dzw1038098528 _ozy387655245 =
      Wyf583050721.wf892083558.r387024618;
  late final WidgetsBinding _igb657053372 =
      Wyf583050721.wf892083558.wid759433073;
  late final SchedulerBinding _ywh346470984 =
      Wyf583050721.wf892083558.t995494107;
  late final Egl344142330 _olt237360231 =
      Wyf583050721.wf892083558.j946289977;
  final Ay170397666 _his555932424;
  late final Pf1047663429 _eh750376564 = Wyf583050721.wf892083558.o653426606;
  @visibleForTesting
  late Timer eag1049664693;
  bool _ny404421148 = false;
  bool _n61225735 = false;
  bool get _k701932295 => _eh750376564.m436425095 != null;

  //
  Cr686664618 get _tip927016346 {
    return _eh750376564.m436425095!;
  }

  @visibleForTesting
  bool mxk1030975677 = false;
  @visibleForTesting
  bool get qa968984326 => mxk1030975677;
  set qa968984326(bool fy873119458) {
    mxk1030975677 = fy873119458;
    if (!fy873119458) {
      _s346768878.fte333852280();
    }
  }

  void _ivw741702486() {
    if (_ny404421148) return;
    _ny404421148 = true;
    _igb657053372.addPostFrameCallback((_c594035910) async {
      _ny404421148 = false;
      await _t773877993();
    });
  }

  Future<void> i306345791() async {
    qa968984326 = true;
    await idh1031025251();
  }

  Future<void> rma260696151() async {
    await _t773877993();
  }

  void ksn163679290() {
    if (eag1049664693.isActive) return;
    eag1049664693 = Timer.periodic(_his555932424.c160989546, (_c594035910) async {
      await idh1031025251();
    });
  }

  void mw689591931() {
    eag1049664693.cancel();
  }

  void _bs104659398() {
    _o577401804.cancel();
    _s346768878.r326102455();
  }

  void wct145213588() {
    _jv495391933.w916996084();
  }

  Future<void> idh1031025251() async {
    if (!qa968984326) return;
    return _t773877993();
  }

  //
  void _c848452719() async {
    await _vq679689753.ic307149056();
    await _t773877993();
  }

  Future<void> _t773877993() async {
    if (!_thh768939945.jpt740509271) return;
    if (_iix415102337.baf101453692) return;
    if (!_k701932295) return;
    if (_vq679689753.q878559988) {
      _c848452719();
      return;
    }
    if (_eh750376564.na602844808) {
      return _ivw741702486();
    }
    final Cr686664618 oqh531813440 = _tip927016346;
    if (_eh750376564.a134584123(oqh531813440)) {
      return;
    }

    if (oqh531813440.qng986357682.last
            .qst588000802()
            .n304973301 ==
        null) {
      _ivw741702486();
      return;
    }
    if (!_iix415102337.byu884418173) {
      return _vdt1062210773(
        s662083494: oqh531813440,
        m305047421: Vnp433202541(
          ww876938175: Q72708417.t783797928,
        ),
      );
    }
    if (!oqh531813440.byu884418173) {
      final Q72708417 ww876938175 =
          oqh531813440.ww876938175 ??
              Q72708417.s717759516;
      return _vdt1062210773(
        s662083494: oqh531813440,
        m305047421: Vnp433202541(
          ww876938175: ww876938175,
        ),
      );
    }
    if (_olt237360231.v676812695) {
      return _vdt1062210773(
        s662083494: oqh531813440,
        m305047421: Vnp433202541(
          ww876938175: _olt237360231.q256798652,
        ),
      );
    }

    if (_n61225735) return;

    //
    //
    //
    if (_ywh346470984.schedulerPhase == SchedulerPhase.idle) {
      _n61225735 = true;
      await _igb657053372.endOfFrame;
      _n61225735 = false;
      if (!_k701932295) return;
      if (_eh750376564.na602844808) {
        return _ivw741702486();
      }
    }
    if (!d276414833) {
      _ivw741702486();
      return;
    }
    if (_vq679689753.l146328117 > 0) {
      return;
    }
    final int w13583821 = oqh531813440.ban161819035;
    final String zx526227304 = oqh531813440.m652311908;
    final int taw152847590 = DateTime.now().millisecondsSinceEpoch;
    late final ByteData? wsl323108350;
    try {
      wsl323108350 = await _k383166269.h533881649(
        s662083494: oqh531813440,
        qzq269944831: () => qa968984326 = false,
        t981024143: _ivw741702486,
        n954939975: (q5430487) => _ryq748964569.h16226611 = q5430487,
      );
    } on Sif901570282 catch (e) {
      debugPrint(e.jo172461319);
      return;
    }
    if (wsl323108350 == null) return;
    await _v480728522(
      wsl323108350.buffer.asUint8List(),
      w13583821,
      zx526227304,
      taw152847590,
      oqh531813440,
    );
  }

  Future<void> _v480728522(
    Uint8List yno238766906,
    int jxw228738876,
    String h343814255,
    int taw152847590,
    Cr686664618 s662083494, {
    bool gn450169643 = false,
  }) async {
    final Wt491807016 kxq815611841 = Wt491807016(
      yno238766906: yno238766906,
      jxw228738876: jxw228738876,
      h343814255: h343814255,
      taw152847590: taw152847590,
      gn450169643: gn450169643,
    );

    s662083494.ncb229772916.add(
      Dc627939635(
        kxq815611841: kxq815611841,
        gn450169643: gn450169643,
      ),
    );
    _gi1061097348.ieh141629085(
      Cu355691962.qt380882988,
      'Save screenshot - screenName: $h343814255 - screenId: $jxw228738876 - startFocusTime: $taw152847590',
    );
    await _ozy387655245.kay521093511(kxq815611841);
  }

  Future<void> _vdt1062210773({
    required Cr686664618 s662083494,
    required Vnp433202541 m305047421,
    int? tqt489873479,
  }) async {
    await t686691987(
      _vdt1062210773.hashCode,
    );
    return bcd376892254(
        _vdt1062210773.hashCode, () async {
      //
      //
      if (s662083494.ncb229772916.isNotEmpty &&
          s662083494.ncb229772916.last.gn450169643) return;
      final ByteData n629039694 =
          await _ryq748964569.rnj817361317(
        m305047421,
      );

      final int taw152847590 =
          tqt489873479 ?? DateTime.now().millisecondsSinceEpoch;

      _gi1061097348.ieh141629085(
        Cu355691962.ic577030059,
        '''
      Save placeholder image for 
      screenName: ${s662083494.m652311908} - 
      screenId: ${s662083494.ban161819035} -
      text: ${m305047421.vmy266286520()}
      ''',
      );

      await _v480728522(
        n629039694.buffer.asUint8List(),
        s662083494.ban161819035,
        s662083494.m652311908,
        taw152847590,
        s662083494,
        gn450169643: true,
      );
    });
  }

  bool get d276414833 {
    bool i669941406 = true;
    try {
      _ywh346470984.currentFrameTimeStamp;
    } catch (e) {
      if (_ywh346470984.hasScheduledFrame) {
        i669941406 = false;
      }
    }
    return i669941406;
  }

  @override
  void r326102455() {
    _bs104659398();
    mw689591931();
  }
}
