//
import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/ls290553137.dart';
import 'package:medallia_dxa/src/zy974258376.dart';
import 'package:medallia_dxa/src/ebw252672814.dart';
import 'package:medallia_dxa/src/lq1031390144.dart';
import 'package:medallia_dxa/src/k943818335.dart';
import 'package:medallia_dxa/src/ic209816274.dart';
import 'package:medallia_dxa/src/mlm681535064.dart';
import 'package:medallia_dxa/src/l173740102.dart';
import 'package:medallia_dxa/src/e452801702.dart';
import 'package:medallia_dxa/src/rxm439716018.dart';
import 'package:medallia_dxa/src/kb304042598.dart';
import 'package:medallia_dxa/src/fsv255042266.dart';
import 'package:medallia_dxa/src/gxe966267057.dart';

class S1047663380 with His764602896, WidgetsBindingObserver {
  S1047663380(
    this.swi491198340,
    this._zah1061097429,
    this._n447603506,
    this._wx399100920,
    this._mrl336585225,
  ) {
    _mrl336585225.addObserver(this);
  }

  final P733035772 swi491198340;
  final A394369161 _zah1061097429;
  final O87341039 _n447603506;
  final Byf1013316780 _wx399100920;
  final WidgetsBinding _mrl336585225;
  late final De520942804 _xq398447118 =
      Pg583050672.vpo892083511.amb349873869;
  Logger get qa613848335 => _zah1061097429.ved326301123;
  final Uso1038098481 _xd1037595017 = Uso1038098481();
  final List<Szr686664699> _qh403891920 = [];
  List<Szr686664699>? _ofs728063290 = [];
  final StreamController<Szr686664699> ef398417448 =
      StreamController.broadcast();
  final List<Q785065876> tp742410978 =
      [];
  final List<Completer> lmh554015197 =
      List.empty(growable: true);
  final List<Completer> kbs695813617 =
      List.empty(growable: true);
  List<String> _j1027063264 = [];
  void dy972092422(List<String> da881907127) {
    _j1027063264 = da881907127;
  }

  List<String> _l444607643 = [];
  void vz690466951(List<String> qfz275274031) {
    _l444607643 = qfz275274031;
  }

  List<Szr686664699> get d605164598 => _qh403891920;
  List<Szr686664699>? es813143155;
  bool get gn602844889 => x565192207;
  bool x565192207 = false;

  Size? _u670081560;
  Size get y193980923 => _u670081560!;
  set y193980923(Size ort409602392) {
    if (ort409602392 == _u670081560) return;
    //
    if (_u670081560 == null) {
      _u670081560 = ort409602392;
    } else {
      _u670081560 = ort409602392;
      rwj267112865();
    }
  }

  void _kqk510844034(Szr686664699 fxm662083575) {
    _qh403891920.add(fxm662083575);
  }

  Szr686664699? get ir436425174 {
    final List<Szr686664699> uvj64402942 =
        List<Szr686664699>.from(d605164598)
          ..removeWhere((yte412699830) => yte412699830.sjf469235071);
    if (uvj64402942.isEmpty) return null;
    return uvj64402942.single;
  }

  bool j134584170(Szr686664699 mj497095080) {
    if (_ofs728063290 == null) return true;
    Szr686664699? fxm662083575;
    try {
      fxm662083575 = _lj710237105(
        _ofs728063290!,
      );
    } catch (e) {
      xfa865956579();
      return true;
    }
    if (fxm662083575 != mj497095080) {
      xfa865956579();
      return true;
    }
    return false;
  }

  void xfa865956579() {
    _xq398447118.o483953860();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState p933776102) {
    if (!swi491198340.zg740509190) return;
    qa613848335.d('didChangeAppLifecycleState $p933776102');

    super.didChangeAppLifecycleState(p933776102);

    switch (p933776102) {
      case AppLifecycleState.resumed:
        _ss247375169();
        break;

      default:
        if (p933776102 == AppLifecycleState.paused ||
            p933776102 == AppLifecycleState.inactive) {
          _t999118648();
        }
    }
  }

  @override
  void didChangeMetrics() {
    if (!swi491198340.zg740509190) return;
    qa613848335.d('didChangeMetrics');

    vn653426687.y193980923 =
        _mrl336585225.platformDispatcher.views.first.physicalSize;

    super.didChangeMetrics();
  }

