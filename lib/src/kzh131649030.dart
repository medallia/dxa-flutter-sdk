//
import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/znj290553027.dart';
import 'package:medallia_dxa/src/w974258490.dart';
import 'package:medallia_dxa/src/hs252672732.dart';
import 'package:medallia_dxa/src/w1031389746.dart';
import 'package:medallia_dxa/src/duy943818669.dart';
import 'package:medallia_dxa/src/nvt209816352.dart';
import 'package:medallia_dxa/src/mo681535402.dart';
import 'package:medallia_dxa/src/v173740468.dart';
import 'package:medallia_dxa/src/cwx452801876.dart';
import 'package:medallia_dxa/src/pa439716160.dart';
import 'package:medallia_dxa/src/sor304042900.dart';
import 'package:medallia_dxa/src/ny255042344.dart';
import 'package:medallia_dxa/src/zan966267203.dart';

class Mvl1047663334 with Cog764603362, WidgetsBindingObserver {
  Mvl1047663334(
    this.h491198070,
    this._v1061096999,
    this._ky447603392,
    this._ya399100426,
    this._vh336585723,
  ) {
    _vh336585723.addObserver(this);
  }

  final X733035790 h491198070;
  final Par394369403 _v1061096999;
  final Si87340573 _ky447603392;
  final Mq1013316958 _ya399100426;
  final WidgetsBinding _vh336585723;
  late final Vv520942886 _el398447612 =
      Yt583050306.ss892083397.f349873983;
  Logger get w613848317 => _v1061096999.wao326300721;
  final Pj1038098883 _eum1037594747 = Pj1038098883();
  final List<I686664201> _hfd403892002 = [];
  List<I686664201>? _vi728063176 = [];
  final StreamController<I686664201> fas398417882 =
      StreamController.broadcast();
  final List<S785065574> b742411024 =
      [];
  final List<Completer> awv554014767 =
      List.empty(growable: true);
  final List<Completer> p695813123 =
      List.empty(growable: true);
  List<String> _u1027062802 = [];
  void ipf972092916(List<String> e881906757) {
    _u1027062802 = e881906757;
  }

  List<String> _aa444607849 = [];
  void txq690467189(List<String> rlz275273949) {
    _aa444607849 = rlz275273949;
  }

  List<I686664201> get fin605164996 => _hfd403892002;
  List<I686664201>? ybj813143425;
  bool get vdm602844971 => zdd565192701;
  bool zdd565192701 = false;

  Size? _fj670082026;
  Size get nzd193980425 => _fj670082026!;
  set nzd193980425(Size g409602218) {
    if (g409602218 == _fj670082026) return;
    //
    if (_fj670082026 == null) {
      _fj670082026 = g409602218;
    } else {
      _fj670082026 = g409602218;
      e267112531();
    }
  }

  void _gbk510844272(I686664201 es662083077) {
    _hfd403892002.add(es662083077);
  }

  I686664201? get oru436424740 {
    final List<I686664201> et64402444 =
        List<I686664201>.from(fin605164996)
          ..removeWhere((hpp412699972) => hpp412699972.lzo469234829);
    if (et64402444.isEmpty) return null;
    return et64402444.single;
  }

  bool xh134583960(I686664201 r497094746) {
    if (_vi728063176 == null) return true;
    I686664201? es662083077;
    try {
      es662083077 = _w710236739(
        _vi728063176!,
      );
    } catch (e) {
      ld865956625();
      return true;
    }
    if (es662083077 != r497094746) {
      ld865956625();
      return true;
    }
    return false;
  }

  void ld865956625() {
    _el398447612.pws483953974();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState gst933776148) {
    if (!h491198070.r740509684) return;
    w613848317.d('didChangeAppLifecycleState $gst933776148');

    super.didChangeAppLifecycleState(gst933776148);

    switch (gst933776148) {
      case AppLifecycleState.resumed:
        _td247375027();
        break;

      default:
        if (gst933776148 == AppLifecycleState.paused ||
            gst933776148 == AppLifecycleState.inactive) {
          _u999118538();
        }
    }
  }

  @override
  void didChangeMetrics() {
    if (!h491198070.r740509684) return;
    w613848317.d('didChangeMetrics');

    dq653426189.nzd193980425 =
        _vh336585723.platformDispatcher.views.first.physicalSize;

    super.didChangeMetrics();
  }

