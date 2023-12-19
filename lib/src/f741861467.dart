//

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/x151964320.dart';
import 'package:medallia_dxa/src/v943817757.dart';
import 'package:medallia_dxa/src/x209815696.dart';

import 'package:medallia_dxa/src/e304042020.dart';

class G1069795207 {
  final List<Xv958539162> enx986357153;
  //
  final List<Xv958539162> rh685065120;
  final Xd808717711 a594445117;
  final Element mjg55350228;
  final RenderObject xae798986888;
  final double ti91774518;
  G1069795207({
    required this.enx986357153,
    required this.rh685065120,
    required this.a594445117,
    required this.mjg55350228,
    required this.xae798986888,
    required this.ti91774518,
  }) {
    _xko397723721();
  }
  late Set<Bo859603776> _vol983094326;
  RenderObject? _k517636072;
  void _xko397723721() {
    List<Xv958539162>? c587704761 =
        _ht973554754(enx986357153: enx986357153);

    BuildContext? z989838492 = mjg55350228;
    if (c587704761 != null) {
      z989838492 = c587704761.first.m304973798;
      if (z989838492 == null) {
        throw StateError('Context not ready');
      }
      _k517636072 = z989838492.findRenderObject();
    } else {
      c587704761 = enx986357153;
    }

    final ql751074529 = _mgy261380851(
      c587704761: c587704761,
      z989838492: z989838492,
      a878440135: c587704761.first.mbs1006263086,
      rh685065120: rh685065120,
    );

    final Set<RenderObject> j603809800 =
        ql751074529
            .where((xv643260322) => xv643260322.jd753636835)
            .toSet();

    final Rect bmq623710011 = xae798986888.ub666269174;
    final Offset q725285127 = Offset(bmq623710011.left, bmq623710011.top);
    _vol983094326 = _nff613341595(
      j603809800,
      xae798986888,
      q725285127,
      ti91774518,
    );
  }

  Set<Bo859603776> pr744704009() => _vol983094326;

  RenderObject? b255167330(Ib686664121 xc662082997) =>
      _k517636072;

  Set<RenderObject> _mgy261380851({
    required BuildContext z989838492,
    required BuildContext a878440135,
    required List<Xv958539162> c587704761,
    required List<Xv958539162> rh685065120,
  }) {
    final List<BuildContext> sg840078617 = [];
    for (final dxaRoute in rh685065120) {
      if (dxaRoute.m304973798 != null) {
        sg840078617.add(dxaRoute.m304973798!);
      }
    }

    final ql751074529 =
        a594445117.jbc535478941(
      s506135788: z989838492,
      rjn539557722: sg840078617,
    );
    for (var pp499530508 = 0; pp499530508 < c587704761.length; pp499530508++) {
      final BuildContext? s506135788 = c587704761[pp499530508].m304973798;
      if (s506135788 == null) throw StateError('Route context not ready');

      ql751074529.addAll(
        a594445117.jbc535478941(
          s506135788: s506135788,
          rjn539557722: sg840078617,
        ),
      );
    }
    return ql751074529;
  }

  List<Xv958539162>? _ht973554754({
    required List<Xv958539162> enx986357153,
  }) {
    final int gp824377939 = enx986357153.lastIndexWhere((v412700404) {
      return v412700404.hv447820182 == false;
    });
    if (gp824377939 == -1) {
      return null;
    }
    final List<Xv958539162> c587704761 = List.of(
      enx986357153.getRange(gp824377939, enx986357153.length),
    );
    return c587704761;
  }

  Set<Bo859603776> _nff613341595(
    Set<RenderObject> osa582723190,
    RenderObject or236610571,
    Offset u557611404,
    double ti91774518,
  ) {
    final Set<Bo859603776> mrf641668065 = {};

    osa582723190.removeWhere((v412700404) => v412700404.attached == false);
    for (final renderObject in osa582723190) {
      mrf641668065.add(
        _zs420328785(
          renderObject,
          or236610571,
          u557611404,
          ti91774518,
        ),
      );
    }
    return mrf641668065;
  }

  Bo859603776 _zs420328785(
    RenderObject xv643260322,
    RenderObject or236610571,
    Offset u557611404,
    double ti91774518,
  ) {
    late Bo859603776 bl163313288;
    xv643260322.cif236862642(or236610571).m265148329((sc383825745) {
      bl163313288 = Bo859603776(
        sc383825745.xr976997257.shift(u557611404).b268643519(1 / ti91774518),
        sc383825745.hze172218743,
        sc383825745.yab567092358,
      );
    });
    return bl163313288;
  }
}
