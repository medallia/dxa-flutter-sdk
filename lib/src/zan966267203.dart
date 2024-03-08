//
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medallia_dxa/src/cwx452801876.dart';
import 'package:medallia_dxa/src/sor304042900.dart';

enum E72708322 {
  ovx717759935,
  bti1072277860,
  g714738587,
  zo44998275,
  wox768495404,
  b335361963,
  o783798027,
}

class Mpq433202382 {
  final E72708322 zun876937756;
  Mpq433202382({
    required this.zun876937756,
  });
  String y266286107() {
    switch (zun876937756) {
      case E72708322.ovx717759935:
        return 'Video disabled on this screen';

      case E72708322.bti1072277860:
        return 'No video could be recorded for this screen';

      case E72708322.wox768495404:
        return 'Screen not recorded due to high memory usage';

      case E72708322.g714738587:
        return 'Screen not recorded due to high CPU usage';

      case E72708322.zo44998275:
        return 'Screen not recorded due to low battery';

      case E72708322.b335361963:
        return 'Video recording masked for this screen';

      case E72708322.o783798027:
        return 'No permissions to record this screen';

      default:
        return 'No preview available';
    }
  }
}

class Dl629109019 {
  Dl629109019._internal();
  static final _d495136873 = Dl629109019._internal();
  static Dl629109019 get ss892083397 => _d495136873;
  final HashMap<Y1018378714, ByteData> gj210211443 =
      HashMap();

  ByteData? zny79113606;
  static const Size _zk611155362 = Size(200, 500);
  Size mml16226448 = _zk611155362;

  FutureOr<ByteData> gd817360902(
    Mpq433202382 k305047262,
  ) async {
    late Size n5430644;
    final Size ga332198926 = Yt583050306
        .ss892083397.bl759432914.sbv1040687934.size;
    if (ga332198926.width <= 0 || ga332198926.height <= 0) {
      n5430644 = _zk611155362;
    } else {
      n5430644 = ga332198926;
    }

    mml16226448 = n5430644;
    final ltq186920268 = Y1018378714(
      n5430644: n5430644,
      dp828748686: k305047262.zun876937756,
    );

    if (gj210211443.containsKey(ltq186920268)) {
      return gj210211443[ltq186920268]!;
    }
    final ByteData dr493865081 =
        await _scd714324454(n5430644, k305047262);
    gj210211443[ltq186920268] = dr493865081;
    return dr493865081;
  }

  Future<ByteData> _scd714324454(
    Size n5430644,
    Mpq433202382 k305047262,
  ) async {
    final double idf1055596847 = n5430644.width;
    final double rgr281075848 = n5430644.height;
    final meb1071712784 = ui.PictureRecorder();
    final hvo241398085 = Canvas(
      meb1071712784,
      Rect.fromLTWH(0, 0, idf1055596847, rgr281075848),
    );
    //
    final double kv394175209 = idf1055596847 * 0.9;

    final TextPainter oq294618201 = TextPainter(
      text: TextSpan(
        text: k305047262.y266286107(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 40,
        ),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(
        maxWidth: kv394175209,
      );

    const double kt657325426 = 16;
    final double tlo300553553 = oq294618201.height;
    final double mk480093635 = oq294618201.width;
    final double hs431136774 =
        rgr281075848 - tlo300553553 - kt657325426;
    //
    final ByteData e629040109 = await _i37142547();
    final DrawableRoot qf475939968 =
        await svg.fromSvgBytes(e629040109.buffer.asUint8List(), 'rawSvg');
    int h246996327 = mk480093635 ~/ qf475939968.viewport.size.aspectRatio;
    double to623615019 = mk480093635;
    if (h246996327 > hs431136774) {
      h246996327 = hs431136774.toInt();
      to623615019 = h246996327 * qf475939968.viewport.size.aspectRatio;
    }

    final ui.Image l361530852 = await qf475939968
        .toPicture(
          size: Size(to623615019, h246996327.toDouble()),
        )
        .toImage(
          to623615019.toInt(),
          h246996327,
        );
    final double rvl161676742 =
        (rgr281075848 - (tlo300553553 + l361530852.height + kt657325426)) / 2;
    final a826718747 = Offset((idf1055596847 - mk480093635) / 2, rvl161676742);

    hvo241398085.drawColor(Colors.white, ui.BlendMode.srcOver);
    hvo241398085.drawImage(
      l361530852,
      a826718747,
      Paint()
        ..color = Colors.red
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.square
        ..style = PaintingStyle.fill,
    );
    //
    final double mm879231872 =
        rvl161676742 + l361530852.height.toDouble() + kt657325426;

    final double pqv609838190 = (idf1055596847 - mk480093635) / 2;
    final double ytf172543850 = mm879231872;
    final Offset ye557611580 = Offset(pqv609838190, ytf172543850);
    oq294618201.paint(hvo241398085, ye557611580);

    final ui.Image xpi153992154 = await meb1071712784
        .endRecording()
        .toImage(idf1055596847.toInt(), rgr281075848.toInt());
    return (await xpi153992154.toByteData(format: ui.ImageByteFormat.png))!;
  }

  FutureOr<ByteData> _i37142547() async =>
      zny79113606 ??= await rootBundle
          .load('packages/medallia_dxa/assets/placeholder_image.svg');
}

//
class Y1018378714 {
  final Size n5430644;
  final E72708322 dp828748686;
  Y1018378714({
    required this.n5430644,
    required this.dp828748686,
  });

  @override
  bool operator ==(covariant Y1018378714 tt304490760) {
    if (identical(this, tt304490760)) return true;

    return tt304490760.n5430644 == n5430644 && tt304490760.dp828748686 == dp828748686;
  }

  @override
  int get hashCode => n5430644.hashCode ^ dp828748686.hashCode;
}
