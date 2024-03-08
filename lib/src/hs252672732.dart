//
import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/fqf151963920.dart';
import 'package:medallia_dxa/src/znj290553027.dart';
import 'package:medallia_dxa/src/gy879958473.dart';
import 'package:medallia_dxa/src/a857696879.dart';
import 'package:medallia_dxa/src/jc230686517.dart';
import 'package:medallia_dxa/src/nvt209816352.dart';
import 'package:medallia_dxa/src/kzh131649030.dart';
import 'package:medallia_dxa/src/mo681535402.dart';
import 'package:medallia_dxa/src/v173740468.dart';
import 'package:medallia_dxa/src/cwx452801876.dart';
import 'package:medallia_dxa/src/pa439716160.dart';
import 'package:medallia_dxa/src/sor304042900.dart';
import 'package:medallia_dxa/src/yz955932908.dart';
import 'package:medallia_dxa/src/ny255042344.dart';
import 'package:medallia_dxa/src/zan966267203.dart';

class Si87340573 with Mt141980656, Cog764603362 {
  Si87340573(
    this._wq415101986,
    this._v1061096999,
    this._dt346768461,
    this.j594444429,
    this._mg748964730,
    this.gmr277876585,
    this.t995494264,
    this.htv1052757155,
    this._ida387655662,
    this._zma237360580,
    this._wg555932331,
  ) {
    xk1049664790 = Timer.periodic(_wg555932331.q160989385, (_zj594036069) async {
      await hr1031025600();
    });
    _dt346768461.rla801555699.stream.listen((y217292598) {
      dgk1030975774 = true;
    });
  }

  final X733035790 _wq415101986;
  final Par394369403 _v1061096999;
  Logger get w613848317 => _v1061096999.vmm897253856;
  final Vwy204009152 _dt346768461;
  final Aoh808717887 j594444429;
  final Dl629109019 _mg748964730;
  final Pj1038098883 _ida387655662;
  final Iix187482399 htv1052757155;
  final WidgetsBinding gmr277876585;
  final SchedulerBinding t995494264;
  final Uwl344141913 _zma237360580;
  final C170397249 _wg555932331;
  late final Mvl1047663334 _b750376919 = Yt583050306.ss892083397.dq653426189;
  @visibleForTesting
  late Timer xk1049664790;
  bool _h404421567 = false;
  bool _t61225636 = false;
  bool get _obe701932196 => _b750376919.oru436424740 != null;

  //
  I686664201 get _hk927015993 {
    return _b750376919.oru436424740!;
  }

  @visibleForTesting
  bool dgk1030975774 = false;
  @visibleForTesting
  bool get ky968984229 => dgk1030975774;
  set ky968984229(bool cn873119553) {
    dgk1030975774 = cn873119553;
    if (!cn873119553) {
      _dt346768461.ixw333852635();
    }
  }

  void _am741702389() {
    if (_h404421567) return;
    _h404421567 = true;
    gmr277876585.addPostFrameCallback((_zj594036069) async {
      _h404421567 = false;
      await _jea773878090();
    });
  }

  Future<void> rjh306345628() async {
    ky968984229 = true;
    await hr1031025600();
  }

  Future<void> zof260696564() async {
    await _jea773878090();
  }

  void qdt163679641() {
    if (xk1049664790.isActive) return;
    xk1049664790 = Timer.periodic(_wg555932331.q160989385, (_zj594036069) async {
      await hr1031025600();
    });
  }

  void q689592280() {
    xk1049664790.cancel();
  }

  void rc86559046() {
    q689592280();
    qdt163679641();
  }

  void j145213751() {
    j594444429.hly916995671();
  }

  Future<void> hr1031025600() async {
    if (!ky968984229) return;
    return _jea773878090();
  }

