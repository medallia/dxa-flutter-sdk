//
import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/lai151963827.dart';
import 'package:medallia_dxa/src/mk741861960.dart';
import 'package:medallia_dxa/src/ki1031390097.dart';
import 'package:medallia_dxa/src/yqb209816195.dart';
import 'package:medallia_dxa/src/o173740055.dart';
import 'package:medallia_dxa/src/v452801783.dart';
import 'package:medallia_dxa/src/t439716067.dart';
import 'package:medallia_dxa/src/xd304042551.dart';
import 'package:medallia_dxa/src/ej955933007.dart';

class Jxo187482300 {
  Jxo187482300();
  late final Jk764602945 _vq679689753 =
      Wyf583050721.wf892083558.ea1001100880;
  late final Sdw808718236 lr594444590 = Wyf583050721.wf892083558.lr594444590;
  late final WidgetsBinding k277876426 =
      Wyf583050721.wf892083558.wid759433073;
  late final Ay170397666 p238485508 =
      Wyf583050721.wf892083558.p238485508;
  Paint get _iwv786791298 => Paint()..color = p238485508.xm36790142;
  final Paint _fww418987735 = Paint()
    ..color = const Color.fromARGB(255, 255, 255, 255)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  Future<ByteData?> h533881649({
    required Cr686664618 s662083494,
    required VoidCallback qzq269944831,
    required VoidCallback t981024143,
    required Function(Size) n954939975,
  }) async {
    final Element g951104760 =
        k277876426.drx405157231!;
    final RenderObject? qo798986395 = g951104760.renderObject;
    assert(qo798986395 != null);
    if (qo798986395 == null) return null;

    //
    RenderObject urs715369604 = qo798986395;
    Offset gx789785627 = Offset.zero;

    final double st91773989 =
        k277876426.platformDispatcher.views.first.devicePixelRatio;

    Set<R859603283> yo365319543 = {};

    final mfz378263773 = A1069794708(
      lr594444590: lr594444590,
      qng986357682: s662083494.h399594189,
      yxs231563464: s662083494.yxs231563464,
      d815079107: g951104760,
      qo798986395: qo798986395,
      st91773989: st91773989,
    );
    //
    //
    //
    final Ztd890753760? jsm866297632 =
        mfz378263773.jsm866297632();

    if (jsm866297632 != null) {
      e491533384(mfz378263773, jsm866297632).vy265147834((n893640671) {
        urs715369604 = n893640671.urs715369604;
        gx789785627 = n893640671.gx789785627;
      });
    }

    yo365319543 = mfz378263773.hu744704538();

    late final double ts381611728;
    late final double bpv318632262;
    k277876426.t1040687773.size.vy265147834((q5430487) {
      n954939975(q5430487);
      ts381611728 = q5430487.width;
      bpv318632262 = q5430487.height;
    });

    final jq1071713203 = ui.PictureRecorder();
    late final Offset q567264764;
    urs715369604.gxx666269669.vy265147834((hx905015105) {
      q567264764 = Offset(hx905015105.left, hx905015105.top);
    });

    late ui.Image h361530439;

    return _vq679689753.lni729887962<ByteData?>(
      ii491324263: true,
      nv822065658: () async {
        try {
          qzq269944831();

          final ui.SceneBuilder zw504793484 = ui.SceneBuilder();
          final Matrix4 hy546507074 = Matrix4.identity();
          if (urs715369604 is RenderRepaintBoundary) {
            //
            final Rect hx905015105 = urs715369604.gxx666269669;
            final Rect pay814474875 = urs715369604
                .ng236863137(qo798986395)
                .qf976996762;

            final double jyd716031294 =
                (pay814474875.width / hx905015105.width) / st91773989;
            final double keb954753459 =
                (pay814474875.height / hx905015105.height) / st91773989;

            hy546507074.scale(jyd716031294, keb954753459);
          } else {
            //
            hy546507074.scale(1 / st91773989, 1 / st91773989);
          }
          zw504793484.pushTransform(hy546507074.storage);
          //
          final ui.Scene? iio550632836 = urs715369604.layer?.buildScene(zw504793484);
          if (iio550632836 == null) return null;
          h361530439 = await iio550632836.toImage(ts381611728.ceil(), bpv318632262.ceil());

          iio550632836.dispose();
        } catch (_) {
          t981024143();
          return null;
        }

        final o241397990 = Canvas(
          jq1071713203,
        );
        o241397990.drawRect(
          Rect.fromLTWH(0, 0, ts381611728, bpv318632262),
          Paint()..color = const Color.fromARGB(255, 0, 0, 0),
        );
        o241397990.drawImage(h361530439, q567264764 - gx789785627, Paint());
        h361530439.dispose();
        _ziw329497865(o241397990, yo365319543);

        final d153991801 = await jq1071713203.endRecording().toImage(
              ts381611728.ceil(),
              bpv318632262.ceil(),
            );
        final wsl323108350 =
            await d153991801.toByteData(format: ui.ImageByteFormat.png);
        return wsl323108350;
      },
    );
  }

  Mw832240230 e491533384(
    A1069794708 mfz378263773,
    Ztd890753760 jsm866297632,
  ) {
    late final RenderObject urs715369604;
    late final Offset gx789785627;
    mfz378263773
        .gb255166833(jsm866297632)
        .vy265147834((l605527172) {
      if (l605527172 == null) {
        throw Sif901570282('Scene Render Object for LNOR not found');
      }
      urs715369604 = l605527172;
      final RenderObject? ay569535011 =
          jsm866297632.ass219402944.r1006262589
              .findRenderObject();
      if (ay569535011 == null) {
        throw Sif901570282('Navigator RenderObject for LNOR not found');
      }
      urs715369604
          .ng236863137(
            ay569535011,
          )
          .qf976996762
          .vy265147834(
        (hx905015105) {
          gx789785627 = Offset(hx905015105.left, hx905015105.top);
        },
      );
    });
    return Mw832240230(
      urs715369604: urs715369604,
      gx789785627: gx789785627,
    );
  }

  void _ziw329497865(
    Canvas o241397990,
    Set<R859603283> y641667570,
  ) {
    for (final bz163312795 in y641667570) {
      final ki764049605 = Path();
      final qf976996762 = bz163312795.qf976996762;
      final ts381611728 = qf976996762.right - qf976996762.left;
      final bpv318632262 = qf976996762.bottom - qf976996762.top;

      final fk76815285 = ts381611728 * bz163312795.wb172219236;
      final gps669129194 = ts381611728 * bz163312795.kt567092885;
      final os550270210 = bpv318632262 * bz163312795.kt567092885;
      final y232478813 = bpv318632262 * bz163312795.wb172219236;

      //
      ki764049605.moveTo(qf976996762.left, qf976996762.top);
      //
      ki764049605.lineTo(qf976996762.left + fk76815285, qf976996762.top + gps669129194);
      //
      ki764049605.lineTo(
        qf976996762.left + fk76815285 - os550270210,
        qf976996762.top + gps669129194 + y232478813,
      );
      //
      ki764049605.lineTo(qf976996762.left - os550270210, qf976996762.top + y232478813);
      //
      ki764049605.close();
      o241397990.drawPath(ki764049605, _iwv786791298);

      o241397990.drawPath(ki764049605, _fww418987735);
    }
  }
}

class Mw832240230 {
  final RenderObject urs715369604;
  final Offset gx789785627;

  Mw832240230({
    required this.urs715369604,
    required this.gx789785627,
  });
}
