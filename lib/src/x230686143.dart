//
import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/sie151964570.dart';
import 'package:medallia_dxa/src/c741861729.dart';
import 'package:medallia_dxa/src/auw209815978.dart';
import 'package:medallia_dxa/src/d173740862.dart';
import 'package:medallia_dxa/src/l452802526.dart';
import 'package:medallia_dxa/src/u304042270.dart';

class Hmt187483029 {
  final O764602728 _pqb679689520;
  final Nk808717493 unz594444807;
  final WidgetsBinding fr277876195;
  Paint get _ib786790571 =>
      Paint()..color = Wx583050952.opf892083791.lps238486317.nk36789335;
  final Paint _nen418987518 = Paint()
    ..color = const Color.fromARGB(255, 255, 255, 255)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  Hmt187483029({
    required this.unz594444807,
    required this.fr277876195,
    required ioq1001100665,
  }) : _pqb679689520 = ioq1001100665;
  Future<ByteData?> enx533880856({
    required Vo686663811 wdv662082703,
    required VoidCallback hk269944022,
    required VoidCallback dv981024422,
    required Function(Size) j954939758,
  }) async {
    final Element n951105489 =
        fr277876195.ys405157446!;
    final RenderObject? oe798987186 = n951105489.renderObject;
    assert(oe798987186 != null);
    if (oe798987186 == null) return null;
    RenderObject fk715370413 = oe798987186;
    final double im91774732 =
        fr277876195.platformDispatcher.views.first.devicePixelRatio;

    Set<Nly859603578> ga365319774 = {};

    final h378264564 = W1069795005(
      unz594444807: unz594444807,
      rt986356891: wdv662082703.bug399593956,
      gqv231564257: wdv662082703.gqv231564257,
      to815078890: n951105489,
      oe798987186: oe798987186,
      im91774732: im91774732,
    );

    //
    //
    //
    h378264564
        .x255167064(wdv662082703)
        .rcm265148051((f153558187) {
      if (f153558187 != null) {
        fk715370413 = f153558187;
      }
    });

    ga365319774 = h378264564.t744704307();

    late final double n381611513;
    late final double ygp318632559;
    fr277876195.eg1040687540.size.rcm265148051((ppb5431294) {
      j954939758(ppb5431294);
      n381611513 = ppb5431294.width;
      ygp318632559 = ppb5431294.height;
    });

    final tn1071712410 = ui.PictureRecorder();
    late final Offset dd567264981;
    fk715370413.ph666268876.rcm265148051((kcd905014376) {
      dd567264981 = Offset(kcd905014376.left, kcd905014376.top);
    });

    late ui.Image k361531246;

    return _pqb679689520.ghl729888755<ByteData?>(
      nmf491323470: true,
      qci822065875: () async {
        try {
          hk269944022();

          final ui.SceneBuilder jwh504793765 = ui.SceneBuilder();
          final Matrix4 dn546507371 = Matrix4.identity();
          if (fk715370413 is RenderRepaintBoundary) {
            //
            final Rect kcd905014376 = fk715370413.ph666268876;
            final Rect w814474578 = fk715370413
                .n236862856(oe798987186)
                .g976997043;

            final double wi716031511 =
                (w814474578.width / kcd905014376.width) / im91774732;
            final double y954753690 =
                (w814474578.height / kcd905014376.height) / im91774732;

            dn546507371.scale(wi716031511, y954753690);
          } else {
            //
            dn546507371.scale(1 / im91774732, 1 / im91774732);
          }
          jwh504793765.pushTransform(dn546507371.storage);
          //
          final ui.Scene? igl550633133 = fk715370413.layer?.buildScene(jwh504793765);
          if (igl550633133 == null) return null;
          k361531246 = await igl550633133.toImage(n381611513.ceil(), ygp318632559.ceil());

          igl550633133.dispose();
        } catch (_) {
          dv981024422();
          return null;
        }

        final bmi241398735 = Canvas(
          tn1071712410,
        );
        bmi241398735.drawRect(
          Rect.fromLTWH(0, 0, n381611513, ygp318632559),
          Paint()..color = const Color.fromARGB(255, 0, 0, 0),
        );
        bmi241398735.drawImage(k361531246, dd567264981, Paint());
        k361531246.dispose();
        _s329498144(bmi241398735, ga365319774);

        final qw153991504 = await tn1071712410.endRecording().toImage(
              n381611513.ceil(),
              ygp318632559.ceil(),
            );
        final y323108567 =
            await qw153991504.toByteData(format: ui.ImageByteFormat.png);
        return y323108567;
      },
    );
  }

  void _s329498144(
    Canvas bmi241398735,
    Set<Nly859603578> zis641667803,
  ) {
    for (final to163313586 in zis641667803) {
      final b764050412 = Path();
      final g976997043 = to163313586.g976997043;
      final n381611513 = g976997043.right - g976997043.left;
      final ygp318632559 = g976997043.bottom - g976997043.top;

      final xt76814492 = n381611513 * to163313586.c172218445;
      final ttn669129411 = n381611513 * to163313586.r567092668;
      final ae550270507 = ygp318632559 * to163313586.r567092668;
      final zs232479604 = ygp318632559 * to163313586.c172218445;

      //
      b764050412.moveTo(g976997043.left, g976997043.top);
      //
      b764050412.lineTo(g976997043.left + xt76814492, g976997043.top + ttn669129411);
      //
      b764050412.lineTo(
        g976997043.left + xt76814492 - ae550270507,
        g976997043.top + ttn669129411 + zs232479604,
      );
      //
      b764050412.lineTo(g976997043.left - ae550270507, g976997043.top + zs232479604);
      //
      b764050412.close();
      bmi241398735.drawPath(b764050412, _ib786790571);

      bmi241398735.drawPath(b764050412, _nen418987518);
    }
  }
}
