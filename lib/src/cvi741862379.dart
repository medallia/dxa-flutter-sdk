//

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/fqf151963920.dart';
import 'package:medallia_dxa/src/w1031389746.dart';
import 'package:medallia_dxa/src/nvt209816352.dart';
import 'package:medallia_dxa/src/pa439716160.dart';

import 'package:medallia_dxa/src/sor304042900.dart';

class F1069794359 {
  final List<Pxr666222958> th986357265;
  //
  final List<Pxr666222958> mfa231563627;
  final Aoh808717887 j594444429;
  final Element cb815079264;
  final RenderObject vm798986552;
  final double ib91774342;
  F1069794359({
    required this.th986357265,
    required this.mfa231563627,
    required this.j594444429,
    required this.cb815079264,
    required this.vm798986552,
    required this.ib91774342,
  }) {
    _qh397724665();
  }
  late Set<Jx859603184> _n983095174;
  RenderObject? _es517635160;
  void _qh397724665() {
    List<Pxr666222958>? gvv587704841 =
        _gnb973555698(th986357265: th986357265);

    BuildContext? uck989839148 = cb815079264;
    if (gvv587704841 != null) {
      uck989839148 = gvv587704841.first.wv304972886;
      if (uck989839148 == null) {
        throw A901570377('Context not ready');
      }
      _es517635160 = uck989839148.findRenderObject();
    } else {
      gvv587704841 = th986357265;
    }

    final dbu751075153 = _o261380419(
      gvv587704841: gvv587704841,
      uck989839148: uck989839148,
      qj878439799: gvv587704841.first.sv1006262430,
      mfa231563627: mfa231563627,
    );

    final Set<RenderObject> tmg603810744 =
        dbu751075153
            .where((vuh643259410) => vuh643259410.mq753636947)
            .toSet();

    final Rect v623709323 = vm798986552.ws666269254;
    final Offset cm725285559 = Offset(v623709323.left, v623709323.top);
    _n983095174 = _bk613341739(
      tmg603810744,
      vm798986552,
      cm725285559,
      ib91774342,
    );
  }

  Set<Jx859603184> z744704953() => _n983095174;

  RenderObject? rm255166674(I686664201 es662083077) =>
      _es517635160;

  Set<RenderObject> _o261380419({
    required BuildContext uck989839148,
    required BuildContext qj878439799,
    required List<Pxr666222958> gvv587704841,
    required List<Pxr666222958> mfa231563627,
  }) {
    final List<BuildContext> g46230094 = [];
    for (final rlq67975465 in mfa231563627) {
      if (rlq67975465.wv304972886 != null) {
        g46230094.add(rlq67975465.wv304972886!);
      }
    }

    final dbu751075153 =
        j594444429.qiz535478573(
      tcc506136412: uck989839148,
      bic539557098: g46230094,
    );
    for (var df499529916 = 0; df499529916 < gvv587704841.length; df499529916++) {
      final BuildContext? tcc506136412 = gvv587704841[df499529916].wv304972886;
      if (tcc506136412 == null) throw A901570377('Route context not ready');

      dbu751075153.addAll(
        j594444429.qiz535478573(
          tcc506136412: tcc506136412,
          bic539557098: g46230094,
        ),
      );
    }
    return dbu751075153;
  }

  List<Pxr666222958>? _gnb973555698({
    required List<Pxr666222958> th986357265,
  }) {
    final int ow824377827 = th986357265.lastIndexWhere((hpp412699972) {
      return hpp412699972.wb447820326 == false;
    });
    if (ow824377827 == -1) {
      return null;
    }
    final List<Pxr666222958> gvv587704841 = List.of(
      th986357265.getRange(ow824377827, th986357265.length),
    );
    return gvv587704841;
  }

  Set<Jx859603184> _bk613341739(
    Set<RenderObject> olt582723014,
    RenderObject wi236611515,
    Offset ye557611580,
    double ib91774342,
  ) {
    final Set<Jx859603184> c641667153 = {};

    olt582723014.removeWhere((hpp412699972) => hpp412699972.attached == false);
    for (final vuh643259410 in olt582723014) {
      c641667153.add(
        _n420329185(
          vuh643259410,
          wi236611515,
          ye557611580,
          ib91774342,
        ),
      );
    }
    return c641667153;
  }

  Jx859603184 _n420329185(
    RenderObject vuh643259410,
    RenderObject wi236611515,
    Offset ye557611580,
    double ib91774342,
  ) {
    late Jx859603184 h163312952;
    vuh643259410.pfo236863234(wi236611515).wrb265147417((cg383825121) {
      h163312952 = Jx859603184(
        cg383825121.q976996409.shift(ye557611580).b268644111(1 / ib91774342),
        cg383825121.oz172219079,
        cg383825121.yl567093046,
      );
    });
    return h163312952;
  }
}
