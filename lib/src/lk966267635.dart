//
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medallia_dxa/src/xtn452802276.dart';
import 'package:medallia_dxa/src/e304042020.dart';

enum Skn72708946 {
  c717760015,
  hbi1072278228,
  x714737707,
  d44997939,
  kg768494748,
  qu335361051,
  nw783797435,
}

class B433203070 {
  final Skn72708946 r876937644;
  B433203070({
    required this.r876937644,
  });
  String js266287019() {
    switch (r876937644) {
      case Skn72708946.c717760015:
        return 'Video disabled on this screen';

      case Skn72708946.hbi1072278228:
        return 'No video could be recorded for this screen';

      case Skn72708946.kg768494748:
        return 'Screen not recorded due to high memory usage';

      case Skn72708946.x714737707:
        return 'Screen not recorded due to high CPU usage';

      case Skn72708946.d44997939:
        return 'Screen not recorded due to low battery';

      case Skn72708946.qu335361051:
        return 'Video recording masked for this screen';

      case Skn72708946.nw783797435:
        return 'No permissions to record this screen';

      default:
        return 'No preview available';
    }
  }
}

class Bs629109419 {
  Bs629109419._internal();
  static final _rk495137753 = Bs629109419._internal();
  static Bs629109419 get fc892084085 => _rk495137753;
  final HashMap<Z1018378858, ByteData> ls210211267 =
      HashMap();

  ByteData? irq79113782;
  static const Size _f611155474 = Size(200, 500);
  Size ww16227104 = _f611155474;

  FutureOr<ByteData> hg817361846(
    B433203070 xel305046894,
  ) async {
    late Size zpf5430980;
    final Size kso332199870 =
        Ka583051250.fc892084085.r759432546.oxf584948390.size;
    if (kso332199870.width <= 0 || kso332199870.height <= 0) {
      zpf5430980 = _f611155474;
    } else {
      zpf5430980 = kso332199870;
    }

    ww16227104 = zpf5430980;
    final v186920700 = Z1018378858(
      zpf5430980: zpf5430980,
      vi828747838: xel305046894.r876937644,
    );

    if (ls210211267.containsKey(v186920700)) {
      return ls210211267[v186920700]!;
    }
    final ByteData q493865929 =
        await _fwg714324566(zpf5430980, xel305046894);
    ls210211267[v186920700] = q493865929;
    return q493865929;
  }

  Future<ByteData> _fwg714324566(
    Size zpf5430980,
    B433203070 xel305046894,
  ) async {
    final double lau1055597215 = zpf5430980.width;
    final double ea281076536 = zpf5430980.height;
    final ie1071712672 = ui.PictureRecorder();
    final oml241398517 = Canvas(
      ie1071712672,
      Rect.fromLTWH(0, 0, lau1055597215, ea281076536),
    );
    //
    final double a394174809 = lau1055597215 * 0.9;

    final TextPainter gqk294619113 = TextPainter(
      text: TextSpan(
        text: xel305046894.js266287019(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 40,
        ),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(
        maxWidth: a394174809,
      );

    const double k657325762 = 16;
    final double hha300553953 = gqk294619113.height;
    final double p480093811 = gqk294619113.width;
    final double obb431137718 =
        ea281076536 - hha300553953 - k657325762;
    //
    final ByteData lg629039197 = await _ug37143459();
    final DrawableRoot fp475940656 =
        await svg.fromSvgBytes(lg629039197.buffer.asUint8List(), 'rawSvg');
    int rx246996695 = p480093811 ~/ fp475940656.viewport.size.aspectRatio;
    double uor623615899 = p480093811;
    if (rx246996695 > obb431137718) {
      rx246996695 = obb431137718.toInt();
      uor623615899 = rx246996695 * fp475940656.viewport.size.aspectRatio;
    }

    final ui.Image n361530964 = await fp475940656
        .toPicture(
          size: Size(uor623615899, rx246996695.toDouble()),
        )
        .toImage(
          uor623615899.toInt(),
          rx246996695,
        );
    final double n161676918 =
        (ea281076536 - (hha300553953 + n361530964.height + k657325762)) / 2;
    final wkp826718635 = Offset((lau1055597215 - p480093811) / 2, n161676918);

    oml241398517.drawColor(Colors.white, ui.BlendMode.srcOver);
    oml241398517.drawImage(
      n361530964,
      wkp826718635,
      Paint()
        ..color = Colors.red
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.square
        ..style = PaintingStyle.fill,
    );
    //
    final double u879231024 =
        n161676918 + n361530964.height.toDouble() + k657325762;

    final double k609839070 = (lau1055597215 - p480093811) / 2;
    final double x172543194 = u879231024;
    final Offset u557611404 = Offset(k609839070, x172543194);
    gqk294619113.paint(oml241398517, u557611404);

    final ui.Image mo153991274 = await ie1071712672
        .endRecording()
        .toImage(lau1055597215.toInt(), ea281076536.toInt());
    return (await mo153991274.toByteData(format: ui.ImageByteFormat.png))!;
  }

  FutureOr<ByteData> _ug37143459() async =>
      irq79113782 ??= await rootBundle
          .load('packages/medallia_dxa/assets/placeholder_image.svg');
}

//
class Z1018378858 {
  final Size zpf5430980;
  final Skn72708946 vi828747838;
  Z1018378858({
    required this.zpf5430980,
    required this.vi828747838,
  });

  @override
  bool operator ==(covariant Z1018378858 b304491192) {
    if (identical(this, b304491192)) return true;

    return b304491192.zpf5430980 == zpf5430980 && b304491192.vi828747838 == vi828747838;
  }

  @override
  int get hashCode => zpf5430980.hashCode ^ vi828747838.hashCode;
}
