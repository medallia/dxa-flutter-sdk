//
import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/hm369046998.dart';
import 'package:medallia_dxa/src/m1059547422.dart';
import 'package:medallia_dxa/src/ug50998646.dart';
import 'package:medallia_dxa/src/tm674086535.dart';
import 'package:medallia_dxa/src/czi371804067.dart';
import 'package:medallia_dxa/src/sb487303956.dart';
import 'package:medallia_dxa/src/p534491606.dart';
import 'package:medallia_dxa/src/jn249197442.dart';
import 'package:medallia_dxa/src/tz64669965.dart';

class Xf187482707 {
  Xf187482707();
  late final J764602542 _ohq679689462 =
      Z583051022.n892084105.ocb1001100479;
  late final Ea808717683 yt594445249 = Z583051022.n892084105.yt594445249;
  late final WidgetsBinding au277875749 =
      Z583051022.n892084105.qyo759432606;
  late final D170396941 he238486251 =
      Z583051022.n892084105.he238486251;
  Paint get _u786790765 => Paint()..color = he238486251.ejq36789649;
  final Paint _ph418987064 = Paint()
    ..color = const Color.fromARGB(255, 255, 255, 255)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  Future<ByteData?> kye533881310({
    required Wb686664005 giw662082889,
    required VoidCallback k269944080,
    required VoidCallback uu981024608,
    required Function(Size) o954939560,
  }) async {
    final Element br951105047 =
        au277875749.zsj405157760!;
    final RenderObject? edt798986868 = br951105047.renderObject;
    assert(edt798986868 != null);
    if (edt798986868 == null) return null;

    //
    RenderObject uie715370091 = edt798986868;
    Offset mie789786356 = Offset.zero;

    final double mq91774666 =
        au277875749.platformDispatcher.views.first.devicePixelRatio;

    Set<Tyo859603900> x365320088 = {};

    final uq378264114 = V1069795195(
      yt594445249: yt594445249,
      rk986357085: giw662082889.ta399593506,
      qgv231563815: giw662082889.qgv231563815,
      h815078444: br951105047,
      edt798986868: edt798986868,
      mq91774666: mq91774666,
    );
    //
    //
    //
    final B890753039? td866297295 =
        uq378264114.td866297295();

    if (td866297295 != null) {
      ig491533991(uq378264114, td866297295).r265148245((nc893639984) {
        uie715370091 = nc893639984.uie715370091;
        mie789786356 = nc893639984.mie789786356;
      });
    }

    x365320088 = uq378264114.h744704245();

    late final double vf381611071;
    late final double jm318632873;
    au277875749.a1040687218.size.r265148245((ib5430840) {
      o954939560(ib5430840);
      vf381611071 = ib5430840.width;
      jm318632873 = ib5430840.height;
    });

    final ptd1071712604 = ui.PictureRecorder();
    late final Offset c567265043;
    uie715370091.gzm666268938.r265148245((m905014702) {
      c567265043 = Offset(m905014702.left, m905014702.top);
    });

    late ui.Image ob361531048;

    return _ohq679689462.kc729888309<ByteData?>(
      ggf491323784: true,
      qhu822065941: () async {
        try {
          k269944080();

          final ui.SceneBuilder u504793955 = ui.SceneBuilder();
          final Matrix4 rq546507693 = Matrix4.identity();
          if (uie715370091 is RenderRepaintBoundary) {
            //
            final Rect m905014702 = uie715370091.gzm666268938;
            final Rect rgr814474388 = uie715370091
                .bz236862542(edt798986868)
                .yr976997237;

            final double wc716031953 =
                (rgr814474388.width / m905014702.width) / mq91774666;
            final double sp954753884 =
                (rgr814474388.height / m905014702.height) / mq91774666;

            rq546507693.scale(wc716031953, sp954753884);
          } else {
            //
            rq546507693.scale(1 / mq91774666, 1 / mq91774666);
          }
          u504793955.pushTransform(rq546507693.storage);
          //
          final ui.Scene? qki550633323 = uie715370091.layer?.buildScene(u504793955);
          if (qki550633323 == null) return null;
          ob361531048 = await qki550633323.toImage(vf381611071.ceil(), jm318632873.ceil());

          qki550633323.dispose();
        } catch (_) {
          uu981024608();
          return null;
        }

        final dh241398281 = Canvas(
          ptd1071712604,
        );
        dh241398281.drawRect(
          Rect.fromLTWH(0, 0, vf381611071, jm318632873),
          Paint()..color = const Color.fromARGB(255, 0, 0, 0),
        );
        dh241398281.drawImage(ob361531048, c567265043 - mie789786356, Paint());
        ob361531048.dispose();
        _lip329498598(dh241398281, x365320088);

        final ofv153991318 = await ptd1071712604.endRecording().toImage(
              vf381611071.ceil(),
              jm318632873.ceil(),
            );
        final a323108625 =
            await ofv153991318.toByteData(format: ui.ImageByteFormat.png);
        return a323108625;
      },
    );
  }

  Nu832239753 ig491533991(
    V1069795195 uq378264114,
    B890753039 td866297295,
  ) {
    late final RenderObject uie715370091;
    late final Offset mie789786356;
    uq378264114
        .xa255167390(td866297295)
        .r265148245((nd605527659) {
      if (nd605527659 == null) {
        throw Zqp901569541('Scene Render Object for LNOR not found');
      }
      uie715370091 = nd605527659;
      final RenderObject? da569534668 =
          td866297295.brc219402287.ldm1006263250
              .findRenderObject();
      if (da569534668 == null) {
        throw Zqp901569541('Navigator RenderObject for LNOR not found');
      }
      uie715370091
          .bz236862542(
            da569534668,
          )
          .yr976997237
          .r265148245(
        (m905014702) {
          mie789786356 = Offset(m905014702.left, m905014702.top);
        },
      );
    });
    return Nu832239753(
      uie715370091: uie715370091,
      mie789786356: mie789786356,
    );
  }

  void _lip329498598(
    Canvas dh241398281,
    Set<Tyo859603900> ggt641667869,
  ) {
    for (final njx163313268 in ggt641667869) {
      final au764049962 = Path();
      final yr976997237 = njx163313268.yr976997237;
      final vf381611071 = yr976997237.right - yr976997237.left;
      final jm318632873 = yr976997237.bottom - yr976997237.top;

      final nl76814682 = vf381611071 * njx163313268.o172218763;
      final s669129477 = vf381611071 * njx163313268.khc567092346;
      final ynh550270957 = jm318632873 * njx163313268.khc567092346;
      final ki232479410 = jm318632873 * njx163313268.o172218763;

      //
      au764049962.moveTo(yr976997237.left, yr976997237.top);
      //
      au764049962.lineTo(yr976997237.left + nl76814682, yr976997237.top + s669129477);
      //
      au764049962.lineTo(
        yr976997237.left + nl76814682 - ynh550270957,
        yr976997237.top + s669129477 + ki232479410,
      );
      //
      au764049962.lineTo(yr976997237.left - ynh550270957, yr976997237.top + ki232479410);
      //
      au764049962.close();
      dh241398281.drawPath(au764049962, _u786790765);

      dh241398281.drawPath(au764049962, _ph418987064);
    }
  }
}

class Nu832239753 {
  final RenderObject uie715370091;
  final Offset mie789786356;

  Nu832239753({
    required this.uie715370091,
    required this.mie789786356,
  });
}
