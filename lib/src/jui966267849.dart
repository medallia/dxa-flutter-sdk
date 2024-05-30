//
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medallia_dxa/src/l452802526.dart';
import 'package:medallia_dxa/src/u304042270.dart';

enum Ets72708712 {
  xpp717760309,
  s1072278510,
  sz714737937,
  i44997641,
  wzr768495014,
  nq335361313,
  jzs783797633,
}

class Se433202756 {
  final Ets72708712 m876937366;
  Se433202756({
    required this.m876937366,
  });
  String jxo266286737() {
    switch (m876937366) {
      case Ets72708712.xpp717760309:
        return 'Video disabled on this screen';

      case Ets72708712.s1072278510:
        return 'No video could be recorded for this screen';

      case Ets72708712.wzr768495014:
        return 'Screen not recorded due to high memory usage';

      case Ets72708712.sz714737937:
        return 'Screen not recorded due to high CPU usage';

      case Ets72708712.i44997641:
        return 'Screen not recorded due to low battery';

      case Ets72708712.nq335361313:
        return 'Video recording masked for this screen';

      case Ets72708712.jzs783797633:
        return 'No permissions to record this screen';

      default:
        return 'No preview available';
    }
  }
}

class L629109649 {
  final AssetBundle wq444312535;
  final Svg x338013278;
  final VectorGraphicUtilities dl917290381;
  L629109649({
    required this.wq444312535,
    required this.x338013278,
    required this.dl917290381,
  });

  final HashMap<G1018379088, ByteData> y210211065 =
      HashMap();

  ByteData? yoc79113996;
  static const Size _zdh611155752 = Size(200, 500);
  Size vq16226842 = _zdh611155752;

  FutureOr<ByteData> m817361548(
    Se433202756 ab305046612,
  ) async {
    late Size ppb5431294;
    final Size lv332199556 = Wx583050952
        .opf892083791.o759432280.eg1040687540.size;
    if (lv332199556.width <= 0 || lv332199556.height <= 0) {
      ppb5431294 = _zdh611155752;
    } else {
      ppb5431294 = lv332199556;
    }

    vq16226842 = ppb5431294;
    final hk186920902 = G1018379088(
      ppb5431294: ppb5431294,
      dz828748036: ab305046612.m876937366,
    );

    if (y210211065.containsKey(hk186920902)) {
      return y210211065[hk186920902]!;
    }
    final ByteData qrd493865715 =
        await _hii714324844(ppb5431294, ab305046612);
    y210211065[hk186920902] = qrd493865715;
    return qrd493865715;
  }

  Future<ByteData> _hii714324844(
    Size ppb5431294,
    Se433202756 ab305046612,
  ) async {
    final double mu1055597477 = ppb5431294.width;
    final double t281076226 = ppb5431294.height;
    final tn1071712410 = ui.PictureRecorder();
    final bmi241398735 = Canvas(
      tn1071712410,
      Rect.fromLTWH(0, 0, mu1055597477, t281076226),
    );
    //
    final double y394174563 = mu1055597477 * 0.9;

    final TextPainter e294618835 = TextPainter(
      text: TextSpan(
        text: ab305046612.jxo266286737(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(
        maxWidth: y394174563,
      );

    const double h657326072 = 40;
    final double t300554203 = e294618835.height;
    final double e480094025 = e294618835.width;
    final double xl431137420 =
        t281076226 - t300554203 - h657326072;
    //
    final ByteData ys629039463 = await _h37143193();

    final PictureInfo qa428973982 = await dl917290381.loadPicture(
      SvgBytesLoader(
        ys629039463.buffer.asUint8List(),
      ),
      null,
    );

    int jp246996973 = e480094025 ~/ qa428973982.size.aspectRatio;
    double hvc623615649 = e480094025;
    if (jp246996973 > xl431137420) {
      jp246996973 = xl431137420.toInt();
      hvc623615649 = jp246996973 * qa428973982.size.aspectRatio;
    }

    final ui.PictureRecorder j1062239547 = ui.PictureRecorder();

    final ui.Canvas hg36323529 = Canvas(
        j1062239547,
        Rect.fromPoints(
          Offset.zero,
          Offset(hvc623615649, jp246996973.toDouble()),
        ));
    hg36323529.scale(
      hvc623615649 / qa428973982.size.width,
      jp246996973 / qa428973982.size.height,
    );
    hg36323529.drawPicture(qa428973982.picture);
    final ui.Image i613329189 = await j1062239547
        .endRecording()
        .toImage(hvc623615649.ceil(), jp246996973);
    qa428973982.picture.dispose();

    final double e161677132 =
        (t281076226 - (t300554203 + i613329189.height + h657326072)) / 2;
    final b826718353 = Offset((mu1055597477 - hvc623615649) / 2, e161677132);

    bmi241398735.drawColor(Colors.white, ui.BlendMode.srcOver);
    bmi241398735.drawImage(
      i613329189,
      b826718353,
      Paint()
        ..color = Colors.red
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.square
        ..style = PaintingStyle.fill,
    );
    //
    final double tis879231242 =
        e161677132 + i613329189.height.toDouble() + h657326072;

    final double ob609838820 = (mu1055597477 - e480094025) / 2;
    final double q172543456 = tis879231242;
    final Offset q557611190 = Offset(ob609838820, q172543456);
    e294618835.paint(bmi241398735, q557611190);

    final ui.Image qw153991504 = await tn1071712410
        .endRecording()
        .toImage(mu1055597477.toInt(), t281076226.toInt());
    return (await qw153991504.toByteData(format: ui.ImageByteFormat.png))!;
  }

  FutureOr<ByteData> _h37143193() async =>
      yoc79113996 ??= await wq444312535
          .load('packages/medallia_dxa/assets/placeholder_image.svg');
}

//
class G1018379088 {
  final Size ppb5431294;
  final Ets72708712 dz828748036;
  G1018379088({
    required this.ppb5431294,
    required this.dz828748036,
  });

  @override
  bool operator ==(covariant G1018379088 lyu304491394) {
    if (identical(this, lyu304491394)) return true;

    return lyu304491394.ppb5431294 == ppb5431294 && lyu304491394.dz828748036 == dz828748036;
  }

  @override
  int get hashCode => ppb5431294.hashCode ^ dz828748036.hashCode;
}
