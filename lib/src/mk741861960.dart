//

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/lai151963827.dart';
import 'package:medallia_dxa/src/ki1031390097.dart';
import 'package:medallia_dxa/src/yqb209816195.dart';
import 'package:medallia_dxa/src/t439716067.dart';

import 'package:medallia_dxa/src/xd304042551.dart';

class A1069794708 {
  final List<L666222797> qng986357682;
  //
  final List<L666222797> yxs231563464;
  final Sdw808718236 lr594444590;
  final Element d815079107;
  final RenderObject qo798986395;
  final double st91773989;
  A1069794708({
    required this.qng986357682,
    required this.yxs231563464,
    required this.lr594444590,
    required this.d815079107,
    required this.qo798986395,
    required this.st91773989,
  }) {
    _hx397724250();
  }
  late Set<R859603283> _e983094821;
  Ztd890753760? _wqc152720997;

  void _hx397724250() {
    List<L666222797>? xi587705258 =
        _iwe39236888(qng986357682: qng986357682);

    BuildContext? eaq989838991 = d815079107;
    if (xi587705258 != null) {
      assert(xi587705258.first is Ztd890753760);
      _wqc152720997 =
          xi587705258.first as Ztd890753760;
      eaq989838991 = _wqc152720997?.n304973301;
      if (eaq989838991 == null) {
        throw Sif901570282('Context not ready');
      }
    } else {
      xi587705258 = qng986357682;
    }

    final xyi751075058 = _ho261380320(
      xi587705258: xi587705258,
      eaq989838991: eaq989838991,
      yxs231563464: yxs231563464,
    );

    final Set<RenderObject> lq603810331 =
        xyi751075058
            .where((cfv643259825) => cfv643259825.mef753637360)
            .toSet();

    final Rect m623709480 = qo798986395.gxx666269669;
    final Offset ox725285652 = Offset(m623709480.left, m623709480.top);
    _e983094821 = _gth613342088(
      lq603810331,
      qo798986395,
      ox725285652,
      st91773989,
    );
  }

  Set<R859603283> hu744704538() => _e983094821;

  Ztd890753760? jsm866297632() => _wqc152720997;

  RenderObject? gb255166833(
    L666222797 jsm866297632,
  ) =>
      jsm866297632.n304973301?.findRenderObject();

  Set<RenderObject> _ho261380320({
    required BuildContext eaq989838991,
    required List<L666222797> xi587705258,
    required List<L666222797> yxs231563464,
  }) {
    final List<BuildContext> hwk46230509 = [];
    for (final fnm67975306 in yxs231563464) {
      if (fnm67975306.n304973301 != null) {
        hwk46230509.add(fnm67975306.n304973301!);
      }
    }

    final xyi751075058 =
        lr594444590.x535478414(
      s506136319: eaq989838991,
      g539557193: hwk46230509,
    );
    for (var z499530015 = 0; z499530015 < xi587705258.length; z499530015++) {
      final BuildContext? s506136319 = xi587705258[z499530015].n304973301;
      if (s506136319 == null) throw Sif901570282('Route context not ready');

      xyi751075058.addAll(
        lr594444590.x535478414(
          s506136319: s506136319,
          g539557193: hwk46230509,
        ),
      );
    }
    return xyi751075058;
  }

  //
  List<L666222797>? _iwe39236888({
    required List<L666222797> qng986357682,
  }) {
    final int oge824377408 = qng986357682.lastIndexWhere((uw412699879) {
      return uw412699879 is Ztd890753760;
    });
    if (oge824377408 == -1) {
      return null;
    }
    final List<L666222797> xi587705258 = List.of(
      qng986357682.getRange(oge824377408, qng986357682.length),
    );
    return xi587705258;
  }

  Set<R859603283> _gth613342088(
    Set<RenderObject> mh582722661,
    RenderObject w236611096,
    Offset ocs557611935,
    double st91773989,
  ) {
    final Set<R859603283> y641667570 = {};

    mh582722661.removeWhere((uw412699879) => uw412699879.attached == false);
    for (final cfv643259825 in mh582722661) {
      y641667570.add(
        _dde420329282(
          cfv643259825,
          w236611096,
          ocs557611935,
          st91773989,
        ),
      );
    }
    return y641667570;
  }

  R859603283 _dde420329282(
    RenderObject cfv643259825,
    RenderObject w236611096,
    Offset ocs557611935,
    double st91773989,
  ) {
    late R859603283 bz163312795;
    cfv643259825.ng236863137(w236611096).vy265147834((ph383825218) {
      bz163312795 = R859603283(
        ph383825218.qf976996762.shift(ocs557611935).lsl268644012(1 / st91773989),
        ph383825218.wb172219236,
        ph383825218.kt567092885,
      );
    });
    return bz163312795;
  }
}
