//
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medallia_dxa/src/e487303575.dart';
import 'package:medallia_dxa/src/hk249196801.dart';

enum T72708397 {
  mk717759600,
  eo714738260,
  aq44998476,
  o768495331,
  r335361636,
  c783797956,
}

class Rbq433202433 {
  final T72708397 c876938195;
  Rbq433202433({
    required this.c876938195,
  });
  String cvo266286548() {
    switch (c876938195) {
      case T72708397.mk717759600:
        return 'Video disabled on this screen';

      case T72708397.o768495331:
        return 'Screen not recorded due to high memory usage';

      case T72708397.eo714738260:
        return 'Screen not recorded due to high CPU usage';

      case T72708397.aq44998476:
        return 'Screen not recorded due to low battery';

      case T72708397.r335361636:
        return 'Video recording masked for this screen';

      case T72708397.c783797956:
        return 'No permissions to record this screen';

      default:
        return 'No preview available';
    }
  }
}

class L629108948 {
  final AssetBundle zh444311698;
  final Svg x338013979;
  final VectorGraphicUtilities y917290696;
  L629108948({
    required this.zh444311698,
    required this.x338013979,
    required this.y917290696,
  });

  final HashMap<Z1018378261, ByteData> ijw210211772 =
      HashMap();

  ByteData? fc79113289;
  static const Size _o611155053 = Size(200, 500);
  Size nrc16226655 = _o611155053;

  FutureOr<ByteData> wm817361353(
    Rbq433202433 rl305047313,
  ) async {
    late Size pk5430459;
    final Size nv332199361 = Zmk583050637
        .u892083466.xk759432989.fdu1040687857.size;
    if (nv332199361.width <= 0 || nv332199361.height <= 0) {
      pk5430459 = _o611155053;
    } else {
      pk5430459 = nv332199361;
    }

    nrc16226655 = pk5430459;
    final bfp186920067 = Z1018378261(
      pk5430459: pk5430459,
      n828748353: rl305047313.c876938195,
    );

    if (ijw210211772.containsKey(bfp186920067)) {
      return ijw210211772[bfp186920067]!;
    }
    final ByteData s493865398 =
        await _vrx714324009(pk5430459, rl305047313);
    ijw210211772[bfp186920067] = s493865398;
    return s493865398;
  }

  Future<ByteData> _vrx714324009(
    Size pk5430459,
    Rbq433202433 rl305047313,
  ) async {
    final double udp1055596768 = pk5430459.width;
    final double s281076039 = pk5430459.height;
    final gk1071713247 = ui.PictureRecorder();
    final h241397898 = Canvas(
      gk1071713247,
      Rect.fromLTWH(0, 0, udp1055596768, s281076039),
    );
    //
    final double sb394175270 = udp1055596768 * 0.9;

    final TextPainter lau294618518 = TextPainter(
      text: TextSpan(
        text: rl305047313.cvo266286548(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(
        maxWidth: sb394175270,
      );

    const double ct657325245 = 60;
    const double zy255714256 = 16;
    final double n300553374 = lau294618518.height;
    final double krx480093196 = lau294618518.width;
    final double epo431137225 =
        s281076039 - n300553374 - ct657325245;
    //
    final ByteData qo629039650 = await _oi37143004();

    final PictureInfo rng428973275 = await y917290696.loadPicture(
      SvgBytesLoader(
        qo629039650.buffer.asUint8List(),
      ),
      null,
    );

    int j246996136 = krx480093196 ~/ rng428973275.size.aspectRatio;
    double r623615460 = krx480093196;
    if (j246996136 > epo431137225) {
      j246996136 = epo431137225.toInt();
      r623615460 = j246996136 * rng428973275.size.aspectRatio;
    }

    final ui.PictureRecorder y1062239870 = ui.PictureRecorder();

    final ui.Canvas lj36324236 = Canvas(
        y1062239870,
        Rect.fromPoints(
          Offset.zero,
          Offset(r623615460, j246996136.toDouble()),
        ),);
    lj36324236.scale(
      r623615460 / rng428973275.size.width,
      j246996136 / rng428973275.size.height,
    );
    lj36324236.drawPicture(rng428973275.picture);
    final ui.Image pg613329504 = await y1062239870
        .endRecording()
        .toImage(r623615460.ceil(), j246996136);
    rng428973275.picture.dispose();

    final double lt161676297 = (s281076039 -
            (n300553374 +
                pg613329504.height +
                ct657325245 -
                zy255714256)) /
        2;
    final j826719188 = Offset((udp1055596768 - r623615460) / 2, lt161676297);

    h241397898.drawColor(Colors.white, ui.BlendMode.srcOver);
    h241397898.drawImage(
      pg613329504,
      j826719188,
      Paint()
        ..color = Colors.red
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.square
        ..style = PaintingStyle.fill,
    );
    //
    final double iju879231567 =
        lt161676297 + pg613329504.height.toDouble() + zy255714256;

    final double vin609838497 = (udp1055596768 - krx480093196) / 2;
    final double sxw172543653 = iju879231567;
    final Offset o557612019 = Offset(vin609838497, sxw172543653);
    lau294618518.paint(h241397898, o557612019);

    final ui.Image mw153991701 = await gk1071713247
        .endRecording()
        .toImage(udp1055596768.toInt(), s281076039.toInt());
    return (await mw153991701.toByteData(format: ui.ImageByteFormat.png))!;
  }

  FutureOr<ByteData> _oi37143004() async =>
      fc79113289 ??= await zh444311698
          .load('packages/medallia_dxa/assets/placeholder_image.svg');
}

//
class Z1018378261 {
  final Size pk5430459;
  final T72708397 n828748353;
  Z1018378261({
    required this.pk5430459,
    required this.n828748353,
  });

  @override
  bool operator ==(covariant Z1018378261 s304490695) {
    if (identical(this, s304490695)) return true;

    return s304490695.pk5430459 == pk5430459 && s304490695.n828748353 == n828748353;
  }

  @override
  int get hashCode => pk5430459.hashCode ^ n828748353.hashCode;
}
