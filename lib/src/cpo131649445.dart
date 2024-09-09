//
import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/szs7917082.dart';
import 'package:medallia_dxa/src/gix290553184.dart';
import 'package:medallia_dxa/src/ws974258329.dart';
import 'package:medallia_dxa/src/ulo252672895.dart';
import 'package:medallia_dxa/src/ki1031390097.dart';
import 'package:medallia_dxa/src/z943818254.dart';
import 'package:medallia_dxa/src/yqb209816195.dart';
import 'package:medallia_dxa/src/x681534985.dart';
import 'package:medallia_dxa/src/o173740055.dart';
import 'package:medallia_dxa/src/v452801783.dart';
import 'package:medallia_dxa/src/t439716067.dart';
import 'package:medallia_dxa/src/xd304042551.dart';
import 'package:medallia_dxa/src/yyq255042187.dart';
import 'package:medallia_dxa/src/u336048474.dart';
import 'package:medallia_dxa/src/en966267104.dart';

class Pf1047663429 with WidgetsBindingObserver, DisposeListeners {
  Pf1047663429({
    required WidgetsBinding wid759433073,
    required V1013316861 kut32651407,
  })  : _ige336585304 = wid759433073,
        _gu399100841 = kut32651407 {
    wid759433073.addObserver(this);
  }

  final WidgetsBinding _ige336585304;
  final V1013316861 _gu399100841;
  late final Jk764602945 _vq679689753 =
      Wyf583050721.wf892083558.ea1001100880;
  late final Ntp733035693 _iix415102337 =
      Wyf583050721.wf892083558.k190648461;
  late final H859069801 _thh768939945 =
      Wyf583050721.wf892083558.aaq507880560;
  late final Nfs394369240 _gi1061097348 = Wyf583050721.wf892083558.b751988234;
  late final Cg87340990 _qy447603555 =
      Wyf583050721.wf892083558.aex522100681;
  late final Gsm520942725 _h398447199 =
      Wyf583050721.wf892083558.nwc349873820;
  late final Dzw1038098528 _k1037595096 =
      Wyf583050721.wf892083558.r387024618;
  final List<Cr686664618> _dlz403891841 = [];
  @visibleForTesting
  List<Cr686664618>? ts557307350 = [];
  final StreamController<Cr686664618> pna398417529 =
      StreamController.broadcast();

  List<String> _u1027063217 = [];
  void v972092503(List<String> kxa881907174) {
    _u1027063217 = kxa881907174;
  }

  List<String> _mya444607690 = [];
  void sit690467030(List<String> j275274110) {
    _mya444607690 = j275274110;
  }

  List<Cr686664618> get w605164647 => _dlz403891841;
  List<Cr686664618>? gi813143074;
  bool get na602844808 => sh565192286;
  bool sh565192286 = false;

  Size? _j364244901;
  @visibleForTesting
  Size? get tr193980842 => _j364244901;
  set tr193980842(Size? vs409602313) {
    if (vs409602313 == _j364244901) return;
    //
    if (_j364244901 == null) {
      _j364244901 = vs409602313;
    } else {
      _j364244901 = vs409602313;
      a267112944();
    }
  }

  @visibleForTesting
  void k94144832(Cr686664618 s662083494) {
    _dlz403891841.add(s662083494);
  }

  Cr686664618? get m436425095 {
    final List<Cr686664618> ve64402863 =
        List<Cr686664618>.from(w605164647)
          ..removeWhere((uw412699879) => uw412699879.mvq469234990);
    if (ve64402863.isEmpty) return null;
    return ve64402863.single;
  }

  bool a134584123(Cr686664618 hl497095161) {
    if (ts557307350 == null) return true;
    Cr686664618? s662083494;
    try {
      s662083494 = nz279493464(
        ts557307350!,
      );
    } catch (e) {
      sr865956530();
      return true;
    }
    if (s662083494 != hl497095161) {
      sr865956530();
      return true;
    }
    return false;
  }

