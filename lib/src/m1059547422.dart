//

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/hm369046998.dart';
import 'package:medallia_dxa/src/ug50998646.dart';
import 'package:medallia_dxa/src/p534491606.dart';

import 'package:medallia_dxa/src/jn249197442.dart';

class V1069795195 {
  final List<X666223138> rk986357085;
  //
  final List<X666223138> qgv231563815;
  final Ea808717683 yt594445249;
  final Element h815078444;
  final RenderObject edt798986868;
  final double mq91774666;
  V1069795195({
    required this.rk986357085,
    required this.qgv231563815,
    required this.yt594445249,
    required this.h815078444,
    required this.edt798986868,
    required this.mq91774666,
  }) {
    _l397723829();
  }
  late Set<Tyo859603900> _gh983094474;
  B890753039? _m152720522;

  void _l397723829() {
    List<X666223138>? rie587704645 =
        _y39237623(rk986357085: rk986357085);

    BuildContext? tv989838432 = h815078444;
    if (rie587704645 != null) {
      assert(rie587704645.first is B890753039);
      _m152720522 =
          rie587704645.first as B890753039;
      tv989838432 = _m152720522?.a304973594;
      if (tv989838432 == null) {
        throw Zqp901569541('Context not ready');
      }
    } else {
      rie587704645 = rk986357085;
    }

    final d751074333 = _ru261380623(
      rie587704645: rie587704645,
      tv989838432: tv989838432,
      qgv231563815: qgv231563815,
    );

    final Set<RenderObject> myv603810036 =
        d751074333
            .where((hs643260254) => hs643260254.po753636639)
            .toSet();

    final Rect ler623710151 = edt798986868.gzm666268938;
    final Offset rfb725285371 = Offset(ler623710151.left, ler623710151.top);
    _gh983094474 = _mc613341543(
      myv603810036,
      edt798986868,
      rfb725285371,
      mq91774666,
    );
  }

  Set<Tyo859603900> h744704245() => _gh983094474;

  B890753039? td866297295() => _m152720522;

  RenderObject? xa255167390(
    X666223138 td866297295,
  ) =>
      td866297295.a304973594?.findRenderObject();

  Set<RenderObject> _ru261380623({
    required BuildContext tv989838432,
    required List<X666223138> rie587704645,
    required List<X666223138> qgv231563815,
  }) {
    final List<BuildContext> v46229762 = [];
    for (final dcy67975781 in qgv231563815) {
      if (dcy67975781.a304973594 != null) {
        v46229762.add(dcy67975781.a304973594!);
      }
    }

    final d751074333 =
        yt594445249.aqf535478881(
      y506135568: tv989838432,
      qi539557798: v46229762,
    );
    for (var k499530736 = 0; k499530736 < rie587704645.length; k499530736++) {
      final BuildContext? y506135568 = rie587704645[k499530736].a304973594;
      if (y506135568 == null) throw Zqp901569541('Route context not ready');

      d751074333.addAll(
        yt594445249.aqf535478881(
          y506135568: y506135568,
          qi539557798: v46229762,
        ),
      );
    }
    return d751074333;
  }

  //
  List<X666223138>? _y39237623({
    required List<X666223138> rk986357085,
  }) {
    final int ep824378031 = rk986357085.lastIndexWhere((bq412700168) {
      return bq412700168 is B890753039;
    });
    if (ep824378031 == -1) {
      return null;
    }
    final List<X666223138> rie587704645 = List.of(
      rk986357085.getRange(ep824378031, rk986357085.length),
    );
    return rie587704645;
  }

  Set<Tyo859603900> _mc613341543(
    Set<RenderObject> k582723210,
    RenderObject y236610807,
    Offset qgz557611376,
    double mq91774666,
  ) {
    final Set<Tyo859603900> ggt641667869 = {};

    k582723210.removeWhere((bq412700168) => bq412700168.attached == false);
    for (final hs643260254 in k582723210) {
      ggt641667869.add(
        _owd420328877(
          hs643260254,
          y236610807,
          qgz557611376,
          mq91774666,
        ),
      );
    }
    return ggt641667869;
  }

  Tyo859603900 _owd420328877(
    RenderObject hs643260254,
    RenderObject y236610807,
    Offset qgz557611376,
    double mq91774666,
  ) {
    late Tyo859603900 njx163313268;
    hs643260254.bz236862542(y236610807).r265148245((k383825837) {
      njx163313268 = Tyo859603900(
        k383825837.yr976997237.shift(qgz557611376).ku268643395(1 / mq91774666),
        k383825837.o172218763,
        k383825837.khc567092346,
      );
    });
    return njx163313268;
  }
}
