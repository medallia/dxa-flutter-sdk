//
import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/ij290553119.dart';
import 'package:medallia_dxa/src/xm974258406.dart';
import 'package:medallia_dxa/src/nwb252672768.dart';
import 'package:medallia_dxa/src/ie1031390190.dart';
import 'package:medallia_dxa/src/pm943818353.dart';
import 'package:medallia_dxa/src/pk209816316.dart';
import 'package:medallia_dxa/src/mby681535094.dart';
import 'package:medallia_dxa/src/oph173740136.dart';
import 'package:medallia_dxa/src/feb452801672.dart';
import 'package:medallia_dxa/src/ky439715996.dart';
import 'package:medallia_dxa/src/e304042568.dart';
import 'package:medallia_dxa/src/jn255042292.dart';
import 'package:medallia_dxa/src/mk966267039.dart';

class Rsx1047663418 with Jh764602942, WidgetsBindingObserver {
  Rsx1047663418(
    this.o491198378,
    this._o1061097467,
    this._tv447603484,
    this._kvk399100886,
    this._ud336585255,
  ) {
    _ud336585255.addObserver(this);
  }

  final Sv733035730 o491198378;
  final Gy394369191 _o1061097467;
  final Kqo87340993 _tv447603484;
  final Ul1013316738 _kvk399100886;
  final WidgetsBinding _ud336585255;
  late final Wrq520942842 _w398447136 =
      R583050654.fwk892083481.vcq349873891;
  Logger get l613848353 => _o1061097467.e326301165;
  final Jh1038098463 _ujy1037595047 = Jh1038098463();
  final List<P686664661> _fu403891966 = [];
  List<P686664661>? _jb728063252 = [];
  final StreamController<P686664661> zw398417414 =
      StreamController.broadcast();
  final List<Qi785065914> q742410956 =
      [];
  final List<Completer> ax554015219 =
      List.empty(growable: true);
  final List<Completer> mf695813599 =
      List.empty(growable: true);
  List<String> _yks1027063246 = [];
  void ej972092456(List<String> lc881907097) {
    _yks1027063246 = lc881907097;
  }

  List<String> _rnb444607669 = [];
  void plz690466985(List<String> fsy275273985) {
    _rnb444607669 = fsy275273985;
  }

  List<P686664661> get lr605164568 => _fu403891966;
  List<P686664661>? ehx813143133;
  bool get vpg602844919 => vpb565192225;
  bool vpb565192225 = false;

  Size? _ph670081590;
  Size get hv193980885 => _ph670081590!;
  set hv193980885(Size zhu409602422) {
    if (zhu409602422 == _ph670081590) return;
    //
    if (_ph670081590 == null) {
      _ph670081590 = zhu409602422;
    } else {
      _ph670081590 = zhu409602422;
      nv267112847();
    }
  }

  void _rl510844076(P686664661 l662083545) {
    _fu403891966.add(l662083545);
  }

  P686664661? get nn436425208 {
    final List<P686664661> p64402896 =
        List<P686664661>.from(lr605164568)
          ..removeWhere((r412699800) => r412699800.fsf469235025);
    if (p64402896.isEmpty) return null;
    return p64402896.single;
  }

  bool a134584132(P686664661 xna497095046) {
    if (_jb728063252 == null) return true;
    P686664661? l662083545;
    try {
      l662083545 = _flp710237087(
        _jb728063252!,
      );
    } catch (e) {
      zxs865956557();
      return true;
    }
    if (l662083545 != xna497095046) {
      zxs865956557();
      return true;
    }
    return false;
  }

  void zxs865956557() {
    _w398447136.f483953898();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState fz933776072) {
    if (!o491198378.mk740509224) return;
    l613848353.d('didChangeAppLifecycleState $fz933776072');

    super.didChangeAppLifecycleState(fz933776072);

    switch (fz933776072) {
      case AppLifecycleState.resumed:
        _zaa247375215();
        break;

      default:
        if (fz933776072 == AppLifecycleState.paused ||
            fz933776072 == AppLifecycleState.inactive) {
          _e999118614();
        }
    }
  }

  @override
  void didChangeMetrics() {
    if (!o491198378.mk740509224) return;
    l613848353.d('didChangeMetrics');

    ucv653426641.hv193980885 =
        _ud336585255.platformDispatcher.views.first.physicalSize;

    super.didChangeMetrics();
  }

