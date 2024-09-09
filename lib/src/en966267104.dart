//
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medallia_dxa/src/v452801783.dart';
import 'package:medallia_dxa/src/xd304042551.dart';

enum Q72708417 {
  s717759516,
  d714738232,
  q44998432,
  xgb768495247,
  afk335361544,
  t783797928,
}

class Vnp433202541 {
  final Q72708417 ww876938175;
  Vnp433202541({
    required this.ww876938175,
  });
  String vmy266286520() {
    switch (ww876938175) {
      case Q72708417.s717759516:
        return 'Video disabled on this screen';

      case Q72708417.xgb768495247:
        return 'Screen not recorded due to high memory usage';

      case Q72708417.d714738232:
        return 'Screen not recorded due to high CPU usage';

      case Q72708417.q44998432:
        return 'Screen not recorded due to low battery';

      case Q72708417.afk335361544:
        return 'Video recording masked for this screen';

      case Q72708417.t783797928:
        return 'No permissions to record this screen';

      default:
        return 'No preview available';
    }
  }
}

class Jo629108920 {
  final AssetBundle xnn444311806;
  final Svg bws338014071;
  final VectorGraphicUtilities pq917290660;
  Jo629108920({
    required this.xnn444311806,
    required this.bws338014071,
    required this.pq917290660,
  });

  final HashMap<Gb1018378361, ByteData> lrv210211792 =
      HashMap();

  ByteData? spp79113253;
  static const Size _w611154945 = Size(200, 500);
  Size h16226611 = _w611154945;

  FutureOr<ByteData> rnj817361317(
    Vnp433202541 m305047421,
  ) async {
    late Size q5430487;
    final Size og332199341 = Wyf583050721
        .wf892083558.wid759433073.t1040687773.size;
    if (og332199341.width <= 0 || og332199341.height <= 0) {
      q5430487 = _w611154945;
    } else {
      q5430487 = og332199341;
    }

    h16226611 = q5430487;
    final za186920175 = Gb1018378361(
      q5430487: q5430487,
      ezo828748333: m305047421.ww876938175,
    );

    if (lrv210211792.containsKey(za186920175)) {
      return lrv210211792[za186920175]!;
    }
    final ByteData ucf493865434 =
        await _p714324037(q5430487, m305047421);
    lrv210211792[za186920175] = ucf493865434;
    return ucf493865434;
  }

  Future<ByteData> _p714324037(
    Size q5430487,
    Vnp433202541 m305047421,
  ) async {
    final double u1055596684 = q5430487.width;
    final double h281076011 = q5430487.height;
    final jq1071713203 = ui.PictureRecorder();
    final o241397990 = Canvas(
      jq1071713203,
      Rect.fromLTWH(0, 0, u1055596684, h281076011),
    );
    //
    final double lq394175306 = u1055596684 * 0.9;

    final TextPainter kr294618618 = TextPainter(
      text: TextSpan(
        text: m305047421.vmy266286520(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(
        maxWidth: lq394175306,
      );

    const double xg657325265 = 40;
    final double ucg300553458 = kr294618618.height;
    final double qqf480093280 = kr294618618.width;
    final double atg431137189 =
        h281076011 - ucg300553458 - xg657325265;
    //
    final ByteData n629039694 = await _wif37142960();

    final PictureInfo udz428973239 = await pq917290660.loadPicture(
      SvgBytesLoader(
        n629039694.buffer.asUint8List(),
      ),
      null,
    );

    int a246996164 = qqf480093280 ~/ udz428973239.size.aspectRatio;
    double oc623615368 = qqf480093280;
    if (a246996164 > atg431137189) {
      a246996164 = atg431137189.toInt();
      oc623615368 = a246996164 * udz428973239.size.aspectRatio;
    }

    final ui.PictureRecorder ll1062239762 = ui.PictureRecorder();

    final ui.Canvas qn36324320 = Canvas(
        ll1062239762,
        Rect.fromPoints(
          Offset.zero,
          Offset(oc623615368, a246996164.toDouble()),
        ));
    qn36324320.scale(
      oc623615368 / udz428973239.size.width,
      a246996164 / udz428973239.size.height,
    );
    qn36324320.drawPicture(udz428973239.picture);
    final ui.Image rd613329420 = await ll1062239762
        .endRecording()
        .toImage(oc623615368.ceil(), a246996164);
    udz428973239.picture.dispose();

    final double mn161676389 =
        (h281076011 - (ucg300553458 + rd613329420.height + xg657325265)) / 2;
    final ol826719160 = Offset((u1055596684 - oc623615368) / 2, mn161676389);

    o241397990.drawColor(Colors.white, ui.BlendMode.srcOver);
    o241397990.drawImage(
      rd613329420,
      ol826719160,
      Paint()
        ..color = Colors.red
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.square
        ..style = PaintingStyle.fill,
    );
    //
    final double nxl879231523 =
        mn161676389 + rd613329420.height.toDouble() + xg657325265;

    final double pve609838541 = (u1055596684 - qqf480093280) / 2;
    final double y172543689 = nxl879231523;
    final Offset ocs557611935 = Offset(pve609838541, y172543689);
    kr294618618.paint(o241397990, ocs557611935);

    final ui.Image d153991801 = await jq1071713203
        .endRecording()
        .toImage(u1055596684.toInt(), h281076011.toInt());
    return (await d153991801.toByteData(format: ui.ImageByteFormat.png))!;
  }

  FutureOr<ByteData> _wif37142960() async =>
      spp79113253 ??= await xnn444311806
          .load('packages/medallia_dxa/assets/placeholder_image.svg');
}

//
class Gb1018378361 {
  final Size q5430487;
  final Q72708417 ezo828748333;
  Gb1018378361({
    required this.q5430487,
    required this.ezo828748333,
  });

  @override
  bool operator ==(covariant Gb1018378361 r304490667) {
    if (identical(this, r304490667)) return true;

    return r304490667.q5430487 == q5430487 && r304490667.ezo828748333 == ezo828748333;
  }

  @override
  int get hashCode => q5430487.hashCode ^ ezo828748333.hashCode;
}
