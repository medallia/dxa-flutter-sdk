//
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medallia_dxa/src/s487303636.dart';
import 'package:medallia_dxa/src/de249196866.dart';

enum Z72708462 {
  r717759539,
  ypt714738199,
  l44998415,
  j768495264,
  hz335361575,
  hu783797895,
}

class Ado433202498 {
  final Z72708462 t876938128;
  Ado433202498({
    required this.t876938128,
  });
  String gd266286487() {
    switch (t876938128) {
      case Z72708462.r717759539:
        return 'Video disabled on this screen';

      case Z72708462.j768495264:
        return 'Screen not recorded due to high memory usage';

      case Z72708462.ypt714738199:
        return 'Screen not recorded due to high CPU usage';

      case Z72708462.l44998415:
        return 'Screen not recorded due to low battery';

      case Z72708462.hz335361575:
        return 'Video recording masked for this screen';

      case Z72708462.hu783797895:
        return 'No permissions to record this screen';

      default:
        return 'No preview available';
    }
  }
}

class Gu629108887 {
  final AssetBundle haa444311761;
  final Svg wk338014040;
  final VectorGraphicUtilities ui917290635;
  Gu629108887({
    required this.haa444311761,
    required this.wk338014040,
    required this.ui917290635,
  });

  final HashMap<Yv1018378326, ByteData> hz210211839 =
      HashMap();

  ByteData? m79113226;
  static const Size _n611154990 = Size(200, 500);
  Size qq16226588 = _n611154990;

  FutureOr<ByteData> odq817361290(
    Ado433202498 tv305047378,
  ) async {
    late Size og5430520;
    final Size x332199298 = Fn583050702
        .gj892083529.qb759433054.los1040687794.size;
    if (x332199298.width <= 0 || x332199298.height <= 0) {
      og5430520 = _n611154990;
    } else {
      og5430520 = x332199298;
    }

    qq16226588 = og5430520;
    final ne186920128 = Yv1018378326(
      og5430520: og5430520,
      q828748290: tv305047378.t876938128,
    );

    if (hz210211839.containsKey(ne186920128)) {
      return hz210211839[ne186920128]!;
    }
    final ByteData fz493865461 =
        await _tb714324074(og5430520, tv305047378);
    hz210211839[ne186920128] = fz493865461;
    return fz493865461;
  }

  Future<ByteData> _tb714324074(
    Size og5430520,
    Ado433202498 tv305047378,
  ) async {
    final double z1055596707 = og5430520.width;
    final double npd281075972 = og5430520.height;
    final sju1071713180 = ui.PictureRecorder();
    final r241397961 = Canvas(
      sju1071713180,
      Rect.fromLTWH(0, 0, z1055596707, npd281075972),
    );
    //
    final double gvn394175333 = z1055596707 * 0.9;

    final TextPainter gdl294618581 = TextPainter(
      text: TextSpan(
        text: tv305047378.gd266286487(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(
        maxWidth: gvn394175333,
      );

    const double p657325310 = 60;
    const double df255714195 = 16;
    final double r300553437 = gdl294618581.height;
    final double oj480093263 = gdl294618581.width;
    final double rwv431137162 =
        npd281075972 - r300553437 - p657325310;
    //
    final ByteData nq629039713 = await _ivn37142943();

    final PictureInfo vem428973208 = await ui917290635.loadPicture(
      SvgBytesLoader(
        nq629039713.buffer.asUint8List(),
      ),
      null,
    );

    int u246996203 = oj480093263 ~/ vem428973208.size.aspectRatio;
    double f623615399 = oj480093263;
    if (u246996203 > rwv431137162) {
      u246996203 = rwv431137162.toInt();
      f623615399 = u246996203 * vem428973208.size.aspectRatio;
    }

    final ui.PictureRecorder wsd1062239805 = ui.PictureRecorder();

    final ui.Canvas pu36324303 = Canvas(
        wsd1062239805,
        Rect.fromPoints(
          Offset.zero,
          Offset(f623615399, u246996203.toDouble()),
        ),);
    pu36324303.scale(
      f623615399 / vem428973208.size.width,
      u246996203 / vem428973208.size.height,
    );
    pu36324303.drawPicture(vem428973208.picture);
    final ui.Image y613329443 = await wsd1062239805
        .endRecording()
        .toImage(f623615399.ceil(), u246996203);
    vem428973208.picture.dispose();

    final double zcj161676362 = (npd281075972 -
            (r300553437 +
                y613329443.height +
                p657325310 -
                df255714195)) /
        2;
    final thy826719127 = Offset((z1055596707 - f623615399) / 2, zcj161676362);

    r241397961.drawColor(Colors.white, ui.BlendMode.srcOver);
    r241397961.drawImage(
      y613329443,
      thy826719127,
      Paint()
        ..color = Colors.red
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.square
        ..style = PaintingStyle.fill,
    );
    //
    final double crg879231500 =
        zcj161676362 + y613329443.height.toDouble() + df255714195;

    final double saq609838562 = (z1055596707 - oj480093263) / 2;
    final double e172543718 = crg879231500;
    final Offset m557611952 = Offset(saq609838562, e172543718);
    gdl294618581.paint(r241397961, m557611952);

    final ui.Image cx153991766 = await sju1071713180
        .endRecording()
        .toImage(z1055596707.toInt(), npd281075972.toInt());
    return (await cx153991766.toByteData(format: ui.ImageByteFormat.png))!;
  }

  FutureOr<ByteData> _ivn37142943() async =>
      m79113226 ??= await haa444311761
          .load('packages/medallia_dxa/assets/placeholder_image.svg');
}

//
class Yv1018378326 {
  final Size og5430520;
  final Z72708462 q828748290;
  Yv1018378326({
    required this.og5430520,
    required this.q828748290,
  });

  @override
  bool operator ==(covariant Yv1018378326 lb304490628) {
    if (identical(this, lb304490628)) return true;

    return lb304490628.og5430520 == og5430520 && lb304490628.q828748290 == q828748290;
  }

  @override
  int get hashCode => og5430520.hashCode ^ q828748290.hashCode;
}
