//
import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/tvh7916755.dart';
import 'package:medallia_dxa/src/pe290553769.dart';
import 'package:medallia_dxa/src/ye974258768.dart';
import 'package:medallia_dxa/src/i252672438.dart';
import 'package:medallia_dxa/src/h1031389528.dart';
import 'package:medallia_dxa/src/yx943817927.dart';
import 'package:medallia_dxa/src/sbd209815626.dart';
import 'package:medallia_dxa/src/hd681534656.dart';
import 'package:medallia_dxa/src/n173740766.dart';
import 'package:medallia_dxa/src/oa452802110.dart';
import 'package:medallia_dxa/src/aq439716394.dart';
import 'package:medallia_dxa/src/j304042238.dart';
import 'package:medallia_dxa/src/ex255041602.dart';
import 'package:medallia_dxa/src/e336049043.dart';
import 'package:medallia_dxa/src/yi966267433.dart';

class W1047662988 with WidgetsBindingObserver, DisposeListeners {
  W1047662988({
    required WidgetsBinding wf759432632,
    required Jb1013317172 c32651846,
  })  : _kxv336584849 = wf759432632,
        _d399100256 = c32651846 {
    wf759432632.addObserver(this);
  }

  final WidgetsBinding _kxv336584849;
  final Jb1013317172 _d399100256;
  late final Irn764602504 _evr679689424 =
      Klj583051048.yrd892084143.pr1001100441;
  late final Sl733036132 _ho415102792 =
      Klj583051048.yrd892084143.hxv190648900;
  late final Nw859070368 _wtt768939360 =
      Klj583051048.yrd892084143.jm507881145;
  late final Bcw394369553 _q1061096781 = Klj583051048.yrd892084143.vyc751987907;
  late final Uqs87340407 _ny447603114 =
      Klj583051048.yrd892084143.vcb522099968;
  late final Ekg520943180 _yz398446742 =
      Klj583051048.yrd892084143.zql349873237;
  late final Bz1038099113 _rz1037595409 =
      Klj583051048.yrd892084143.w387023907;
  final List<H686664035> _rwe403891272 = [];
  @visibleForTesting
  List<H686664035>? c557307679 = [];
  final StreamController<H686664035> spf398417072 =
      StreamController.broadcast();

  List<String> _ygu1027063672 = [];
  void da972093086(List<String> vj881907503) {
    _ygu1027063672 = vj881907503;
  }

  List<String> _g444608003 = [];
  void mp690467359(List<String> by275274679) {
    _g444608003 = by275274679;
  }

  List<H686664035> get mj605165230 => _rwe403891272;
  List<H686664035>? xyj813143787;
  bool get kq602844225 => agr565191831;
  bool agr565191831 = false;

  Size? _pwv364244332;
  @visibleForTesting
  Size? get kto193981283 => _pwv364244332;
  set kto193981283(Size? vpi409603008) {
    if (vpi409603008 == _pwv364244332) return;
    //
    if (_pwv364244332 == null) {
      _pwv364244332 = vpi409603008;
    } else {
      _pwv364244332 = vpi409603008;
      o267113273();
    }
  }

  @visibleForTesting
  void tl94145417(H686664035 kju662082927) {
    _rwe403891272.add(kju662082927);
  }

  H686664035? get ojw436425550 {
    final List<H686664035> m64403302 =
        List<H686664035>.from(mj605165230)
          ..removeWhere((c412700206) => c412700206.fj469235687);
    if (m64403302.isEmpty) return null;
    return m64403302.single;
  }

  bool fcf134583794(H686664035 bk497095472) {
    if (c557307679 == null) return true;
    H686664035? kju662082927;
    try {
      kju662082927 = vf279493009(
        c557307679!,
      );
    } catch (e) {
      dh865955963();
      return true;
    }
    if (kju662082927 != bk497095472) {
      dh865955963();
      return true;
    }
    return false;
  }

  void dh865955963() {
    _yz398446742.e483954268();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState xfo933775486) {
    if (!_wtt768939360.a740508830) return;
    _q1061096781.r141628500(
        Ym355692403.kg380883685, 'didChangeAppLifecycleState $xfo933775486');

    super.didChangeAppLifecycleState(xfo933775486);

    switch (xfo933775486) {
      case AppLifecycleState.resumed:
        hjl643686863();
        break;

      default:
        if (xfo933775486 == AppLifecycleState.paused ||
            xfo933775486 == AppLifecycleState.inactive) {
          zo50792340();
        }
    }
  }

  @override
  void didChangeMetrics() {
    if (!_wtt768939360.a740508830) return;
    _q1061096781.r141628500(Ym355692403.kg380883685, 'didChangeMetrics');

    kto193981283 = _kxv336584849.platformDispatcher.views.first.physicalSize;

    super.didChangeMetrics();
  }

