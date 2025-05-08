import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/tc678250625.dart';
import 'package:medallia_dxa/src/o1040135247.dart';
import 'package:medallia_dxa/src/jn249197442.dart';

class Vpw221967973 {
  Vpw221967973();

  final Map<int, E857031430> _xo574179489 = {};

  void v174099528(
    ScrollNotification qi1049996974,
  ) {
    final jd95499555 =
        d84513365(qi1049996974);

    final dus224376240 = jd95499555?.r317247938();
    if (dus224376240 == null) {
      return;
    }

    switch (dus224376240.cti639058540) {
      case Bb243188386.lk81536896:
        _u924393183(dus224376240);
        break;

      case Bb243188386.msv916957601:
        _qq287567763(dus224376240);
        break;

      default:
        return;
    }
  }

  E857031430? pd878562636(
    Set<A726056032> op896336803,
  ) {
    final List<E857031430> l295269763 = [];
    for (final wo318912229 in _xo574179489.entries) {
      final mr891790668 =
          wo318912229.value.gr927850067;

      final zwb48873929 = op896336803;

      final blx924916563 = mr891790668.intersection(zwb48873929);
      if (blx924916563.isNotEmpty) {
        l295269763.add(wo318912229.value);
      }
    }

    if (l295269763.isEmpty) {
      return null;
    }
    if (l295269763.length == 1) {
      _xo574179489.remove(
        l295269763.first.u269890391.ep528465147(),
      );
      return l295269763.first;
    }

    //
    //
    if (l295269763.length > 1) {
      _xo574179489.remove(
        l295269763.first.u269890391.ep528465147(),
      );
      return l295269763.first;
    }

    return null;
  }

  void _u924393183(
    Sz519988207 rjt328412719,
  ) {
    if (_xo574179489
        .containsKey(rjt328412719.ep528465147())) {
      _xo574179489.remove(rjt328412719.ep528465147());
    }
    final E857031430 rb519388482 = E857031430(
      u269890391: rjt328412719,
    );
    _xo574179489[rjt328412719.ep528465147()] =
        rb519388482;
  }

  void _qq287567763(
    Sz519988207 dkb123216756,
  ) {
    final f344712374 =
        _xo574179489[dkb123216756.ep528465147()];

    f344712374?.hsd749000452(dkb123216756);
  }

  void jpd972929957() {
    _xo574179489.clear();
  }

  //ScrollStartNotificationScrollUpdateNotificationOverscrollNotification
  Jh347441398? d84513365(
    ScrollNotification l445765627,
  ) {
    final ScrollMetrics dk283409099 = l445765627.metrics;
    final BuildContext? xv180727902 = l445765627.context;
    int? x124147599;
    Offset? uef185395272;
    Bb243188386? cti639058540;
    if (l445765627 is ScrollStartNotification) {
      cti639058540 = Bb243188386.lk81536896;
      uef185395272 = l445765627.dragDetails?.globalPosition;
      x124147599 =
          l445765627.dragDetails?.sourceTimeStamp?.inMicroseconds;
    }

    if (l445765627 is ScrollUpdateNotification) {
      cti639058540 = Bb243188386.msv916957601;
      uef185395272 = l445765627.dragDetails?.globalPosition;

      x124147599 =
          l445765627.dragDetails?.sourceTimeStamp?.inMicroseconds;
    }

    if (l445765627 is OverscrollNotification) {
      cti639058540 = Bb243188386.msv916957601;
      uef185395272 = l445765627.dragDetails?.globalPosition;

      x124147599 =
          l445765627.dragDetails?.sourceTimeStamp?.inMicroseconds;
    }

    if (l445765627 is ScrollEndNotification) {
      cti639058540 = Bb243188386.bq818185544;
    }

    if (cti639058540 == null) {
      return null;
    }

    final hs643260254 = xv180727902?.findRenderObject();

    return Jh347441398(
      dk283409099: dk283409099,
      xv180727902: xv180727902,
      cti639058540: cti639058540,
      x124147599: x124147599,
      hs643260254: hs643260254,
      uef185395272: uef185395272,
    );
  }

  L31253310? vm182363407(
    E857031430 xy274872991,
    A726056032 v871578190,
  ) {
    final int ye971915876 =
        v871578190.fpk921636432;

    final iwe484282456 = xy274872991.gr927850067
        .map((wwg352813360) => wwg352813360.fpk921636432)
        .toList();

    final xvb166208054 =
        iwe484282456.n696419569(ye971915876);

    late final Sz519988207? dus224376240;
    if (xvb166208054 == null) {
      dus224376240 = xy274872991.u269890391;
    } else {
      dus224376240 = xy274872991
          .vtt236851142(xvb166208054);
    }

    if (dus224376240 == null) {
      return null;
    }
    final bjz680437849 = dus224376240.dk283409099.axis;
    final qgz557611376 = dus224376240.dk283409099.pixels.toInt();
    final weq962169743 = dus224376240.xv180727902.findRenderObject();
    final x1022730427 = dus224376240.xv180727902
        .findAncestorRenderObjectOfType<RenderSemanticsGestureHandler>();

    final n642395781 = weq962169743.hashCode;
    final vyc298743971 = x1022730427?.hashCode;

    return L31253310(
      f231120595: bjz680437849 == Axis.horizontal ? qgz557611376 : 0,
      g940896887: bjz680437849 == Axis.vertical ? qgz557611376 : 0,
      vyc298743971: vyc298743971,
      dfu328021420: n642395781,
    );
  }
}
