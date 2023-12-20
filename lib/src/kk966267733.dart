//
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medallia_dxa/src/s452802370.dart';
import 'package:medallia_dxa/src/kua304042370.dart';

enum Vj72708852 {
  ma717760425,
  bz1072278386,
  xag714738061,
  cv44997781,
  sw768494906,
  fc335361469,
  qy783797533,
}

class Wpy433202904 {
  final Vj72708852 v876937226;
  Wpy433202904({
    required this.v876937226,
  });
  String j266286605() {
    switch (v876937226) {
      case Vj72708852.ma717760425:
        return 'Video disabled on this screen';

      case Vj72708852.bz1072278386:
        return 'No video could be recorded for this screen';

      case Vj72708852.sw768494906:
        return 'Screen not recorded due to high memory usage';

      case Vj72708852.xag714738061:
        return 'Screen not recorded due to high CPU usage';

      case Vj72708852.cv44997781:
        return 'Screen not recorded due to low battery';

      case Vj72708852.fc335361469:
        return 'Video recording masked for this screen';

      case Vj72708852.qy783797533:
        return 'No permissions to record this screen';

      default:
        return 'No preview available';
    }
  }
}

class O629109517 {
  O629109517._internal();
  static final _tss495137407 = O629109517._internal();
  static O629109517 get dh892083923 => _tss495137407;
  final HashMap<T1018379212, ByteData> g210210917 =
      HashMap();

  ByteData? aqb79114128;
  static const Size _b611155892 = Size(200, 500);
  Size g16226950 = _b611155892;

  FutureOr<ByteData> f817361424(
    Wpy433202904 yos305046728,
  ) async {
    late Size vj5431138;
    final Size ioy332199448 =
        Lgg583050836.dh892083923.m759432388.ujh584948480.size;
    if (ioy332199448.width <= 0 || ioy332199448.height <= 0) {
      vj5431138 = _b611155892;
    } else {
      vj5431138 = ioy332199448;
    }

    g16226950 = vj5431138;
    final h186920794 = T1018379212(
      vj5431138: vj5431138,
      nx828748184: yos305046728.v876937226,
    );

    if (g210210917.containsKey(h186920794)) {
      return g210210917[h186920794]!;
    }
    final ByteData k493865583 =
        await _re714324976(vj5431138, yos305046728);
    g210210917[h186920794] = k493865583;
    return k493865583;
  }

  Future<ByteData> _re714324976(
    Size vj5431138,
    Wpy433202904 yos305046728,
  ) async {
    final double cks1055597369 = vj5431138.width;
    final double l281076382 = vj5431138.height;
    final amy1071712262 = ui.PictureRecorder();
    final fe241398611 = Canvas(
      amy1071712262,
      Rect.fromLTWH(0, 0, cks1055597369, l281076382),
    );
    //
    final double lw394174719 = cks1055597369 * 0.9;

    final TextPainter o294618703 = TextPainter(
      text: TextSpan(
        text: yos305046728.j266286605(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 40,
        ),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(
        maxWidth: lw394174719,
      );

    const double bb657325924 = 16;
    final double s300554055 = o294618703.height;
    final double ib480094165 = o294618703.width;
    final double om431137296 =
        l281076382 - s300554055 - bb657325924;
    //
    final ByteData p629039611 = await _t37143045();
    final DrawableRoot enx475940502 =
        await svg.fromSvgBytes(p629039611.buffer.asUint8List(), 'rawSvg');
    int g246996849 = ib480094165 ~/ enx475940502.viewport.size.aspectRatio;
    double sg623615549 = ib480094165;
    if (g246996849 > om431137296) {
      g246996849 = om431137296.toInt();
      sg623615549 = g246996849 * enx475940502.viewport.size.aspectRatio;
    }

    final ui.Image zim361531378 = await enx475940502
        .toPicture(
          size: Size(sg623615549, g246996849.toDouble()),
        )
        .toImage(
          sg623615549.toInt(),
          g246996849,
        );
    final double vip161677264 =
        (l281076382 - (s300554055 + zim361531378.height + bb657325924)) / 2;
    final vjy826718221 = Offset((cks1055597369 - ib480094165) / 2, vip161677264);

    fe241398611.drawColor(Colors.white, ui.BlendMode.srcOver);
    fe241398611.drawImage(
      zim361531378,
      vjy826718221,
      Paint()
        ..color = Colors.red
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.square
        ..style = PaintingStyle.fill,
    );
    //
    final double y879231382 =
        vip161677264 + zim361531378.height.toDouble() + bb657325924;

    final double o609838712 = (cks1055597369 - ib480094165) / 2;
    final double qtq172543356 = y879231382;
    final Offset s557611050 = Offset(o609838712, qtq172543356);
    o294618703.paint(fe241398611, s557611050);

    final ui.Image cxt153991628 = await amy1071712262
        .endRecording()
        .toImage(cks1055597369.toInt(), l281076382.toInt());
    return (await cxt153991628.toByteData(format: ui.ImageByteFormat.png))!;
  }

  FutureOr<ByteData> _t37143045() async =>
      aqb79114128 ??= await rootBundle
          .load('packages/medallia_dxa/assets/placeholder_image.svg');
}

//
class T1018379212 {
  final Size vj5431138;
  final Vj72708852 nx828748184;
  T1018379212({
    required this.vj5431138,
    required this.nx828748184,
  });

  @override
  bool operator ==(covariant T1018379212 cgv304491294) {
    if (identical(this, cgv304491294)) return true;

    return cgv304491294.vj5431138 == vj5431138 && cgv304491294.nx828748184 == nx828748184;
  }

  @override
  int get hashCode => vj5431138.hashCode ^ nx828748184.hashCode;
}
