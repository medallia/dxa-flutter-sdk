//
import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/d369047140.dart';
import 'package:medallia_dxa/src/jhb17385158.dart';
import 'package:medallia_dxa/src/ks389194334.dart';
import 'package:medallia_dxa/src/my757553805.dart';
import 'package:medallia_dxa/src/g420442714.dart';
import 'package:medallia_dxa/src/dfy465455513.dart';
import 'package:medallia_dxa/src/u586793191.dart';
import 'package:medallia_dxa/src/z674086197.dart';
import 'package:medallia_dxa/src/p806889780.dart';
import 'package:medallia_dxa/src/zbd371803153.dart';
import 'package:medallia_dxa/src/df487303334.dart';
import 'package:medallia_dxa/src/q758138094.dart';
import 'package:medallia_dxa/src/i534491748.dart';
import 'package:medallia_dxa/src/u64670399.dart';
import 'package:medallia_dxa/src/xx764151857.dart';
import 'package:medallia_dxa/src/sh372443077.dart';

class Hoe87340771 extends Rr142571014 with Ejf141980430 {
  Hoe87340771({
    required Q187482593 e1052757085,
    required Bb204009022 qp674120214,
    required M170397375 vtj238485849,
    required Sd404394990 nr421585312,
  })  : _frh346768563 = qp674120214,
        _j555932245 = vtj238485849,
        _p383166048 = e1052757085,
        super(nr421585312) {
    p1049665000 = Timer.periodic(_j555932245.nwo160989239, (_qwn594036123) async {
      await hm1031025470();
    });
    _o577401489 =
        _frh346768563.evc801555469.stream.listen((c217292744) {
      jn1030975968 = true;
    });
  }

  final Bb204009022 _frh346768563;
  final Q187482593 _p383166048;
  late final StreamSubscription<Duration> _o577401489;

  late final S764603164 _k679690052 =
      L583050428.buw892083259.c1001101069;
  late final Rtv859069492 _h768939764 =
      L583050428.buw892083259.nm507880749;
  late final Bfn733036016 _hp415102172 =
      L583050428.buw892083259.cy190648784;
  late final Cqd394369413 _fq1061097177 = L583050428.buw892083259.sx751988567;
  late final Bya808718017 _bwr495392224 = L583050428.buw892083259.nk594444403;
  late final Iei629109221 _no748964740 =
      L583050428.buw892083259.id962719764;
  late final Yqm672745538 _glz387655440 =
      L583050428.buw892083259.bs387024823;
  late final WidgetsBinding _qx657053665 =
      L583050428.buw892083259.tcy759432748;
  late final SchedulerBinding _yq346471189 =
      L583050428.buw892083259.o995494278;
  late final Zxo344141991 _l237360442 =
      L583050428.buw892083259.gy946289764;
  final M170397375 _j555932245;
  late final A1047663128 _s750376745 = L583050428.buw892083259.qb653426419;
  @visibleForTesting
  late Timer p1049665000;
  bool _ikh404421441 = false;
  bool _b61225562 = false;
  bool get _l701932122 => _s750376745.lk436424922 != null;

  //
  S686664439 get _fbq927016135 {
    return _s750376745.lk436424922!;
  }

  @visibleForTesting
  bool jn1030975968 = false;
  @visibleForTesting
  bool get jqs968984155 => jn1030975968;
  set jqs968984155(bool ka873119679) {
    jn1030975968 = ka873119679;
    if (!ka873119679) {
      _frh346768563.zf333852453();
    }
  }

  void _o741702155() {
    if (_ikh404421441) return;
    _ikh404421441 = true;
    _qx657053665.addPostFrameCallback((_qwn594036123) async {
      _ikh404421441 = false;
      await _iw773878196();
    });
  }

  Future<void> pxf306345570() async {
    jqs968984155 = true;
    await hm1031025470();
  }

  Future<void> it260696330() async {
    await _iw773878196();
  }

  void s163679591() {
    if (p1049665000.isActive) return;
    p1049665000 = Timer.periodic(_j555932245.nwo160989239, (_qwn594036123) async {
      await hm1031025470();
    });
  }

  void bla689592102() {
    p1049665000.cancel();
  }

  void _x104659099() {
    _o577401489.cancel();
    _frh346768563.jsm326102250();
  }

  void pxy145213897() {
    _bwr495392224.b916995753();
  }

  Future<void> hm1031025470() async {
    if (!jqs968984155) return;
    return _iw773878196();
  }

  //
  void _q848452914() async {
    await _k679690052.pak307148893();
    await _iw773878196();
  }