  void sr865956530() {
    _h398447199.bt483953813();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState opm933776055) {
    if (!_thh768939945.jpt740509271) return;
    _gi1061097348.ieh141629085(
        Cu355691962.qt380882988, 'didChangeAppLifecycleState $opm933776055');

    super.didChangeAppLifecycleState(opm933776055);

    switch (opm933776055) {
      case AppLifecycleState.resumed:
        b643687174();
        break;

      default:
        if (opm933776055 == AppLifecycleState.paused ||
            opm933776055 == AppLifecycleState.inactive) {
          pf50791773();
        }
    }
  }

  @override
  void didChangeMetrics() {
    if (!_thh768939945.jpt740509271) return;
    _gi1061097348.ieh141629085(Cu355691962.qt380882988, 'didChangeMetrics');

    tr193980842 = _ige336585304.platformDispatcher.views.first.physicalSize;

    super.didChangeMetrics();
  }

  Cr686664618 e38580542({
    required String cqu459293245,
    required String m652311908,
    required List<DxaRouteWithModalRederence> qng986357682,
    required List<Q958539657> mz916463452,
  }) {
    Q72708417? ww876938175;
    late final bool il901482457;
    late final bool byu884418173;

    _u1027063217.contains(m652311908).vy265147834((ro144550629) {
      il901482457 = !ro144550629;
    });
    _mya444607690.contains(m652311908).vy265147834((ro144550629) {
      byu884418173 = !ro144550629;
    });

    bool a51385327 = il901482457;
    bool ot61260115 = byu884418173;

    final String n1017888055 = m652311908;

    //
    if (_gu399100841
        .jwi68326204(n1017888055)) {
      a51385327 = false;
    }

    //
    if (_gu399100841
        .i317036180(n1017888055)) {
      ot61260115 = false;
      ww876938175 = Q72708417.afk335361544;
    }
    //
    if (!byu884418173) {
      ww876938175 = Q72708417.s717759516;
    }

    final int yh212009434 = DateTime.now().millisecondsSinceEpoch;

    final Cr686664618 s662083494 = Cr686664618.standard(
      cqu459293245: cqu459293245,
      qng986357682: qng986357682,
      mz916463452: mz916463452,
      yh212009434: yh212009434,
      m652311908: m652311908,
      byu884418173: ot61260115,
      il901482457: a51385327,
      ww876938175: ww876938175,
    );

    return s662083494;
  }

  //
  Future<void> ex64443526(
    List<Cr686664618> e859565553, {
    bool imd136056184 = false,
  }) async {
    final Completer nd468298931 = Completer();
    await _vq679689753.xpx756759463(
      (nd468298931) => mam528426268(
        e859565553,
        nd468298931,
        imd136056184: imd136056184,
      ),
      nd468298931,
    );
  }