  Szr686664699 y38580591({
    required String i459293292,
    required String dxl652311861,
    required List<DxaRouteWithModalRederence> dm986357731,
    required List<Iag958539736> ic916463373,
  }) {
    V72708368? zzq876938222;
    late final bool eol901482376;
    late final bool j884418092;

    _j1027063264.contains(dxl652311861).mr265147883((s144550580) {
      eol901482376 = !s144550580;
    });
    _l444607643.contains(dxl652311861).mr265147883((s144550580) {
      j884418092 = !s144550580;
    });

    bool bt51385278 = eol901482376;
    bool b61260034 = j884418092;

    final String omt1017888102 = dxl652311861;

    //
    if (_wx399100920
        .y68326253(omt1017888102)) {
      bt51385278 = false;
    }

    //
    if (_wx399100920
        .as317036229(omt1017888102)) {
      b61260034 = false;
      zzq876938222 = V72708368.adr335361625;
    }
    //
    if (!j884418092) {
      zzq876938222 = V72708368.zbc717759565;
    }

    final int r212009355 = DateTime.now().millisecondsSinceEpoch;

    final Szr686664699 fxm662083575 = Szr686664699.standard(
      i459293292: i459293292,
      dm986357731: dm986357731,
      ic916463373: ic916463373,
      r212009355: r212009355,
      dxl652311861: dxl652311861,
      j884418092: b61260034,
      eol901482376: bt51385278,
      zzq876938222: zzq876938222,
    );

    return fxm662083575;
  }

  //
  Future<void> gta64443607(
    List<Szr686664699> ha859565472, {
    bool n136056105 = false,
  }) async {
    final Completer f468298978 = Completer();
    await eub756759542(
      (f468298978) => f528426317(
        ha859565472,
        f468298978,
        n136056105: n136056105,
      ),
      f468298978,
    );
  }

  //
  Szr686664699 _lj710237105(
    List<Szr686664699> ha859565472,
  ) {
    final List<Szr686664699> r1054696243 = [];
    final List<Szr686664699> jcl455360322 = [];
    for (final uyu1052622299 in ha859565472) {
      if (uyu1052622299.wbb243853030) continue;
      if (uyu1052622299.cqs368021467) continue;
      if (uyu1052622299.ex833759945.qyo4311679) {
        r1054696243.add(uyu1052622299);
        if (uyu1052622299.dm986357731.last is Lr890753713 ||
            uyu1052622299.dm986357731.last is Pi564237961) {
          jcl455360322.add(uyu1052622299);
        }
      }
    }
    if (r1054696243.length == 1) return r1054696243.first;

    //
    //
    //
    //
    //
    //
    //
    //
    //
    if (r1054696243.length > 1) {
      late Szr686664699? j888253023;

      //
      j888253023 = r1054696243.singleWhereOrNull(
        (yte412699830) => yte412699830.dm986357731
            .any((yte412699830) => (yte412699830 is Ipv666222748) && yte412699830.r447820756),
      );
      if (j888253023 == null) {
        throw Jlq901570235('No opaque candidate or more than one found.');
      }

      //
      //
      jcl455360322.sort(
        (l170825315, dk14386106) => l170825315.dm986357731.last.i77243866
            .compareTo(dk14386106.dm986357731.last.i77243866),
      );

      //
      for (var uz499530062 = 0; uz499530062 < jcl455360322.length - 1; uz499530062++) {
        final oz451902463 = jcl455360322[uz499530062]
            .dm986357731
            .last as Lr890753713;

        final bool ddo137001339 =
            oz451902463
                    .uum219402897.g968880502 ==
                jcl455360322[uz499530062 + 1]
                    .dm986357731
                    .first
                    .g968880502;
        final bool wgk112500371 =
            oz451902463
                .uum219402897.f435387798
                .contains(
          jcl455360322[uz499530062 + 1]
              .dm986357731
              .first
              .g968880502,
        );

        if (!ddo137001339 &&
            !wgk112500371) {
          throw Jlq901570235('non opaque route is not a valid nestedRoute');
        }
      }

      //
      //
      if ((jcl455360322.first.dm986357731.last
                  as Lr890753713)
              .uum219402897 ==
          j888253023.dm986357731.first) {
        return jcl455360322.first;
      }

      //
      //
      if ((jcl455360322.first.dm986357731.last
                  as Lr890753713)
              .g968880502 ==
          j888253023.dm986357731.first.g968880502) {
        return jcl455360322.first;
      }

      //
      //
      if ((jcl455360322.first.dm986357731.last
              as Lr890753713)
          .uum219402897
          .f435387798
          .contains(
            j888253023.dm986357731.first.g968880502,
          )) {
        return jcl455360322.first;
      }

      //
      //
      if (j888253023.dm986357731
              .lastWhereOrNull(
                  (yte412699830) => (yte412699830 is Ipv666222748) && yte412699830.r447820756)
              ?.f435387798
              .contains(
                jcl455360322
                    .last.dm986357731.last.g968880502,
              ) ==
          true) {
        return jcl455360322.first;
      }
      throw Jlq901570235(
        'opaque route candidate shouldnt be painted under non opaque candidate 2',
      );
    }
    throw Jlq901570235('No candidate found');
  }

