//
import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/jto151963852.dart';
import 'package:medallia_dxa/src/j741861943.dart';
import 'package:medallia_dxa/src/pk209816316.dart';
import 'package:medallia_dxa/src/oph173740136.dart';
import 'package:medallia_dxa/src/feb452801672.dart';
import 'package:medallia_dxa/src/e304042568.dart';

class V187482307 with Jh764602942 {
  final Khd808718307 lmb594444625;
  final WidgetsBinding x277876405;
  Paint get _t786791421 =>
      Paint()..color = R583050654.fwk892083481.l238485627.rqm36790017;
  final Paint _ucz418987688 = Paint()
    ..color = const Color.fromARGB(255, 255, 255, 255)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  V187482307({
    required this.lmb594444625,
    required this.x277876405,
  });
  Future<ByteData?> bxm533881678({
    required P686664661 l662083545,
    required VoidCallback xkh269944704,
    required VoidCallback iu981024240,
    required Function(Size) gw954939960,
  }) async {
    final Element sag951104647 =
        x277876405.t405157136!;
    final RenderObject? lz798986468 = sag951104647.renderObject;
    assert(lz798986468 != null);
    if (lz798986468 == null) return null;
    RenderObject nnd715369723 = lz798986468;
    final double p91774042 =
        x277876405.platformDispatcher.views.first.devicePixelRatio;

    Set<Oj859603244> bp365319432 = {};

    final p378263714 = Zz1069794795(
      lmb594444625: lmb594444625,
      j986357709: l662083545.zu399594162,
      lcu231563447: l662083545.lcu231563447,
      ddp815079100: sag951104647,
      lz798986468: lz798986468,
      p91774042: p91774042,
    );

    //
    //
    //
    p378263714
        .a255166734(l662083545)
        .jyg265147845((uo153559037) {
      if (uo153559037 != null) {
        nnd715369723 = uo153559037;
      }
    });

    bp365319432 = p378263714.y744704613();

    late final double c381611695;
    late final double hk318632249;
    x277876405.yta1040687842.size.jyg265147845((un5430440) {
      gw954939960(un5430440);
      c381611695 = un5430440.width;
      hk318632249 = un5430440.height;
    });

    final j1071713228 = ui.PictureRecorder();
    late final Offset g567264643;
    nnd715369723.u666269594.jyg265147845((ziq905015102) {
      g567264643 = Offset(ziq905015102.left, ziq905015102.top);
    });

    late ui.Image frn361530424;

    return tm729887909<ByteData?>(
      ur491324184: true,
      vp822065541: () async {
        try {
          xkh269944704();

          final ui.SceneBuilder b504793587 = ui.SceneBuilder();
          final Matrix4 tkl546507069 = Matrix4.identity();
          if (nnd715369723 is RenderRepaintBoundary) {
            final Rect ziq905015102 = nnd715369723.u666269594;
            final Rect yk814474756 = nnd715369723
                .c236863198(lz798986468)
                .ib976996837;

            final double v716031297 =
                (yk814474756.width / ziq905015102.width) / p91774042;
            final double pdp954753484 =
                (yk814474756.height / ziq905015102.height) / p91774042;

            tkl546507069.scale(v716031297, pdp954753484);
          } else {
            tkl546507069.scale(1 / p91774042, 1 / p91774042);
          }
          b504793587.pushTransform(tkl546507069.storage);
          //
          final ui.Scene? qnw550632955 = nnd715369723.layer?.buildScene(b504793587);
          if (qnw550632955 == null) return null;
          frn361530424 = await qnw550632955.toImage(c381611695.ceil(), hk318632249.ceil());

          qnw550632955.dispose();
        } catch (_) {
          iu981024240();
          return null;
        }

        final gfd241397913 = Canvas(
          j1071713228,
        );
        gfd241397913.drawImage(frn361530424, g567264643, Paint());
        frn361530424.dispose();
        _uc329497974(gfd241397913, bp365319432);

        final aqb153991686 = await j1071713228.endRecording().toImage(
              c381611695.ceil(),
              hk318632249.ceil(),
            );
        final utl323108225 =
            await aqb153991686.toByteData(format: ui.ImageByteFormat.png);
        return utl323108225;
      },
    );
  }

  void _uc329497974(
    Canvas gfd241397913,
    Set<Oj859603244> s641667469,
  ) {
    for (final tzj163312868 in s641667469) {
      final zhn764049594 = Path();
      final ib976996837 = tzj163312868.ib976996837;
      final c381611695 = ib976996837.right - ib976996837.left;
      final hk318632249 = ib976996837.bottom - ib976996837.top;

      final cff76815306 = c381611695 * tzj163312868.s172219163;
      final yx669129109 = c381611695 * tzj163312868.ceb567092970;
      final yis550270333 = hk318632249 * tzj163312868.ceb567092970;
      final br232478754 = hk318632249 * tzj163312868.s172219163;

      //
      zhn764049594.moveTo(ib976996837.left, ib976996837.top);
      //
      zhn764049594.lineTo(ib976996837.left + cff76815306, ib976996837.top + yx669129109);
      //
      zhn764049594.lineTo(
        ib976996837.left + cff76815306 - yis550270333,
        ib976996837.top + yx669129109 + br232478754,
      );
      //
      zhn764049594.lineTo(ib976996837.left - yis550270333, ib976996837.top + br232478754);
      //
      zhn764049594.close();
      gfd241397913.drawPath(zhn764049594, _t786791421);

      gfd241397913.drawPath(zhn764049594, _ucz418987688);
    }
  }
}
