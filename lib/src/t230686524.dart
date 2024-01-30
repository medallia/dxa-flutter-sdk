//
import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/gaj151963929.dart';
import 'package:medallia_dxa/src/v741862370.dart';
import 'package:medallia_dxa/src/l209816361.dart';
import 'package:medallia_dxa/src/fxd173740477.dart';
import 'package:medallia_dxa/src/yh452801885.dart';
import 'package:medallia_dxa/src/ng304042909.dart';

class Fzs187482390 with O764603371 {
  final Qk808717878 rns594444420;
  final WidgetsBinding syo277876576;
  Paint get _jn786790952 =>
      Paint()..color = Bc583050315.i892083404.kpt238485934.hl36789972;
  final Paint _ko418987901 = Paint()
    ..color = const Color.fromARGB(255, 255, 255, 255)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  Fzs187482390({
    required this.rns594444420,
    required this.syo277876576,
  });
  Future<ByteData?> f533881499({
    required Xbi686664192 em662083084,
    required VoidCallback jp269944405,
    required VoidCallback c981023781,
    required Function(Size) k954940397,
  }) async {
    final Element vai55349357 = syo277876576.tty353676024!;
    final RenderObject? k798986545 = vai55349357.renderObject;
    assert(k798986545 != null);
    if (k798986545 == null) return null;
    RenderObject lrb715369774 = k798986545;
    final double i91774351 =
        syo277876576.platformDispatcher.views.first.devicePixelRatio;

    Set<Oh859603193> fc365319389 = {};

    final eyj378263927 = Vnq1069794366(
      rns594444420: rns594444420,
      k986357272: em662083084.v399594343,
      e231563618: em662083084.e231563618,
      vai55349357: vai55349357,
      k798986545: k798986545,
      i91774351: i91774351,
    );

    //
    //
    //
    eyj378263927
        .sdm255166683(em662083084)
        .qzo265147408((i153558568) {
      if (i153558568 != null) {
        lrb715369774 = i153558568;
      }
    });

    fc365319389 = eyj378263927.bdg744704944();

    late final double xr381611898;
    late final double fob318632172;
    syo277876576.cw584947999.size.qzo265147408((arq5430653) {
      k954940397(arq5430653);
      xr381611898 = arq5430653.width;
      fob318632172 = arq5430653.height;
    });

    final ox1071712793 = ui.PictureRecorder();
    late final Offset zj567264342;
    lrb715369774.hl666269263.qzo265147408((c905015019) {
      zj567264342 = Offset(c905015019.left, c905015019.top);
    });

    late ui.Image j361530861;

    return pt729888112<ByteData?>(
      tx491324109: true,
      tmi822065232: () async {
        try {
          jp269944405();

          final ui.SceneBuilder tuh504793126 = ui.SceneBuilder();
          final Matrix4 np546506984 = Matrix4.identity();
          if (lrb715369774 is RenderRepaintBoundary) {
            final Rect c905015019 = lrb715369774.hl666269263;
            final Rect ci814475217 = lrb715369774
                .s236863243(k798986545)
                .ns976996400;

            final double f716031124 =
                (ci814475217.width / c905015019.width) / i91774351;
            final double pr954753049 =
                (ci814475217.height / c905015019.height) / i91774351;

            np546506984.scale(f716031124, pr954753049);
          } else {
            np546506984.scale(1 / i91774351, 1 / i91774351);
          }
          tuh504793126.pushTransform(np546506984.storage);
          //
          final ui.Scene? yai550632494 = lrb715369774.layer?.buildScene(tuh504793126);
          if (yai550632494 == null) return null;
          j361530861 = await yai550632494.toImage(xr381611898.ceil(), fob318632172.ceil());

          yai550632494.dispose();
        } catch (_) {
          c981023781();
          return null;
        }

        final do241398092 = Canvas(
          ox1071712793,
        );
        do241398092.drawImage(j361530861, zj567264342, Paint());
        j361530861.dispose();
        _fri329497763(do241398092, fc365319389);

        final thk153992147 = await ox1071712793.endRecording().toImage(
              xr381611898.ceil(),
              fob318632172.ceil(),
            );
        final znc323107924 =
            await thk153992147.toByteData(format: ui.ImageByteFormat.png);
        return znc323107924;
      },
    );
  }

  void _fri329497763(
    Canvas do241398092,
    Set<Oh859603193> k641667160,
  ) {
    for (final qi163312945 in k641667160) {
      final fq764049775 = Path();
      final ns976996400 = qi163312945.ns976996400;
      final xr381611898 = ns976996400.right - ns976996400.left;
      final fob318632172 = ns976996400.bottom - ns976996400.top;

      final am76814879 = xr381611898 * qi163312945.qgl172219086;
      final p669128768 = xr381611898 * qi163312945.y567093055;
      final y550270120 = fob318632172 * qi163312945.y567093055;
      final wg232479223 = fob318632172 * qi163312945.qgl172219086;

      //
      fq764049775.moveTo(ns976996400.left, ns976996400.top);
      //
      fq764049775.lineTo(ns976996400.left + am76814879, ns976996400.top + p669128768);
      //
      fq764049775.lineTo(
        ns976996400.left + am76814879 - y550270120,
        ns976996400.top + p669128768 + wg232479223,
      );
      //
      fq764049775.lineTo(ns976996400.left - y550270120, ns976996400.top + wg232479223);
      //
      fq764049775.close();
      do241398092.drawPath(fq764049775, _jn786790952);

      do241398092.drawPath(fq764049775, _ko418987901);
    }
  }
}
