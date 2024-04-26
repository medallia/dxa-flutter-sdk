//

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/jto151963852.dart';
import 'package:medallia_dxa/src/ie1031390190.dart';
import 'package:medallia_dxa/src/pk209816316.dart';
import 'package:medallia_dxa/src/ky439715996.dart';

import 'package:medallia_dxa/src/e304042568.dart';

class Zz1069794795 {
  final List<Oa666222770> j986357709;
  //
  final List<Oa666222770> lcu231563447;
  final Khd808718307 lmb594444625;
  final Element ddp815079100;
  final RenderObject lz798986468;
  final double p91774042;
  Zz1069794795({
    required this.j986357709,
    required this.lcu231563447,
    required this.lmb594444625,
    required this.ddp815079100,
    required this.lz798986468,
    required this.p91774042,
  }) {
    _i397724197();
  }
  late Set<Oj859603244> _jp983094874;
  RenderObject? _cv517635460;
  void _i397724197() {
    List<Oa666222770>? ppv587705301 =
        _vcz973555246(j986357709: j986357709);

    BuildContext? g989839088 = ddp815079100;
    if (ppv587705301 != null) {
      g989839088 = ppv587705301.first.lvz304973194;
      if (g989839088 == null) {
        throw Oy901570197('Context not ready');
      }
      _cv517635460 = g989839088.findRenderObject();
    } else {
      ppv587705301 = j986357709;
    }

    final du751074957 = _r261380255(
      ppv587705301: ppv587705301,
      g989839088: g989839088,
      vn878439595: ppv587705301.first.k1006262594,
      lcu231563447: lcu231563447,
    );

    final Set<RenderObject> nlw603810404 =
        du751074957
            .where((n643259854) => n643259854.d753637263)
            .toSet();

    final Rect n623709527 = lz798986468.u666269594;
    final Offset b725285739 = Offset(n623709527.left, n623709527.top);
    _jp983094874 = _xg613342199(
      nlw603810404,
      lz798986468,
      b725285739,
      p91774042,
    );
  }

  Set<Oj859603244> y744704613() => _jp983094874;

  RenderObject? a255166734(P686664661 l662083545) =>
      _cv517635460;

  Set<RenderObject> _r261380255({
    required BuildContext g989839088,
    required BuildContext vn878439595,
    required List<Oa666222770> ppv587705301,
    required List<Oa666222770> lcu231563447,
  }) {
    final List<BuildContext> tqv46230418 = [];
    for (final qo67975413 in lcu231563447) {
      if (qo67975413.lvz304973194 != null) {
        tqv46230418.add(qo67975413.lvz304973194!);
      }
    }

    final du751074957 =
        lmb594444625.s535478513(
      tnk506136192: g989839088,
      xlx539557174: tqv46230418,
    );
    for (var k499530080 = 0; k499530080 < ppv587705301.length; k499530080++) {
      final BuildContext? tnk506136192 = ppv587705301[k499530080].lvz304973194;
      if (tnk506136192 == null) throw Oy901570197('Route context not ready');

      du751074957.addAll(
        lmb594444625.s535478513(
          tnk506136192: tnk506136192,
          xlx539557174: tqv46230418,
        ),
      );
    }
    return du751074957;
  }

  List<Oa666222770>? _vcz973555246({
    required List<Oa666222770> j986357709,
  }) {
    final int e824377407 = j986357709.lastIndexWhere((r412699800) {
      return r412699800.oi447820794 == false;
    });
    if (e824377407 == -1) {
      return null;
    }
    final List<Oa666222770> ppv587705301 = List.of(
      j986357709.getRange(e824377407, j986357709.length),
    );
    return ppv587705301;
  }

  Set<Oj859603244> _xg613342199(
    Set<RenderObject> hv582722586,
    RenderObject ss236611175,
    Offset v557612000,
    double p91774042,
  ) {
    final Set<Oj859603244> s641667469 = {};

    hv582722586.removeWhere((r412699800) => r412699800.attached == false);
    for (final n643259854 in hv582722586) {
      s641667469.add(
        _v420329277(
          n643259854,
          ss236611175,
          v557612000,
          p91774042,
        ),
      );
    }
    return s641667469;
  }

  Oj859603244 _v420329277(
    RenderObject n643259854,
    RenderObject ss236611175,
    Offset v557612000,
    double p91774042,
  ) {
    late Oj859603244 tzj163312868;
    n643259854.c236863198(ss236611175).jyg265147845((jo383825213) {
      tzj163312868 = Oj859603244(
        jo383825213.ib976996837.shift(v557612000).ajr268644051(1 / p91774042),
        jo383825213.s172219163,
        jo383825213.ceb567092970,
      );
    });
    return tzj163312868;
  }
}
