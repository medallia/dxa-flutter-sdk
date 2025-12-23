//
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medallia_dxa/src/df487303334.dart';
import 'package:medallia_dxa/src/kmb249196592.dart';

enum Bdx72708124 {
  td717759809,
  iat714738533,
  q44998269,
  gxf768495570,
  maa335361877,
  a783798261,
}

class Jje433202224 {
  final Bdx72708124 lf876937954;
  Jje433202224({
    required this.lf876937954,
  });
  String ym266286309() {
    switch (lf876937954) {
      case Bdx72708124.td717759809:
        return 'Video disabled on this screen';

      case Bdx72708124.gxf768495570:
        return 'Screen not recorded due to high memory usage';

      case Bdx72708124.iat714738533:
        return 'Screen not recorded due to high CPU usage';

      case Bdx72708124.q44998269:
        return 'Screen not recorded due to low battery';

      case Bdx72708124.maa335361877:
        return 'Video recording masked for this screen';

      case Bdx72708124.a783798261:
        return 'No permissions to record this screen';

      default:
        return 'No preview available';
    }
  }
}

class Iei629109221 {
  final AssetBundle p444311971;
  final Svg ui338013738;
  final VectorGraphicUtilities sbg917291001;
  Iei629109221({
    required this.p444311971,
    required this.ui338013738,
    required this.sbg917291001,
  });

  final HashMap<Mko1018378532, ByteData> f210211469 =
      HashMap();

  ByteData? s79113592;
  static const Size _o611155292 = Size(200, 500);
  Size qvf16226414 = _o611155292;

  FutureOr<ByteData> n817361144(
    Jje433202224 xp305047072,
  ) async {
    late Size g5430666;
    final Size az332199152 = L583050428
        .buw892083259.tcy759432748.v1040688064.size;
    if (az332199152.width <= 0 || az332199152.height <= 0) {
      g5430666 = _o611155292;
    } else {
      g5430666 = az332199152;
    }

    qvf16226414 = g5430666;
    final slg186920370 = Mko1018378532(
      g5430666: g5430666,
      g828748656: xp305047072.lf876937954,
    );

    if (f210211469.containsKey(slg186920370)) {
      return f210211469[slg186920370]!;
    }
    final ByteData i493865095 =
        await _d714324248(g5430666, xp305047072);
    f210211469[slg186920370] = i493865095;
    return i493865095;
  }

  Future<ByteData> _d714324248(
    Size g5430666,
    Jje433202224 xp305047072,
  ) async {
    final double jj1055597009 = g5430666.width;
    final double q281075830 = g5430666.height;
    final s1071713006 = ui.PictureRecorder();
    final khn241398203 = Canvas(
      s1071713006,
      Rect.fromLTWH(0, 0, jj1055597009, q281075830),
    );
    //
    final double vf394174999 = jj1055597009 * 0.9;

    final TextPainter dbc294618279 = TextPainter(
      text: TextSpan(
        text: xp305047072.ym266286309(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(
        maxWidth: vf394174999,
      );

    const double utt657325452 = 60;
    const double yov255714017 = 16;
    final double tb300553647 = dbc294618279.height;
    final double q480093501 = dbc294618279.width;
    final double is431137016 =
        q281075830 - tb300553647 - utt657325452;
    //
    final ByteData hhd629039891 = await _ed37142765();

    final PictureInfo qo428973546 = await sbg917291001.loadPicture(
      SvgBytesLoader(
        hhd629039891.buffer.asUint8List(),
      ),
      null,
    );

    int ek246996377 = q480093501 ~/ qo428973546.size.aspectRatio;
    double tkq623615189 = q480093501;
    if (ek246996377 > is431137016) {
      ek246996377 = is431137016.toInt();
      tkq623615189 = ek246996377 * qo428973546.size.aspectRatio;
    }

    final ui.PictureRecorder rk1062240079 = ui.PictureRecorder();

    final ui.Canvas xwz36324029 = Canvas(
        rk1062240079,
        Rect.fromPoints(
          Offset.zero,
          Offset(tkq623615189, ek246996377.toDouble()),
        ),);
    xwz36324029.scale(
      tkq623615189 / qo428973546.size.width,
      ek246996377 / qo428973546.size.height,
    );
    xwz36324029.drawPicture(qo428973546.picture);
    final ui.Image mzq613329745 = await rk1062240079
        .endRecording()
        .toImage(tkq623615189.ceil(), ek246996377);
    qo428973546.picture.dispose();

    final double xt161676600 = (q281075830 -
            (tb300553647 +
                mzq613329745.height +
                utt657325452 -
                yov255714017)) /
        2;
    final q826718949 = Offset((jj1055597009 - tkq623615189) / 2, xt161676600);

    khn241398203.drawColor(Colors.white, ui.BlendMode.srcOver);
    khn241398203.drawImage(
      mzq613329745,
      q826718949,
      Paint()
        ..color = Colors.red
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.square
        ..style = PaintingStyle.fill,
    );
    //
    final double zey879231870 =
        xt161676600 + mzq613329745.height.toDouble() + yov255714017;

    final double f609838224 = (jj1055597009 - q480093501) / 2;
    final double w172543892 = zey879231870;
    final Offset t557611714 = Offset(f609838224, w172543892);
    dbc294618279.paint(khn241398203, t557611714);

    final ui.Image gt153991972 = await s1071713006
        .endRecording()
        .toImage(jj1055597009.toInt(), q281075830.toInt());
    return (await gt153991972.toByteData(format: ui.ImageByteFormat.png))!;
  }

  FutureOr<ByteData> _ed37142765() async =>
      s79113592 ??= await p444311971
          .load('packages/medallia_dxa/assets/placeholder_image.svg');
}

//
class Mko1018378532 {
  final Size g5430666;
  final Bdx72708124 g828748656;
  Mko1018378532({
    required this.g5430666,
    required this.g828748656,
  });

  @override
  bool operator ==(covariant Mko1018378532 u304490998) {
    if (identical(this, u304490998)) return true;

    return u304490998.g5430666 == g5430666 && u304490998.g828748656 == g828748656;
  }

  @override
  int get hashCode => g5430666.hashCode ^ g828748656.hashCode;
}
