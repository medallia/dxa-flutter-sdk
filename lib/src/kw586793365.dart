//
import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/uf369047318.dart';
import 'package:medallia_dxa/src/n1059548126.dart';
import 'package:medallia_dxa/src/atk50999222.dart';
import 'package:medallia_dxa/src/ke674085959.dart';
import 'package:medallia_dxa/src/kr371803491.dart';
import 'package:medallia_dxa/src/s487303636.dart';
import 'package:medallia_dxa/src/duk534491926.dart';
import 'package:medallia_dxa/src/de249196866.dart';
import 'package:medallia_dxa/src/sjx64670669.dart';

class U187482259 {
  U187482259();
  late final X764602990 _x679689782 =
      Fn583050702.gj892083529.j1001100927;
  late final Egt808718259 w594444545 = Fn583050702.gj892083529.w594444545;
  late final WidgetsBinding aos277876453 =
      Fn583050702.gj892083529.qb759433054;
  late final Iqa170397645 k238485547 =
      Fn583050702.gj892083529.k238485547;
  Paint get _ny786791341 => Paint()..color = k238485547.cmv36790097;
  final Paint _z418987768 = Paint()
    ..color = const Color.fromARGB(255, 255, 255, 255)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  Future<ByteData?> nej533881630({
    required X686664581 tu662083465,
    required VoidCallback uc269944784,
    required VoidCallback lsd981024160,
    required Function(Size) mk954940008,
  }) async {
    final Element ku951104727 =
        aos277876453.m405157184!;
    final RenderObject? kh798986420 = ku951104727.renderObject;
    assert(kh798986420 != null);
    if (kh798986420 == null) return null;

    //
    RenderObject mh715369643 = kh798986420;
    Offset vja789785652 = Offset.zero;

    final double bzc91773962 =
        aos277876453.platformDispatcher.views.first.devicePixelRatio;

    Set<Z859603324> yrz365319512 = {};

    final jrr378263794 = A1069794747(
      w594444545: w594444545,
      eq986357661: tu662083465.oc399594210,
      b231563495: tu662083465.b231563495,
      n815079148: ku951104727,
      kh798986420: kh798986420,
      bzc91773962: bzc91773962,
    );
    //
    //
    //
    final Gc890753743? r866297615 =
        jrr378263794.r866297615();

    if (r866297615 != null) {
      x491533415(jrr378263794, r866297615).rct265147797((v893640688) {
        mh715369643 = v893640688.mh715369643;
        vja789785652 = v893640688.vja789785652;
      });
    }

    yrz365319512 = jrr378263794.gp744704565();

    late final double h381611775;
    late final double oh318632297;
    aos277876453.los1040687794.size.rct265147797((og5430520) {
      mk954940008(og5430520);
      h381611775 = og5430520.width;
      oh318632297 = og5430520.height;
    });

    final sju1071713180 = ui.PictureRecorder();
    late final Offset pa567264723;
    mh715369643.wz666269642.rct265147797((l905015150) {
      pa567264723 = Offset(l905015150.left, l905015150.top);
    });

    late ui.Image z361530472;

    return _x679689782.ks729887989<ByteData?>(
      tcp491324232: true,
      wy822065621: () async {
        try {
          uc269944784();

          final ui.SceneBuilder xg504793507 = ui.SceneBuilder();
          final Matrix4 hht546507117 = Matrix4.identity();
          if (mh715369643 is RenderRepaintBoundary) {
            //
            final Rect l905015150 = mh715369643.wz666269642;
            final Rect bhg814474836 = mh715369643
                .htq236863118(kh798986420)
                .z976996789;

            final double fp716031249 =
                (bhg814474836.width / l905015150.width) / bzc91773962;
            final double zbp954753436 =
                (bhg814474836.height / l905015150.height) / bzc91773962;

            hht546507117.scale(fp716031249, zbp954753436);
          } else {
            //
            hht546507117.scale(1 / bzc91773962, 1 / bzc91773962);
          }
          xg504793507.pushTransform(hht546507117.storage);
          //
          final ui.Scene? mid550632875 = mh715369643.layer?.buildScene(xg504793507);
          if (mid550632875 == null) return null;
          z361530472 = await mid550632875.toImage(h381611775.ceil(), oh318632297.ceil());

          mid550632875.dispose();
        } catch (_) {
          lsd981024160();
          return null;
        }

        final r241397961 = Canvas(
          sju1071713180,
        );
        r241397961.drawRect(
          Rect.fromLTWH(0, 0, h381611775, oh318632297),
          Paint()..color = const Color.fromARGB(255, 0, 0, 0),
        );
        r241397961.drawImage(z361530472, pa567264723 - vja789785652, Paint());
        z361530472.dispose();
        _e329497894(r241397961, yrz365319512);

        final cx153991766 = await sju1071713180.endRecording().toImage(
              h381611775.ceil(),
              oh318632297.ceil(),
            );
        final ru323108305 =
            await cx153991766.toByteData(format: ui.ImageByteFormat.png);
        return ru323108305;
      },
    );
  }

  Zsu832240201 x491533415(
    A1069794747 jrr378263794,
    Gc890753743 r866297615,
  ) {
    late final RenderObject mh715369643;
    late final Offset vja789785652;
    jrr378263794
        .aym255166814(r866297615)
        .rct265147797((oo605527211) {
      if (oo605527211 == null) {
        throw G901570245('Scene Render Object for LNOR not found');
      }
      mh715369643 = oo605527211;
      final RenderObject? r569534988 =
          r866297615.j219402991.lls1006262546
              .findRenderObject();
      if (r569534988 == null) {
        throw G901570245('Navigator RenderObject for LNOR not found');
      }
      mh715369643
          .htq236863118(
            r569534988,
          )
          .z976996789
          .rct265147797(
        (l905015150) {
          vja789785652 = Offset(l905015150.left, l905015150.top);
        },
      );
    });
    return Zsu832240201(
      mh715369643: mh715369643,
      vja789785652: vja789785652,
    );
  }

  void _e329497894(
    Canvas r241397961,
    Set<Z859603324> dm641667549,
  ) {
    for (final u163312820 in dm641667549) {
      final zch764049642 = Path();
      final z976996789 = u163312820.z976996789;
      final h381611775 = z976996789.right - z976996789.left;
      final oh318632297 = z976996789.bottom - z976996789.top;

      final hgi76815258 = h381611775 * u163312820.e172219211;
      final wdv669129157 = h381611775 * u163312820.bs567092922;
      final dnr550270253 = oh318632297 * u163312820.bs567092922;
      final cv232478834 = oh318632297 * u163312820.e172219211;

      //
      zch764049642.moveTo(z976996789.left, z976996789.top);
      //
      zch764049642.lineTo(z976996789.left + hgi76815258, z976996789.top + wdv669129157);
      //
      zch764049642.lineTo(
        z976996789.left + hgi76815258 - dnr550270253,
        z976996789.top + wdv669129157 + cv232478834,
      );
      //
      zch764049642.lineTo(z976996789.left - dnr550270253, z976996789.top + cv232478834);
      //
      zch764049642.close();
      r241397961.drawPath(zch764049642, _ny786791341);

      r241397961.drawPath(zch764049642, _z418987768);
    }
  }
}

class Zsu832240201 {
  final RenderObject mh715369643;
  final Offset vja789785652;

  Zsu832240201({
    required this.mh715369643,
    required this.vja789785652,
  });
}
