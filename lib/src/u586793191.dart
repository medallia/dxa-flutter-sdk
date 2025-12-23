//
import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/d369047140.dart';
import 'package:medallia_dxa/src/whq1059547820.dart';
import 'package:medallia_dxa/src/hi50998980.dart';
import 'package:medallia_dxa/src/z674086197.dart';
import 'package:medallia_dxa/src/zbd371803153.dart';
import 'package:medallia_dxa/src/df487303334.dart';
import 'package:medallia_dxa/src/i534491748.dart';
import 'package:medallia_dxa/src/kmb249196592.dart';
import 'package:medallia_dxa/src/u64670399.dart';

class Q187482593 {
  Q187482593();
  late final S764603164 _k679690052 =
      L583050428.buw892083259.c1001101069;
  late final Bya808718017 nk594444403 = L583050428.buw892083259.nk594444403;
  late final WidgetsBinding gf277876631 =
      L583050428.buw892083259.tcy759432748;
  late final M170397375 vtj238485849 =
      L583050428.buw892083259.vtj238485849;
  Paint get _wh786791135 => Paint()..color = vtj238485849.bz36789795;
  final Paint _zr418987914 = Paint()
    ..color = const Color.fromARGB(255, 255, 255, 255)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  Future<ByteData?> j533881452({
    required S686664439 b662083323,
    required VoidCallback s269944482,
    required VoidCallback gp981023954,
    required Function(Size) hvu954940186,
  }) async {
    final Element c951104933 =
        gf277876631.wm405156914!;
    final RenderObject? n798986694 = c951104933.renderObject;
    assert(n798986694 != null);
    if (n798986694 == null) return null;

    //
    RenderObject gb715369945 = n798986694;
    Offset uvk789785926 = Offset.zero;

    final double qpy91774328 =
        gf277876631.platformDispatcher.views.first.devicePixelRatio;

    Set<J859602958> psx365319210 = {};

    final wgr378263936 = Mne1069794505(
      nk594444403: nk594444403,
      nc986357487: b662083323.w399594384,
      kav231563669: b662083323.kav231563669,
      ps815079326: c951104933,
      n798986694: n798986694,
      qpy91774328: qpy91774328,
    );
    //
    //
    //
    final Lub890753981? w866297469 =
        wgr378263936.w866297469();

    if (w866297469 != null) {
      l491533589(wgr378263936, w866297469).fg265147623((fsg893640322) {
        gb715369945 = fsg893640322.gb715369945;
        uvk789785926 = fsg893640322.uvk789785926;
      });
    }

    psx365319210 = wgr378263936.hc744704839();

    late final double pqk381611917;
    late final double r318631963;
    gf277876631.v1040688064.size.fg265147623((g5430666) {
      hvu954940186(g5430666);
      pqk381611917 = g5430666.width;
      r318631963 = g5430666.height;
    });

    final s1071713006 = ui.PictureRecorder();
    late final Offset uhb567264417;
    gb715369945.qyd666269368.fg265147623((tb905014812) {
      uhb567264417 = Offset(tb905014812.left, tb905014812.top);
    });

    late ui.Image b361530650;

    return _k679690052.qh729888135<ByteData?>(
      wt491323962: true,
      nrp822065319: () async {
        try {
          s269944482();

          final ui.SceneBuilder bo504793297 = ui.SceneBuilder();
          final Matrix4 qx546506783 = Matrix4.identity();
          if (gb715369945 is RenderRepaintBoundary) {
            //
            final Rect tb905014812 = gb715369945.qyd666269368;
            final Rect mnc814475046 = gb715369945
                .tcv236863484(n798986694)
                .n976996551;

            final double m716031075 =
                (mnc814475046.width / tb905014812.width) / qpy91774328;
            final double lyx954753262 =
                (mnc814475046.height / tb905014812.height) / qpy91774328;

            qx546506783.scale(m716031075, lyx954753262);
          } else {
            //
            qx546506783.scale(1 / qpy91774328, 1 / qpy91774328);
          }
          bo504793297.pushTransform(qx546506783.storage);
          //
          final ui.Scene? jo550632665 = gb715369945.layer?.buildScene(bo504793297);
          if (jo550632665 == null) return null;
          b361530650 = await jo550632665.toImage(pqk381611917.ceil(), r318631963.ceil());

          jo550632665.dispose();
        } catch (_) {
          gp981023954();
          return null;
        }

        final khn241398203 = Canvas(
          s1071713006,
        );
        khn241398203.drawRect(
          Rect.fromLTWH(0, 0, pqk381611917, r318631963),
          Paint()..color = const Color.fromARGB(255, 0, 0, 0),
        );
        khn241398203.drawImage(b361530650, uhb567264417 - uvk789785926, Paint());
        b361530650.dispose();
        _wb329497684(khn241398203, psx365319210);

        final gt153991972 = await s1071713006.endRecording().toImage(
              pqk381611917.ceil(),
              r318631963.ceil(),
            );
        final fvr323108003 =
            await gt153991972.toByteData(format: ui.ImageByteFormat.png);
        return fvr323108003;
      },
    );
  }

  D832240443 l491533589(
    Mne1069794505 wgr378263936,
    Lub890753981 w866297469,
  ) {
    late final RenderObject gb715369945;
    late final Offset uvk789785926;
    wgr378263936
        .kio255166508(w866297469)
        .fg265147623((eny605527513) {
      if (eny605527513 == null) {
        throw O901570487('Scene Render Object for LNOR not found');
      }
      gb715369945 = eny605527513;
      final RenderObject? ua569535358 =
          w866297469.dwl219403165.uz1006262368
              .findRenderObject();
      if (ua569535358 == null) {
        throw O901570487('Navigator RenderObject for LNOR not found');
      }
      gb715369945
          .tcv236863484(
            ua569535358,
          )
          .n976996551
          .fg265147623(
        (tb905014812) {
          uvk789785926 = Offset(tb905014812.left, tb905014812.top);
        },
      );
    });
    return D832240443(
      gb715369945: gb715369945,
      uvk789785926: uvk789785926,
    );
  }

  void _wb329497684(
    Canvas khn241398203,
    Set<J859602958> rsz641667247,
  ) {
    for (final w163313094 in rsz641667247) {
      final mh764049816 = Path();
      final n976996551 = w163313094.n976996551;
      final pqk381611917 = n976996551.right - n976996551.left;
      final r318631963 = n976996551.bottom - n976996551.top;

      final pdg76815080 = pqk381611917 * w163313094.tql172218937;
      final buy669128887 = pqk381611917 * w163313094.afg567093192;
      final nsm550270047 = r318631963 * w163313094.afg567093192;
      final w232478976 = r318631963 * w163313094.tql172218937;

      //
      mh764049816.moveTo(n976996551.left, n976996551.top);
      //
      mh764049816.lineTo(n976996551.left + pdg76815080, n976996551.top + buy669128887);
      //
      mh764049816.lineTo(
        n976996551.left + pdg76815080 - nsm550270047,
        n976996551.top + buy669128887 + w232478976,
      );
      //
      mh764049816.lineTo(n976996551.left - nsm550270047, n976996551.top + w232478976);
      //
      mh764049816.close();
      khn241398203.drawPath(mh764049816, _wh786791135);

      khn241398203.drawPath(mh764049816, _zr418987914);
    }
  }
}

class D832240443 {
  final RenderObject gb715369945;
  final Offset uvk789785926;

  D832240443({
    required this.gb715369945,
    required this.uvk789785926,
  });
}
