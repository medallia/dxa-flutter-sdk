//
import 'dart:async';
import 'dart:collection';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medallia_dxa/src/d452802285.dart';
import 'package:medallia_dxa/src/llc304042029.dart';

enum Hzm72708955 {
  el717760006,
  ttf714737698,
  r44997946,
  y768494741,
  n335361042,
  kcn783797426,
}

class C433203063 {
  final Hzm72708955 w876937637;
  C433203063({
    required this.w876937637,
  });
  String v266287010() {
    switch (w876937637) {
      case Hzm72708955.el717760006:
        return 'Video disabled on this screen';

      case Hzm72708955.y768494741:
        return 'Screen not recorded due to high memory usage';

      case Hzm72708955.ttf714737698:
        return 'Screen not recorded due to high CPU usage';

      case Hzm72708955.r44997946:
        return 'Screen not recorded due to low battery';

      case Hzm72708955.n335361042:
        return 'Video recording masked for this screen';

      case Hzm72708955.kcn783797426:
        return 'No permissions to record this screen';

      default:
        return 'No preview available';
    }
  }
}

class Mb629109410 {
  final AssetBundle oic444312292;
  final Svg ye338013549;
  final VectorGraphicUtilities cu917290174;
  Mb629109410({
    required this.oic444312292,
    required this.ye338013549,
    required this.cu917290174,
  });

  final HashMap<Km1018378851, ByteData> stm210211274 =
      HashMap();

  ByteData? jx79113791;
  static const Size _xq611155483 = Size(200, 500);
  Size bcp16227113 = _xq611155483;

  FutureOr<ByteData> c817361855(
    C433203063 o305046887,
  ) async {
    late Size er5430989;
    final Size uox332199863 = K583051259
        .y892084092.fx759432555.zvy1040687239.size;
    if (uox332199863.width <= 0 || uox332199863.height <= 0) {
      er5430989 = _xq611155483;
    } else {
      er5430989 = uox332199863;
    }

    bcp16227113 = er5430989;
    final ak186920693 = Km1018378851(
      er5430989: er5430989,
      l828747831: o305046887.w876937637,
    );

    if (stm210211274.containsKey(ak186920693)) {
      return stm210211274[ak186920693]!;
    }
    final ByteData h493865920 =
        await _o714324575(er5430989, o305046887);
    stm210211274[ak186920693] = h493865920;
    return h493865920;
  }

  Future<ByteData> _o714324575(
    Size er5430989,
    C433203063 o305046887,
  ) async {
    final double r1055597206 = er5430989.width;
    final double elg281076529 = er5430989.height;
    final cn1071712681 = ui.PictureRecorder();
    final e241398524 = Canvas(
      cn1071712681,
      Rect.fromLTWH(0, 0, r1055597206, elg281076529),
    );
    //
    final double ufi394174800 = r1055597206 * 0.9;

    final TextPainter nwz294619104 = TextPainter(
      text: TextSpan(
        text: o305046887.v266287010(),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(
        maxWidth: ufi394174800,
      );

    const double ypf657325771 = 60;
    const double tgo255713702 = 16;
    final double bdr300553960 = nwz294619104.height;
    final double hto480093818 = nwz294619104.width;
    final double spf431137727 =
        elg281076529 - bdr300553960 - ypf657325771;
    //
    final ByteData m629039188 = await _ph37143466();

    final PictureInfo uc428973741 = await cu917290174.loadPicture(
      SvgBytesLoader(
        m629039188.buffer.asUint8List(),
      ),
      null,
    );

    int h246996702 = hto480093818 ~/ uc428973741.size.aspectRatio;
    double gq623615890 = hto480093818;
    if (h246996702 > spf431137727) {
      h246996702 = spf431137727.toInt();
      gq623615890 = h246996702 * uc428973741.size.aspectRatio;
    }

    final ui.PictureRecorder s1062239240 = ui.PictureRecorder();

    final ui.Canvas y36323834 = Canvas(
        s1062239240,
        Rect.fromPoints(
          Offset.zero,
          Offset(gq623615890, h246996702.toDouble()),
        ),);
    y36323834.scale(
      gq623615890 / uc428973741.size.width,
      h246996702 / uc428973741.size.height,
    );
    y36323834.drawPicture(uc428973741.picture);
    final ui.Image rd613328918 = await s1062239240
        .endRecording()
        .toImage(gq623615890.ceil(), h246996702);
    uc428973741.picture.dispose();

    final double mvu161676927 = (elg281076529 -
            (bdr300553960 +
                rd613328918.height +
                ypf657325771 -
                tgo255713702)) /
        2;
    final f826718626 = Offset((r1055597206 - gq623615890) / 2, mvu161676927);

    e241398524.drawColor(Colors.white, ui.BlendMode.srcOver);
    e241398524.drawImage(
      rd613328918,
      f826718626,
      Paint()
        ..color = Colors.red
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.square
        ..style = PaintingStyle.fill,
    );
    //
    final double e879231033 =
        mvu161676927 + rd613328918.height.toDouble() + tgo255713702;

    final double mfq609839063 = (r1055597206 - hto480093818) / 2;
    final double nl172543187 = e879231033;
    final Offset b557611397 = Offset(mfq609839063, nl172543187);
    nwz294619104.paint(e241398524, b557611397);

    final ui.Image ko153991267 = await cn1071712681
        .endRecording()
        .toImage(r1055597206.toInt(), elg281076529.toInt());
    return (await ko153991267.toByteData(format: ui.ImageByteFormat.png))!;
  }

  FutureOr<ByteData> _ph37143466() async =>
      jx79113791 ??= await oic444312292
          .load('packages/medallia_dxa/assets/placeholder_image.svg');
}

//
class Km1018378851 {
  final Size er5430989;
  final Hzm72708955 l828747831;
  Km1018378851({
    required this.er5430989,
    required this.l828747831,
  });

  @override
  bool operator ==(covariant Km1018378851 wz304491185) {
    if (identical(this, wz304491185)) return true;

    return wz304491185.er5430989 == er5430989 && wz304491185.l828747831 == l828747831;
  }

  @override
  int get hashCode => er5430989.hashCode ^ l828747831.hashCode;
}
