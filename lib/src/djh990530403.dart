import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/qx678250726.dart';
import 'package:medallia_dxa/src/idy1040135208.dart';
import 'package:medallia_dxa/src/c249197541.dart';

class Cdv221967874 {
  Cdv221967874();

  final Map<int, Ff857031521> _s574179526 = {};

  void xt174099503(
    ScrollNotification qq1049997001,
  ) {
    final s95499588 =
        vb84513330(qq1049997001);

    final dt224376279 = s95499588?.t317247909();
    if (dt224376279 == null) {
      return;
    }

    switch (dt224376279.dct639058443) {
      case Lx243188421.fvl81536999:
        _k924393144(dt224376279);
        break;

      case Lx243188421.uo916957638:
        _nv287567860(dt224376279);
        break;

      default:
        return;
    }
  }

  Ff857031521? ide878562603(
    Set<Vw726055943> qgu896336836,
  ) {
    final List<Ff857031521> c295269860 = [];
    for (final wkm318912130 in _s574179526.entries) {
      final b891790635 =
          wkm318912130.value.q927850036;

      final azx48873902 = qgu896336836;

      final hlw924916532 = b891790635.intersection(azx48873902);
      if (hlw924916532.isNotEmpty) {
        c295269860.add(wkm318912130.value);
      }
    }

    if (c295269860.isEmpty) {
      return null;
    }
    if (c295269860.length == 1) {
      _s574179526.remove(
        c295269860.first.joj269890352.bkx528465052(),
      );
      return c295269860.first;
    }

    //
    //
    if (c295269860.length > 1) {
      _s574179526.remove(
        c295269860.first.joj269890352.bkx528465052(),
      );
      return c295269860.first;
    }

    return null;
  }

  void _k924393144(
    M519988104 r328412744,
  ) {
    if (_s574179526
        .containsKey(r328412744.bkx528465052())) {
      _s574179526.remove(r328412744.bkx528465052());
    }
    final Ff857031521 oov519388453 = Ff857031521(
      joj269890352: r328412744,
    );
    _s574179526[r328412744.bkx528465052()] =
        oov519388453;
  }

  void _nv287567860(
    M519988104 goo123216659,
  ) {
    final lv344712401 =
        _s574179526[goo123216659.bkx528465052()];

    lv344712401?.mxg749000547(goo123216659);
  }

  void m972929986() {
    _s574179526.clear();
  }

  //ScrollStartNotificationScrollUpdateNotificationOverscrollNotification
  Bku347441297? vb84513330(
    ScrollNotification km445765532,
  ) {
    final ScrollMetrics o283409068 = km445765532.metrics;
    final BuildContext? ld180727865 = km445765532.context;
    int? ix124147688;
    Offset? g185395247;
    Lx243188421? dct639058443;
    if (km445765532 is ScrollStartNotification) {
      dct639058443 = Lx243188421.fvl81536999;
      g185395247 = km445765532.dragDetails?.globalPosition;
      ix124147688 =
          km445765532.dragDetails?.sourceTimeStamp?.inMicroseconds;
    }

    if (km445765532 is ScrollUpdateNotification) {
      dct639058443 = Lx243188421.uo916957638;
      g185395247 = km445765532.dragDetails?.globalPosition;

      ix124147688 =
          km445765532.dragDetails?.sourceTimeStamp?.inMicroseconds;
    }

    if (km445765532 is OverscrollNotification) {
      dct639058443 = Lx243188421.uo916957638;
      g185395247 = km445765532.dragDetails?.globalPosition;

      ix124147688 =
          km445765532.dragDetails?.sourceTimeStamp?.inMicroseconds;
    }

    if (km445765532 is ScrollEndNotification) {
      dct639058443 = Lx243188421.xg818185519;
    }

    if (dct639058443 == null) {
      return null;
    }

    final jm643260217 = ld180727865?.findRenderObject();

    return Bku347441297(
      o283409068: o283409068,
      ld180727865: ld180727865,
      dct639058443: dct639058443,
      ix124147688: ix124147688,
      jm643260217: jm643260217,
      g185395247: g185395247,
    );
  }

  Fv31253337? vd182363496(
    Ff857031521 a274873080,
    Vw726055943 r871578153,
  ) {
    final int d971915779 =
        r871578153.k921636407;

    final ya484282431 = a274873080.q927850036
        .map((zg352813399) => zg352813399.k921636407)
        .toList();

    final n166208081 =
        ya484282431.v696419478(d971915779);

    late final M519988104? dt224376279;
    if (n166208081 == null) {
      dt224376279 = a274873080.joj269890352;
    } else {
      dt224376279 = a274873080
          .bs236851105(n166208081);
    }

    if (dt224376279 == null) {
      return null;
    }
    final f680437822 = dt224376279.o283409068.axis;
    final dcy557611287 = dt224376279.o283409068.pixels.toInt();
    final py962169832 = dt224376279.ld180727865.findRenderObject();
    final bp1022730460 = dt224376279.ld180727865
        .findAncestorRenderObjectOfType<RenderSemanticsGestureHandler>();

    final zzu642395874 = py962169832.hashCode;
    final q298744004 = bp1022730460?.hashCode;

    return Fv31253337(
      dki231120564: f680437822 == Axis.horizontal ? dcy557611287 : 0,
      d940896784: f680437822 == Axis.vertical ? dcy557611287 : 0,
      q298744004: q298744004,
      pl328021451: zzu642395874,
    );
  }
}
