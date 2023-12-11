//
import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/h151964203.dart';
import 'package:medallia_dxa/src/c741861584.dart';
import 'package:medallia_dxa/src/z209815579.dart';
import 'package:medallia_dxa/src/cfn173740687.dart';
import 'package:medallia_dxa/src/xwa452802159.dart';
import 'package:medallia_dxa/src/pr304042159.dart';

class Y187482660 with Wx764602585 {
  final Sf808717572 ft594445238;
  final WidgetsBinding wlp277875794;
  Paint get _t786790682 =>
      Paint()..color = V583051129.h892084222.lo238486172.h36789734;
  final Paint _v418987087 = Paint()
    ..color = const Color.fromARGB(255, 255, 255, 255)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  Y187482660({
    required this.ft594445238,
    required this.wlp277875794,
  });
  Future<ByteData?> u533881257({
    required W686663986 ber662082878,
    required VoidCallback dlw269944167,
    required VoidCallback ucz981024535,
    required Function(Size) i954939615,
  }) async {
    final Element r55350111 = wlp277875794.k353675722!;
    final RenderObject? wec798986755 = r55350111.renderObject;
    assert(wec798986755 != null);
    if (wec798986755 == null) return null;
    RenderObject f715370012 = wec798986755;
    final double jm91774653 =
        wlp277875794.platformDispatcher.views.first.devicePixelRatio;

    Set<Bio859603915> ut365320175 = {};

    //
    if (!ber662082878.xca821948928) {
      ucz981024535();
      return null;
    }
    final k378264133 = C1069795084(
      ft594445238: ft594445238,
      y986357034: ber662082878.y986357034,
      ry685065003: ber662082878.ry685065003,
      r55350111: r55350111,
      wec798986755: wec798986755,
      jm91774653: jm91774653,
    );

    //
    //
    //
    k378264133
        .sfx255167465(ber662082878)
        .hd265148194((pqr153558298) {
      if (pqr153558298 != null) {
        f715370012 = pqr153558298;
      }
    });

    ut365320175 = k378264133.mxr744704130();

    late final double h381611080;
    late final double z318632926;
    wlp277875794.zl584948269.size.hd265148194((hk5430863) {
      i954939615(hk5430863);
      h381611080 = hk5430863.width;
      z318632926 = hk5430863.height;
    });

    final e1071712555 = ui.PictureRecorder();
    late final Offset jv567265124;
    f715370012.m666269053.hd265148194((s905014745) {
      jv567265124 = Offset(s905014745.left, s905014745.top);
    });

    late ui.Image poi361531103;

    return j729888322<ByteData?>(
      vp491323903: true,
      fj822066018: () async {
        try {
          dlw269944167();

          final ui.SceneBuilder v504793876 = ui.SceneBuilder();
          final Matrix4 su546507738 = Matrix4.identity();
          if (f715370012 is RenderRepaintBoundary) {
            final Rect s905014745 = f715370012.m666269053;
            final Rect ffg814474467 = f715370012
                .vri236862521(wec798986755)
                .kn976997122;

            final double bm716031910 =
                (ffg814474467.width / s905014745.width) / jm91774653;
            final double m954753835 =
                (ffg814474467.height / s905014745.height) / jm91774653;

            su546507738.scale(bm716031910, m954753835);
          } else {
            su546507738.scale(1 / jm91774653, 1 / jm91774653);
          }
          v504793876.pushTransform(su546507738.storage);
          //
          final ui.Scene? v550633244 = f715370012.layer?.buildScene(v504793876);
          if (v550633244 == null) return null;
          poi361531103 = await v550633244.toImage(h381611080.ceil(), z318632926.ceil());

          v550633244.dispose();
        } catch (_) {
          ucz981024535();
          return null;
        }

        final mum241398398 = Canvas(
          e1071712555,
        );
        mum241398398.drawImage(poi361531103, jv567265124, Paint());
        poi361531103.dispose();
        _nh329498513(mum241398398, ut365320175);

        final zr153991393 = await e1071712555.endRecording().toImage(
              h381611080.ceil(),
              z318632926.ceil(),
            );
        final a323108710 =
            await zr153991393.toByteData(format: ui.ImageByteFormat.png);
        return a323108710;
      },
    );
  }

  void _nh329498513(
    Canvas mum241398398,
    Set<Bio859603915> b641667946,
  ) {
    for (final coordinate in b641667946) {
      final bn764050013 = Path();
      final kn976997122 = coordinate.kn976997122;
      final h381611080 = kn976997122.right - kn976997122.left;
      final z318632926 = kn976997122.bottom - kn976997122.top;

      final j76814637 = h381611080 * coordinate.y172218876;
      final vz669129586 = h381611080 * coordinate.uj567092237;
      final l550270874 = z318632926 * coordinate.uj567092237;
      final onj232479429 = z318632926 * coordinate.y172218876;

      //
      bn764050013.moveTo(kn976997122.left, kn976997122.top);
      //
      bn764050013.lineTo(kn976997122.left + j76814637, kn976997122.top + vz669129586);
      //
      bn764050013.lineTo(
        kn976997122.left + j76814637 - l550270874,
        kn976997122.top + vz669129586 + onj232479429,
      );
      //
      bn764050013.lineTo(kn976997122.left - l550270874, kn976997122.top + onj232479429);
      //
      bn764050013.close();
      mum241398398.drawPath(bn764050013, _t786790682);

      mum241398398.drawPath(bn764050013, _v418987087);
    }
  }
}
