//
import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/x151964320.dart';
import 'package:medallia_dxa/src/f741861467.dart';
import 'package:medallia_dxa/src/x209815696.dart';
import 'package:medallia_dxa/src/gz173740548.dart';
import 'package:medallia_dxa/src/xtn452802276.dart';
import 'package:medallia_dxa/src/e304042020.dart';

class X187482799 with No764602450 {
  final Xd808717711 a594445117;
  final WidgetsBinding loq277875929;
  Paint get _sxv786790801 =>
      Paint()..color = Ka583051250.fc892084085.xvq238486039.f36789613;
  final Paint _p418987204 = Paint()
    ..color = const Color.fromARGB(255, 255, 255, 255)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  X187482799({
    required this.a594445117,
    required this.loq277875929,
  });
  Future<ByteData?> b533881122({
    required Ib686664121 xc662082997,
    required VoidCallback qxl269944300,
    required VoidCallback j981024668,
    required Function(Size) h954939476,
  }) async {
    final Element mjg55350228 = loq277875929.p353675585!;
    final RenderObject? xae798986888 = mjg55350228.renderObject;
    assert(xae798986888 != null);
    if (xae798986888 == null) return null;
    RenderObject brh715370135 = xae798986888;
    final double ti91774518 =
        loq277875929.platformDispatcher.views.first.devicePixelRatio;

    Set<Bo859603776> ppz365320036 = {};

    //
    if (!xc662082997.bt821949067) {
      j981024668();
      return null;
    }
    final c378264270 = G1069795207(
      a594445117: a594445117,
      enx986357153: xc662082997.enx986357153,
      rh685065120: xc662082997.rh685065120,
      mjg55350228: mjg55350228,
      xae798986888: xae798986888,
      ti91774518: ti91774518,
    );

    //
    //
    //
    c378264270
        .b255167330(xc662082997)
        .m265148329((umn153558417) {
      if (umn153558417 != null) {
        brh715370135 = umn153558417;
      }
    });

    ppz365320036 = c378264270.pr744704009();

    late final double ps381611203;
    late final double z318632789;
    loq277875929.oxf584948390.size.m265148329((zpf5430980) {
      h954939476(zpf5430980);
      ps381611203 = zpf5430980.width;
      z318632789 = zpf5430980.height;
    });

    final ie1071712672 = ui.PictureRecorder();
    late final Offset rz567265263;
    brh715370135.ub666269174.m265148329((i905014610) {
      rz567265263 = Offset(i905014610.left, i905014610.top);
    });

    late ui.Image n361530964;

    return qp729888457<ByteData?>(
      i491323764: true,
      dc822066153: () async {
        try {
          qxl269944300();

          final ui.SceneBuilder xw504794015 = ui.SceneBuilder();
          final Matrix4 cr546507601 = Matrix4.identity();
          if (brh715370135 is RenderRepaintBoundary) {
            final Rect i905014610 = brh715370135.ub666269174;
            final Rect oes814474344 = brh715370135
                .cif236862642(xae798986888)
                .xr976997257;

            final double lz716031789 =
                (oes814474344.width / i905014610.width) / ti91774518;
            final double ssk954753952 =
                (oes814474344.height / i905014610.height) / ti91774518;

            cr546507601.scale(lz716031789, ssk954753952);
          } else {
            cr546507601.scale(1 / ti91774518, 1 / ti91774518);
          }
          xw504794015.pushTransform(cr546507601.storage);
          //
          final ui.Scene? vjg550633367 = brh715370135.layer?.buildScene(xw504794015);
          if (vjg550633367 == null) return null;
          n361530964 = await vjg550633367.toImage(ps381611203.ceil(), z318632789.ceil());

          vjg550633367.dispose();
        } catch (_) {
          j981024668();
          return null;
        }

        final oml241398517 = Canvas(
          ie1071712672,
        );
        oml241398517.drawImage(n361530964, rz567265263, Paint());
        n361530964.dispose();
        _b329498394(oml241398517, ppz365320036);

        final mo153991274 = await ie1071712672.endRecording().toImage(
              ps381611203.ceil(),
              z318632789.ceil(),
            );
        final usr323108845 =
            await mo153991274.toByteData(format: ui.ImageByteFormat.png);
        return usr323108845;
      },
    );
  }

  void _b329498394(
    Canvas oml241398517,
    Set<Bo859603776> mrf641668065,
  ) {
    for (final coordinate in mrf641668065) {
      final e764050134 = Path();
      final xr976997257 = coordinate.xr976997257;
      final ps381611203 = xr976997257.right - xr976997257.left;
      final z318632789 = xr976997257.bottom - xr976997257.top;

      final qlw76814758 = ps381611203 * coordinate.hze172218743;
      final b669129721 = ps381611203 * coordinate.yab567092358;
      final cn550270737 = z318632789 * coordinate.yab567092358;
      final ksw232479310 = z318632789 * coordinate.hze172218743;

      //
      e764050134.moveTo(xr976997257.left, xr976997257.top);
      //
      e764050134.lineTo(xr976997257.left + qlw76814758, xr976997257.top + b669129721);
      //
      e764050134.lineTo(
        xr976997257.left + qlw76814758 - cn550270737,
        xr976997257.top + b669129721 + ksw232479310,
      );
      //
      e764050134.lineTo(xr976997257.left - cn550270737, xr976997257.top + ksw232479310);
      //
      e764050134.close();
      oml241398517.drawPath(e764050134, _sxv786790801);

      oml241398517.drawPath(e764050134, _p418987204);
    }
  }
}
