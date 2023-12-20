//
import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/ejt151964422.dart';
import 'package:medallia_dxa/src/ex741861885.dart';
import 'package:medallia_dxa/src/ld209815862.dart';
import 'package:medallia_dxa/src/wst173740962.dart';
import 'package:medallia_dxa/src/s452802370.dart';
import 'package:medallia_dxa/src/kua304042370.dart';

class Qh187482889 with C764602868 {
  final Jux808717353 ug594444955;
  final WidgetsBinding v277876095;
  Paint get _duh786790455 =>
      Paint()..color = Lgg583050836.dh892083923.n238486449.dog36789451;
  final Paint _gu418987362 = Paint()
    ..color = const Color.fromARGB(255, 255, 255, 255)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  Qh187482889({
    required this.ug594444955,
    required this.v277876095,
  });
  Future<ByteData?> gdg533880964({
    required Q686663711 f662082579,
    required VoidCallback d269943882,
    required VoidCallback xbn981024314,
    required Function(Size) r954939890,
  }) async {
    final Element jgc55349874 = v277876095.em353675495!;
    final RenderObject? jg798987054 = jgc55349874.renderObject;
    assert(jg798987054 != null);
    if (jg798987054 == null) return null;
    RenderObject m715370289 = jg798987054;
    final double nu91774864 =
        v277876095.platformDispatcher.views.first.devicePixelRatio;

    Set<Uke859603686> lw365319874 = {};

    //
    if (!f662082579.qip821949229) {
      xbn981024314();
      return null;
    }
    final xwc378264424 = S1069794849(
      ug594444955: ug594444955,
      l986356743: f662082579.l986356743,
      bid685064710: f662082579.bid685064710,
      jgc55349874: jgc55349874,
      jg798987054: jg798987054,
      nu91774864: nu91774864,
    );

    //
    //
    //
    xwc378264424
        .fu255167172(f662082579)
        .n265147919((l153558071) {
      if (l153558071 != null) {
        m715370289 = l153558071;
      }
    });

    lw365319874 = xwc378264424.f744704431();

    late final double to381611365;
    late final double v318632691;
    v277876095.ujh584948480.size.n265147919((vj5431138) {
      r954939890(vj5431138);
      to381611365 = vj5431138.width;
      v318632691 = vj5431138.height;
    });

    final amy1071712262 = ui.PictureRecorder();
    late final Offset ub567264841;
    m715370289.sh666268752.n265147919((cs905014516) {
      ub567264841 = Offset(cs905014516.left, cs905014516.top);
    });

    late ui.Image zim361531378;

    return i729888623<ByteData?>(
      r491323602: true,
      uh822065743: () async {
        try {
          d269943882();

          final ui.SceneBuilder gok504793657 = ui.SceneBuilder();
          final Matrix4 h546507511 = Matrix4.identity();
          if (m715370289 is RenderRepaintBoundary) {
            final Rect cs905014516 = m715370289.sh666268752;
            final Rect o814474702 = m715370289
                .fqp236862740(jg798987054)
                .g976996911;

            final double p716031627 =
                (o814474702.width / cs905014516.width) / nu91774864;
            final double f954753542 =
                (o814474702.height / cs905014516.height) / nu91774864;

            h546507511.scale(p716031627, f954753542);
          } else {
            h546507511.scale(1 / nu91774864, 1 / nu91774864);
          }
          gok504793657.pushTransform(h546507511.storage);
          //
          final ui.Scene? e550633009 = m715370289.layer?.buildScene(gok504793657);
          if (e550633009 == null) return null;
          zim361531378 = await e550633009.toImage(to381611365.ceil(), v318632691.ceil());

          e550633009.dispose();
        } catch (_) {
          xbn981024314();
          return null;
        }

        final fe241398611 = Canvas(
          amy1071712262,
        );
        fe241398611.drawImage(zim361531378, ub567264841, Paint());
        zim361531378.dispose();
        _v329498300(fe241398611, lw365319874);

        final cxt153991628 = await amy1071712262.endRecording().toImage(
              to381611365.ceil(),
              v318632691.ceil(),
            );
        final wum323108427 =
            await cxt153991628.toByteData(format: ui.ImageByteFormat.png);
        return wum323108427;
      },
    );
  }

  void _v329498300(
    Canvas fe241398611,
    Set<Uke859603686> qv641667655,
  ) {
    for (final coordinate in qv641667655) {
      final v764050288 = Path();
      final g976996911 = coordinate.g976996911;
      final to381611365 = g976996911.right - g976996911.left;
      final v318632691 = g976996911.bottom - g976996911.top;

      final p76814336 = to381611365 * coordinate.ihk172218577;
      final sq669129311 = to381611365 * coordinate.vhp567092512;
      final fg550270647 = v318632691 * coordinate.vhp567092512;
      final ib232479720 = v318632691 * coordinate.ihk172218577;

      //
      v764050288.moveTo(g976996911.left, g976996911.top);
      //
      v764050288.lineTo(g976996911.left + p76814336, g976996911.top + sq669129311);
      //
      v764050288.lineTo(
        g976996911.left + p76814336 - fg550270647,
        g976996911.top + sq669129311 + ib232479720,
      );
      //
      v764050288.lineTo(g976996911.left - fg550270647, g976996911.top + ib232479720);
      //
      v764050288.close();
      fe241398611.drawPath(v764050288, _duh786790455);

      fe241398611.drawPath(v764050288, _gu418987362);
    }
  }
}