  H686664035 rs38581239({
    required String tfn459292916,
    required String b652312493,
    required List<DxaRouteWithModalRederence> x986357115,
    required List<D958539072> pzu916462997,
  }) {
    Jq72709000? cxz876937590;
    late final bool bcl901481744;
    late final bool gvk884417716;

    _ygu1027063672.contains(b652312493).mlj265148275((l144549932) {
      bcl901481744 = !l144549932;
    });
    _g444608003.contains(b652312493).mlj265148275((l144549932) {
      gvk884417716 = !l144549932;
    });

    bool fxd51384614 = bcl901481744;
    bool e61260698 = gvk884417716;

    final String t1017888766 = b652312493;

    //
    if (_d399100256
        .yyo68325877(t1017888766)) {
      fxd51384614 = false;
    }

    //
    if (_d399100256
        .c317035613(t1017888766)) {
      e61260698 = false;
      cxz876937590 = Jq72709000.c335361217;
    }
    //
    if (!gvk884417716) {
      cxz876937590 = Jq72709000.bvv717760213;
    }

    final int rhv212009747 = DateTime.now().millisecondsSinceEpoch;

    final H686664035 kju662082927 = H686664035.standard(
      tfn459292916: tfn459292916,
      x986357115: x986357115,
      pzu916462997: pzu916462997,
      rhv212009747: rhv212009747,
      b652312493: b652312493,
      gvk884417716: e61260698,
      bcl901481744: fxd51384614,
      cxz876937590: cxz876937590,
    );

    return kju662082927;
  }

  //
  Future<void> i64443983(
    List<H686664035> ztt859565880, {
    bool csh136056753 = false,
  }) async {
    final Completer a468299386 = Completer();
    await _evr679689424.u756758894(
      (a468299386) => zik528426965(
        ztt859565880,
        a468299386,
        csh136056753: csh136056753,
      ),
      a468299386,
    );
  }

  //
  @visibleForTesting
  H686664035 vf279493009(
    List<H686664035> ztt859565880,
  ) {
    final List<H686664035> uf1054695851 = [];
    final List<H686664035> f455359962 = [];
    for (final rm1052622659 in ztt859565880) {
      if (rm1052622659.anz243852414) continue;
      if (rm1052622659.cnd368020803) continue;
      if (rm1052622659.yfe833759313.adt4311271) {
        uf1054695851.add(rm1052622659);
        if (rm1052622659.x986357115.last is Ux890753065 ||
            rm1052622659.x986357115.last is Gie564237329) {
          f455359962.add(rm1052622659);
        }
      }
    }
    if (uf1054695851.length == 1) return uf1054695851.first;

    //
    //
    //
    //
    //
    //
    //
    //
    //
    if (uf1054695851.length > 1) {
      late H686664035? wr888252615;

      //
      wr888252615 = uf1054695851.singleWhereOrNull(
        (c412700206) => c412700206.x986357115
            .any((c412700206) => (c412700206 is Dke666223108) && c412700206.oa447820108),
      );
      if (wr888252615 == null) {
        throw Ol901569571('No opaque candidate or more than one found.');
      }

      //
      //
      f455359962.sort(
        (x170824955, dn14385442) => x170824955.x986357115.last.w77244226
            .compareTo(dn14385442.x986357115.last.w77244226),
      );

      //
      for (var md499530710 = 0; md499530710 < f455359962.length - 1; md499530710++) {
        final d451901799 = f455359962[md499530710]
            .x986357115
            .last as Ux890753065;

        final bool phh137001955 =
            d451901799
                    .am219402249.t968881134 ==
                f455359962[md499530710 + 1]
                    .x986357115
                    .first
                    .t968881134;
        final bool ys112499723 =
            d451901799
                .am219402249.fbi435388174
                .contains(
          f455359962[md499530710 + 1]
              .x986357115
              .first
              .t968881134,
        );

        if (!phh137001955 &&
            !ys112499723) {
          throw Ol901569571('non opaque route is not a valid nestedRoute');
        }
      }

      //
      //
      if ((f455359962.first.x986357115.last
                  as Ux890753065)
              .am219402249 ==
          wr888252615.x986357115.first) {
        return f455359962.first;
      }

      //
      //
      if ((f455359962.first.x986357115.last
                  as Ux890753065)
              .t968881134 ==
          wr888252615.x986357115.first.t968881134) {
        return f455359962.first;
      }

      //
      //
      if ((f455359962.first.x986357115.last
              as Ux890753065)
          .am219402249
          .fbi435388174
          .contains(
            wr888252615.x986357115.first.t968881134,
          )) {
        return f455359962.first;
      }

      //
      //
      if (wr888252615.x986357115
              .lastWhereOrNull(
                  (c412700206) => (c412700206 is Dke666223108) && c412700206.oa447820108)
              ?.fbi435388174
              .contains(
                f455359962
                    .last.x986357115.last.t968881134,
              ) ==
          true) {
        return f455359962.first;
      }
      throw Ol901569571(
        'opaque route candidate shouldnt be painted under non opaque candidate 2',
      );
    }
    throw Ol901569571('No candidate found');
  }

