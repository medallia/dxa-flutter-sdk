//
import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/wsu17385396.dart';
import 'package:medallia_dxa/src/ga389194540.dart';
import 'package:medallia_dxa/src/hfk359402127.dart';
import 'package:medallia_dxa/src/bh465455339.dart';
import 'package:medallia_dxa/src/e305217685.dart';
import 'package:medallia_dxa/src/atk50999222.dart';
import 'package:medallia_dxa/src/jq721559962.dart';
import 'package:medallia_dxa/src/ke674085959.dart';
import 'package:medallia_dxa/src/kr371803491.dart';
import 'package:medallia_dxa/src/s487303636.dart';
import 'package:medallia_dxa/src/xe758138268.dart';
import 'package:medallia_dxa/src/duk534491926.dart';
import 'package:medallia_dxa/src/de249196866.dart';
import 'package:medallia_dxa/src/mry764152131.dart';
import 'package:medallia_dxa/src/wma372442807.dart';

class W1047663466 extends D142571380 with WidgetsBindingObserver {
  W1047663466({
    required WidgetsBinding qb759433054,
    required Qv1013316818 kdi32651424,
    required D404394652 y421585106,
  })  : _m336585335 = qb759433054,
        _pc399100806 = kdi32651424,
        super(y421585106) {
    qb759433054.addObserver(this);
  }

  final WidgetsBinding _m336585335;
  final Qv1013316818 _pc399100806;
  late final X764602990 _x679689782 =
      Fn583050702.gj892083529.j1001100927;
  late final G733035650 _hm415102382 =
      Fn583050702.gj892083529.t190648482;
  late final V859069766 _ws768939910 =
      Fn583050702.gj892083529.j507880543;
  late final Vqj394369271 _t1061097387 = Fn583050702.gj892083529.z751988261;
  late final Xp87340945 _lah447603532 =
      Fn583050702.gj892083529.vm522100710;
  late final Hoh520942762 _t398447216 =
      Fn583050702.gj892083529.d349873843;
  late final I672745776 _x1037595127 = Fn583050702.gj892083529.dgh387024581;
  final List<X686664581> _gmd403891886 = [];
  @visibleForTesting
  List<X686664581>? nau557307385 = [];
  final StreamController<X686664581> tcm398417494 =
      StreamController.broadcast();

  final List<Function()> _ws806090271 = [];
  void zh344868540(Function() zae612340182) {
    _ws806090271.add(zae612340182);
  }

  void nv724763970(Function() zae612340182) {
    _ws806090271.remove(zae612340182);
  }

  void _ep512387239() {
    for (final zae612340182 in _ws806090271) {
      zae612340182();
    }
  }

  List<String> _mnf1027063198 = [];
  void xg972092536(List<String> em881907145) {
    _mnf1027063198 = em881907145;
  }

  List<String> _gm444607717 = [];
  void vuq690467065(List<String> tll275274065) {
    _gm444607717 = tll275274065;
  }

  List<X686664581> get dgg605164616 => _gmd403891886;
  List<X686664581>? oqk813143053;
  bool get s602844839 =>
      _t398447216.vdg517109061;

  Size? _en364244874;
  @visibleForTesting
  Size? get fwd193980805 => _en364244874;
  set fwd193980805(Size? vu409602342) {
    if (vu409602342 == _en364244874) return;
    //
    if (_en364244874 == null) {
      _en364244874 = vu409602342;
    } else {
      _en364244874 = vu409602342;
      ln267112927();
    }
  }

  @visibleForTesting
  void p94144879(X686664581 tu662083465) {
    _gmd403891886.add(tu662083465);
  }

  X686664581? get s436425128 {
    final List<X686664581> w64402816 =
        List<X686664581>.from(dgg605164616)
          ..removeWhere((m412699848) => m412699848.jzt469234945);
    if (w64402816.isEmpty) return null;
    return w64402816.single;
  }

