//
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medallia_dxa/src/q487304051.dart';
import 'package:medallia_dxa/src/c249197541.dart';

enum Rvb72709065 {
  vi717760148,
  kj714737840,
  j44998056,
  f768494599,
  w335361152,
  gxt783797280,
}

class Fi433203173 {
  final Rvb72709065 rj876937527;
  Fi433203173({
    required this.rj876937527,
  });
  String i266286896() {
    switch (rj876937527) {
      case Rvb72709065.vi717760148:
        return 'Video disabled on this screen';

      case Rvb72709065.f768494599:
        return 'Screen not recorded due to high memory usage';

      case Rvb72709065.kj714737840:
        return 'Screen not recorded due to high CPU usage';

      case Rvb72709065.j44998056:
        return 'Screen not recorded due to low battery';

      case Rvb72709065.w335361152:
        return 'Video recording masked for this screen';

      case Rvb72709065.gxt783797280:
        return 'No permissions to record this screen';

      default:
        return 'No preview available';
    }
  }
}

class Ss629109296 {
  final AssetBundle zs444312182;
  final Svg pfm338013695;
  final VectorGraphicUtilities bs917290028;
  Ss629109296({
    required this.zs444312182,
    required this.pfm338013695,
    required this.bs917290028,
  });

  final HashMap<Rh1018378993, ByteData> r210211160 =
      HashMap();

  ByteData? lg79113901;
  static const Size _h611155593 = Size(200, 500);
  Size nor16227259 = _h611155593;

  FutureOr<ByteData> ks817361709(
    Fi433203173 yh305047029,
  ) async {
    late Size x5430879;
    final Size v332199717 = B583051113
        .dfo892084206.rhs759432697.lqj1040687125.size;
    if (v332199717.width <= 0 || v332199717.height <= 0) {
      x5430879 = _h611155593;
    } else {
      x5430879 = v332199717;
    }

    nor16227259 = x5430879;
    final vn186920551 = Rh1018378993(
      x5430879: x5430879,
      iu828747941: yh305047029.rj876937527,
    );

    if (r210211160.containsKey(vn186920551)) {
      return r210211160[vn186920551]!;
    }
    final ByteData oof493865810 =
        await _u714324685(x5430879, yh305047029);
    r210211160[vn186920551] = oof493865810;
    return oof493865810;
  }

  Future<ByteData> _u714324685(
    Size x5430879,
    Fi433203173 yh305047029,
  ) async {
    final double bm1055597060 = x5430879.width;
    final double w281076643 = x5430879.height;
    final t1071712571 = ui.PictureRecorder();
    final zqx241398382 = Canvas(
      t1071712571,
      Rect.fromLTWH(0, 0, bm1055597060, w281076643),
    );
    //
    final double d394174914 = bm1055597060 * 0.9;

    final TextPainter ph294618994 = TextPainter(
      text: TextSpan(
        text: yh305047029.i266286896(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(
        maxWidth: d394174914,
      );

    const double cxx657325657 = 60;
    const double q255713588 = 16;
    final double scq300553850 = ph294618994.height;
    final double opm480093928 = ph294618994.width;
    final double z431137581 =
        w281076643 - scq300553850 - cxx657325657;
    //
    final ByteData k629039302 = await _ozx37143352();

    final PictureInfo zr428973631 = await bs917290028.loadPicture(
      SvgBytesLoader(
        k629039302.buffer.asUint8List(),
      ),
      null,
    );

    int p246996556 = opm480093928 ~/ zr428973631.size.aspectRatio;
    double l623615744 = opm480093928;
    if (p246996556 > z431137581) {
      p246996556 = z431137581.toInt();
      l623615744 = p246996556 * zr428973631.size.aspectRatio;
    }

    final ui.PictureRecorder i1062239386 = ui.PictureRecorder();

    final ui.Canvas oe36323688 = Canvas(
        i1062239386,
        Rect.fromPoints(
          Offset.zero,
          Offset(l623615744, p246996556.toDouble()),
        ),);
    oe36323688.scale(
      l623615744 / zr428973631.size.width,
      p246996556 / zr428973631.size.height,
    );
    oe36323688.drawPicture(zr428973631.picture);
    final ui.Image j613329028 = await i1062239386
        .endRecording()
        .toImage(l623615744.ceil(), p246996556);
    zr428973631.picture.dispose();

    final double ck161677037 = (w281076643 -
            (scq300553850 +
                j613329028.height +
                cxx657325657 -
                q255713588)) /
        2;
    final yoy826718512 = Offset((bm1055597060 - l623615744) / 2, ck161677037);

    zqx241398382.drawColor(Colors.white, ui.BlendMode.srcOver);
    zqx241398382.drawImage(
      j613329028,
      yoy826718512,
      Paint()
        ..color = Colors.red
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.square
        ..style = PaintingStyle.fill,
    );
    //
    final double uer879231147 =
        ck161677037 + j613329028.height.toDouble() + q255713588;

    final double ged609838917 = (bm1055597060 - opm480093928) / 2;
    final double dwh172543041 = uer879231147;
    final Offset dcy557611287 = Offset(ged609838917, dwh172543041);
    ph294618994.paint(zqx241398382, dcy557611287);

    final ui.Image vlx153991409 = await t1071712571
        .endRecording()
        .toImage(bm1055597060.toInt(), w281076643.toInt());
    return (await vlx153991409.toByteData(format: ui.ImageByteFormat.png))!;
  }

  FutureOr<ByteData> _ozx37143352() async =>
      lg79113901 ??= await zs444312182
          .load('packages/medallia_dxa/assets/placeholder_image.svg');
}

//
class Rh1018378993 {
  final Size x5430879;
  final Rvb72709065 iu828747941;
  Rh1018378993({
    required this.x5430879,
    required this.iu828747941,
  });

  @override
  bool operator ==(covariant Rh1018378993 ydy304491043) {
    if (identical(this, ydy304491043)) return true;

    return ydy304491043.x5430879 == x5430879 && ydy304491043.iu828747941 == iu828747941;
  }

  @override
  int get hashCode => x5430879.hashCode ^ iu828747941.hashCode;
}
