//

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/d369047140.dart';
import 'package:medallia_dxa/src/hi50998980.dart';
import 'package:medallia_dxa/src/i534491748.dart';

import 'package:medallia_dxa/src/kmb249196592.dart';

class Mne1069794505 {
  final List<V666222992> nc986357487;
  //
  final List<V666222992> kav231563669;
  final Bya808718017 nk594444403;
  final Element ps815079326;
  final RenderObject n798986694;
  final double qpy91774328;
  Mne1069794505({
    required this.nc986357487,
    required this.kav231563669,
    required this.nk594444403,
    required this.ps815079326,
    required this.n798986694,
    required this.qpy91774328,
  }) {
    _st397724423();
  }
  late Set<J859602958> _e983095160;
  Lub890753981? _a152721208;

  void _st397724423() {
    List<V666222992>? snn587705079 =
        _qj39236677(nc986357487: nc986357487);

    BuildContext? u989839314 = ps815079326;
    if (snn587705079 != null) {
      assert(snn587705079.first is Lub890753981);
      _a152721208 =
          snn587705079.first as Lub890753981;
      u989839314 = _a152721208?.lqo304972968;
      if (u989839314 == null) {
        throw O901570487('Context not ready');
      }
    } else {
      snn587705079 = nc986357487;
    }

    final aa751075247 = _ugk261380541(
      snn587705079: snn587705079,
      u989839314: u989839314,
      kav231563669: kav231563669,
    );

    final Set<RenderObject> yrf603810630 =
        aa751075247
            .where((oif643259628) => oif643259628.m753637037)
            .toSet();

    final Rect ddv623709301 = n798986694.qyd666269368;
    final Offset mc725285449 = Offset(ddv623709301.left, ddv623709301.top);
    _e983095160 = _cyy613341909(
      yrf603810630,
      n798986694,
      mc725285449,
      qpy91774328,
    );
  }

  Set<J859602958> hc744704839() => _e983095160;

  Lub890753981? w866297469() => _a152721208;

  RenderObject? kio255166508(
    V666222992 w866297469,
  ) =>
      w866297469.lqo304972968?.findRenderObject();

  Set<RenderObject> _ugk261380541({
    required BuildContext u989839314,
    required List<V666222992> snn587705079,
    required List<V666222992> kav231563669,
  }) {
    final List<BuildContext> vr46230192 = [];
    for (final lzh67975639 in kav231563669) {
      if (lzh67975639.lqo304972968 != null) {
        vr46230192.add(lzh67975639.lqo304972968!);
      }
    }

    final aa751075247 =
        nk594444403.q535478739(
      ngq506136482: u989839314,
      ttj539556884: vr46230192,
    );
    for (var uym499529794 = 0; uym499529794 < snn587705079.length; uym499529794++) {
      final BuildContext? ngq506136482 = snn587705079[uym499529794].lqo304972968;
      if (ngq506136482 == null) throw O901570487('Route context not ready');

      aa751075247.addAll(
        nk594444403.q535478739(
          ngq506136482: ngq506136482,
          ttj539556884: vr46230192,
        ),
      );
    }
    return aa751075247;
  }

  //
  List<V666222992>? _qj39236677({
    required List<V666222992> nc986357487,
  }) {
    final int z824377629 = nc986357487.lastIndexWhere((v412700090) {
      return v412700090 is Lub890753981;
    });
    if (z824377629 == -1) {
      return null;
    }
    final List<V666222992> snn587705079 = List.of(
      nc986357487.getRange(z824377629, nc986357487.length),
    );
    return snn587705079;
  }

  Set<J859602958> _cyy613341909(
    Set<RenderObject> tt582722872,
    RenderObject cm236611397,
    Offset t557611714,
    double qpy91774328,
  ) {
    final Set<J859602958> rsz641667247 = {};

    tt582722872.removeWhere((v412700090) => v412700090.attached == false);
    for (final oif643259628 in tt582722872) {
      rsz641667247.add(
        _wkn420328991(
          oif643259628,
          cm236611397,
          t557611714,
          qpy91774328,
        ),
      );
    }
    return rsz641667247;
  }

  J859602958 _wkn420328991(
    RenderObject oif643259628,
    RenderObject cm236611397,
    Offset t557611714,
    double qpy91774328,
  ) {
    late J859602958 w163313094;
    oif643259628.tcv236863484(cm236611397).fg265147623((kol383824927) {
      w163313094 = J859602958(
        kol383824927.n976996551.shift(t557611714).bse268644337(1 / qpy91774328),
        kol383824927.tql172218937,
        kol383824927.afg567093192,
      );
    });
    return w163313094;
  }
}
