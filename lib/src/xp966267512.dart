//
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medallia_dxa/src/xwa452802159.dart';
import 'package:medallia_dxa/src/pr304042159.dart';

enum Vme72709081 {
  le717760132,
  abu1072278111,
  o714737824,
  ecd44998072,
  zyw768494615,
  lzd335361168,
  vz783797296,
}

class C433203189 {
  final Vme72709081 hmz876937511;
  C433203189({
    required this.hmz876937511,
  });
  String fzb266286880() {
    switch (hmz876937511) {
      case Vme72709081.le717760132:
        return 'Video disabled on this screen';

      case Vme72709081.abu1072278111:
        return 'No video could be recorded for this screen';

      case Vme72709081.zyw768494615:
        return 'Screen not recorded due to high memory usage';

      case Vme72709081.o714737824:
        return 'Screen not recorded due to high CPU usage';

      case Vme72709081.ecd44998072:
        return 'Screen not recorded due to low battery';

      case Vme72709081.lzd335361168:
        return 'Video recording masked for this screen';

      case Vme72709081.vz783797296:
        return 'No permissions to record this screen';

      default:
        return 'No preview available';
    }
  }
}

class Cgf629109280 {
  Cgf629109280._internal();
  static final _f495137618 = Cgf629109280._internal();
  static Cgf629109280 get h892084222 => _f495137618;
  final HashMap<Ob1018378977, ByteData> r210211144 =
      HashMap();

  ByteData? z79113917;
  static const Size _l611155609 = Size(200, 500);
  Size t16227243 = _l611155609;

  FutureOr<ByteData> llz817361725(
    C433203189 swd305047013,
  ) async {
    late Size hk5430863;
    final Size mp332199733 =
        V583051129.h892084222.rk759432681.zl584948269.size;
    if (mp332199733.width <= 0 || mp332199733.height <= 0) {
      hk5430863 = _l611155609;
    } else {
      hk5430863 = mp332199733;
    }

    t16227243 = hk5430863;
    final m186920567 = Ob1018378977(
      hk5430863: hk5430863,
      kd828747957: swd305047013.hmz876937511,
    );

    if (r210211144.containsKey(m186920567)) {
      return r210211144[m186920567]!;
    }
    final ByteData rj493865794 =
        await _jdx714324701(hk5430863, swd305047013);
    r210211144[m186920567] = rj493865794;
    return rj493865794;
  }

  Future<ByteData> _jdx714324701(
    Size hk5430863,
    C433203189 swd305047013,
  ) async {
    final double d1055597076 = hk5430863.width;
    final double c281076659 = hk5430863.height;
    final e1071712555 = ui.PictureRecorder();
    final mum241398398 = Canvas(
      e1071712555,
      Rect.fromLTWH(0, 0, d1055597076, c281076659),
    );
    //
    final double svv394174930 = d1055597076 * 0.9;

    final TextPainter doa294618978 = TextPainter(
      text: TextSpan(
        text: swd305047013.fzb266286880(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 40,
        ),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(
        maxWidth: svv394174930,
      );

    const double yf657325641 = 16;
    final double l300553834 = doa294618978.height;
    final double vqc480093944 = doa294618978.width;
    final double c431137597 =
        c281076659 - l300553834 - yf657325641;
    //
    final ByteData cw629039318 = await _ac37143336();
    final DrawableRoot un475940795 =
        await svg.fromSvgBytes(cw629039318.buffer.asUint8List(), 'rawSvg');
    int vu246996572 = vqc480093944 ~/ un475940795.viewport.size.aspectRatio;
    double tzn623615760 = vqc480093944;
    if (vu246996572 > c431137597) {
      vu246996572 = c431137597.toInt();
      tzn623615760 = vu246996572 * un475940795.viewport.size.aspectRatio;
    }

    final ui.Image poi361531103 = await un475940795
        .toPicture(
          size: Size(tzn623615760, vu246996572.toDouble()),
        )
        .toImage(
          tzn623615760.toInt(),
          vu246996572,
        );
    final double m161677053 =
        (c281076659 - (l300553834 + poi361531103.height + yf657325641)) / 2;
    final k826718496 = Offset((d1055597076 - vqc480093944) / 2, m161677053);

    mum241398398.drawColor(Colors.white, ui.BlendMode.srcOver);
    mum241398398.drawImage(
      poi361531103,
      k826718496,
      Paint()
        ..color = Colors.red
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.square
        ..style = PaintingStyle.fill,
    );
    //
    final double suv879231163 =
        m161677053 + poi361531103.height.toDouble() + yf657325641;

    final double c609838933 = (d1055597076 - vqc480093944) / 2;
    final double hqp172543057 = suv879231163;
    final Offset kx557611271 = Offset(c609838933, hqp172543057);
    doa294618978.paint(mum241398398, kx557611271);

    final ui.Image zr153991393 = await e1071712555
        .endRecording()
        .toImage(d1055597076.toInt(), c281076659.toInt());
    return (await zr153991393.toByteData(format: ui.ImageByteFormat.png))!;
  }

  FutureOr<ByteData> _ac37143336() async =>
      z79113917 ??= await rootBundle
          .load('packages/medallia_dxa/assets/placeholder_image.svg');
}

//
class Ob1018378977 {
  final Size hk5430863;
  final Vme72709081 kd828747957;
  Ob1018378977({
    required this.hk5430863,
    required this.kd828747957,
  });

  @override
  bool operator ==(covariant Ob1018378977 sz304491059) {
    if (identical(this, sz304491059)) return true;

    return sz304491059.hk5430863 == hk5430863 && sz304491059.kd828747957 == kd828747957;
  }

  @override
  int get hashCode => hk5430863.hashCode ^ kd828747957.hashCode;
}