  //
  @visibleForTesting
  Cr686664618 nz279493464(
    List<Cr686664618> e859565553,
  ) {
    final List<Cr686664618> jib1054696290 = [];
    final List<Cr686664618> nqg455360275 = [];
    for (final zgn1052622218 in e859565553) {
      if (zgn1052622218.y243852983) continue;
      if (zgn1052622218.kfs368021386) continue;
      if (zgn1052622218.gd833759896.dv4311598) {
        jib1054696290.add(zgn1052622218);
        if (zgn1052622218.qng986357682.last is Ztd890753760 ||
            zgn1052622218.qng986357682.last is Vl564238040) {
          nqg455360275.add(zgn1052622218);
        }
      }
    }
    if (jib1054696290.length == 1) return jib1054696290.first;

    //
    //
    //
    //
    //
    //
    //
    //
    //
    if (jib1054696290.length > 1) {
      late Cr686664618? yiz888252942;

      //
      yiz888252942 = jib1054696290.singleWhereOrNull(
        (uw412699879) => uw412699879.qng986357682
            .any((uw412699879) => (uw412699879 is L666222797) && uw412699879.i447820677),
      );
      if (yiz888252942 == null) {
        throw Sif901570282('No opaque candidate or more than one found.');
      }

      //
      //
      nqg455360275.sort(
        (r170825266, fz14386155) => r170825266.qng986357682.last.det77243787
            .compareTo(fz14386155.qng986357682.last.det77243787),
      );

      //
      for (var z499530015 = 0; z499530015 < nqg455360275.length - 1; z499530015++) {
        final twt451902382 = nqg455360275[z499530015]
            .qng986357682
            .last as Ztd890753760;

        final bool n137001258 =
            twt451902382
                    .ass219402944.fz968880423 ==
                nqg455360275[z499530015 + 1]
                    .qng986357682
                    .first
                    .fz968880423;
        final bool pn112500418 =
            twt451902382
                .ass219402944.j435387847
                .contains(
          nqg455360275[z499530015 + 1]
              .qng986357682
              .first
              .fz968880423,
        );

        if (!n137001258 &&
            !pn112500418) {
          throw Sif901570282('non opaque route is not a valid nestedRoute');
        }
      }

      //
      //
      if ((nqg455360275.first.qng986357682.last
                  as Ztd890753760)
              .ass219402944 ==
          yiz888252942.qng986357682.first) {
        return nqg455360275.first;
      }

      //
      //
      if ((nqg455360275.first.qng986357682.last
                  as Ztd890753760)
              .fz968880423 ==
          yiz888252942.qng986357682.first.fz968880423) {
        return nqg455360275.first;
      }

      //
      //
      if ((nqg455360275.first.qng986357682.last
              as Ztd890753760)
          .ass219402944
          .j435387847
          .contains(
            yiz888252942.qng986357682.first.fz968880423,
          )) {
        return nqg455360275.first;
      }

      //
      //
      if (yiz888252942.qng986357682
              .lastWhereOrNull(
                  (uw412699879) => (uw412699879 is L666222797) && uw412699879.i447820677)
              ?.j435387847
              .contains(
                nqg455360275
                    .last.qng986357682.last.fz968880423,
              ) ==
          true) {
        return nqg455360275.first;
      }
      throw Sif901570282(
        'opaque route candidate shouldnt be painted under non opaque candidate 2',
      );
    }
    throw Sif901570282('No candidate found');
  }

  //ex64443526_getScreenVisitedFromPotentialCandidates_getScreenVisitedFromPotentialCandidates
  Future<void> mam528426268(
    List<Cr686664618> e859565553,
    Completer nd468298931, {
    bool imd136056184 = false,
  }) async {
    //
    await _vq679689753.s612388924();

    if (nd468298931.isCompleted) return;

    if (!_iix415102337.il901482457) return;
    if (_iix415102337.wu945439935) return;
    late bool cw978331742;
    //
    //
    //
    //
    //
    //
    if (gi813143074 != null) {
      cw978331742 = true;
      gi813143074 = null;
    } else {
      cw978331742 = imd136056184;
    }
    if (m436425095 != null) {
      await o867604276(m436425095!.cqu459293245);
    }
    await _vq679689753.li551885679();
    if (nd468298931.isCompleted) return;
    //
    while (na602844808) {
      await _vq679689753.fte333852280();
      if (nd468298931.isCompleted) return;
    }

    //
    Cr686664618? s662083494;
    while (s662083494 == null) {
      try {
        s662083494 =
            nz279493464(e859565553);
      } catch (e) {
        await _vq679689753.fte333852280();
        if (nd468298931.isCompleted) return;
      }
    }
    if (nd468298931.isCompleted) return;
    if (!s662083494.il901482457) {
      return;
    }
    k94144832(
      s662083494,
    );
    ts557307350 = e859565553;
    _gi1061097348.ieh141629085(
      Cu355691962.sv959100171,
      'Start Screen - name: ${s662083494.m652311908} - id: ${s662083494.ban161819035}',
      zh248383900: '🔵',
    );
    await _k1037595096.ex64443526(
      Le186122645(
        h343814255: s662083494.m652311908,
        jxw228738876: s662083494.ban161819035,
        dhu312325629: s662083494.yh212009434,
        imd136056184: cw978331742,
      ),
    );
    //
    if (pna398417529.isClosed) return;
    pna398417529.add(s662083494);
    await _qy447603555.i306345791();
  }

