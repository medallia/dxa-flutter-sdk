//

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/sie151964570.dart';
import 'package:medallia_dxa/src/g1031389368.dart';
import 'package:medallia_dxa/src/auw209815978.dart';
import 'package:medallia_dxa/src/jn439716810.dart';

import 'package:medallia_dxa/src/u304042270.dart';

class W1069795005 {
  final List<Pgw666223588> rt986356891;
  //
  final List<Pgw666223588> gqv231564257;
  final Nk808717493 unz594444807;
  final Element to815078890;
  final RenderObject oe798987186;
  final double im91774732;
  W1069795005({
    required this.rt986356891,
    required this.gqv231564257,
    required this.unz594444807,
    required this.to815078890,
    required this.oe798987186,
    required this.im91774732,
  }) {
    _lvd397724019();
  }
  late Set<Nly859603578> _grm983094540;
  RenderObject? _n517635794;
  void _lvd397724019() {
    List<Pgw666223588>? jfc587704451 =
        _ssq973555064(rt986356891: rt986356891);

    BuildContext? l989838758 = to815078890;
    if (jfc587704451 != null) {
      l989838758 = jfc587704451.first.sxq304973532;
      if (l989838758 == null) {
        throw Z901569987('Context not ready');
      }
      _n517635794 = l989838758.findRenderObject();
    } else {
      jfc587704451 = rt986356891;
    }

    final dt751074779 = _ssk261381065(
      jfc587704451: jfc587704451,
      l989838758: l989838758,
      tq878440445: jfc587704451.first.yz1006262804,
      gqv231564257: gqv231564257,
    );

    //

    final Set<RenderObject> cv603810098 =
        dt751074779
            .where((h643260056) => h643260056.cne753636569)
            .toSet();

    final Rect hu623709697 = oe798987186.ph666268876;
    final Offset hlf725284925 = Offset(hu623709697.left, hu623709697.top);
    _grm983094540 = _nk613341345(
      cv603810098,
      oe798987186,
      hlf725284925,
      im91774732,
    );
  }

  Set<Nly859603578> t744704307() => _grm983094540;

  RenderObject? x255167064(Vo686663811 wdv662082703) =>
      _n517635794;

  Set<RenderObject> _ssk261381065({
    required BuildContext l989838758,
    required BuildContext tq878440445,
    required List<Pgw666223588> jfc587704451,
    required List<Pgw666223588> gqv231564257,
  }) {
    final List<BuildContext> zeb46229700 = [];
    for (final nlp67976099 in gqv231564257) {
      if (nlp67976099.sxq304973532 != null) {
        zeb46229700.add(nlp67976099.sxq304973532!);
      }
    }

    final dt751074779 =
        unz594444807.s535479207(
      yy506136022: l989838758,
      cwf539557472: zeb46229700,
    );
    for (var usy499530294 = 0; usy499530294 < jfc587704451.length; usy499530294++) {
      final BuildContext? yy506136022 = jfc587704451[usy499530294].sxq304973532;
      if (yy506136022 == null) throw Z901569987('Route context not ready');

      dt751074779.addAll(
        unz594444807.s535479207(
          yy506136022: yy506136022,
          cwf539557472: zeb46229700,
        ),
      );
    }
    return dt751074779;
  }

  List<Pgw666223588>? _ssq973555064({
    required List<Pgw666223588> rt986356891,
  }) {
    final int i824378217 = rt986356891.lastIndexWhere((jl412700622) {
      return jl412700622.bki447819948 == false;
    });
    if (i824378217 == -1) {
      return null;
    }
    final List<Pgw666223588> jfc587704451 = List.of(
      rt986356891.getRange(i824378217, rt986356891.length),
    );
    return jfc587704451;
  }

  Set<Nly859603578> _nk613341345(
    Set<RenderObject> je582723404,
    RenderObject an236610865,
    Offset q557611190,
    double im91774732,
  ) {
    final Set<Nly859603578> zis641667803 = {};

    je582723404.removeWhere((jl412700622) => jl412700622.attached == false);
    for (final h643260056 in je582723404) {
      zis641667803.add(
        _x420328555(
          h643260056,
          an236610865,
          q557611190,
          im91774732,
        ),
      );
    }
    return zis641667803;
  }

  Nly859603578 _x420328555(
    RenderObject h643260056,
    RenderObject an236610865,
    Offset q557611190,
    double im91774732,
  ) {
    late Nly859603578 to163313586;
    h643260056.n236862856(an236610865).rcm265148051((cg383825515) {
      to163313586 = Nly859603578(
        cg383825515.g976997043.shift(q557611190).pyz268643717(1 / im91774732),
        cg383825515.c172218445,
        cg383825515.r567092668,
      );
    });
    return to163313586;
  }
}
