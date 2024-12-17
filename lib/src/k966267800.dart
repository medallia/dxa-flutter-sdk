//
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medallia_dxa/src/q452802447.dart';
import 'package:medallia_dxa/src/o304042319.dart';

enum Mf72708665 {
  wk717760356,
  cp714737984,
  rc44997720,
  vb768495095,
  ihg335361392,
  vq783797712,
}

class Zte433202709 {
  final Mf72708665 by876937415;
  Zte433202709({
    required this.by876937415,
  });
  String b266286784() {
    switch (by876937415) {
      case Mf72708665.wk717760356:
        return 'Video disabled on this screen';

      case Mf72708665.vb768495095:
        return 'Screen not recorded due to high memory usage';

      case Mf72708665.cp714737984:
        return 'Screen not recorded due to high CPU usage';

      case Mf72708665.rc44997720:
        return 'Screen not recorded due to low battery';

      case Mf72708665.ihg335361392:
        return 'Video recording masked for this screen';

      case Mf72708665.vq783797712:
        return 'No permissions to record this screen';

      default:
        return 'No preview available';
    }
  }
}

class S629109696 {
  final AssetBundle kb444312454;
  final Svg usp338013199;
  final VectorGraphicUtilities akq917290460;
  S629109696({
    required this.kb444312454,
    required this.usp338013199,
    required this.akq917290460,
  });

  final HashMap<X1018379009, ByteData> kg210210984 =
      HashMap();

  ByteData? jq79114077;
  static const Size _kb611155833 = Size(200, 500);
  Size ibz16226891 = _kb611155833;

  FutureOr<ByteData> ndl817361629(
    Zte433202709 b305046533,
  ) async {
    late Size kpz5431215;
    final Size l332199637 = Zz583050905
        .rq892083742.nb759432201.qwr1040687589.size;
    if (l332199637.width <= 0 || l332199637.height <= 0) {
      kpz5431215 = _kb611155833;
    } else {
      kpz5431215 = l332199637;
    }

    ibz16226891 = kpz5431215;
    final psx186920855 = X1018379009(
      kpz5431215: kpz5431215,
      r828748117: b305046533.by876937415,
    );

    if (kg210210984.containsKey(psx186920855)) {
      return kg210210984[psx186920855]!;
    }
    final ByteData ehe493865634 =
        await _g714324797(kpz5431215, b305046533);
    kg210210984[psx186920855] = ehe493865634;
    return ehe493865634;
  }

  Future<ByteData> _g714324797(
    Size kpz5431215,
    Zte433202709 b305046533,
  ) async {
    final double ww1055597556 = kpz5431215.width;
    final double jcu281076307 = kpz5431215.height;
    final x1071712459 = ui.PictureRecorder();
    final era241398686 = Canvas(
      x1071712459,
      Rect.fromLTWH(0, 0, ww1055597556, jcu281076307),
    );
    //
    final double q394174514 = ww1055597556 * 0.9;

    final TextPainter ilq294618754 = TextPainter(
      text: TextSpan(
        text: b305046533.b266286784(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(
        maxWidth: q394174514,
      );

    const double g657325993 = 40;
    final double d300554122 = ilq294618754.height;
    final double d480093976 = ilq294618754.width;
    final double x431137501 =
        jcu281076307 - d300554122 - g657325993;
    //
    final ByteData wvi629039414 = await _uxq37143240();

    final PictureInfo der428974031 = await akq917290460.loadPicture(
      SvgBytesLoader(
        wvi629039414.buffer.asUint8List(),
      ),
      null,
    );

    int ehl246996924 = d480093976 ~/ der428974031.size.aspectRatio;
    double ezd623615728 = d480093976;
    if (ehl246996924 > x431137501) {
      ehl246996924 = x431137501.toInt();
      ezd623615728 = ehl246996924 * der428974031.size.aspectRatio;
    }

    final ui.PictureRecorder yq1062239594 = ui.PictureRecorder();

    final ui.Canvas yr36323480 = Canvas(
        yq1062239594,
        Rect.fromPoints(
          Offset.zero,
          Offset(ezd623615728, ehl246996924.toDouble()),
        ));
    yr36323480.scale(
      ezd623615728 / der428974031.size.width,
      ehl246996924 / der428974031.size.height,
    );
    yr36323480.drawPicture(der428974031.picture);
    final ui.Image f613329268 = await yq1062239594
        .endRecording()
        .toImage(ezd623615728.ceil(), ehl246996924);
    der428974031.picture.dispose();

    final double a161677085 =
        (jcu281076307 - (d300554122 + f613329268.height + g657325993)) / 2;
    final t826718400 = Offset((ww1055597556 - ezd623615728) / 2, a161677085);

    era241398686.drawColor(Colors.white, ui.BlendMode.srcOver);
    era241398686.drawImage(
      f613329268,
      t826718400,
      Paint()
        ..color = Colors.red
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.square
        ..style = PaintingStyle.fill,
    );
    //
    final double c879231323 =
        a161677085 + f613329268.height.toDouble() + g657325993;

    final double zki609838773 = (ww1055597556 - d480093976) / 2;
    final double k172543409 = c879231323;
    final Offset u557611239 = Offset(zki609838773, k172543409);
    ilq294618754.paint(era241398686, u557611239);

    final ui.Image u153991425 = await x1071712459
        .endRecording()
        .toImage(ww1055597556.toInt(), jcu281076307.toInt());
    return (await u153991425.toByteData(format: ui.ImageByteFormat.png))!;
  }

  FutureOr<ByteData> _uxq37143240() async =>
      jq79114077 ??= await kb444312454
          .load('packages/medallia_dxa/assets/placeholder_image.svg');
}

//
class X1018379009 {
  final Size kpz5431215;
  final Mf72708665 r828748117;
  X1018379009({
    required this.kpz5431215,
    required this.r828748117,
  });

  @override
  bool operator ==(covariant X1018379009 g304491475) {
    if (identical(this, g304491475)) return true;

    return g304491475.kpz5431215 == kpz5431215 && g304491475.r828748117 == r828748117;
  }

  @override
  int get hashCode => kpz5431215.hashCode ^ r828748117.hashCode;
}