  Future<void> o867604276(
    String jxw228738876, {
    bool imd136056184 = false,
  }) async {
    if (!_thh768939945.jpt740509271) return;
    late Cr686664618 s662083494;
    late Cr686664618? f497433946;

    if (m436425095?.cqu459293245 == jxw228738876) {
      f497433946 = m436425095;
    } else {
      f497433946 = null;
    }

    //
    //
    if (f497433946 == null) return;
    _qy447603555.wct145213588();
    final Completer oya31360816 =
        _vq679689753.zm696466294();
    s662083494 = f497433946;
    //
    //
    final int f290460489 = w605164647.indexOf(s662083494);
    final int hw594632905 = DateTime.now().millisecondsSinceEpoch;
    final Bd270265003 fi578647798 =
        s662083494.p712079651(hw594632905);
    w605164647[f290460489] = fi578647798;
    ts557307350 = null;
    final String mvk777338732 = fi578647798.m652311908;
    final int lqt236311732 = fi578647798.ban161819035;
    final int u101383980 = fi578647798.inx1032417390;

    await _vq679689753.mli619208294();

    final int e884440609 = u101383980;

    final T882558475 tw350793918 = T882558475(
      h343814255: mvk777338732,
      jxw228738876: lqt236311732,
      t724616315: u101383980,
      gu355704986: e884440609,
      imd136056184: imd136056184,
    );
    _gi1061097348.ieh141629085(
      Cu355691962.sv959100171,
      'End Screen - name: ${tw350793918.h343814255} - id: ${tw350793918.jxw228738876} - endTime ${tw350793918.t724616315} - recordingEndTime ${tw350793918.gu355704986}',
      zh248383900: '🟡',
    );
    await _k1037595096.o867604276(tw350793918);
    oya31360816.complete();
  }

  Future<void> nl531892598() async {
    if (m436425095 == null) return;
    await o867604276(
      m436425095!.cqu459293245,
    );
  }

  @visibleForTesting
  Future<void> pf50791773() async {
    _gi1061097348.ieh141629085(
      Cu355691962.ic577030059,
      'App did enter background',
    );
    //
    //
    //
    if (gi813143074 != null) return;
    //
    if (m436425095 == null) return;
    gi813143074 =
        ts557307350;
    await o867604276(
      m436425095!.cqu459293245,
      imd136056184: true,
    );
  }

  @visibleForTesting
  Future<void> b643687174() async {
    _gi1061097348.ieh141629085(
      Cu355691962.ic577030059,
      'App did become active',
    );
    //
    if (gi813143074 == null) return;

    final List<Cr686664618> gy944301392 =
        gi813143074!
            .map(
              (moj286662752) => moj286662752.uk623465522(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();

    gi813143074 = null;
    await ex64443526(
      gy944301392,
      imd136056184: true,
    );
  }

  Future<void> a267112944() async {
    if (m436425095 == null) return;
    if (ts557307350 == null) return;
    final dx64552431 =
        ts557307350;
    await o867604276(m436425095!.cqu459293245);
    final List<Cr686664618> w286016422 =
        dx64552431!
            .map(
              (moj286662752) => moj286662752.uk623465522(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();
    await ex64443526(w286016422);
  }

  @override
  void r326102455() {
    _ige336585304.removeObserver(this);
    pna398417529.close();
  }
}
