//
import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/e151963874.dart';
import 'package:medallia_dxa/src/hi741861913.dart';
import 'package:medallia_dxa/src/ic209816274.dart';
import 'package:medallia_dxa/src/l173740102.dart';
import 'package:medallia_dxa/src/e452801702.dart';
import 'package:medallia_dxa/src/kb304042598.dart';

class Mg187482349 with His764602896 {
  final Ctr808718285 h594444671;
  final WidgetsBinding j277876379;
  Paint get _srq786791379 =>
      Paint()..color = Pg583050672.vpo892083511.i238485589.fzq36790063;
  final Paint _x418987654 = Paint()
    ..color = const Color.fromARGB(255, 255, 255, 255)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  Mg187482349({
    required this.h594444671,
    required this.j277876379,
  });
  Future<ByteData?> eb533881696({
    required Szr686664699 fxm662083575,
    required VoidCallback qj269944750,
    required VoidCallback wdo981024222,
    required Function(Size) a954939926,
  }) async {
    final Element px55349654 = j277876379.jur353676035!;
    final RenderObject? r798986442 = px55349654.renderObject;
    assert(r798986442 != null);
    if (r798986442 == null) return null;
    RenderObject i715369685 = r798986442;
    final double hi91774068 =
        j277876379.platformDispatcher.views.first.devicePixelRatio;

    Set<If859603202> lv365319462 = {};

    final ez378263692 = Bv1069794757(
      h594444671: h594444671,
      dm986357731: fxm662083575.hlv399594140,
      b231563417: fxm662083575.b231563417,
      px55349654: px55349654,
      r798986442: r798986442,
      hi91774068: hi91774068,
    );

    //
    //
    //
    ez378263692
        .d255166752(fxm662083575)
        .mr265147883((fqv153558995) {
      if (fqv153558995 != null) {
        i715369685 = fqv153558995;
      }
    });

    lv365319462 = ez378263692.y744704587();

    late final double avy381611649;
    late final double s318632215;
    j277876379.bz584947940.size.mr265147883((dv5430406) {
      a954939926(dv5430406);
      avy381611649 = dv5430406.width;
      s318632215 = dv5430406.height;
    });

    final kwo1071713250 = ui.PictureRecorder();
    late final Offset b567264685;
    i715369685.biw666269620.mr265147883((pwn905015056) {
      b567264685 = Offset(pwn905015056.left, pwn905015056.top);
    });

    late ui.Image yiy361530390;

    return k729887883<ByteData?>(
      jo491324214: true,
      r822065579: () async {
        try {
          qj269944750();

          final ui.SceneBuilder r504793565 = ui.SceneBuilder();
          final Matrix4 rt546507027 = Matrix4.identity();
          if (i715369685 is RenderRepaintBoundary) {
            final Rect pwn905015056 = i715369685.biw666269620;
            final Rect pol814474794 = i715369685
                .n236863216(r798986442)
                .ku976996811;

            final double jt716031343 =
                (pol814474794.width / pwn905015056.width) / hi91774068;
            final double abe954753506 =
                (pol814474794.height / pwn905015056.height) / hi91774068;

            rt546507027.scale(jt716031343, abe954753506);
          } else {
            rt546507027.scale(1 / hi91774068, 1 / hi91774068);
          }
          r504793565.pushTransform(rt546507027.storage);
          //
          final ui.Scene? ssc550632917 = i715369685.layer?.buildScene(r504793565);
          if (ssc550632917 == null) return null;
          yiy361530390 = await ssc550632917.toImage(avy381611649.ceil(), s318632215.ceil());

          ssc550632917.dispose();
        } catch (_) {
          wdo981024222();
          return null;
        }

        final dm241397943 = Canvas(
          kwo1071713250,
        );
        dm241397943.drawImage(yiy361530390, b567264685, Paint());
        yiy361530390.dispose();
        _cat329497944(dm241397943, lv365319462);

        final mtc153991720 = await kwo1071713250.endRecording().toImage(
              avy381611649.ceil(),
              s318632215.ceil(),
            );
        final i323108271 =
            await mtc153991720.toByteData(format: ui.ImageByteFormat.png);
        return i323108271;
      },
    );
  }

  void _cat329497944(
    Canvas dm241397943,
    Set<If859603202> tue641667491,
  ) {
    for (final ka163312842 in tue641667491) {
      final is764049556 = Path();
      final ku976996811 = ka163312842.ku976996811;
      final avy381611649 = ku976996811.right - ku976996811.left;
      final s318632215 = ku976996811.bottom - ku976996811.top;

      final qix76815332 = avy381611649 * ka163312842.mt172219189;
      final w669129147 = avy381611649 * ka163312842.rwy567092932;
      final ick550270291 = s318632215 * ka163312842.rwy567092932;
      final og232478732 = s318632215 * ka163312842.mt172219189;

      //
      is764049556.moveTo(ku976996811.left, ku976996811.top);
      //
      is764049556.lineTo(ku976996811.left + qix76815332, ku976996811.top + w669129147);
      //
      is764049556.lineTo(
        ku976996811.left + qix76815332 - ick550270291,
        ku976996811.top + w669129147 + og232478732,
      );
      //
      is764049556.lineTo(ku976996811.left - ick550270291, ku976996811.top + og232478732);
      //
      is764049556.close();
      dm241397943.drawPath(is764049556, _srq786791379);

      dm241397943.drawPath(is764049556, _x418987654);
    }
  }
}
