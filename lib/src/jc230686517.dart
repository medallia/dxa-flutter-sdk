//
import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/fqf151963920.dart';
import 'package:medallia_dxa/src/cvi741862379.dart';
import 'package:medallia_dxa/src/nvt209816352.dart';
import 'package:medallia_dxa/src/v173740468.dart';
import 'package:medallia_dxa/src/cwx452801876.dart';
import 'package:medallia_dxa/src/sor304042900.dart';

class Iix187482399 with Cog764603362 {
  final Aoh808717887 j594444429;
  final WidgetsBinding gmr277876585;
  Paint get _wnz786790945 =>
      Paint()..color = Yt583050306.ss892083397.le238485927.ovg36789981;
  final Paint _xyg418987892 = Paint()
    ..color = const Color.fromARGB(255, 255, 255, 255)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  Iix187482399({
    required this.j594444429,
    required this.gmr277876585,
  });
  Future<ByteData?> f533881490({
    required I686664201 es662083077,
    required VoidCallback onu269944412,
    required VoidCallback hd981023788,
    required Function(Size) bsi954940388,
  }) async {
    final Element ju951104859 =
        gmr277876585.eji405157068!;
    final RenderObject? vm798986552 = ju951104859.renderObject;
    assert(vm798986552 != null);
    if (vm798986552 == null) return null;
    RenderObject j715369767 = vm798986552;
    final double ib91774342 =
        gmr277876585.platformDispatcher.views.first.devicePixelRatio;

    Set<Jx859603184> hcl365319380 = {};

    final m378263934 = F1069794359(
      j594444429: j594444429,
      th986357265: es662083077.rl399594350,
      mfa231563627: es662083077.mfa231563627,
      cb815079264: ju951104859,
      vm798986552: vm798986552,
      ib91774342: ib91774342,
    );

    //
    //
    //
    m378263934
        .rm255166674(es662083077)
        .wrb265147417((d153558561) {
      if (d153558561 != null) {
        j715369767 = d153558561;
      }
    });

    hcl365319380 = m378263934.z744704953();

    late final double jar381611891;
    late final double dl318632165;
    gmr277876585.sbv1040687934.size.wrb265147417((n5430644) {
      bsi954940388(n5430644);
      jar381611891 = n5430644.width;
      dl318632165 = n5430644.height;
    });

    final meb1071712784 = ui.PictureRecorder();
    late final Offset if567264351;
    j715369767.ws666269254.wrb265147417((d905015010) {
      if567264351 = Offset(d905015010.left, d905015010.top);
    });

    late ui.Image l361530852;

    return p729888121<ByteData?>(
      dz491324100: true,
      pu822065241: () async {
        try {
          onu269944412();

          final ui.SceneBuilder rr504793135 = ui.SceneBuilder();
          final Matrix4 i546506977 = Matrix4.identity();
          if (j715369767 is RenderRepaintBoundary) {
            final Rect d905015010 = j715369767.ws666269254;
            final Rect s814475224 = j715369767
                .pfo236863234(vm798986552)
                .q976996409;

            final double oj716031133 =
                (s814475224.width / d905015010.width) / ib91774342;
            final double pj954753040 =
                (s814475224.height / d905015010.height) / ib91774342;

            i546506977.scale(oj716031133, pj954753040);
          } else {
            i546506977.scale(1 / ib91774342, 1 / ib91774342);
          }
          rr504793135.pushTransform(i546506977.storage);
          //
          final ui.Scene? u550632487 = j715369767.layer?.buildScene(rr504793135);
          if (u550632487 == null) return null;
          l361530852 = await u550632487.toImage(jar381611891.ceil(), dl318632165.ceil());

          u550632487.dispose();
        } catch (_) {
          hd981023788();
          return null;
        }

        final hvo241398085 = Canvas(
          meb1071712784,
        );
        hvo241398085.drawImage(l361530852, if567264351, Paint());
        l361530852.dispose();
        _uk329497770(hvo241398085, hcl365319380);

        final xpi153992154 = await meb1071712784.endRecording().toImage(
              jar381611891.ceil(),
              dl318632165.ceil(),
            );
        final ond323107933 =
            await xpi153992154.toByteData(format: ui.ImageByteFormat.png);
        return ond323107933;
      },
    );
  }

  void _uk329497770(
    Canvas hvo241398085,
    Set<Jx859603184> c641667153,
  ) {
    for (final h163312952 in c641667153) {
      final jlu764049766 = Path();
      final q976996409 = h163312952.q976996409;
      final jar381611891 = q976996409.right - q976996409.left;
      final dl318632165 = q976996409.bottom - q976996409.top;

      final i76814870 = jar381611891 * h163312952.oz172219079;
      final sq669128777 = jar381611891 * h163312952.yl567093046;
      final ppf550270113 = dl318632165 * h163312952.yl567093046;
      final e232479230 = dl318632165 * h163312952.oz172219079;

      //
      jlu764049766.moveTo(q976996409.left, q976996409.top);
      //
      jlu764049766.lineTo(q976996409.left + i76814870, q976996409.top + sq669128777);
      //
      jlu764049766.lineTo(
        q976996409.left + i76814870 - ppf550270113,
        q976996409.top + sq669128777 + e232479230,
      );
      //
      jlu764049766.lineTo(q976996409.left - ppf550270113, q976996409.top + e232479230);
      //
      jlu764049766.close();
      hvo241398085.drawPath(jlu764049766, _wnz786790945);

      hvo241398085.drawPath(jlu764049766, _xyg418987892);
    }
  }
}