  bool j134584084(X686664581 v497095126) {
    if (nau557307385 == null) return true;
    X686664581? tu662083465;
    try {
      tu662083465 = e279493495(
        nau557307385!,
      );
    } catch (e) {
      cs865956509();
      return true;
    }
    if (tu662083465 != v497095126) {
      cs865956509();
      return true;
    }
    return false;
  }

  void cs865956509() {
    _t398447216.v483953850();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState b933776024) {
    if (!_ws768939910.iv740509304) return;
    _t1061097387.rw141629106(
      F355691925.llr380882947,
      'didChangeAppLifecycleState $b933776024',
    );

    super.didChangeAppLifecycleState(b933776024);

    switch (b933776024) {
      case AppLifecycleState.resumed:
        u643687209();
        break;

      default:
        if (b933776024 == AppLifecycleState.paused ||
            b933776024 == AppLifecycleState.inactive) {
          qd50791794();
        }
    }
  }

  @override
  void didChangeMetrics() {
    if (!_ws768939910.iv740509304) return;
    _t1061097387.rw141629106(F355691925.llr380882947, 'didChangeMetrics');

    fwd193980805 = _m336585335.platformDispatcher.views.first.physicalSize;

    super.didChangeMetrics();
  }

  X686664581 aby38580497({
    required String kjb459293202,
    required String iwu652311883,
    required List<DxaRouteWithModalReference> eq986357661,
    required List<Z958539686> o916463475,
  }) {
    Z72708462? t876938128;
    late final bool c901482486;
    late final bool rg884418130;

    _mnf1027063198.contains(iwu652311883).rct265147797((x144550602) {
      c901482486 = !x144550602;
    });
    _gm444607717.contains(iwu652311883).rct265147797((x144550602) {
      rg884418130 = !x144550602;
    });

    bool df51385280 = c901482486;
    bool t61260156 = rg884418130;

    final String qtq1017888024 = iwu652311883;

    //
    if (_pc399100806
        .b68326163(qtq1017888024)) {
      df51385280 = false;
    }

    //
    if (_pc399100806
        .vap317036219(qtq1017888024)) {
      t61260156 = false;
      t876938128 = Z72708462.hz335361575;
    }
    //
    if (!rg884418130) {
      t876938128 = Z72708462.r717759539;
    }

    final int v212009461 = DateTime.now().millisecondsSinceEpoch;

    final X686664581 tu662083465 = X686664581.standard(
      kjb459293202: kjb459293202,
      eq986357661: eq986357661,
      o916463475: o916463475,
      v212009461: v212009461,
      iwu652311883: iwu652311883,
      rg884418130: t61260156,
      c901482486: df51385280,
      t876938128: t876938128,
    );

    return tu662083465;
  }

  //
  Future<void> wil64443561(
    List<X686664581> hv859565534, {
    bool c136056151 = false,
  }) async {
    final Completer hl468298908 = Completer();
    await _x679689782.qp756759432(
      (hl468298908) => xix528426291(
        hv859565534,
        hl468298908,
        c136056151: c136056151,
      ),
      hl468298908,
    );
  }

