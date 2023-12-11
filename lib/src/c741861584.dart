//

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/h151964203.dart';
import 'package:medallia_dxa/src/b943817878.dart';
import 'package:medallia_dxa/src/z209815579.dart';

import 'package:medallia_dxa/src/pr304042159.dart';

class C1069795084 {
  final List<X958539025> y986357034;
  //
  final List<X958539025> ry685065003;
  final Sf808717572 ft594445238;
  final Element r55350111;
  final RenderObject wec798986755;
  final double jm91774653;
  C1069795084({
    required this.y986357034,
    required this.ry685065003,
    required this.ft594445238,
    required this.r55350111,
    required this.wec798986755,
    required this.jm91774653,
  }) {
    _lx397723842();
  }
  late Set<Bio859603915> _hob983094461;
  RenderObject? _sa517635939;
  void _lx397723842() {
    List<X958539025>? yv587704626 =
        _ph973554889(y986357034: y986357034);

    BuildContext? id989838359 = r55350111;
    if (yv587704626 != null) {
      id989838359 = yv587704626.first.gy304973677;
      if (id989838359 == null) {
        throw StateError('Context not ready');
      }
      _sa517635939 = id989838359.findRenderObject();
    } else {
      yv587704626 = y986357034;
    }

    final k751074410 = _h261380728(
      yv587704626: yv587704626,
      id989838359: id989838359,
      bnm878440012: yv587704626.first.uw1006263205,
      ry685065003: ry685065003,
    );

    final Set<RenderObject> r603809923 =
        k751074410
            .where((v643260201) => v643260201.u753636712)
            .toSet();

    final Rect w623710128 = wec798986755.m666269053;
    final Offset tq725285260 = Offset(w623710128.left, w623710128.top);
    _hob983094461 = _xwd613341456(
      r603809923,
      wec798986755,
      tq725285260,
      jm91774653,
    );
  }

  Set<Bio859603915> mxr744704130() => _hob983094461;

  RenderObject? sfx255167465(W686663986 ber662082878) =>
      _sa517635939;

  Set<RenderObject> _h261380728({
    required BuildContext id989838359,
    required BuildContext bnm878440012,
    required List<X958539025> yv587704626,
    required List<X958539025> ry685065003,
  }) {
    final List<BuildContext> ts840078738 = [];
    for (final dxaRoute in ry685065003) {
      if (dxaRoute.gy304973677 != null) {
        ts840078738.add(dxaRoute.gy304973677!);
      }
    }

    final k751074410 =
        ft594445238.c535478806(
      p506135655: id989838359,
      o539557841: ts840078738,
    );
    for (var jm499530631 = 0; jm499530631 < yv587704626.length; jm499530631++) {
      final BuildContext? p506135655 = yv587704626[jm499530631].gy304973677;
      if (p506135655 == null) throw StateError('Route context not ready');

      k751074410.addAll(
        ft594445238.c535478806(
          p506135655: p506135655,
          o539557841: ts840078738,
        ),
      );
    }
    return k751074410;
  }

  List<X958539025>? _ph973554889({
    required List<X958539025> y986357034,
  }) {
    final int zw824378072 = y986357034.lastIndexWhere((jnk412700287) {
      return jnk412700287.vm447820061 == false;
    });
    if (zw824378072 == -1) {
      return null;
    }
    final List<X958539025> yv587704626 = List.of(
      y986357034.getRange(zw824378072, y986357034.length),
    );
    return yv587704626;
  }

  Set<Bio859603915> _xwd613341456(
    Set<RenderObject> wf582723325,
    RenderObject pjl236610688,
    Offset kx557611271,
    double jm91774653,
  ) {
    final Set<Bio859603915> b641667946 = {};

    wf582723325.removeWhere((jnk412700287) => jnk412700287.attached == false);
    for (final renderObject in wf582723325) {
      b641667946.add(
        _c420328922(
          renderObject,
          pjl236610688,
          kx557611271,
          jm91774653,
        ),
      );
    }
    return b641667946;
  }

  Bio859603915 _c420328922(
    RenderObject v643260201,
    RenderObject pjl236610688,
    Offset kx557611271,
    double jm91774653,
  ) {
    late Bio859603915 sh163313155;
    v643260201.vri236862521(pjl236610688).hd265148194((rw383825882) {
      sh163313155 = Bio859603915(
        rw383825882.kn976997122.shift(kx557611271).dwq268643380(1 / jm91774653),
        rw383825882.y172218876,
        rw383825882.uj567092237,
      );
    });
    return sh163313155;
  }
}
