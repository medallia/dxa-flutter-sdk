//

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/ejt151964422.dart';
import 'package:medallia_dxa/src/o943818171.dart';
import 'package:medallia_dxa/src/ld209815862.dart';

import 'package:medallia_dxa/src/kua304042370.dart';

class S1069794849 {
  final List<Th958538812> l986356743;
  //
  final List<Th958538812> bid685064710;
  final Jux808717353 ug594444955;
  final Element jgc55349874;
  final RenderObject jg798987054;
  final double nu91774864;
  S1069794849({
    required this.l986356743,
    required this.bid685064710,
    required this.ug594444955,
    required this.jgc55349874,
    required this.jg798987054,
    required this.nu91774864,
  }) {
    _zlf397724143();
  }
  late Set<Uke859603686> _wrn983094672;
  RenderObject? _wzs517635662;
  void _zlf397724143() {
    List<Th958538812>? i587704351 =
        _c973555172(l986356743: l986356743);

    BuildContext? ssk989838650 = jgc55349874;
    if (i587704351 != null) {
      ssk989838650 = i587704351.first.uw304973376;
      if (ssk989838650 == null) {
        throw StateError('Context not ready');
      }
      _wzs517635662 = ssk989838650.findRenderObject();
    } else {
      i587704351 = l986356743;
    }

    final q751074631 = _hbe261380949(
      i587704351: i587704351,
      ssk989838650: ssk989838650,
      ag878440289: i587704351.first.nm1006262920,
      bid685064710: bid685064710,
    );

    final Set<RenderObject> qi603810222 =
        q751074631
            .where((ft643259908) => ft643259908.mvd753636421)
            .toSet();

    final Rect mlk623709853 = jg798987054.sh666268752;
    final Offset ya725285025 = Offset(mlk623709853.left, mlk623709853.top);
    _wrn983094672 = _qc613341245(
      qi603810222,
      jg798987054,
      ya725285025,
      nu91774864,
    );
  }

  Set<Uke859603686> f744704431() => _wrn983094672;

  RenderObject? fu255167172(Q686663711 f662082579) =>
      _wzs517635662;

  Set<RenderObject> _hbe261380949({
    required BuildContext ssk989838650,
    required BuildContext ag878440289,
    required List<Th958538812> i587704351,
    required List<Th958538812> bid685064710,
  }) {
    final List<BuildContext> vvy840078527 = [];
    for (final dxaRoute in bid685064710) {
      if (dxaRoute.uw304973376 != null) {
        vvy840078527.add(dxaRoute.uw304973376!);
      }
    }

    final q751074631 =
        ug594444955.j535479099(
      wp506135882: ssk989838650,
      gud539557628: vvy840078527,
    );
    for (var ww499530410 = 0; ww499530410 < i587704351.length; ww499530410++) {
      final BuildContext? wp506135882 = i587704351[ww499530410].uw304973376;
      if (wp506135882 == null) throw StateError('Route context not ready');

      q751074631.addAll(
        ug594444955.j535479099(
          wp506135882: wp506135882,
          gud539557628: vvy840078527,
        ),
      );
    }
    return q751074631;
  }

  List<Th958538812>? _c973555172({
    required List<Th958538812> l986356743,
  }) {
    final int bcs824378357 = l986356743.lastIndexWhere((b412700498) {
      return b412700498.ud447819824 == false;
    });
    if (bcs824378357 == -1) {
      return null;
    }
    final List<Th958538812> i587704351 = List.of(
      l986356743.getRange(bcs824378357, l986356743.length),
    );
    return i587704351;
  }

  Set<Uke859603686> _qc613341245(
    Set<RenderObject> hv582723536,
    RenderObject te236610989,
    Offset s557611050,
    double nu91774864,
  ) {
    final Set<Uke859603686> qv641667655 = {};

    hv582723536.removeWhere((b412700498) => b412700498.attached == false);
    for (final renderObject in hv582723536) {
      qv641667655.add(
        _f420328695(
          renderObject,
          te236610989,
          s557611050,
          nu91774864,
        ),
      );
    }
    return qv641667655;
  }

  Uke859603686 _f420328695(
    RenderObject ft643259908,
    RenderObject te236610989,
    Offset s557611050,
    double nu91774864,
  ) {
    late Uke859603686 hq163313454;
    ft643259908.fqp236862740(te236610989).n265147919((xut383825655) {
      hq163313454 = Uke859603686(
        xut383825655.g976996911.shift(s557611050).om268643609(1 / nu91774864),
        xut383825655.ihk172218577,
        xut383825655.vhp567092512,
      );
    });
    return hq163313454;
  }
}