  //
  @visibleForTesting
  X686664581 e279493495(
    List<X686664581> hv859565534,
  ) {
    final List<X686664581> lqd1054696269 = [];
    final List<X686664581> lw455360316 = [];
    for (final lti1052622245 in hv859565534) {
      if (lti1052622245.b243852952) continue;
      if (lti1052622245.pk368021413) continue;
      if (lti1052622245.oc833759927.kh4311553) {
        lqd1054696269.add(lti1052622245);
        if (lti1052622245.eq986357661.last is Gc890753743 ||
            lti1052622245.eq986357661.last is S564238071) {
          lw455360316.add(lti1052622245);
        }
      }
    }
    if (lqd1054696269.length == 1) return lqd1054696269.first;

    //
    //
    //
    //
    //
    //
    //
    //
    //
    if (lqd1054696269.length > 1) {
      late X686664581? zs888252961;

      //
      zs888252961 = lqd1054696269.singleWhereOrNull(
        (m412699848) => m412699848.eq986357661
            .any((m412699848) => (m412699848 is Gs666222818) && m412699848.vm447820714),
      );
      if (zs888252961 == null) {
        throw G901570245('No opaque candidate or more than one found.');
      }

      //
      //
      lw455360316.sort(
        (wqi170825245, leo14386116) => wqi170825245.eq986357661.last.sz77243812
            .compareTo(leo14386116.eq986357661.last.sz77243812),
      );

      //
      for (var d499530032 = 0; d499530032 < lw455360316.length - 1; d499530032++) {
        final c451902337 = lw455360316[d499530032]
            .eq986357661
            .last as Gc890753743;

        final bool fzi137001221 =
            c451902337
                    .j219402991.jl968880392 ==
                lw455360316[d499530032 + 1]
                    .eq986357661
                    .first
                    .jl968880392;
        final bool s112500461 =
            c451902337
                .j219402991.h435387880
                .contains(
          lw455360316[d499530032 + 1]
              .eq986357661
              .first
              .jl968880392,
        );

        if (!fzi137001221 &&
            !s112500461) {
          throw G901570245('non opaque route is not a valid nestedRoute');
        }
      }

      //
      //
      if ((lw455360316.first.eq986357661.last
                  as Gc890753743)
              .j219402991 ==
          zs888252961.eq986357661.first) {
        return lw455360316.first;
      }

      //
      //
      if ((lw455360316.first.eq986357661.last
                  as Gc890753743)
              .jl968880392 ==
          zs888252961.eq986357661.first.jl968880392) {
        return lw455360316.first;
      }

      //
      //
      if ((lw455360316.first.eq986357661.last
              as Gc890753743)
          .j219402991
          .h435387880
          .contains(
            zs888252961.eq986357661.first.jl968880392,
          )) {
        return lw455360316.first;
      }

      //
      //
      if (zs888252961.eq986357661
              .lastWhereOrNull(
                (m412699848) => (m412699848 is Gs666222818) && m412699848.vm447820714,
              )
              ?.h435387880
              .contains(
                lw455360316
                    .last.eq986357661.last.jl968880392,
              ) ==
          true) {
        return lw455360316.first;
      }
      throw G901570245(
        'opaque route candidate shouldnt be painted under non opaque candidate 2',
      );
    }
    throw G901570245('No candidate found');
  }

  //wil64443561_getScreenVisitedFromPotentialCandidates_getScreenVisitedFromPotentialCandidates
  Future<void> xix528426291(
    List<X686664581> hv859565534,
    Completer hl468298908, {
    bool c136056151 = false,
  }) async {
    //
    await _x679689782.q612388883();

    if (hl468298908.isCompleted) return;

    if (!_hm415102382.c901482486) return;
    if (_hm415102382.cd945439888) return;
    late bool g978331761;
    //
    //
    //
    //
    //
    //
    if (oqk813143053 != null) {
      g978331761 = true;
      oqk813143053 = null;
    } else {
      g978331761 = c136056151;
    }
    if (s436425128 != null) {
      await sl867604251(s436425128!.kjb459293202);
    }
    await _x679689782.z551885632();
    if (hl468298908.isCompleted) return;
    //
    while (s602844839) {
      await _x679689782.c333852247();
      if (hl468298908.isCompleted) return;
    }

    //
    X686664581? tu662083465;
    while (tu662083465 == null) {
      try {
        tu662083465 =
            e279493495(hv859565534);
      } catch (e) {
        await _x679689782.c333852247();
        if (hl468298908.isCompleted) return;
      }
    }
    if (hl468298908.isCompleted) return;
    if (!tu662083465.c901482486) {
      return;
    }
    p94144879(
      tu662083465,
    );
    nau557307385 = hv859565534;
    _t1061097387.rw141629106(
      F355691925.xny959100196,
      'Start Screen - name: ${tu662083465.iwu652311883} - id: ${tu662083465.giq161819060} - startTime ${tu662083465.v212009461}',
      i248383923: '🔵',
    );
    await _x1037595127.wil64443561(
      x343814208: tu662083465.iwu652311883,
      t228738835: tu662083465.giq161819060,
      dyr312325586: tu662083465.v212009461,
      c136056151: g978331761,
    );
    //
    if (tcm398417494.isClosed) return;
    tcm398417494.add(tu662083465);
    await _lah447603532.ql306345744();
  }

