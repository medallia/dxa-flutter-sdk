//
import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/bdg151964329.dart';
import 'package:medallia_dxa/src/nym741861458.dart';
import 'package:medallia_dxa/src/u1031389579.dart';
import 'package:medallia_dxa/src/j209815705.dart';
import 'package:medallia_dxa/src/hfo173740557.dart';
import 'package:medallia_dxa/src/d452802285.dart';
import 'package:medallia_dxa/src/q439716601.dart';
import 'package:medallia_dxa/src/llc304042029.dart';
import 'package:medallia_dxa/src/qyl955933525.dart';

class D187482790 {
  D187482790();
  late final U764602459 _z679689219 =
      K583051259.y892084092.ehg1001100362;
  late final G808717702 gd594445108 = K583051259.y892084092.gd594445108;
  late final WidgetsBinding pc277875920 =
      K583051259.y892084092.fx759432555;
  late final C170397176 er238486046 =
      K583051259.y892084092.er238486046;
  Paint get _fel786790808 => Paint()..color = er238486046.la36789604;
  final Paint _gg418987213 = Paint()
    ..color = const Color.fromARGB(255, 255, 255, 255)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  Future<ByteData?> act533881131({
    required T686664112 jt662083004,
    required VoidCallback u269944293,
    required VoidCallback u981024661,
    required Function(Size) a954939485,
  }) async {
    final Element tm951105250 =
        pc277875920.g405157749!;
    final RenderObject? mvd798986881 = tm951105250.renderObject;
    assert(mvd798986881 != null);
    if (mvd798986881 == null) return null;

    //
    RenderObject ri715370142 = mvd798986881;
    Offset owe789786113 = Offset.zero;

    final double k91774527 =
        pc277875920.platformDispatcher.views.first.devicePixelRatio;

    Set<Ev859603785> f365320045 = {};

    final p378264263 = N1069795214(
      gd594445108: gd594445108,
      fxk986357160: jt662083004.m399593687,
      fmi231563986: jt662083004.fmi231563986,
      zty815078617: tm951105250,
      mvd798986881: mvd798986881,
      k91774527: k91774527,
    );
    //
    //
    //
    final Mif890753274? fb866297146 =
        p378264263.fb866297146();

    if (fb866297146 != null) {
      tc491533906(p378264263, fb866297146).hoy265148320((l893640133) {
        ri715370142 = l893640133.ri715370142;
        owe789786113 = l893640133.owe789786113;
      });
    }

    f365320045 = p378264263.ct744704000();

    late final double pwb381611210;
    late final double igq318632796;
    pc277875920.zvy1040687239.size.hoy265148320((er5430989) {
      a954939485(er5430989);
      pwb381611210 = er5430989.width;
      igq318632796 = er5430989.height;
    });

    final cn1071712681 = ui.PictureRecorder();
    late final Offset pav567265254;
    ri715370142.vh666269183.hoy265148320((esq905014619) {
      pav567265254 = Offset(esq905014619.left, esq905014619.top);
    });

    late ui.Image nb361530973;

    return _z679689219.m729888448<ByteData?>(
      t491323773: true,
      st822066144: () async {
        try {
          u269944293();

          final ui.SceneBuilder hp504794006 = ui.SceneBuilder();
          final Matrix4 jss546507608 = Matrix4.identity();
          if (ri715370142 is RenderRepaintBoundary) {
            //
            final Rect esq905014619 = ri715370142.vh666269183;
            final Rect djo814474337 = ri715370142
                .egu236862651(mvd798986881)
                .fo976997248;

            final double n716031780 =
                (djo814474337.width / esq905014619.width) / k91774527;
            final double tpx954753961 =
                (djo814474337.height / esq905014619.height) / k91774527;

            jss546507608.scale(n716031780, tpx954753961);
          } else {
            //
            jss546507608.scale(1 / k91774527, 1 / k91774527);
          }
          hp504794006.pushTransform(jss546507608.storage);
          //
          final ui.Scene? h550633374 = ri715370142.layer?.buildScene(hp504794006);
          if (h550633374 == null) return null;
          nb361530973 = await h550633374.toImage(pwb381611210.ceil(), igq318632796.ceil());

          h550633374.dispose();
        } catch (_) {
          u981024661();
          return null;
        }

        final e241398524 = Canvas(
          cn1071712681,
        );
        e241398524.drawRect(
          Rect.fromLTWH(0, 0, pwb381611210, igq318632796),
          Paint()..color = const Color.fromARGB(255, 0, 0, 0),
        );
        e241398524.drawImage(nb361530973, pav567265254 - owe789786113, Paint());
        nb361530973.dispose();
        _kn329498387(e241398524, f365320045);

        final ko153991267 = await cn1071712681.endRecording().toImage(
              pwb381611210.ceil(),
              igq318632796.ceil(),
            );
        final rz323108836 =
            await ko153991267.toByteData(format: ui.ImageByteFormat.png);
        return rz323108836;
      },
    );
  }

  Opf832239740 tc491533906(
    N1069795214 p378264263,
    Mif890753274 fb866297146,
  ) {
    late final RenderObject ri715370142;
    late final Offset owe789786113;
    p378264263
        .e255167339(fb866297146)
        .hoy265148320((jd605527710) {
      if (jd605527710 == null) {
        throw Fc901569776('Scene Render Object for LNOR not found');
      }
      ri715370142 = jd605527710;
      final RenderObject? qjg569534521 =
          fb866297146.ob219402458.kzi1006263079
              .findRenderObject();
      if (qjg569534521 == null) {
        throw Fc901569776('Navigator RenderObject for LNOR not found');
      }
      ri715370142
          .egu236862651(
            qjg569534521,
          )
          .fo976997248
          .hoy265148320(
        (esq905014619) {
          owe789786113 = Offset(esq905014619.left, esq905014619.top);
        },
      );
    });
    return Opf832239740(
      ri715370142: ri715370142,
      owe789786113: owe789786113,
    );
  }

  void _kn329498387(
    Canvas e241398524,
    Set<Ev859603785> ss641668072,
  ) {
    for (final g163313281 in ss641668072) {
      final ju764050143 = Path();
      final fo976997248 = g163313281.fo976997248;
      final pwb381611210 = fo976997248.right - fo976997248.left;
      final igq318632796 = fo976997248.bottom - fo976997248.top;

      final ab76814767 = pwb381611210 * g163313281.gh172218750;
      final fyq669129712 = pwb381611210 * g163313281.u567092367;
      final rih550270744 = igq318632796 * g163313281.u567092367;
      final ok232479303 = igq318632796 * g163313281.gh172218750;

      //
      ju764050143.moveTo(fo976997248.left, fo976997248.top);
      //
      ju764050143.lineTo(fo976997248.left + ab76814767, fo976997248.top + fyq669129712);
      //
      ju764050143.lineTo(
        fo976997248.left + ab76814767 - rih550270744,
        fo976997248.top + fyq669129712 + ok232479303,
      );
      //
      ju764050143.lineTo(fo976997248.left - rih550270744, fo976997248.top + ok232479303);
      //
      ju764050143.close();
      e241398524.drawPath(ju764050143, _fel786790808);

      e241398524.drawPath(ju764050143, _gg418987213);
    }
  }
}

class Opf832239740 {
  final RenderObject ri715370142;
  final Offset owe789786113;

  Opf832239740({
    required this.ri715370142,
    required this.owe789786113,
  });
}
