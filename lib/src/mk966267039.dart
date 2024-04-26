//
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medallia_dxa/src/feb452801672.dart';
import 'package:medallia_dxa/src/e304042568.dart';

enum U72708414 {
  m717759587,
  ctw1072277688,
  yv714738247,
  zq44998495,
  fx768495344,
  pp335361655,
  pi783797975,
}

class Cmp433202450 {
  final U72708414 ujw876938176;
  Cmp433202450({
    required this.ujw876938176,
  });
  String o266286535() {
    switch (ujw876938176) {
      case U72708414.m717759587:
        return 'Video disabled on this screen';

      case U72708414.ctw1072277688:
        return 'No video could be recorded for this screen';

      case U72708414.fx768495344:
        return 'Screen not recorded due to high memory usage';

      case U72708414.yv714738247:
        return 'Screen not recorded due to high CPU usage';

      case U72708414.zq44998495:
        return 'Screen not recorded due to low battery';

      case U72708414.pp335361655:
        return 'Video recording masked for this screen';

      case U72708414.pi783797975:
        return 'No permissions to record this screen';

      default:
        return 'No preview available';
    }
  }
}

class Wq629108935 {
  Wq629108935._internal();
  static final _g495137205 = Wq629108935._internal();
  static Wq629108935 get fwk892083481 => _g495137205;
  final HashMap<Rz1018378246, ByteData> vy210211759 =
      HashMap();

  ByteData? fr79113306;
  static const Size _u611155070 = Size(200, 500);
  Size n16226636 = _u611155070;

  FutureOr<ByteData> gv817361370(
    Cmp433202450 o305047298,
  ) async {
    late Size un5430440;
    final Size yp332199378 = R583050654
        .fwk892083481.is759432974.yta1040687842.size;
    if (yp332199378.width <= 0 || yp332199378.height <= 0) {
      un5430440 = _u611155070;
    } else {
      un5430440 = yp332199378;
    }

    n16226636 = un5430440;
    final q186920080 = Rz1018378246(
      un5430440: un5430440,
      q828748370: o305047298.ujw876938176,
    );

    if (vy210211759.containsKey(q186920080)) {
      return vy210211759[q186920080]!;
    }
    final ByteData f493865381 =
        await _n714324026(un5430440, o305047298);
    vy210211759[q186920080] = f493865381;
    return f493865381;
  }

  Future<ByteData> _n714324026(
    Size un5430440,
    Cmp433202450 o305047298,
  ) async {
    final double r1055596787 = un5430440.width;
    final double vn281076052 = un5430440.height;
    final j1071713228 = ui.PictureRecorder();
    final gfd241397913 = Canvas(
      j1071713228,
      Rect.fromLTWH(0, 0, r1055596787, vn281076052),
    );
    //
    final double u394175285 = r1055596787 * 0.9;

    final TextPainter wl294618501 = TextPainter(
      text: TextSpan(
        text: o305047298.o266286535(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 40,
        ),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(
        maxWidth: u394175285,
      );

    const double ukf657325230 = 16;
    final double dn300553357 = wl294618501.height;
    final double fw480093215 = wl294618501.width;
    final double v431137242 =
        vn281076052 - dn300553357 - ukf657325230;
    //
    final ByteData mf629039665 = await _vt37142991();
    final DrawableRoot hej475940188 =
        await svg.fromSvgBytes(mf629039665.buffer.asUint8List(), 'rawSvg');
    int k246996155 = fw480093215 ~/ hej475940188.viewport.size.aspectRatio;
    double rs623615479 = fw480093215;
    if (k246996155 > v431137242) {
      k246996155 = v431137242.toInt();
      rs623615479 = k246996155 * hej475940188.viewport.size.aspectRatio;
    }

    final ui.Image frn361530424 = await hej475940188
        .toPicture(
          size: Size(rs623615479, k246996155.toDouble()),
        )
        .toImage(
          rs623615479.toInt(),
          k246996155,
        );
    final double m161676314 =
        (vn281076052 - (dn300553357 + frn361530424.height + ukf657325230)) / 2;
    final fq826719175 = Offset((r1055596787 - fw480093215) / 2, m161676314);

    gfd241397913.drawColor(Colors.white, ui.BlendMode.srcOver);
    gfd241397913.drawImage(
      frn361530424,
      fq826719175,
      Paint()
        ..color = Colors.red
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.square
        ..style = PaintingStyle.fill,
    );
    //
    final double z879231580 =
        m161676314 + frn361530424.height.toDouble() + ukf657325230;

    final double r609838514 = (r1055596787 - fw480093215) / 2;
    final double yx172543670 = z879231580;
    final Offset v557612000 = Offset(r609838514, yx172543670);
    wl294618501.paint(gfd241397913, v557612000);

    final ui.Image aqb153991686 = await j1071713228
        .endRecording()
        .toImage(r1055596787.toInt(), vn281076052.toInt());
    return (await aqb153991686.toByteData(format: ui.ImageByteFormat.png))!;
  }

  FutureOr<ByteData> _vt37142991() async =>
      fr79113306 ??= await rootBundle
          .load('packages/medallia_dxa/assets/placeholder_image.svg');
}

//
class Rz1018378246 {
  final Size un5430440;
  final U72708414 q828748370;
  Rz1018378246({
    required this.un5430440,
    required this.q828748370,
  });

  @override
  bool operator ==(covariant Rz1018378246 b304490708) {
    if (identical(this, b304490708)) return true;

    return b304490708.un5430440 == un5430440 && b304490708.q828748370 == q828748370;
  }

  @override
  int get hashCode => un5430440.hashCode ^ q828748370.hashCode;
}