  Future<void> sl867604251(
    String t228738835, {
    bool c136056151 = false,
  }) async {
    if (!_ws768939910.iv740509304) return;
    late X686664581 tu662083465;
    late X686664581? mr497433973;

    if (s436425128?.kjb459293202 == t228738835) {
      mr497433973 = s436425128;
    } else {
      mr497433973 = null;
    }

    //
    //
    if (mr497433973 == null) return;
    _lah447603532.al145213627();
    final Completer j31360799 =
        _x679689782.cpu696466265();
    tu662083465 = mr497433973;
    //
    //
    final int in290460518 = dgg605164616.indexOf(tu662083465);
    final int hbb594632934 = DateTime.now().millisecondsSinceEpoch;
    final Sz270264964 j578647769 =
        tu662083465.mqm712079628(hbb594632934);
    dgg605164616[in290460518] = j578647769;
    nau557307385 = null;
    final String ciw777338691 = j578647769.iwu652311883;
    final int gr236311707 = j578647769.giq161819060;
    final int vv101383939 = j578647769.fva1032417345;

    _ep512387239();
    await _x679689782.xm619208265();
    final int eas884440590 = vv101383939;

    _t1061097387.rw141629106(
      F355691925.xny959100196,
      'End Screen - name: $ciw777338691 - id: $gr236311707 - endTime $vv101383939 - recordingEndTime $eas884440590',
      i248383923: '🟡',
    );
    await _x1037595127.sl867604251(
      x343814208: ciw777338691,
      t228738835: gr236311707,
      ja724616276: vv101383939,
      vo355705013: eas884440590,
      c136056151: c136056151,
    );
    j31360799.complete();
  }

  Future<void> c531892569() async {
    if (s436425128 == null) return;
    await sl867604251(
      s436425128!.kjb459293202,
    );
  }

  @visibleForTesting
  Future<void> qd50791794() async {
    _t1061097387.rw141629106(
      F355691925.io577030020,
      'App did enter background',
    );
    //
    //
    //
    if (oqk813143053 != null) return;
    //
    if (s436425128 == null) return;
    oqk813143053 =
        nau557307385;
    await sl867604251(
      s436425128!.kjb459293202,
      c136056151: true,
    );
  }

  @visibleForTesting
  Future<void> u643687209() async {
    _t1061097387.rw141629106(
      F355691925.io577030020,
      'App did become active',
    );
    //
    if (oqk813143053 == null) return;

    final List<X686664581> dxd944301439 =
        oqk813143053!
            .map(
              (va286662735) => va286662735.xe623465501(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();

    oqk813143053 = null;
    await wil64443561(
      dxd944301439,
      c136056151: true,
    );
  }

  Future<void> ln267112927() async {
    if (s436425128 == null) return;
    if (nau557307385 == null) return;
    final rav64552384 =
        nau557307385;
    await sl867604251(s436425128!.kjb459293202);
    final List<X686664581> cm286016393 =
        rav64552384!
            .map(
              (va286662735) => va286662735.xe623465501(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();
    await wil64443561(cm286016393);
  }

  Future<void> p393527495(String sc131698038) async {
    if (s436425128 == null) return;
    if (nau557307385 == null) return;
    final p971782889 =
        s436425128!.v801147698(sc131698038);
    final int in290460518 = nau557307385!
        .indexWhere((m412699848) => m412699848.kjb459293202 == s436425128!.kjb459293202);
    if (in290460518 == -1) return;
    nau557307385![in290460518] = p971782889;
    await ln267112927();
  }

  @override
  void ul326102424() {
    _m336585335.removeObserver(this);
    tcm398417494.close();
  }
}
