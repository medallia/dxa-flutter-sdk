import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/g1031389368.dart';
import 'package:medallia_dxa/src/t681534752.dart';
import 'package:medallia_dxa/src/l452802526.dart';
import 'package:medallia_dxa/src/u304042270.dart';
import 'package:medallia_dxa/src/jui966267849.dart';

@immutable
class Vo686663811 {
  final String ed459292948;
  final String du652312141;
  final int ew212009715;
  final int? h1032418119;
  final bool ca633508524;
  final List<DxaRouteWithModalRederence> rt986356891;
  final List<Q958538912> beo916462709;
  final bool y614816670;

  final bool pf884417876;
  final bool uls901481712;
  final Ets72708712? m876937366;
  final List<U627939866> zjm229772637;

  //
  List<Pgw666223588> get gqv231564257 {
    return beo916462709
        .whereType<Pgw666223588>()
        .where((lv286663497) => !bug399593956.contains(lv286663497))
        .toList()
      ..removeWhere(
        (jl412700622) => jl412700622.xz1001735116.navigator == null,
      );
  }

  bool get i370875111 => rt986356891.last.vdk501560851;

  Element get eso313789782 =>
      Wx583050952.opf892083791.o759432280.ys405157446!;

  bool get p821949361 {
    return rt986356891.every((jl412700622) => jl412700622 is Pgw666223588);
  }

  List<Pgw666223588> get bug399593956 {
    final List<Pgw666223588> iq786464566 = [];
    for (final nlp67976099 in rt986356891) {
      iq786464566.add(nlp67976099.wbl588000523());
    }
    return iq786464566;
  }

  Pgw666223588 get nj833759665 {
    final DxaRouteWithModalRederence ti22217738 = rt986356891.last;

    return ti22217738.wbl588000523();
  }

  bool get wsi243852702 =>
      rt986356891.any((jl412700622) => jl412700622.xz1001735116.navigator == null);

  bool get y368020643 =>
      !rt986356891.any((jl412700622) => jl412700622 is Pgw666223588);

  final bool k469235207;
  int get zvv161819314 => ed459292948.hashCode ^ ew212009715.hashCode;

  Vo686663811({
    required this.ed459292948,
    required this.du652312141,
    required this.ew212009715,
    required this.rt986356891,
    required this.beo916462709,
    required this.h1032418119,
    required this.k469235207,
    required this.y614816670,
    required this.ca633508524,
    required this.pf884417876,
    required this.uls901481712,
    required this.m876937366,
  }) : zjm229772637 = [];

  Vo686663811.standard({
    required this.ed459292948,
    required this.du652312141,
    required this.ew212009715,
    required this.rt986356891,
    required this.beo916462709,
    required this.pf884417876,
    required this.uls901481712,
    required this.m876937366,
    this.h1032418119,
  })  : k469235207 = false,
        y614816670 = false,
        ca633508524 = false,
        zjm229772637 = [];

  //yq712079882
  const Vo686663811.createFinished({
    required this.ed459292948,
    required this.ew212009715,
    required this.du652312141,
    required this.h1032418119,
    required this.rt986356891,
    required this.beo916462709,
    required this.y614816670,
    required this.ca633508524,
    required this.pf884417876,
    required this.uls901481712,
    required this.zjm229772637,
    required this.m876937366,
  }) : k469235207 = true;

  O270264706 yq712079882(int h1032418119) {
    return O270264706(
      ed459292948: ed459292948,
      du652312141: du652312141,
      rt986356891: rt986356891,
      beo916462709: beo916462709,
      ew212009715: ew212009715,
      h1032418119: h1032418119,
      y614816670: y614816670,
      ca633508524: ca633508524,
      pf884417876: pf884417876,
      uls901481712: uls901481712,
      m876937366: m876937366,
      zjm229772637: zjm229772637,
    );
  }

  //
  //
  Vo686663811 mua623466267(int vc124519188) {
    return Vo686663811(
      ed459292948: ed459292948,
      du652312141: du652312141,
      ew212009715: vc124519188,
      rt986356891: rt986356891,
      beo916462709: beo916462709,
      h1032418119: h1032418119,
      k469235207: k469235207,
      y614816670: y614816670,
      ca633508524: ca633508524,
      pf884417876: pf884417876,
      uls901481712: uls901481712,
      m876937366: m876937366,
    );
  }

  @override
  String toString() {
    return 'ScreenVisited(id: $ed459292948, uniqueid $zvv161819314, name: $du652312141, timestamp: $ew212009715, endTimestamp: $h1032418119, isTabBar: $ca633508524, finished: $k469235207)';
  }
}

@immutable
class U627939866 {
  final bool m450168834;
  final Zzh491807233 jqk815611112;
  const U627939866({
    required this.m450168834,
    required this.jqk815611112,
  });
}

@immutable
class O270264706 extends Vo686663811 {
  @override
  int get h1032418119 => super.h1032418119!;
  const O270264706({
    required String ed459292948,
    required int ew212009715,
    required String du652312141,
    required int h1032418119,
    required List<DxaRouteWithModalRederence> rt986356891,
    required List<Q958538912> beo916462709,
    required bool y614816670,
    required bool ca633508524,
    required bool pf884417876,
    required bool uls901481712,
    required List<U627939866> zjm229772637,
    required Ets72708712? m876937366,
  }) : super.createFinished(
          ed459292948: ed459292948,
          ew212009715: ew212009715,
          du652312141: du652312141,
          h1032418119: h1032418119,
          rt986356891: rt986356891,
          beo916462709: beo916462709,
          y614816670: y614816670,
          ca633508524: ca633508524,
          pf884417876: pf884417876,
          uls901481712: uls901481712,
          zjm229772637: zjm229772637,
          m876937366: m876937366,
        );
}
