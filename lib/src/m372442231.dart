//
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medallia_dxa/src/sb487303956.dart';
import 'package:medallia_dxa/src/jn249197442.dart';

enum Bgj72709038 {
  m717760243,
  u714737879,
  haa44998095,
  mck768494688,
  ibh335361255,
  l783797319,
}

class Ai433203074 {
  final Bgj72709038 cfh876937552;
  Ai433203074({
    required this.cfh876937552,
  });
  String j266286935() {
    switch (cfh876937552) {
      case Bgj72709038.m717760243:
        return 'Video disabled on this screen';

      case Bgj72709038.mck768494688:
        return 'Screen not recorded due to high memory usage';

      case Bgj72709038.u714737879:
        return 'Screen not recorded due to high CPU usage';

      case Bgj72709038.haa44998095:
        return 'Screen not recorded due to low battery';

      case Bgj72709038.ibh335361255:
        return 'Video recording masked for this screen';

      case Bgj72709038.l783797319:
        return 'No permissions to record this screen';

      default:
        return 'No preview available';
    }
  }
}

class Qr629109335 {
  final AssetBundle wsa444312081;
  final Svg zz338013592;
  final VectorGraphicUtilities ljz917290059;
  Qr629109335({
    required this.wsa444312081,
    required this.zz338013592,
    required this.ljz917290059,
  });

  final HashMap<Kh1018378902, ByteData> mur210211135 =
      HashMap();

  ByteData? n79113930;
  static const Size _lqt611155694 = Size(200, 500);
  Size ri16227292 = _lqt611155694;

  FutureOr<ByteData> yc817361738(
    Ai433203074 tc305046930,
  ) async {
    late Size ib5430840;
    final Size wm332199746 = Z583051022
        .n892084105.qyo759432606.a1040687218.size;
    if (wm332199746.width <= 0 || wm332199746.height <= 0) {
      ib5430840 = _lqt611155694;
    } else {
      ib5430840 = wm332199746;
    }

    ri16227292 = ib5430840;
    final zk186920448 = Kh1018378902(
      ib5430840: ib5430840,
      u828747970: tc305046930.cfh876937552,
    );

    if (mur210211135.containsKey(zk186920448)) {
      return mur210211135[zk186920448]!;
    }
    final ByteData dr493865781 =
        await _y714324650(ib5430840, tc305046930);
    mur210211135[zk186920448] = dr493865781;
    return dr493865781;
  }

  Future<ByteData> _y714324650(
    Size ib5430840,
    Ai433203074 tc305046930,
  ) async {
    final double ezc1055597155 = ib5430840.width;
    final double uk281076676 = ib5430840.height;
    final ptd1071712604 = ui.PictureRecorder();
    final dh241398281 = Canvas(
      ptd1071712604,
      Rect.fromLTWH(0, 0, ezc1055597155, uk281076676),
    );
    //
    final double zx394174885 = ezc1055597155 * 0.9;

    final TextPainter vhl294618901 = TextPainter(
      text: TextSpan(
        text: tc305046930.j266286935(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(
        maxWidth: zx394174885,
      );

    const double uv657325630 = 60;
    const double qo255713619 = 16;
    final double na300553757 = vhl294618901.height;
    final double up480093839 = vhl294618901.width;
    final double t431137610 =
        uk281076676 - na300553757 - uv657325630;
    //
    final ByteData str629039265 = await _y37143391();

    final PictureInfo vh428973656 = await ljz917290059.loadPicture(
      SvgBytesLoader(
        str629039265.buffer.asUint8List(),
      ),
      null,
    );

    int dkh246996523 = up480093839 ~/ vh428973656.size.aspectRatio;
    double r623615847 = up480093839;
    if (dkh246996523 > t431137610) {
      dkh246996523 = t431137610.toInt();
      r623615847 = dkh246996523 * vh428973656.size.aspectRatio;
    }

    final ui.PictureRecorder suv1062239485 = ui.PictureRecorder();

    final ui.Canvas aai36323599 = Canvas(
        suv1062239485,
        Rect.fromPoints(
          Offset.zero,
          Offset(r623615847, dkh246996523.toDouble()),
        ),);
    aai36323599.scale(
      r623615847 / vh428973656.size.width,
      dkh246996523 / vh428973656.size.height,
    );
    aai36323599.drawPicture(vh428973656.picture);
    final ui.Image okh613329123 = await suv1062239485
        .endRecording()
        .toImage(r623615847.ceil(), dkh246996523);
    vh428973656.picture.dispose();

    final double k161676938 = (uk281076676 -
            (na300553757 +
                okh613329123.height +
                uv657325630 -
                qo255713619)) /
        2;
    final m826718551 = Offset((ezc1055597155 - r623615847) / 2, k161676938);

    dh241398281.drawColor(Colors.white, ui.BlendMode.srcOver);
    dh241398281.drawImage(
      okh613329123,
      m826718551,
      Paint()
        ..color = Colors.red
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.square
        ..style = PaintingStyle.fill,
    );
    //
    final double oan879231180 =
        k161676938 + okh613329123.height.toDouble() + qo255713619;

    final double u609838882 = (ezc1055597155 - up480093839) / 2;
    final double vxm172543014 = oan879231180;
    final Offset qgz557611376 = Offset(u609838882, vxm172543014);
    vhl294618901.paint(dh241398281, qgz557611376);

    final ui.Image ofv153991318 = await ptd1071712604
        .endRecording()
        .toImage(ezc1055597155.toInt(), uk281076676.toInt());
    return (await ofv153991318.toByteData(format: ui.ImageByteFormat.png))!;
  }

  FutureOr<ByteData> _y37143391() async =>
      n79113930 ??= await wsa444312081
          .load('packages/medallia_dxa/assets/placeholder_image.svg');
}

//
class Kh1018378902 {
  final Size ib5430840;
  final Bgj72709038 u828747970;
  Kh1018378902({
    required this.ib5430840,
    required this.u828747970,
  });

  @override
  bool operator ==(covariant Kh1018378902 br304491076) {
    if (identical(this, br304491076)) return true;

    return br304491076.ib5430840 == ib5430840 && br304491076.u828747970 == u828747970;
  }

  @override
  int get hashCode => ib5430840.hashCode ^ u828747970.hashCode;
}
