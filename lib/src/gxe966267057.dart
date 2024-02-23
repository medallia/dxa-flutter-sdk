//
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medallia_dxa/src/e452801702.dart';
import 'package:medallia_dxa/src/kb304042598.dart';

enum V72708368 {
  zbc717759565,
  nfr1072277654,
  q714738281,
  k44998513,
  wo768495326,
  adr335361625,
  e783798009,
}

class O433202492 {
  final V72708368 zzq876938222;
  O433202492({
    required this.zzq876938222,
  });
  String h266286569() {
    switch (zzq876938222) {
      case V72708368.zbc717759565:
        return 'Video disabled on this screen';

      case V72708368.nfr1072277654:
        return 'No video could be recorded for this screen';

      case V72708368.wo768495326:
        return 'Screen not recorded due to high memory usage';

      case V72708368.q714738281:
        return 'Screen not recorded due to high CPU usage';

      case V72708368.k44998513:
        return 'Screen not recorded due to low battery';

      case V72708368.adr335361625:
        return 'Video recording masked for this screen';

      case V72708368.e783798009:
        return 'No permissions to record this screen';

      default:
        return 'No preview available';
    }
  }
}

class Pqd629108969 {
  Pqd629108969._internal();
  static final _k495137179 = Pqd629108969._internal();
  static Pqd629108969 get vpo892083511 => _k495137179;
  final HashMap<G1018378280, ByteData> i210211713 =
      HashMap();

  ByteData? jc79113332;
  static const Size _i611155024 = Size(200, 500);
  Size z16226658 = _i611155024;

  FutureOr<ByteData> w817361396(
    O433202492 yv305047340,
  ) async {
    late Size dv5430406;
    final Size au332199420 =
        Pg583050672.vpo892083511.ee759432992.bz584947940.size;
    if (au332199420.width <= 0 || au332199420.height <= 0) {
      dv5430406 = _i611155024;
    } else {
      dv5430406 = au332199420;
    }

    z16226658 = dv5430406;
    final zct186920126 = G1018378280(
      dv5430406: dv5430406,
      td828748412: yv305047340.zzq876938222,
    );

    if (i210211713.containsKey(zct186920126)) {
      return i210211713[zct186920126]!;
    }
    final ByteData wj493865355 =
        await _ox714323988(dv5430406, yv305047340);
    i210211713[zct186920126] = wj493865355;
    return wj493865355;
  }

  Future<ByteData> _ox714323988(
    Size dv5430406,
    O433202492 yv305047340,
  ) async {
    final double xwp1055596765 = dv5430406.width;
    final double t281076090 = dv5430406.height;
    final kwo1071713250 = ui.PictureRecorder();
    final dm241397943 = Canvas(
      kwo1071713250,
      Rect.fromLTWH(0, 0, xwp1055596765, t281076090),
    );
    //
    final double e394175259 = xwp1055596765 * 0.9;

    final TextPainter ct294618539 = TextPainter(
      text: TextSpan(
        text: yv305047340.h266286569(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 40,
        ),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(
        maxWidth: e394175259,
      );

    const double x657325184 = 16;
    final double mq300553379 = ct294618539.height;
    final double e480093233 = ct294618539.width;
    final double onj431137268 =
        t281076090 - mq300553379 - x657325184;
    //
    final ByteData p629039647 = await _plo37143009();
    final DrawableRoot nbr475940210 =
        await svg.fromSvgBytes(p629039647.buffer.asUint8List(), 'rawSvg');
    int d246996117 = e480093233 ~/ nbr475940210.viewport.size.aspectRatio;
    double f623615449 = e480093233;
    if (d246996117 > onj431137268) {
      d246996117 = onj431137268.toInt();
      f623615449 = d246996117 * nbr475940210.viewport.size.aspectRatio;
    }

    final ui.Image yiy361530390 = await nbr475940210
        .toPicture(
          size: Size(f623615449, d246996117.toDouble()),
        )
        .toImage(
          f623615449.toInt(),
          d246996117,
        );
    final double tsq161676340 =
        (t281076090 - (mq300553379 + yiy361530390.height + x657325184)) / 2;
    final n826719209 = Offset((xwp1055596765 - e480093233) / 2, tsq161676340);

    dm241397943.drawColor(Colors.white, ui.BlendMode.srcOver);
    dm241397943.drawImage(
      yiy361530390,
      n826719209,
      Paint()
        ..color = Colors.red
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.square
        ..style = PaintingStyle.fill,
    );
    //
    final double zoq879231602 =
        tsq161676340 + yiy361530390.height.toDouble() + x657325184;

    final double gv609838492 = (xwp1055596765 - e480093233) / 2;
    final double l172543640 = zoq879231602;
    final Offset gg557611982 = Offset(gv609838492, l172543640);
    ct294618539.paint(dm241397943, gg557611982);

    final ui.Image mtc153991720 = await kwo1071713250
        .endRecording()
        .toImage(xwp1055596765.toInt(), t281076090.toInt());
    return (await mtc153991720.toByteData(format: ui.ImageByteFormat.png))!;
  }

  FutureOr<ByteData> _plo37143009() async =>
      jc79113332 ??= await rootBundle
          .load('packages/medallia_dxa/assets/placeholder_image.svg');
}

//
class G1018378280 {
  final Size dv5430406;
  final V72708368 td828748412;
  G1018378280({
    required this.dv5430406,
    required this.td828748412,
  });

  @override
  bool operator ==(covariant G1018378280 ll304490746) {
    if (identical(this, ll304490746)) return true;

    return ll304490746.dv5430406 == dv5430406 && ll304490746.td828748412 == td828748412;
  }

  @override
  int get hashCode => dv5430406.hashCode ^ td828748412.hashCode;
}