  P686664661 evk38580545({
    required String o459293250,
    required String g652311835,
    required List<DxaRouteWithModalRederence> j986357709,
    required List<Sio958539766> b916463395,
  }) {
    U72708414? ujw876938176;
    late final bool a901482406;
    late final bool cko884418050;

    _yks1027063246.contains(g652311835).jyg265147845((mft144550554) {
      a901482406 = !mft144550554;
    });
    _rnb444607669.contains(g652311835).jyg265147845((mft144550554) {
      cko884418050 = !mft144550554;
    });

    bool d51385232 = a901482406;
    bool a61260076 = cko884418050;

    final String m1017888072 = g652311835;

    //
    if (_kvk399100886
        .tm68326211(m1017888072)) {
      d51385232 = false;
    }

    //
    if (_kvk399100886
        .o317036267(m1017888072)) {
      a61260076 = false;
      ujw876938176 = U72708414.pp335361655;
    }
    //
    if (!cko884418050) {
      ujw876938176 = U72708414.m717759587;
    }

    final int h212009381 = DateTime.now().millisecondsSinceEpoch;

    final P686664661 l662083545 = P686664661.standard(
      o459293250: o459293250,
      j986357709: j986357709,
      b916463395: b916463395,
      h212009381: h212009381,
      g652311835: g652311835,
      cko884418050: a61260076,
      a901482406: d51385232,
      ujw876938176: ujw876938176,
    );

    return l662083545;
  }

  //
  Future<void> e64443641(
    List<P686664661> rf859565454, {
    bool g136056071 = false,
  }) async {
    final Completer vcx468298956 = Completer();
    await ivh756759512(
      (vcx468298956) => u528426339(
        rf859565454,
        vcx468298956,
        g136056071: g136056071,
      ),
      vcx468298956,
    );
  }

  //
  P686664661 _flp710237087(
    List<P686664661> rf859565454,
  ) {
    final List<P686664661> ij1054696221 = [];
    final List<P686664661> orn455360364 = [];
    for (final y1052622325 in rf859565454) {
      if (y1052622325.d243853000) continue;
      if (y1052622325.y368021493) continue;
      if (y1052622325.mo833759975.v4311633) {
        ij1054696221.add(y1052622325);
        if (y1052622325.j986357709.last is R890753695 ||
            y1052622325.j986357709.last is V564237991) {
          orn455360364.add(y1052622325);
        }
      }
    }
    if (ij1054696221.length == 1) return ij1054696221.first;

    //
    //
    //
    //
    //
    //
    //
    //
    //
    if (ij1054696221.length > 1) {
      late P686664661? q888253041;

      //
      q888253041 = ij1054696221.singleWhereOrNull(
        (r412699800) => r412699800.j986357709
            .any((r412699800) => (r412699800 is Oa666222770) && r412699800.oi447820794),
      );
      if (q888253041 == null) {
        throw Oy901570197('No opaque candidate or more than one found.');
      }

      //
      //
      orn455360364.sort(
        (mss170825293, hna14386068) => mss170825293.j986357709.last.iu77243892
            .compareTo(hna14386068.j986357709.last.iu77243892),
      );

      //
      for (var k499530080 = 0; k499530080 < orn455360364.length - 1; k499530080++) {
        final da451902417 = orn455360364[k499530080]
            .j986357709
            .last as R890753695;

        final bool f137001301 =
            da451902417
                    .quz219402943.b968880472 ==
                orn455360364[k499530080 + 1]
                    .j986357709
                    .first
                    .b968880472;
        final bool xjx112500413 =
            da451902417
                .quz219402943.w435387832
                .contains(
          orn455360364[k499530080 + 1]
              .j986357709
              .first
              .b968880472,
        );

        if (!f137001301 &&
            !xjx112500413) {
          throw Oy901570197('non opaque route is not a valid nestedRoute');
        }
      }

      //
      //
      if ((orn455360364.first.j986357709.last
                  as R890753695)
              .quz219402943 ==
          q888253041.j986357709.first) {
        return orn455360364.first;
      }

      //
      //
      if ((orn455360364.first.j986357709.last
                  as R890753695)
              .b968880472 ==
          q888253041.j986357709.first.b968880472) {
        return orn455360364.first;
      }

      //
      //
      if ((orn455360364.first.j986357709.last
              as R890753695)
          .quz219402943
          .w435387832
          .contains(
            q888253041.j986357709.first.b968880472,
          )) {
        return orn455360364.first;
      }

      //
      //
      if (q888253041.j986357709
              .lastWhereOrNull(
                  (r412699800) => (r412699800 is Oa666222770) && r412699800.oi447820794)
              ?.w435387832
              .contains(
                orn455360364
                    .last.j986357709.last.b968880472,
              ) ==
          true) {
        return orn455360364.first;
      }
      throw Oy901570197(
        'opaque route candidate shouldnt be painted under non opaque candidate 2',
      );
    }
    throw Oy901570197('No candidate found');
  }

