//

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/e151963874.dart';
import 'package:medallia_dxa/src/lq1031390144.dart';
import 'package:medallia_dxa/src/ic209816274.dart';
import 'package:medallia_dxa/src/rxm439716018.dart';

import 'package:medallia_dxa/src/kb304042598.dart';

class Bv1069794757 {
  final List<Ipv666222748> dm986357731;
  //
  final List<Ipv666222748> b231563417;
  final Ctr808718285 h594444671;
  final Element px55349654;
  final RenderObject r798986442;
  final double hi91774068;
  Bv1069794757({
    required this.dm986357731,
    required this.b231563417,
    required this.h594444671,
    required this.px55349654,
    required this.r798986442,
    required this.hi91774068,
  }) {
    _c397724171();
  }
  late Set<If859603202> _qv983094900;
  RenderObject? _gd517635498;
  void _c397724171() {
    List<Ipv666222748>? q587705339 =
        _j973555200(dm986357731: dm986357731);

    BuildContext? cfe989839070 = px55349654;
    if (q587705339 != null) {
      cfe989839070 = q587705339.first.uc304973220;
      if (cfe989839070 == null) {
        throw Jlq901570235('Context not ready');
      }
      _gd517635498 = cfe989839070.findRenderObject();
    } else {
      q587705339 = dm986357731;
    }

    final gl751074979 = _fef261380273(
      q587705339: q587705339,
      cfe989839070: cfe989839070,
      n878439557: q587705339.first.ygj1006262636,
      b231563417: b231563417,
    );

    final Set<RenderObject> d603810378 =
        gl751074979
            .where((pii643259872) => pii643259872.bl753637281)
            .toSet();

    final Rect ize623709561 = r798986442.biw666269620;
    final Offset du725285701 = Offset(ize623709561.left, ize623709561.top);
    _qv983094900 = _y613342169(
      d603810378,
      r798986442,
      du725285701,
      hi91774068,
    );
  }

  Set<If859603202> y744704587() => _qv983094900;

  RenderObject? d255166752(Szr686664699 fxm662083575) =>
      _gd517635498;

  Set<RenderObject> _fef261380273({
    required BuildContext cfe989839070,
    required BuildContext n878439557,
    required List<Ipv666222748> q587705339,
    required List<Ipv666222748> b231563417,
  }) {
    final List<BuildContext> png46230460 = [];
    for (final arh67975387 in b231563417) {
      if (arh67975387.uc304973220 != null) {
        png46230460.add(arh67975387.uc304973220!);
      }
    }

    final gl751074979 =
        h594444671.cfd535478495(
      c506136238: cfe989839070,
      qi539557144: png46230460,
    );
    for (var uz499530062 = 0; uz499530062 < q587705339.length; uz499530062++) {
      final BuildContext? c506136238 = q587705339[uz499530062].uc304973220;
      if (c506136238 == null) throw Jlq901570235('Route context not ready');

      gl751074979.addAll(
        h594444671.cfd535478495(
          c506136238: c506136238,
          qi539557144: png46230460,
        ),
      );
    }
    return gl751074979;
  }

  List<Ipv666222748>? _j973555200({
    required List<Ipv666222748> dm986357731,
  }) {
    final int v824377361 = dm986357731.lastIndexWhere((yte412699830) {
      return yte412699830.r447820756 == false;
    });
    if (v824377361 == -1) {
      return null;
    }
    final List<Ipv666222748> q587705339 = List.of(
      dm986357731.getRange(v824377361, dm986357731.length),
    );
    return q587705339;
  }

  Set<If859603202> _y613342169(
    Set<RenderObject> er582722612,
    RenderObject bx236611145,
    Offset gg557611982,
    double hi91774068,
  ) {
    final Set<If859603202> tue641667491 = {};

    er582722612.removeWhere((yte412699830) => yte412699830.attached == false);
    for (final pii643259872 in er582722612) {
      tue641667491.add(
        _lyq420329235(
          pii643259872,
          bx236611145,
          gg557611982,
          hi91774068,
        ),
      );
    }
    return tue641667491;
  }

  If859603202 _lyq420329235(
    RenderObject pii643259872,
    RenderObject bx236611145,
    Offset gg557611982,
    double hi91774068,
  ) {
    late If859603202 ka163312842;
    pii643259872.n236863216(bx236611145).mr265147883((ssh383825171) {
      ka163312842 = If859603202(
        ssh383825171.ku976996811.shift(gg557611982).li268644093(1 / hi91774068),
        ssh383825171.mt172219189,
        ssh383825171.rwy567092932,
      );
    });
    return ka163312842;
  }
}