  I686664201 udx38580381({
    required String nvn459293598,
    required String r652311751,
    required List<DxaRouteWithModalRederence> th986357265,
    required List<Cwv958539306> a916463359,
  }) {
    E72708322? zun876937756;
    late final bool icq901482106;
    late final bool h884418526;

    _u1027062802.contains(r652311751).wrb265147417((oyo144550726) {
      icq901482106 = !oyo144550726;
    });
    _aa444607849.contains(r652311751).wrb265147417((oyo144550726) {
      h884418526 = !oyo144550726;
    });

    bool vqb51384908 = icq901482106;
    bool vl61260016 = h884418526;

    final String j1017887892 = r652311751;

    //
    if (_ya399100426
        .ys68326047(j1017887892)) {
      vqb51384908 = false;
    }

    //
    if (_ya399100426
        .apv317036343(j1017887892)) {
      vl61260016 = false;
      zun876937756 = E72708322.b335361963;
    }
    //
    if (!h884418526) {
      zun876937756 = E72708322.ovx717759935;
    }

    final int ok212009081 = DateTime.now().millisecondsSinceEpoch;

    final I686664201 es662083077 = I686664201.standard(
      nvn459293598: nvn459293598,
      th986357265: th986357265,
      a916463359: a916463359,
      ok212009081: ok212009081,
      r652311751: r652311751,
      h884418526: vl61260016,
      icq901482106: vqb51384908,
      zun876937756: zun876937756,
    );

    return es662083077;
  }

  //
  Future<void> i64443685(
    List<I686664201> a859565138, {
    bool rje136056027 = false,
  }) async {
    final Completer a468299024 = Completer();
    await c756759044(
      (a468299024) => vco528426175(
        a859565138,
        a468299024,
        rje136056027: rje136056027,
      ),
      a468299024,
    );
  }

  //
  I686664201 _w710236739(
    List<I686664201> a859565138,
  ) {
    final List<I686664201> gr1054696129 = [];
    final List<I686664201> eip455360176 = [];
    for (final sox1052621865 in a859565138) {
      if (sox1052621865.uv243853076) continue;
      if (sox1052621865.jl368021033) continue;
      if (sox1052621865.m833760059.vni4311949) {
        gr1054696129.add(sox1052621865);
        if (sox1052621865.th986357265.last is Ei890753859 ||
            sox1052621865.th986357265.last is T564238203) {
          eip455360176.add(sox1052621865);
        }
      }
    }
    if (gr1054696129.length == 1) return gr1054696129.first;

    //
    //
    //
    //
    //
    //
    //
    //
    //
    if (gr1054696129.length > 1) {
      late I686664201? fk888253357;

      //
      fk888253357 = gr1054696129.singleWhereOrNull(
        (hpp412699972) => hpp412699972.th986357265
            .any((hpp412699972) => (hpp412699972 is Pxr666222958) && hpp412699972.wb447820326),
      );
      if (fk888253357 == null) {
        throw A901570377('No opaque candidate or more than one found.');
      }

      //
      //
      eip455360176.sort(
        (r170825617, dbv14385736) => r170825617.th986357265.last.gt77243432
            .compareTo(dbv14385736.th986357265.last.gt77243432),
      );

      //
      for (var df499529916 = 0; df499529916 < eip455360176.length - 1; df499529916++) {
        final j451901965 = eip455360176[df499529916]
            .th986357265
            .last as Ei890753859;

        final bool zzn137001097 =
            j451901965
                    .fc219403107.p968880260 ==
                eip455360176[df499529916 + 1]
                    .th986357265
                    .first
                    .p968880260;
        final bool z112500577 =
            j451901965
                .fc219403107.jv435387492
                .contains(
          eip455360176[df499529916 + 1]
              .th986357265
              .first
              .p968880260,
        );

        if (!zzn137001097 &&
            !z112500577) {
          throw A901570377('non opaque route is not a valid nestedRoute');
        }
      }

      //
      //
      if ((eip455360176.first.th986357265.last
                  as Ei890753859)
              .fc219403107 ==
          fk888253357.th986357265.first) {
        return eip455360176.first;
      }

      //
      //
      if ((eip455360176.first.th986357265.last
                  as Ei890753859)
              .p968880260 ==
          fk888253357.th986357265.first.p968880260) {
        return eip455360176.first;
      }

      //
      //
      if ((eip455360176.first.th986357265.last
              as Ei890753859)
          .fc219403107
          .jv435387492
          .contains(
            fk888253357.th986357265.first.p968880260,
          )) {
        return eip455360176.first;
      }

      //
      //
      if (fk888253357.th986357265
              .lastWhereOrNull(
                  (hpp412699972) => (hpp412699972 is Pxr666222958) && hpp412699972.wb447820326)
              ?.jv435387492
              .contains(
                eip455360176
                    .last.th986357265.last.p968880260,
              ) ==
          true) {
        return eip455360176.first;
      }
      throw A901570377(
        'opaque route candidate shouldnt be painted under non opaque candidate 2',
      );
    }
    throw A901570377('No candidate found');
  }

