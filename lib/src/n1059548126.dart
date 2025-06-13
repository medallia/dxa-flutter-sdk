//

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/uf369047318.dart';
import 'package:medallia_dxa/src/atk50999222.dart';
import 'package:medallia_dxa/src/duk534491926.dart';

import 'package:medallia_dxa/src/de249196866.dart';

class A1069794747 {
  final List<Gs666222818> eq986357661;
  //
  final List<Gs666222818> b231563495;
  final Egt808718259 w594444545;
  final Element n815079148;
  final RenderObject kh798986420;
  final double bzc91773962;
  A1069794747({
    required this.eq986357661,
    required this.b231563495,
    required this.w594444545,
    required this.n815079148,
    required this.kh798986420,
    required this.bzc91773962,
  }) {
    _eb397724277();
  }
  late Set<Z859603324> _c983094794;
  Gc890753743? _bli152720970;

  void _eb397724277() {
    List<Gs666222818>? zzx587705221 =
        _uhu39236919(eq986357661: eq986357661);

    BuildContext? pb989839008 = n815079148;
    if (zzx587705221 != null) {
      assert(zzx587705221.first is Gc890753743);
      _bli152720970 =
          zzx587705221.first as Gc890753743;
      pb989839008 = _bli152720970?.nc304973274;
      if (pb989839008 == null) {
        throw G901570245('Context not ready');
      }
    } else {
      zzx587705221 = eq986357661;
    }

    final tyu751075037 = _ktx261380303(
      zzx587705221: zzx587705221,
      pb989839008: pb989839008,
      b231563495: b231563495,
    );

    final Set<RenderObject> q603810356 =
        tyu751075037
            .where((i643259806) => i643259806.kvb753637343)
            .toSet();

    final Rect oq623709447 = kh798986420.wz666269642;
    final Offset d725285691 = Offset(oq623709447.left, oq623709447.top);
    _c983094794 = _uq613342119(
      q603810356,
      kh798986420,
      d725285691,
      bzc91773962,
    );
  }

  Set<Z859603324> gp744704565() => _c983094794;

  Gc890753743? r866297615() => _bli152720970;

  RenderObject? aym255166814(
    Gs666222818 r866297615,
  ) =>
      r866297615.nc304973274?.findRenderObject();

  Set<RenderObject> _ktx261380303({
    required BuildContext pb989839008,
    required List<Gs666222818> zzx587705221,
    required List<Gs666222818> b231563495,
  }) {
    final List<BuildContext> e46230466 = [];
    for (final hp67975333 in b231563495) {
      if (hp67975333.nc304973274 != null) {
        e46230466.add(hp67975333.nc304973274!);
      }
    }

    final tyu751075037 =
        w594444545.vv535478433(
      wb506136272: pb989839008,
      u539557222: e46230466,
    );
    for (var d499530032 = 0; d499530032 < zzx587705221.length; d499530032++) {
      final BuildContext? wb506136272 = zzx587705221[d499530032].nc304973274;
      if (wb506136272 == null) throw G901570245('Route context not ready');

      tyu751075037.addAll(
        w594444545.vv535478433(
          wb506136272: wb506136272,
          u539557222: e46230466,
        ),
      );
    }
    return tyu751075037;
  }

  //
  List<Gs666222818>? _uhu39236919({
    required List<Gs666222818> eq986357661,
  }) {
    final int ah824377455 = eq986357661.lastIndexWhere((m412699848) {
      return m412699848 is Gc890753743;
    });
    if (ah824377455 == -1) {
      return null;
    }
    final List<Gs666222818> zzx587705221 = List.of(
      eq986357661.getRange(ah824377455, eq986357661.length),
    );
    return zzx587705221;
  }

  Set<Z859603324> _uq613342119(
    Set<RenderObject> wg582722634,
    RenderObject plj236611127,
    Offset m557611952,
    double bzc91773962,
  ) {
    final Set<Z859603324> dm641667549 = {};

    wg582722634.removeWhere((m412699848) => m412699848.attached == false);
    for (final i643259806 in wg582722634) {
      dm641667549.add(
        _pov420329325(
          i643259806,
          plj236611127,
          m557611952,
          bzc91773962,
        ),
      );
    }
    return dm641667549;
  }

  Z859603324 _pov420329325(
    RenderObject i643259806,
    RenderObject plj236611127,
    Offset m557611952,
    double bzc91773962,
  ) {
    late Z859603324 u163312820;
    i643259806.htq236863118(plj236611127).rct265147797((d383825261) {
      u163312820 = Z859603324(
        d383825261.z976996789.shift(m557611952).fp268643971(1 / bzc91773962),
        d383825261.e172219211,
        d383825261.bs567092922,
      );
    });
    return u163312820;
  }
}
