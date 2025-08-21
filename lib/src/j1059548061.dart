//

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/h369047381.dart';
import 'package:medallia_dxa/src/xik50999285.dart';
import 'package:medallia_dxa/src/mo534491989.dart';

import 'package:medallia_dxa/src/hk249196801.dart';

class A1069794808 {
  final List<Tpn666222753> gns986357726;
  //
  final List<Tpn666222753> vy231563428;
  final Lau808718320 bcp594444610;
  final Element w815079087;
  final RenderObject j798986487;
  final double lf91774025;
  A1069794808({
    required this.gns986357726,
    required this.vy231563428,
    required this.bcp594444610,
    required this.w815079087,
    required this.j798986487,
    required this.lf91774025,
  }) {
    _mm397724214();
  }
  late Set<Md859603263> _hr983094857;
  G890753676? _htk152720905;

  void _mm397724214() {
    List<Tpn666222753>? uu587705286 =
        _yb39236980(gns986357726: gns986357726);

    BuildContext? cw989839075 = w815079087;
    if (uu587705286 != null) {
      assert(uu587705286.first is G890753676);
      _htk152720905 =
          uu587705286.first as G890753676;
      cw989839075 = _htk152720905?.gn304973209;
      if (cw989839075 == null) {
        throw Z901570182('Context not ready');
      }
    } else {
      uu587705286 = gns986357726;
    }

    final p751074974 = _vxw261380236(
      uu587705286: uu587705286,
      cw989839075: cw989839075,
      vy231563428: vy231563428,
    );

    final Set<RenderObject> z603810423 =
        p751074974
            .where((hmq643259869) => hmq643259869.to753637276)
            .toSet();

    final Rect c623709508 = j798986487.y666269577;
    final Offset arr725285752 = Offset(c623709508.left, c623709508.top);
    _hr983094857 = _b613342180(
      z603810423,
      j798986487,
      arr725285752,
      lf91774025,
    );
  }

  Set<Md859603263> sfd744704630() => _hr983094857;

  G890753676? fp866297676() => _htk152720905;

  RenderObject? dz255166749(
    Tpn666222753 fp866297676,
  ) =>
      fp866297676.gn304973209?.findRenderObject();

  Set<RenderObject> _vxw261380236({
    required BuildContext cw989839075,
    required List<Tpn666222753> uu587705286,
    required List<Tpn666222753> vy231563428,
  }) {
    final List<BuildContext> g46230401 = [];
    for (final sr67975398 in vy231563428) {
      if (sr67975398.gn304973209 != null) {
        g46230401.add(sr67975398.gn304973209!);
      }
    }

    final p751074974 =
        bcp594444610.gia535478498(
      cgw506136211: cw989839075,
      aqm539557157: g46230401,
    );
    for (var d499530099 = 0; d499530099 < uu587705286.length; d499530099++) {
      final BuildContext? cgw506136211 = uu587705286[d499530099].gn304973209;
      if (cgw506136211 == null) throw Z901570182('Route context not ready');

      p751074974.addAll(
        bcp594444610.gia535478498(
          cgw506136211: cgw506136211,
          aqm539557157: g46230401,
        ),
      );
    }
    return p751074974;
  }

  //
  List<Tpn666222753>? _yb39236980({
    required List<Tpn666222753> gns986357726,
  }) {
    final int e824377388 = gns986357726.lastIndexWhere((kdw412699787) {
      return kdw412699787 is G890753676;
    });
    if (e824377388 == -1) {
      return null;
    }
    final List<Tpn666222753> uu587705286 = List.of(
      gns986357726.getRange(e824377388, gns986357726.length),
    );
    return uu587705286;
  }

  Set<Md859603263> _b613342180(
    Set<RenderObject> dl582722569,
    RenderObject s236611188,
    Offset o557612019,
    double lf91774025,
  ) {
    final Set<Md859603263> fhy641667486 = {};

    dl582722569.removeWhere((kdw412699787) => kdw412699787.attached == false);
    for (final hmq643259869 in dl582722569) {
      fhy641667486.add(
        _a420329262(
          hmq643259869,
          s236611188,
          o557612019,
          lf91774025,
        ),
      );
    }
    return fhy641667486;
  }

  Md859603263 _a420329262(
    RenderObject hmq643259869,
    RenderObject s236611188,
    Offset o557612019,
    double lf91774025,
  ) {
    late Md859603263 myp163312887;
    hmq643259869.kw236863181(s236611188).t265147862((g383825198) {
      myp163312887 = Md859603263(
        g383825198.b976996854.shift(o557612019).mp268644032(1 / lf91774025),
        g383825198.sdv172219144,
        g383825198.yhu567092985,
      );
    });
    return myp163312887;
  }
}
