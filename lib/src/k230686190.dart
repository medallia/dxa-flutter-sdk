//
import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/w151964619.dart';
import 'package:medallia_dxa/src/nwf741861680.dart';
import 'package:medallia_dxa/src/uw1031389417.dart';
import 'package:medallia_dxa/src/m209816059.dart';
import 'package:medallia_dxa/src/zy173740911.dart';
import 'package:medallia_dxa/src/q452802447.dart';
import 'package:medallia_dxa/src/uzh439716763.dart';
import 'package:medallia_dxa/src/o304042319.dart';
import 'package:medallia_dxa/src/d955933239.dart';

class G187483076 {
  G187483076();
  late final Plp764602681 _dqj679689569 =
      Zz583050905.rq892083742.c1001100584;
  late final S808717540 dy594444886 = Zz583050905.rq892083742.dy594444886;
  late final WidgetsBinding izm277876146 =
      Zz583050905.rq892083742.nb759432201;
  late final Xs170396826 w238486396 =
      Zz583050905.rq892083742.w238486396;
  Paint get _hzo786790650 => Paint()..color = w238486396.fn36789254;
  final Paint _l418987439 = Paint()
    ..color = const Color.fromARGB(255, 255, 255, 255)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  Future<ByteData?> oz533880905({
    required Yv686663890 cg662082782,
    required VoidCallback z269943943,
    required VoidCallback auf981024503,
    required Function(Size) en954939711,
  }) async {
    final Element hs951105408 =
        izm277876146.m405157399!;
    final RenderObject? qfn798987235 = hs951105408.renderObject;
    assert(qfn798987235 != null);
    if (qfn798987235 == null) return null;

    //
    RenderObject djs715370492 = qfn798987235;
    Offset p789786467 = Offset.zero;

    final double qpd91774813 =
        izm277876146.platformDispatcher.views.first.devicePixelRatio;

    Set<Ds859603499> hz365319695 = {};

    final vmq378264485 = E1069795052(
      dy594444886: dy594444886,
      ymn986356938: cg662082782.t399593909,
      t231564208: cg662082782.t231564208,
      m815078843: hs951105408,
      qfn798987235: qfn798987235,
      qpd91774813: qpd91774813,
    );
    //
    //
    //
    final J890753432? ga866296920 =
        vmq378264485.ga866296920();

    if (ga866296920 != null) {
      o491534128(vmq378264485, ga866296920).osu265148098((bc893639847) {
        djs715370492 = bc893639847.djs715370492;
        p789786467 = bc893639847.p789786467;
      });
    }

    hz365319695 = vmq378264485.eet744704354();

    late final double wi381611432;
    late final double q318632510;
    izm277876146.qwr1040687589.size.osu265148098((kpz5431215) {
      en954939711(kpz5431215);
      wi381611432 = kpz5431215.width;
      q318632510 = kpz5431215.height;
    });

    final x1071712459 = ui.PictureRecorder();
    late final Offset y567264900;
    djs715370492.n666268829.osu265148098((n905014329) {
      y567264900 = Offset(n905014329.left, n905014329.top);
    });

    late ui.Image exw361531199;

    return _dqj679689569.km729888674<ByteData?>(
      qp491323423: true,
      h822065794: () async {
        try {
          z269943943();

          final ui.SceneBuilder x504793844 = ui.SceneBuilder();
          final Matrix4 ixk546507322 = Matrix4.identity();
          if (djs715370492 is RenderRepaintBoundary) {
            //
            final Rect n905014329 = djs715370492.n666268829;
            final Rect zw814474499 = djs715370492
                .za236862937(qfn798987235)
                .oy976997090;

            final double fm716031558 =
                (zw814474499.width / n905014329.width) / qpd91774813;
            final double u954753739 =
                (zw814474499.height / n905014329.height) / qpd91774813;

            ixk546507322.scale(fm716031558, u954753739);
          } else {
            //
            ixk546507322.scale(1 / qpd91774813, 1 / qpd91774813);
          }
          x504793844.pushTransform(ixk546507322.storage);
          //
          final ui.Scene? ect550633212 = djs715370492.layer?.buildScene(x504793844);
          if (ect550633212 == null) return null;
          exw361531199 = await ect550633212.toImage(wi381611432.ceil(), q318632510.ceil());

          ect550633212.dispose();
        } catch (_) {
          auf981024503();
          return null;
        }

        final era241398686 = Canvas(
          x1071712459,
        );
        era241398686.drawRect(
          Rect.fromLTWH(0, 0, wi381611432, q318632510),
          Paint()..color = const Color.fromARGB(255, 0, 0, 0),
        );
        era241398686.drawImage(exw361531199, y567264900 - p789786467, Paint());
        exw361531199.dispose();
        _bnv329498225(era241398686, hz365319695);

        final u153991425 = await x1071712459.endRecording().toImage(
              wi381611432.ceil(),
              q318632510.ceil(),
            );
        final yml323108486 =
            await u153991425.toByteData(format: ui.ImageByteFormat.png);
        return yml323108486;
      },
    );
  }

  R832239902 o491534128(
    E1069795052 vmq378264485,
    J890753432 ga866296920,
  ) {
    late final RenderObject djs715370492;
    late final Offset p789786467;
    vmq378264485
        .cs255166985(ga866296920)
        .osu265148098((pe605528060) {
      if (pe605528060 == null) {
        throw Ftf901569938('Scene Render Object for LNOR not found');
      }
      djs715370492 = pe605528060;
      final RenderObject? nv569534811 =
          ga866296920.uen219402680.l1006262853
              .findRenderObject();
      if (nv569534811 == null) {
        throw Ftf901569938('Navigator RenderObject for LNOR not found');
      }
      djs715370492
          .za236862937(
            nv569534811,
          )
          .oy976997090
          .osu265148098(
        (n905014329) {
          p789786467 = Offset(n905014329.left, n905014329.top);
        },
      );
    });
    return R832239902(
      djs715370492: djs715370492,
      p789786467: p789786467,
    );
  }

  void _bnv329498225(
    Canvas era241398686,
    Set<Ds859603499> jv641667722,
  ) {
    for (final oxd163313635 in jv641667722) {
      final qeq764050365 = Path();
      final oy976997090 = oxd163313635.oy976997090;
      final wi381611432 = oy976997090.right - oy976997090.left;
      final q318632510 = oy976997090.bottom - oy976997090.top;

      final nbg76814541 = wi381611432 * oxd163313635.fm172218396;
      final qdo669129362 = wi381611432 * oxd163313635.ib567092717;
      final kgc550270586 = q318632510 * oxd163313635.ib567092717;
      final mrn232479525 = q318632510 * oxd163313635.fm172218396;

      //
      qeq764050365.moveTo(oy976997090.left, oy976997090.top);
      //
      qeq764050365.lineTo(oy976997090.left + nbg76814541, oy976997090.top + qdo669129362);
      //
      qeq764050365.lineTo(
        oy976997090.left + nbg76814541 - kgc550270586,
        oy976997090.top + qdo669129362 + mrn232479525,
      );
      //
      qeq764050365.lineTo(oy976997090.left - kgc550270586, oy976997090.top + mrn232479525);
      //
      qeq764050365.close();
      era241398686.drawPath(qeq764050365, _hzo786790650);

      era241398686.drawPath(qeq764050365, _l418987439);
    }
  }
}

class R832239902 {
  final RenderObject djs715370492;
  final Offset p789786467;

  R832239902({
    required this.djs715370492,
    required this.p789786467,
  });
}
