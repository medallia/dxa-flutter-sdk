//
import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/ker151964282.dart';
import 'package:medallia_dxa/src/ic741861505.dart';
import 'package:medallia_dxa/src/sbd209815626.dart';
import 'package:medallia_dxa/src/n173740766.dart';
import 'package:medallia_dxa/src/oa452802110.dart';
import 'package:medallia_dxa/src/j304042238.dart';
import 'package:medallia_dxa/src/i955933574.dart';

class M187482741 {
  M187482741();
  late final Irn764602504 _evr679689424 =
      Klj583051048.yrd892084143.pr1001100441;
  late final Mf808717653 mt594445287 = Klj583051048.yrd892084143.mt594445287;
  late final WidgetsBinding fnd277875715 =
      Klj583051048.yrd892084143.wf759432632;
  late final Zao170396971 e238486221 =
      Klj583051048.yrd892084143.e238486221;
  Paint get _q786790731 => Paint()..color = e238486221.k36789687;
  final Paint _p418987038 = Paint()
    ..color = const Color.fromARGB(255, 255, 255, 255)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  Future<ByteData?> vot533881336({
    required H686664035 kju662082927,
    required VoidCallback kdf269944118,
    required VoidCallback nt981024582,
    required Function(Size) rw954939534,
  }) async {
    final Element ina951105073 =
        fnd277875715.eu405157798!;
    final RenderObject? ng798986834 = ina951105073.renderObject;
    assert(ng798986834 != null);
    if (ng798986834 == null) return null;
    RenderObject dmt715370061 = ng798986834;
    final double d91774700 =
        fnd277875715.platformDispatcher.views.first.devicePixelRatio;

    Set<G859603866> dw365320126 = {};

    final ddq378264084 = Ehd1069795165(
      mt594445287: mt594445287,
      x986357115: kju662082927.u399593476,
      yq231563777: kju662082927.yq231563777,
      vk815078410: ina951105073,
      ng798986834: ng798986834,
      d91774700: d91774700,
    );

    //
    //
    //
    ddq378264084
        .m255167416(kju662082927)
        .mlj265148275((uz153558347) {
      if (uz153558347 != null) {
        dmt715370061 = uz153558347;
      }
    });

    dw365320126 = ddq378264084.baw744704211();

    late final double t381611033;
    late final double cvw318632847;
    fnd277875715.pba1040687188.size.mlj265148275((bgq5430814) {
      rw954939534(bgq5430814);
      t381611033 = bgq5430814.width;
      cvw318632847 = bgq5430814.height;
    });

    final ojz1071712634 = ui.PictureRecorder();
    late final Offset snh567265077;
    dmt715370061.e666268972.mlj265148275((dct905014664) {
      snh567265077 = Offset(dct905014664.left, dct905014664.top);
    });

    late ui.Image bu361531022;

    return _evr679689424.gm729888275<ByteData?>(
      egm491323822: true,
      m822065971: () async {
        try {
          kdf269944118();

          final ui.SceneBuilder zv504793925 = ui.SceneBuilder();
          final Matrix4 ck546507659 = Matrix4.identity();
          if (dmt715370061 is RenderRepaintBoundary) {
            //
            final Rect dct905014664 = dmt715370061.e666268972;
            final Rect yx814474418 = dmt715370061
                .w236862568(ng798986834)
                .sli976997203;

            final double h716031991 =
                (yx814474418.width / dct905014664.width) / d91774700;
            final double b954753914 =
                (yx814474418.height / dct905014664.height) / d91774700;

            ck546507659.scale(h716031991, b954753914);
          } else {
            //
            ck546507659.scale(1 / d91774700, 1 / d91774700);
          }
          zv504793925.pushTransform(ck546507659.storage);
          //
          final ui.Scene? to550633293 = dmt715370061.layer?.buildScene(zv504793925);
          if (to550633293 == null) return null;
          bu361531022 = await to550633293.toImage(t381611033.ceil(), cvw318632847.ceil());

          to550633293.dispose();
        } catch (_) {
          nt981024582();
          return null;
        }

        final m241398319 = Canvas(
          ojz1071712634,
        );
        m241398319.drawRect(
          Rect.fromLTWH(0, 0, t381611033, cvw318632847),
          Paint()..color = const Color.fromARGB(255, 0, 0, 0),
        );
        m241398319.drawImage(bu361531022, snh567265077, Paint());
        bu361531022.dispose();
        _h329498560(m241398319, dw365320126);

        final rz153991344 = await ojz1071712634.endRecording().toImage(
              t381611033.ceil(),
              cvw318632847.ceil(),
            );
        final t323108663 =
            await rz153991344.toByteData(format: ui.ImageByteFormat.png);
        return t323108663;
      },
    );
  }

  void _h329498560(
    Canvas m241398319,
    Set<G859603866> aj641667899,
  ) {
    for (final wet163313234 in aj641667899) {
      final hwf764049932 = Path();
      final sli976997203 = wet163313234.sli976997203;
      final t381611033 = sli976997203.right - sli976997203.left;
      final cvw318632847 = sli976997203.bottom - sli976997203.top;

      final q76814716 = t381611033 * wet163313234.qxm172218797;
      final gh669129507 = t381611033 * wet163313234.zgr567092316;
      final tcx550270923 = cvw318632847 * wet163313234.zgr567092316;
      final jyo232479380 = cvw318632847 * wet163313234.qxm172218797;

      //
      hwf764049932.moveTo(sli976997203.left, sli976997203.top);
      //
      hwf764049932.lineTo(sli976997203.left + q76814716, sli976997203.top + gh669129507);
      //
      hwf764049932.lineTo(
        sli976997203.left + q76814716 - tcx550270923,
        sli976997203.top + gh669129507 + jyo232479380,
      );
      //
      hwf764049932.lineTo(sli976997203.left - tcx550270923, sli976997203.top + jyo232479380);
      //
      hwf764049932.close();
      m241398319.drawPath(hwf764049932, _q786790731);

      m241398319.drawPath(hwf764049932, _p418987038);
    }
  }
}