  //i64443983_getScreenVisitedFromPotentialCandidates_getScreenVisitedFromPotentialCandidates
  Future<void> zik528426965(
    List<H686664035> ztt859565880,
    Completer a468299386, {
    bool csh136056753 = false,
  }) async {
    //
    await _evr679689424.a612389621();

    if (a468299386.isCompleted) return;

    if (!_ho415102792.bcl901481744) return;
    if (_ho415102792.shz945440374) return;
    late bool pw978332311;
    //
    //
    //
    //
    //
    //
    if (xyj813143787 != null) {
      pw978332311 = true;
      xyj813143787 = null;
    } else {
      pw978332311 = csh136056753;
    }
    if (ojw436425550 != null) {
      await exz867603965(ojw436425550!.tfn459292916);
    }
    await _evr679689424.s551885222();
    if (a468299386.isCompleted) return;
    //
    while (kq602844225) {
      await _evr679689424.x333851825();
      if (a468299386.isCompleted) return;
    }

    //
    H686664035? kju662082927;
    while (kju662082927 == null) {
      try {
        kju662082927 =
            vf279493009(ztt859565880);
      } catch (e) {
        await _evr679689424.x333851825();
        if (a468299386.isCompleted) return;
      }
    }
    if (a468299386.isCompleted) return;
    if (!kju662082927.bcl901481744) {
      return;
    }
    tl94145417(
      kju662082927,
    );
    c557307679 = ztt859565880;
    _q1061096781.r141628500(
      Ym355692403.in959100866,
      'Start Screen - name: ${kju662082927.b652312493} - id: ${kju662082927.gc161819474}',
      lky248384341: '🔵',
    );
    await _rz1037595409.i64443983(
      Piz186123100(
        l343814822: kju662082927.b652312493,
        ukh228738549: kju662082927.gc161819474,
        m312325940: kju662082927.rhv212009747,
        csh136056753: pw978332311,
      ),
    );
    //
    if (spf398417072.isClosed) return;
    spf398417072.add(kju662082927);
    await _ny447603114.qdn306345462();
  }

  Future<void> exz867603965(
    String ukh228738549, {
    bool csh136056753 = false,
  }) async {
    if (!_wtt768939360.a740508830) return;
    late H686664035 kju662082927;
    late H686664035? qm497434515;

    if (ojw436425550?.tfn459292916 == ukh228738549) {
      qm497434515 = ojw436425550;
    } else {
      qm497434515 = null;
    }

    //
    //
    if (qm497434515 == null) return;
    _ny447603114.sy145214045();
    final Completer q31360505 =
        _evr679689424.xsd696465855();
    kju662082927 = qm497434515;
    //
    //
    final int kc290460032 = mj605165230.indexOf(kju662082927);
    final int ok594633216 = DateTime.now().millisecondsSinceEpoch;
    final C270264418 va578647103 =
        kju662082927.tdg712080362(ok594633216);
    mj605165230[kc290460032] = va578647103;
    c557307679 = null;
    final String c777338277 = va578647103.b652312493;
    final int n236312189 = va578647103.gc161819474;
    final int n101383653 = va578647103.uw1032417959;

    await _evr679689424.acv619207855();

    final int e884440296 = n101383653;

    final X882558146 cvi350794359 = X882558146(
      l343814822: c777338277,
      ukh228738549: n236312189,
      dn724616882: n101383653,
      ixe355705427: e884440296,
      csh136056753: csh136056753,
    );
    _q1061096781.r141628500(
      Ym355692403.in959100866,
      'End Screen - name: ${cvi350794359.l343814822} - id: ${cvi350794359.ukh228738549} - endTime ${cvi350794359.dn724616882} - recordingEndTime ${cvi350794359.ixe355705427}',
      lky248384341: '🟡',
    );
    await _rz1037595409.exz867603965(cvi350794359);
    q31360505.complete();
  }

  Future<void> hew531893183() async {
    if (ojw436425550 == null) return;
    await exz867603965(
      ojw436425550!.tfn459292916,
    );
  }

  @visibleForTesting
  Future<void> zo50792340() async {
    _q1061096781.r141628500(
      Ym355692403.pd577029474,
      'App did enter background',
    );
    //
    //
    //
    if (xyj813143787 != null) return;
    //
    if (ojw436425550 == null) return;
    xyj813143787 =
        c557307679;
    await exz867603965(
      ojw436425550!.tfn459292916,
      csh136056753: true,
    );
  }

  @visibleForTesting
  Future<void> hjl643686863() async {
    _q1061096781.r141628500(
      Ym355692403.pd577029474,
      'App did become active',
    );
    //
    if (xyj813143787 == null) return;

    final List<H686664035> u944301977 =
        xyj813143787!
            .map(
              (o286663337) => o286663337.lzd623466235(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();

    xyj813143787 = null;
    await i64443983(
      u944301977,
      csh136056753: true,
    );
  }

  Future<void> o267113273() async {
    if (ojw436425550 == null) return;
    if (c557307679 == null) return;
    final e64552742 =
        c557307679;
    await exz867603965(ojw436425550!.tfn459292916);
    final List<H686664035> c286015855 =
        e64552742!
            .map(
              (o286663337) => o286663337.lzd623466235(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();
    await i64443983(c286015855);
  }

  @override
  void bq326102910() {
    _kxv336584849.removeObserver(this);
    spf398417072.close();
  }
}