  //e64443641_flp710237087_flp710237087
  Future<void> u528426339(
    List<P686664661> rf859565454,
    Completer vcx468298956, {
    bool g136056071 = false,
  }) async {
    //
    await jkh612388931();

    if (vcx468298956.isCompleted) return;

    if (!o491198378.a901482406) return;
    if (o491198378.uwn945439936) return;
    late bool iz978331681;
    //
    //
    //
    //
    //
    //
    if (ehx813143133 != null) {
      iz978331681 = true;
      ehx813143133 = null;
    } else {
      iz978331681 = g136056071;
    }
    if (nn436425208 != null) {
      await c867604299(nn436425208!.o459293250);
    }
    await o551885584();
    if (vcx468298956.isCompleted) return;
    //
    while (vpg602844919) {
      await jc333852167();
      if (vcx468298956.isCompleted) return;
    }

    //
    P686664661? l662083545;
    while (l662083545 == null) {
      try {
        l662083545 =
            _flp710237087(rf859565454);
      } catch (e) {
        await jc333852167();
        if (vcx468298956.isCompleted) return;
      }
    }
    if (vcx468298956.isCompleted) return;
    if (!l662083545.a901482406) {
      return;
    }
    _rl510844076(
      l662083545,
    );
    _jb728063252 = rf859565454;
    l613848353.d(
      ' 🔵 Start Screen - name: ${l662083545.g652311835} - id: ${l662083545.eho161819108}',
    );
    await _ujy1037595047.e64443641(
      Ni186122730(
        olz343814160: l662083545.g652311835,
        ysv228738883: l662083545.eho161819108,
        mth312325506: l662083545.h212009381,
        g136056071: iz978331681,
      ),
    );
    zw398417414.add(l662083545);
    await _tv447603484.b306345792();
  }

  Future<void> c867604299(
    String ysv228738883, {
    bool g136056071 = false,
  }) async {
    if (!o491198378.mk740509224) return;
    late P686664661 l662083545;
    late P686664661? gw497433893;

    if (nn436425208?.o459293250 == ysv228738883) {
      gw497433893 = nn436425208;
    } else {
      gw497433893 = null;
    }

    //
    //
    if (gw497433893 == null) return;
    _tv447603484.boe145213675();
    final Completer ucn31360847 = vlq696466185();
    l662083545 = gw497433893;
    //
    //
    final int g290460470 = lr605164568.indexOf(l662083545);
    final int n594632886 = DateTime.now().millisecondsSinceEpoch;
    final Qf270265044 f578647689 =
        l662083545.f712079708(n594632886);
    lr605164568[g290460470] = f578647689;
    _jb728063252 = null;
    final String h777338643 = f578647689.g652311835;
    final int mp236311755 = f578647689.eho161819108;
    final int idk101384019 = f578647689.h1032417297;

    await qh619208217();

    late int ya884440670;
    if (f578647689.cov225674247) {
      ya884440670 =
          f578647689.sg442674569;
    } else {
      ya884440670 = idk101384019;
      await _tv447603484.ot117538215(
        f578647689,
      );
    }
    final Pxk882558580 ttq350793921 = Pxk882558580(
      olz343814160: h777338643,
      ysv228738883: mp236311755,
      b724616196: idk101384019,
      ex355705061: ya884440670,
      g136056071: g136056071,
    );
    l613848353.d(
      ' 🟡 End Screen - name: ${ttq350793921.olz343814160} - id: ${ttq350793921.ysv228738883} - endTime ${ttq350793921.b724616196} - recordingEndTime ${ttq350793921.ex355705061}',
    );
    await _ujy1037595047.c867604299(ttq350793921);
    ucn31360847.complete();
  }

  Future<void> cd531892489() async {
    if (nn436425208 == null) return;
    await c867604299(
      nn436425208!.o459293250,
    );
  }

  Future<void> _e999118614() async {
    //
    //
    //
    if (ehx813143133 != null) return;
    //
    if (nn436425208 == null) return;
    ehx813143133 =
        _jb728063252;
    await c867604299(
      nn436425208!.o459293250,
      g136056071: true,
    );
  }

  Future<void> _zaa247375215() async {
    //
    if (ehx813143133 == null) return;

    final List<P686664661> ok944301359 =
        ehx813143133!
            .map(
              (at286662687) => at286662687.w623465549(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();

    ehx813143133 = null;
    await e64443641(
      ok944301359,
      g136056071: true,
    );
  }

  Future<void> nv267112847() async {
    if (nn436425208 == null) return;
    if (_jb728063252 == null) return;
    final ce557307305 = _jb728063252;
    await c867604299(nn436425208!.o459293250);
    final List<P686664661> z286016473 =
        ce557307305!
            .map(
              (at286662687) => at286662687.w623465549(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();
    await e64443641(z286016473);
  }
}