  //gta64443607_lj710237105_lj710237105
  Future<void> f528426317(
    List<Szr686664699> ha859565472,
    Completer f468298978, {
    bool n136056105 = false,
  }) async {
    //
    await q612388973();

    if (f468298978.isCompleted) return;

    if (!swi491198340.eol901482376) return;
    if (swi491198340.y945439982) return;
    late bool f978331663;
    //
    //
    //
    //
    //
    //
    if (es813143155 != null) {
      f978331663 = true;
      es813143155 = null;
    } else {
      f978331663 = n136056105;
    }
    if (ir436425174 != null) {
      await bij867604325(ir436425174!.i459293292);
    }
    await tr551885630();
    if (f468298978.isCompleted) return;
    //
    while (gn602844889) {
      await qu333852201();
      if (f468298978.isCompleted) return;
    }

    //
    Szr686664699? fxm662083575;
    while (fxm662083575 == null) {
      try {
        fxm662083575 =
            _lj710237105(ha859565472);
      } catch (e) {
        await qu333852201();
        if (f468298978.isCompleted) return;
      }
    }
    if (f468298978.isCompleted) return;
    if (!fxm662083575.eol901482376) {
      return;
    }
    _kqk510844034(
      fxm662083575,
    );
    _ofs728063290 = ha859565472;
    qa613848335.d(
      ' 🔵 Start Screen - name: ${fxm662083575.dxl652311861} - id: ${fxm662083575.kxj161819082}',
    );
    await _xd1037595017.gta64443607(
      V186122692(
        lz343814206: fxm662083575.dxl652311861,
        q228738925: fxm662083575.kxj161819082,
        f312325548: fxm662083575.r212009355,
        n136056105: f978331663,
      ),
    );
    ef398417448.add(fxm662083575);
    await _n447603506.d306345838();
  }

  Future<void> bij867604325(
    String q228738925, {
    bool n136056105 = false,
  }) async {
    if (!swi491198340.zg740509190) return;
    late Szr686664699 fxm662083575;
    late Szr686664699? d497433867;

    if (ir436425174?.i459293292 == q228738925) {
      d497433867 = ir436425174;
    } else {
      d497433867 = null;
    }

    //
    //
    if (d497433867 == null) return;
    _n447603506.hgt145213637();
    final Completer uks31360865 = dxm696466215();
    fxm662083575 = d497433867;
    //
    //
    final int f290460440 = d605164598.indexOf(fxm662083575);
    final int p594632856 = DateTime.now().millisecondsSinceEpoch;
    final Xt270265082 hbq578647719 =
        fxm662083575.mbk712079730(p594632856);
    d605164598[f290460440] = hbq578647719;
    _ofs728063290 = null;
    final String tk777338685 = hbq578647719.dxl652311861;
    final int mq236311781 = hbq578647719.kxj161819082;
    final int w101384061 = hbq578647719.upi1032417343;

    await wel619208247();

    late int j884440688;
    if (hbq578647719.b225674281) {
      j884440688 =
          hbq578647719.q442674599;
    } else {
      j884440688 = w101384061;
      await _n447603506.myd117538185(
        hbq578647719,
      );
    }
    final E882558554 iad350793967 = E882558554(
      lz343814206: tk777338685,
      q228738925: mq236311781,
      q724616234: w101384061,
      bjz355705035: j884440688,
      n136056105: n136056105,
    );
    qa613848335.d(
      ' 🟡 End Screen - name: ${iad350793967.lz343814206} - id: ${iad350793967.q228738925} - endTime ${iad350793967.q724616234} - recordingEndTime ${iad350793967.bjz355705035}',
    );
    await _xd1037595017.bij867604325(iad350793967);
    uks31360865.complete();
  }

  Future<void> qk531892519() async {
    if (ir436425174 == null) return;
    await bij867604325(
      ir436425174!.i459293292,
    );
  }

  Future<void> _t999118648() async {
    //
    //
    //
    if (es813143155 != null) return;
    //
    if (ir436425174 == null) return;
    es813143155 =
        _ofs728063290;
    await bij867604325(
      ir436425174!.i459293292,
      n136056105: true,
    );
  }

  Future<void> _ss247375169() async {
    //
    if (es813143155 == null) return;

    final List<Szr686664699> go944301313 =
        es813143155!
            .map(
              (tls286662705) => tls286662705.rxd623465571(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();

    es813143155 = null;
    await gta64443607(
      go944301313,
      n136056105: true,
    );
  }

  Future<void> rwj267112865() async {
    if (ir436425174 == null) return;
    if (_ofs728063290 == null) return;
    final c557307271 = _ofs728063290;
    await bij867604325(ir436425174!.i459293292);
    final List<Szr686664699> mn286016503 =
        c557307271!
            .map(
              (tls286662705) => tls286662705.rxd623465571(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();
    await gta64443607(mn286016503);
  }
}
