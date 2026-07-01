//
import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/l369046961.dart';
import 'package:medallia_dxa/src/hyw1059547513.dart';
import 'package:medallia_dxa/src/fpg50998545.dart';
import 'package:medallia_dxa/src/f674086624.dart';
import 'package:medallia_dxa/src/mp371804100.dart';
import 'package:medallia_dxa/src/q487304051.dart';
import 'package:medallia_dxa/src/e534491569.dart';
import 'package:medallia_dxa/src/c249197541.dart';
import 'package:medallia_dxa/src/iik64670058.dart';

class K187482676 {
  K187482676();
  late final Duo764602569 _i679689361 =
      B583051113.dfo892084206.m1001100504;
  late final Km808717588 mm594445222 = B583051113.dfo892084206.mm594445222;
  late final WidgetsBinding ly277875778 =
      B583051113.dfo892084206.rhs759432697;
  late final Hla170397034 gme238486156 =
      B583051113.dfo892084206.gme238486156;
  Paint get _a786790666 => Paint()..color = gme238486156.f36789750;
  final Paint _nb418987103 = Paint()
    ..color = const Color.fromARGB(255, 255, 255, 255)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  Future<ByteData?> nz533881273({
    required R686663970 dl662082862,
    required VoidCallback enn269944183,
    required VoidCallback fz981024519,
    required Function(Size) u954939599,
  }) async {
    final Element v951105136 =
        ly277875778.bad405157863!;
    final RenderObject? d798986771 = v951105136.renderObject;
    assert(d798986771 != null);
    if (d798986771 == null) return null;

    //
    RenderObject nq715369996 = d798986771;
    Offset fh789786259 = Offset.zero;

    final double pz91774637 =
        ly277875778.platformDispatcher.views.first.devicePixelRatio;

    Set<Lwi859603931> oqy365320191 = {};

    final o378264149 = Mp1069795100(
      mm594445222: mm594445222,
      mu986357050: dl662082862.s399593541,
      tsh231563840: dl662082862.tsh231563840,
      ch815078475: v951105136,
      d798986771: d798986771,
      pz91774637: pz91774637,
    );
    //
    //
    //
    final Nx890753128? csr866297256 =
        o378264149.csr866297256();

    if (csr866297256 != null) {
      nxz491534016(o378264149, csr866297256).mqx265148210((q893640023) {
        nq715369996 = q893640023.nq715369996;
        fh789786259 = q893640023.fh789786259;
      });
    }

    oqy365320191 = o378264149.c744704146();

    late final double t381611096;
    late final double vp318632910;
    ly277875778.lqj1040687125.size.mqx265148210((x5430879) {
      u954939599(x5430879);
      t381611096 = x5430879.width;
      vp318632910 = x5430879.height;
    });

    final t1071712571 = ui.PictureRecorder();
    late final Offset caa567265140;
    nq715369996.w666269037.mqx265148210((a905014729) {
      caa567265140 = Offset(a905014729.left, a905014729.top);
    });

    late ui.Image ffz361531087;

    return _i679689361.x729888338<ByteData?>(
      w491323887: true,
      g822066034: () async {
        try {
          enn269944183();

          final ui.SceneBuilder bg504793860 = ui.SceneBuilder();
          final Matrix4 n546507722 = Matrix4.identity();
          if (nq715369996 is RenderRepaintBoundary) {
            //
            final Rect a905014729 = nq715369996.w666269037;
            final Rect i814474483 = nq715369996
                .o236862505(d798986771)
                .bu976997138;

            final double ma716031926 =
                (i814474483.width / a905014729.width) / pz91774637;
            final double si954753851 =
                (i814474483.height / a905014729.height) / pz91774637;

            n546507722.scale(ma716031926, si954753851);
          } else {
            //
            n546507722.scale(1 / pz91774637, 1 / pz91774637);
          }
          bg504793860.pushTransform(n546507722.storage);
          //
          final ui.Scene? ndn550633228 = nq715369996.layer?.buildScene(bg504793860);
          if (ndn550633228 == null) return null;
          ffz361531087 = await ndn550633228.toImage(t381611096.ceil(), vp318632910.ceil());

          ndn550633228.dispose();
        } catch (_) {
          fz981024519();
          return null;
        }

        final zqx241398382 = Canvas(
          t1071712571,
        );
        zqx241398382.drawRect(
          Rect.fromLTWH(0, 0, t381611096, vp318632910),
          Paint()..color = const Color.fromARGB(255, 0, 0, 0),
        );
        zqx241398382.drawImage(ffz361531087, caa567265140 - fh789786259, Paint());
        ffz361531087.dispose();
        _ckg329498497(zqx241398382, oqy365320191);

        final vlx153991409 = await t1071712571.endRecording().toImage(
              t381611096.ceil(),
              vp318632910.ceil(),
            );
        final s323108726 =
            await vlx153991409.toByteData(format: ui.ImageByteFormat.png);
        return s323108726;
      },
    );
  }

  Tq832239854 nxz491534016(
    Mp1069795100 o378264149,
    Nx890753128 csr866297256,
  ) {
    late final RenderObject nq715369996;
    late final Offset fh789786259;
    o378264149
        .bhi255167481(csr866297256)
        .mqx265148210((pz605527564) {
      if (pz605527564 == null) {
        throw J901569634('Scene Render Object for LNOR not found');
      }
      nq715369996 = pz605527564;
      final RenderObject? m569534635 =
          csr866297256.fm219402312.mx1006263221
              .findRenderObject();
      if (m569534635 == null) {
        throw J901569634('Navigator RenderObject for LNOR not found');
      }
      nq715369996
          .o236862505(
            m569534635,
          )
          .bu976997138
          .mqx265148210(
        (a905014729) {
          fh789786259 = Offset(a905014729.left, a905014729.top);
        },
      );
    });
    return Tq832239854(
      nq715369996: nq715369996,
      fh789786259: fh789786259,
    );
  }

  void _ckg329498497(
    Canvas zqx241398382,
    Set<Lwi859603931> va641667962,
  ) {
    for (final cc163313171 in va641667962) {
      final xgs764049997 = Path();
      final bu976997138 = cc163313171.bu976997138;
      final t381611096 = bu976997138.right - bu976997138.left;
      final vp318632910 = bu976997138.bottom - bu976997138.top;

      final mzg76814653 = t381611096 * cc163313171.yh172218860;
      final man669129570 = t381611096 * cc163313171.bqo567092253;
      final udc550270858 = vp318632910 * cc163313171.bqo567092253;
      final hs232479445 = vp318632910 * cc163313171.yh172218860;

      //
      xgs764049997.moveTo(bu976997138.left, bu976997138.top);
      //
      xgs764049997.lineTo(bu976997138.left + mzg76814653, bu976997138.top + man669129570);
      //
      xgs764049997.lineTo(
        bu976997138.left + mzg76814653 - udc550270858,
        bu976997138.top + man669129570 + hs232479445,
      );
      //
      xgs764049997.lineTo(bu976997138.left - udc550270858, bu976997138.top + hs232479445);
      //
      xgs764049997.close();
      zqx241398382.drawPath(xgs764049997, _a786790666);

      zqx241398382.drawPath(xgs764049997, _nb418987103);
    }
  }
}

class Tq832239854 {
  final RenderObject nq715369996;
  final Offset fh789786259;

  Tq832239854({
    required this.nq715369996,
    required this.fh789786259,
  });
}