  //i64443685_w710236739_w710236739
  Future<void> vco528426175(
    List<I686664201> a859565138,
    Completer a468299024, {
    bool rje136056027 = false,
  }) async {
    //
    await ah612389279();

    if (a468299024.isCompleted) return;

    if (!h491198070.icq901482106) return;
    if (h491198070.piu945440028) return;
    late bool fd978332157;
    //
    //
    //
    //
    //
    //
    if (ybj813143425 != null) {
      fd978332157 = true;
      ybj813143425 = null;
    } else {
      fd978332157 = rje136056027;
    }
    if (oru436424740 != null) {
      await rgc867604119(oru436424740!.nvn459293598);
    }
    await rd551885516();
    if (a468299024.isCompleted) return;
    //
    while (vdm602844971) {
      await ixw333852635();
      if (a468299024.isCompleted) return;
    }

    //
    I686664201? es662083077;
    while (es662083077 == null) {
      try {
        es662083077 =
            _w710236739(a859565138);
      } catch (e) {
        await ixw333852635();
        if (a468299024.isCompleted) return;
      }
    }
    if (a468299024.isCompleted) return;
    if (!es662083077.icq901482106) {
      return;
    }
    _gbk510844272(
      es662083077,
    );
    _vi728063176 = a859565138;
    w613848317.d(
      ' 🔵 Start Screen - name: ${es662083077.r652311751} - id: ${es662083077.dfk161818680}',
    );
    await _eum1037594747.i64443685(
      Pg186122294(
        vu343814604: es662083077.r652311751,
        ayv228738719: es662083077.dfk161818680,
        w312325214: es662083077.ok212009081,
        rje136056027: fd978332157,
      ),
    );
    fas398417882.add(es662083077);
    await _ky447603392.rjh306345628();
  }

  Future<void> rgc867604119(
    String ayv228738719, {
    bool rje136056027 = false,
  }) async {
    if (!h491198070.r740509684) return;
    late I686664201 es662083077;
    late I686664201? aax497433849;

    if (oru436424740?.nvn459293598 == ayv228738719) {
      aax497433849 = oru436424740;
    } else {
      aax497433849 = null;
    }

    //
    //
    if (aax497433849 == null) return;
    _ky447603392.j145213751();
    final Completer sir31360659 = gx696466133();
    es662083077 = aax497433849;
    //
    //
    final int i290460394 = fin605164996.indexOf(es662083077);
    final int ycw594633066 = DateTime.now().millisecondsSinceEpoch;
    final Var270265096 pw578647893 =
        es662083077.b712079488(ycw594633066);
    fin605164996[i290460394] = pw578647893;
    _vi728063176 = null;
    final String d777338575 = pw578647893.r652311751;
    final int ak236311831 = pw578647893.dfk161818680;
    final int gm101383823 = pw578647893.xlq1032417741;

    await mj619208645();

    late int oq884440962;
    if (pw578647893.m225674715) {
      oq884440962 =
          pw578647893.heh442674261;
    } else {
      oq884440962 = gm101383823;
      await _ky447603392.k117537915(
        pw578647893,
      );
    }
    final Cj882558888 elk350794013 = Cj882558888(
      vu343814604: d777338575,
      ayv228738719: ak236311831,
      r724616664: gm101383823,
      t355705145: oq884440962,
      rje136056027: rje136056027,
    );
    w613848317.d(
      ' 🟡 End Screen - name: ${elk350794013.vu343814604} - id: ${elk350794013.ayv228738719} - endTime ${elk350794013.r724616664} - recordingEndTime ${elk350794013.t355705145}',
    );
    await _eum1037594747.rgc867604119(elk350794013);
    sir31360659.complete();
  }

  Future<void> ebp531892437() async {
    if (oru436424740 == null) return;
    await rgc867604119(
      oru436424740!.nvn459293598,
    );
  }

  Future<void> _u999118538() async {
    //
    //
    //
    if (ybj813143425 != null) return;
    //
    if (oru436424740 == null) return;
    ybj813143425 =
        _vi728063176;
    await rgc867604119(
      oru436424740!.nvn459293598,
      rje136056027: true,
    );
  }

  Future<void> _td247375027() async {
    //
    if (ybj813143425 == null) return;

    final List<I686664201> baf944301299 =
        ybj813143425!
            .map(
              (wl286663107) => wl286663107.e623465873(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();

    ybj813143425 = null;
    await i64443685(
      baf944301299,
      rje136056027: true,
    );
  }

  Future<void> e267112531() async {
    if (oru436424740 == null) return;
    if (_vi728063176 == null) return;
    final c557306997 = _vi728063176;
    await rgc867604119(oru436424740!.nvn459293598);
    final List<I686664201> jet286016005 =
        c557306997!
            .map(
              (wl286663107) => wl286663107.e623465873(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();
    await i64443685(jet286016005);
  }
}
