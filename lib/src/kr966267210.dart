//
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medallia_dxa/src/yh452801885.dart';
import 'package:medallia_dxa/src/ng304042909.dart';

enum Czu72708331 {
  ig717759926,
  eme1072277869,
  er714738578,
  q44998282,
  d768495397,
  zf335361954,
  bcc783798018,
}

class Fb433202375 {
  final Czu72708331 eng876937749;
  Fb433202375({
    required this.eng876937749,
  });
  String eyk266286098() {
    switch (eng876937749) {
      case Czu72708331.ig717759926:
        return 'Video disabled on this screen';

      case Czu72708331.eme1072277869:
        return 'No video could be recorded for this screen';

      case Czu72708331.d768495397:
        return 'Screen not recorded due to high memory usage';

      case Czu72708331.er714738578:
        return 'Screen not recorded due to high CPU usage';

      case Czu72708331.q44998282:
        return 'Screen not recorded due to low battery';

      case Czu72708331.zf335361954:
        return 'Video recording masked for this screen';

      case Czu72708331.bcc783798018:
        return 'No permissions to record this screen';

      default:
        return 'No preview available';
    }
  }
}

class Rpq629109010 {
  Rpq629109010._internal();
  static final _tgr495136864 = Rpq629109010._internal();
  static Rpq629109010 get i892083404 => _tgr495136864;
  final HashMap<E1018378707, ByteData> x210211450 =
      HashMap();

  ByteData? u79113615;
  static const Size _aux611155371 = Size(200, 500);
  Size u16226457 = _aux611155371;

  FutureOr<ByteData> wst817360911(
    Fb433202375 sav305047255,
  ) async {
    late Size arq5430653;
    final Size bhh332198919 =
        Bc583050315.i892083404.diu759432923.cw584947999.size;
    if (bhh332198919.width <= 0 || bhh332198919.height <= 0) {
      arq5430653 = _aux611155371;
    } else {
      arq5430653 = bhh332198919;
    }

    u16226457 = arq5430653;
    final pb186920261 = E1018378707(
      arq5430653: arq5430653,
      h828748679: sav305047255.eng876937749,
    );

    if (x210211450.containsKey(pb186920261)) {
      return x210211450[pb186920261]!;
    }
    final ByteData f493865072 =
        await _xwm714324463(arq5430653, sav305047255);
    x210211450[pb186920261] = f493865072;
    return f493865072;
  }

  Future<ByteData> _xwm714324463(
    Size arq5430653,
    Fb433202375 sav305047255,
  ) async {
    final double sg1055596838 = arq5430653.width;
    final double jtk281075841 = arq5430653.height;
    final ox1071712793 = ui.PictureRecorder();
    final do241398092 = Canvas(
      ox1071712793,
      Rect.fromLTWH(0, 0, sg1055596838, jtk281075841),
    );
    //
    final double irj394175200 = sg1055596838 * 0.9;

    final TextPainter e294618192 = TextPainter(
      text: TextSpan(
        text: sav305047255.eyk266286098(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 40,
        ),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(
        maxWidth: irj394175200,
      );

    const double x657325435 = 16;
    final double nd300553560 = e294618192.height;
    final double kma480093642 = e294618192.width;
    final double evq431136783 =
        jtk281075841 - nd300553560 - x657325435;
    //
    final ByteData pl629040100 = await _eo37142554();
    final DrawableRoot c475939977 =
        await svg.fromSvgBytes(pl629040100.buffer.asUint8List(), 'rawSvg');
    int zwi246996334 = kma480093642 ~/ c475939977.viewport.size.aspectRatio;
    double g623615010 = kma480093642;
    if (zwi246996334 > evq431136783) {
      zwi246996334 = evq431136783.toInt();
      g623615010 = zwi246996334 * c475939977.viewport.size.aspectRatio;
    }

    final ui.Image j361530861 = await c475939977
        .toPicture(
          size: Size(g623615010, zwi246996334.toDouble()),
        )
        .toImage(
          g623615010.toInt(),
          zwi246996334,
        );
    final double pvk161676751 =
        (jtk281075841 - (nd300553560 + j361530861.height + x657325435)) / 2;
    final r826718738 = Offset((sg1055596838 - kma480093642) / 2, pvk161676751);

    do241398092.drawColor(Colors.white, ui.BlendMode.srcOver);
    do241398092.drawImage(
      j361530861,
      r826718738,
      Paint()
        ..color = Colors.red
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.square
        ..style = PaintingStyle.fill,
    );
    //
    final double d879231881 =
        pvk161676751 + j361530861.height.toDouble() + x657325435;

    final double na609838183 = (sg1055596838 - kma480093642) / 2;
    final double irq172543843 = d879231881;
    final Offset s557611573 = Offset(na609838183, irq172543843);
    e294618192.paint(do241398092, s557611573);

    final ui.Image thk153992147 = await ox1071712793
        .endRecording()
        .toImage(sg1055596838.toInt(), jtk281075841.toInt());
    return (await thk153992147.toByteData(format: ui.ImageByteFormat.png))!;
  }

  FutureOr<ByteData> _eo37142554() async =>
      u79113615 ??= await rootBundle
          .load('packages/medallia_dxa/assets/placeholder_image.svg');
}

//
class E1018378707 {
  final Size arq5430653;
  final Czu72708331 h828748679;
  E1018378707({
    required this.arq5430653,
    required this.h828748679,
  });

  @override
  bool operator ==(covariant E1018378707 n304490753) {
    if (identical(this, n304490753)) return true;

    return n304490753.arq5430653 == arq5430653 && n304490753.h828748679 == h828748679;
  }

  @override
  int get hashCode => arq5430653.hashCode ^ h828748679.hashCode;
}