  Future<void> _iw773878196() async {
    if (!_h768939764.vbw740509450) return;
    if (_hp415102172.d101453345) return;
    if (!_l701932122) return;
    if (_k679690052.jp878560169) {
      _q848452914();
      return;
    }
    if (_s750376745.iub602845141) {
      return _o741702155();
    }
    final S686664439 wq531813661 = _fbq927016135;
    if (_s750376745.vx134583910(wq531813661)) {
      return;
    }

    if (wq531813661.nc986357487.last
            .pp588001151()
            .lqo304972968 ==
        null) {
      _o741702155();
      return;
    }
    if (!_hp415102172.i884418336) {
      return _f1062210952(
        b662083323: wq531813661,
        xp305047072: Jje433202224(
          lf876937954: Bdx72708124.a783798261,
        ),
      );
    }
    if (!wq531813661.i884418336) {
      final Bdx72708124 lf876937954 =
          wq531813661.lf876937954 ??
              Bdx72708124.td717759809;
      return _f1062210952(
        b662083323: wq531813661,
        xp305047072: Jje433202224(
          lf876937954: lf876937954,
        ),
      );
    }
    if (_l237360442.oyz676812490) {
      return _f1062210952(
        b662083323: wq531813661,
        xp305047072: Jje433202224(
          lf876937954: _l237360442.fvr256798433,
        ),
      );
    }

    if (_b61225562) return;

    //
    //
    //
    if (_yq346471189.schedulerPhase == SchedulerPhase.idle) {
      _b61225562 = true;
      await _qx657053665.endOfFrame;
      _b61225562 = false;
      if (!_l701932122) return;
      if (_s750376745.iub602845141) {
        return _o741702155();
      }
    }
    if (!gn276414508) {
      _o741702155();
      return;
    }
    if (_k679690052.dgn146328424 > 0) {
      return;
    }
    final int xyh13583504 = wq531813661.pub161818822;
    final String qwj526226997 = wq531813661.bf652311609;
    int? s152847803;
    if (wq531813661.epy229773097.isEmpty) {
      s152847803 = wq531813661.mox212009095;
    }
    s152847803 ??= DateTime.now().millisecondsSinceEpoch;
    late final ByteData? fvr323108003;
    try {
      fvr323108003 = await _p383166048.j533881452(
        b662083323: wq531813661,
        s269944482: () => jqs968984155 = false,
        gp981023954: _o741702155,
        hvu954940186: (g5430666) => _no748964740.qvf16226414 = g5430666,
      );
    } on O901570487 catch (e) {
      debugPrint(e.px172461146);
      return;
    }
    if (fvr323108003 == null) return;
    await _v480728215(
      fvr323108003.buffer.asUint8List(),
      xyh13583504,
      qwj526226997,
      s152847803,
      wq531813661,
    );
  }

  Future<void> _v480728215(
    Uint8List pmr238766695,
    int epz228738657,
    String j343814450,
    int s152847803,
    S686664439 b662083323, {
    bool g450169462 = false,
  }) async {
    b662083323.epy229773097.add(
      P627939438(
        pmr238766695: pmr238766695,
        epz228738657: epz228738657,
        j343814450: j343814450,
        s152847803: s152847803,
        g450169462: g450169462,
      ),
    );
    _fq1061097177.n141629376(
      Gs355691751.pgu380883313,
      'Save screenshot - screenName: $j343814450 - screenId: $epz228738657 - startFocusTime: $s152847803',
    );
    await _glz387655440.hfw521093338(
      pmr238766695: pmr238766695,
      epz228738657: epz228738657,
      j343814450: j343814450,
      s152847803: s152847803,
      g450169462: g450169462,
    );
  }

  Future<void> _f1062210952({
    required S686664439 b662083323,
    required Jje433202224 xp305047072,
    int? l489873690,
  }) async {
    return wyo376891907(() async {
      //
      //
      if (b662083323.epy229773097.isNotEmpty &&
          b662083323.epy229773097.last.g450169462) {
        return;
      }
      final ByteData hhd629039891 =
          await _no748964740.n817361144(
        xp305047072,
      );

      final int s152847803 =
          l489873690 ?? DateTime.now().millisecondsSinceEpoch;

      _fq1061097177.n141629376(
        Gs355691751.ne577029878,
        '''
      Save placeholder image for 
      screenName: ${b662083323.bf652311609} - 
      screenId: ${b662083323.pub161818822} -
      text: ${xp305047072.ym266286309()}
      ''',
      );

      await _v480728215(
        hhd629039891.buffer.asUint8List(),
        b662083323.pub161818822,
        b662083323.bf652311609,
        s152847803,
        b662083323,
        g450169462: true,
      );
    });
  }

  bool get gn276414508 {
    bool wf669941699 = true;
    try {
      _yq346471189.currentFrameTimeStamp;
    } catch (e) {
      if (_yq346471189.hasScheduledFrame) {
        wf669941699 = false;
      }
    }
    return wf669941699;
  }

  @override
  void jsm326102250() {
    _x104659099();
    bla689592102();
  }
}