  Future<void> _jea773878090() async {
    if (!_wq415101986.r740509684) return;
    if (_wq415101986.d101453535) return;
    if (!_obe701932196) return;
    if (dz878560087) {
      _am741702389();
      return;
    }
    if (_b750376919.vdm602844971) {
      return _am741702389();
    }
    final I686664201 v531813859 = _hk927015993;
    if (dq653426189.xh134583960(v531813859)) {
      return;
    }

    if (v531813859.th986357265.last
            .z588001153()
            .wv304972886 ==
        null) {
      _am741702389();
      return;
    }
    if (v531813859.m225674715) return;
    if (v531813859.ten20226376) return;
    if (!_wq415101986.h884418526) {
      return _l1062210934(
        es662083077: v531813859,
        k305047262: Mpq433202382(
          zun876937756: E72708322.o783798027,
        ),
      );
    }
    if (!v531813859.h884418526) {
      final E72708322 zun876937756 =
          v531813859.zun876937756 ??
              E72708322.ovx717759935;
      return _l1062210934(
        es662083077: v531813859,
        k305047262: Mpq433202382(
          zun876937756: zun876937756,
        ),
      );
    }
    if (_zma237360580.u676812340) {
      return _l1062210934(
        es662083077: v531813859,
        k305047262: Mpq433202382(
          zun876937756: _zma237360580.cv256798239,
        ),
      );
    }

    if (_t61225636) return;

    //
    //
    //
    if (t995494264.schedulerPhase == SchedulerPhase.idle) {
      _t61225636 = true;
      await gmr277876585.endOfFrame;
      _t61225636 = false;
      if (!_obe701932196) return;
      if (_b750376919.vdm602844971) {
        return _am741702389();
      }
    }
    if (!nng276414674) {
      _am741702389();
      return;
    }
    if (k146328470 > 0) {
      return;
    }
    final int wz13583470 = v531813859.dfk161818680;
    final String wu526227147 = v531813859.r652311751;
    final int aer152847685 = DateTime.now().millisecondsSinceEpoch;
    late final ByteData? ond323107933;
    try {
      ond323107933 = await htv1052757155.f533881490(
        es662083077: v531813859,
        onu269944412: () => ky968984229 = false,
        hd981023788: _am741702389,
        bsi954940388: (n5430644) => _mg748964730.mml16226448 = n5430644,
      );
    } on A901570377 catch (e) {
      debugPrint(e.rl172461220);
      return;
    }
    if (ond323107933 == null) return;
    await _tir480728169(
      ond323107933.buffer.asUint8List(),
      wz13583470,
      wu526227147,
      aer152847685,
      v531813859,
    );
  }

  Future<void> _tir480728169(
    Uint8List ees238766745,
    int ayv228738719,
    String vu343814604,
    int aer152847685,
    I686664201 es662083077, {
    bool hsb450169480 = false,
  }) async {
    final Jp491806859 dh815611490 = Jp491806859(
      ees238766745: ees238766745,
      ayv228738719: ayv228738719,
      vu343814604: vu343814604,
      aer152847685: aer152847685,
    );

    es662083077.c229773271.add(
      C627939472(
        dh815611490: dh815611490,
        hsb450169480: hsb450169480,
      ),
    );
    w613848317.d(
      'Save screenshot - screenName: $vu343814604 - screenId: $ayv228738719 - startFocusTime: $aer152847685',
    );
    await _ida387655662.psb521093156(dh815611490);
  }

  //
  Future<void> k117537915(
    Var270265096 es662083077,
  ) async {
    if (_wq415101986.d101453535) return;
    if (es662083077.ten20226376) return;
    final int um784535093 = es662083077.xlq1032417741 - 500;
    if (!_wq415101986.h884418526) {
      return _l1062210934(
        es662083077: es662083077,
        k305047262: Mpq433202382(
          zun876937756: E72708322.o783798027,
        ),
        rf489873892: um784535093,
      );
    }
    if (es662083077.c229773271.isEmpty) {
      return _l1062210934(
        es662083077: es662083077,
        k305047262: Mpq433202382(
          zun876937756: E72708322.bti1072277860,
        ),
        rf489873892: um784535093,
      );
    }
  }

  Future<void> _l1062210934({
    required I686664201 es662083077,
    required Mpq433202382 k305047262,
    int? rf489873892,
  }) async {
    await s686692144(
      _l1062210934.hashCode,
    );
    return e376892157(
        _l1062210934.hashCode, () async {
      //
      //
      if (es662083077.c229773271.isNotEmpty &&
          es662083077.c229773271.last.hsb450169480) return;
      final ByteData e629040109 =
          await _mg748964730.gd817360902(
        k305047262,
      );

      final int aer152847685 =
          rf489873892 ?? DateTime.now().millisecondsSinceEpoch;

      w613848317.d(
        '''
      _sendOnePlaceholderImageForThisScreen - 
      screenName: ${es662083077.r652311751} - 
      screenId: ${es662083077.dfk161818680} -
      text: ${k305047262.y266286107()}
      ''',
      );

      await _tir480728169(
        e629040109.buffer.asUint8List(),
        es662083077.dfk161818680,
        es662083077.r652311751,
        aer152847685,
        es662083077,
        hsb450169480: true,
      );
    });
  }

  bool get nng276414674 {
    bool lsi669941565 = true;
    try {
      t995494264.currentFrameTimeStamp;
    } catch (e) {
      if (t995494264.hasScheduledFrame) {
        lsi669941565 = false;
      }
    }
    return lsi669941565;
  }
}
