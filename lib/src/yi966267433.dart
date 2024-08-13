//
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medallia_dxa/src/oa452802110.dart';
import 'package:medallia_dxa/src/j304042238.dart';

enum Jq72709000 {
  bvv717760213,
  q714737905,
  w44998121,
  mwj768494662,
  c335361217,
  ua783797345,
}

class K433203108 {
  final Jq72709000 cxz876937590;
  K433203108({
    required this.cxz876937590,
  });
  String ge266286961() {
    switch (cxz876937590) {
      case Jq72709000.bvv717760213:
        return 'Video disabled on this screen';

      case Jq72709000.mwj768494662:
        return 'Screen not recorded due to high memory usage';

      case Jq72709000.q714737905:
        return 'Screen not recorded due to high CPU usage';

      case Jq72709000.w44998121:
        return 'Screen not recorded due to low battery';

      case Jq72709000.c335361217:
        return 'Video recording masked for this screen';

      case Jq72709000.ua783797345:
        return 'No permissions to record this screen';

      default:
        return 'No preview available';
    }
  }
}

class Pv629109361 {
  final AssetBundle pl444312119;
  final Svg xf338013630;
  final VectorGraphicUtilities b917290093;
  Pv629109361({
    required this.pl444312119,
    required this.xf338013630,
    required this.b917290093,
  });

  final HashMap<M1018378928, ByteData> xqg210211097 =
      HashMap();

  ByteData? c79113964;
  static const Size _krs611155656 = Size(200, 500);
  Size kwm16227322 = _krs611155656;

  FutureOr<ByteData> ao817361772(
    K433203108 s305046964,
  ) async {
    late Size bgq5430814;
    final Size xo332199780 = Klj583051048
        .yrd892084143.wf759432632.pba1040687188.size;
    if (xo332199780.width <= 0 || xo332199780.height <= 0) {
      bgq5430814 = _krs611155656;
    } else {
      bgq5430814 = xo332199780;
    }

    kwm16227322 = bgq5430814;
    final yf186920486 = M1018378928(
      bgq5430814: bgq5430814,
      wl828748004: s305046964.cxz876937590,
    );

    if (xqg210211097.containsKey(yf186920486)) {
      return xqg210211097[yf186920486]!;
    }
    final ByteData ht493865747 =
        await _yve714324620(bgq5430814, s305046964);
    xqg210211097[yf186920486] = ht493865747;
    return ht493865747;
  }

  Future<ByteData> _yve714324620(
    Size bgq5430814,
    K433203108 s305046964,
  ) async {
    final double wx1055597125 = bgq5430814.width;
    final double ro281076706 = bgq5430814.height;
    final ojz1071712634 = ui.PictureRecorder();
    final m241398319 = Canvas(
      ojz1071712634,
      Rect.fromLTWH(0, 0, wx1055597125, ro281076706),
    );
    //
    final double i394174851 = wx1055597125 * 0.9;

    final TextPainter z294618931 = TextPainter(
      text: TextSpan(
        text: s305046964.ge266286961(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(
        maxWidth: i394174851,
      );

    const double b657325592 = 40;
    final double vsv300553787 = z294618931.height;
    final double hzm480093865 = z294618931.width;
    final double u431137644 =
        ro281076706 - vsv300553787 - b657325592;
    //
    final ByteData ajf629039239 = await _nk37143417();

    final PictureInfo glw428973694 = await b917290093.loadPicture(
      SvgBytesLoader(
        ajf629039239.buffer.asUint8List(),
      ),
      null,
    );

    int gpk246996493 = hzm480093865 ~/ glw428973694.size.aspectRatio;
    double vfy623615809 = hzm480093865;
    if (gpk246996493 > u431137644) {
      gpk246996493 = u431137644.toInt();
      vfy623615809 = gpk246996493 * glw428973694.size.aspectRatio;
    }

    final ui.PictureRecorder m1062239451 = ui.PictureRecorder();

    final ui.Canvas ic36323625 = Canvas(
        m1062239451,
        Rect.fromPoints(
          Offset.zero,
          Offset(vfy623615809, gpk246996493.toDouble()),
        ));
    ic36323625.scale(
      vfy623615809 / glw428973694.size.width,
      gpk246996493 / glw428973694.size.height,
    );
    ic36323625.drawPicture(glw428973694.picture);
    final ui.Image am613329093 = await m1062239451
        .endRecording()
        .toImage(vfy623615809.ceil(), gpk246996493);
    glw428973694.picture.dispose();

    final double xi161676972 =
        (ro281076706 - (vsv300553787 + am613329093.height + b657325592)) / 2;
    final pj826718577 = Offset((wx1055597125 - vfy623615809) / 2, xi161676972);

    m241398319.drawColor(Colors.white, ui.BlendMode.srcOver);
    m241398319.drawImage(
      am613329093,
      pj826718577,
      Paint()
        ..color = Colors.red
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.square
        ..style = PaintingStyle.fill,
    );
    //
    final double utn879231210 =
        xi161676972 + am613329093.height.toDouble() + b657325592;

    final double eb609838852 = (wx1055597125 - hzm480093865) / 2;
    final double yss172542976 = utn879231210;
    final Offset tzr557611350 = Offset(eb609838852, yss172542976);
    z294618931.paint(m241398319, tzr557611350);

    final ui.Image rz153991344 = await ojz1071712634
        .endRecording()
        .toImage(wx1055597125.toInt(), ro281076706.toInt());
    return (await rz153991344.toByteData(format: ui.ImageByteFormat.png))!;
  }

  FutureOr<ByteData> _nk37143417() async =>
      c79113964 ??= await pl444312119
          .load('packages/medallia_dxa/assets/placeholder_image.svg');
}

//
class M1018378928 {
  final Size bgq5430814;
  final Jq72709000 wl828748004;
  M1018378928({
    required this.bgq5430814,
    required this.wl828748004,
  });

  @override
  bool operator ==(covariant M1018378928 uy304491106) {
    if (identical(this, uy304491106)) return true;

    return uy304491106.bgq5430814 == bgq5430814 && uy304491106.wl828748004 == wl828748004;
  }

  @override
  int get hashCode => bgq5430814.hashCode ^ wl828748004.hashCode;
}
