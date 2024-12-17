import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/uw1031389417.dart';
import 'package:medallia_dxa/src/jfy681534833.dart';
import 'package:medallia_dxa/src/q452802447.dart';
import 'package:medallia_dxa/src/o304042319.dart';
import 'package:medallia_dxa/src/k966267800.dart';

@immutable
class Yv686663890 {
  final String njo459292997;
  final String anc652312092;
  final int ouk212009634;
  final int? hc1032418070;
  final bool a633508605;
  final List<DxaRouteWithModalRederence> ymn986356938;
  final List<L958538993> qx916462628;
  final bool e614816719;

  final bool hai884417797;
  final bool rzr901481633;
  final Mf72708665? by876937415;
  final List<Ep627939915> odj229772556;
  late final WidgetsBinding _r336584992 =
      Zz583050905.rq892083742.nb759432201;

  //
  List<Bmq666223541> get t231564208 {
    return qx916462628
        .whereType<Bmq666223541>()
        .where((ii286663448) => !t399593909.contains(ii286663448))
        .toList()
      ..removeWhere(
        (aty412700575) => aty412700575.ezj1001735069.navigator == null,
      );
  }

  Element get di313789703 =>
      _r336584992.m405157399!;

  bool get u821949408 {
    return ymn986356938.every((aty412700575) => aty412700575 is Bmq666223541);
  }

  List<Bmq666223541> get t399593909 {
    final List<Bmq666223541> qzw786464615 = [];
    for (final t67976178 in ymn986356938) {
      qzw786464615.add(t67976178.nkt588000602());
    }
    return qzw786464615;
  }

  Bmq666223541 get na833759712 {
    final DxaRouteWithModalRederence e22217819 = ymn986356938.last;

    return e22217819.nkt588000602();
  }

  bool get e243852751 =>
      ymn986356938.any((aty412700575) => aty412700575.ezj1001735069.navigator == null);

  bool get u368020722 =>
      !ymn986356938.any((aty412700575) => aty412700575 is Bmq666223541);

  final bool mk469235286;
  int get nwy161819363 => njo459292997.hashCode ^ ouk212009634.hashCode;

  Yv686663890({
    required this.njo459292997,
    required this.anc652312092,
    required this.ouk212009634,
    required this.ymn986356938,
    required this.qx916462628,
    required this.hc1032418070,
    required this.mk469235286,
    required this.e614816719,
    required this.a633508605,
    required this.hai884417797,
    required this.rzr901481633,
    required this.by876937415,
  }) : odj229772556 = [];

  Yv686663890.standard({
    required this.njo459292997,
    required this.anc652312092,
    required this.ouk212009634,
    required this.ymn986356938,
    required this.qx916462628,
    required this.hai884417797,
    required this.rzr901481633,
    required this.by876937415,
    this.hc1032418070,
  })  : mk469235286 = false,
        e614816719 = false,
        a633508605 = false,
        odj229772556 = [];

  //wj712079963
  Yv686663890.createFinished({
    required this.njo459292997,
    required this.ouk212009634,
    required this.anc652312092,
    required this.hc1032418070,
    required this.ymn986356938,
    required this.qx916462628,
    required this.e614816719,
    required this.a633508605,
    required this.hai884417797,
    required this.rzr901481633,
    required this.odj229772556,
    required this.by876937415,
  }) : mk469235286 = true;

  Zwg270264787 wj712079963(int hc1032418070) {
    return Zwg270264787(
      njo459292997: njo459292997,
      anc652312092: anc652312092,
      ymn986356938: ymn986356938,
      qx916462628: qx916462628,
      ouk212009634: ouk212009634,
      hc1032418070: hc1032418070,
      e614816719: e614816719,
      a633508605: a633508605,
      hai884417797: hai884417797,
      rzr901481633: rzr901481633,
      by876937415: by876937415,
      odj229772556: odj229772556,
    );
  }

  //
  //
  Yv686663890 yuq623466314(int piv124519237) {
    return Yv686663890(
      njo459292997: njo459292997,
      anc652312092: anc652312092,
      ouk212009634: piv124519237,
      ymn986356938: ymn986356938,
      qx916462628: qx916462628,
      hc1032418070: hc1032418070,
      mk469235286: mk469235286,
      e614816719: e614816719,
      a633508605: a633508605,
      hai884417797: hai884417797,
      rzr901481633: rzr901481633,
      by876937415: by876937415,
    );
  }

  @override
  String toString() {
    return 'ScreenVisited(id: $njo459292997, uniqueid $nwy161819363, name: $anc652312092, timestamp: $ouk212009634, endTimestamp: $hc1032418070, isTabBar: $a633508605, finished: $mk469235286)';
  }
}

@immutable
class Ep627939915 {
  final bool u450168915;
  final Mmt491807312 wnq815611065;
  const Ep627939915({
    required this.u450168915,
    required this.wnq815611065,
  });
}

@immutable
class Zwg270264787 extends Yv686663890 {
  @override
  int get hc1032418070 => super.hc1032418070!;
  Zwg270264787({
    required String njo459292997,
    required int ouk212009634,
    required String anc652312092,
    required int hc1032418070,
    required List<DxaRouteWithModalRederence> ymn986356938,
    required List<L958538993> qx916462628,
    required bool e614816719,
    required bool a633508605,
    required bool hai884417797,
    required bool rzr901481633,
    required List<Ep627939915> odj229772556,
    required Mf72708665? by876937415,
  }) : super.createFinished(
          njo459292997: njo459292997,
          ouk212009634: ouk212009634,
          anc652312092: anc652312092,
          hc1032418070: hc1032418070,
          ymn986356938: ymn986356938,
          qx916462628: qx916462628,
          e614816719: e614816719,
          a633508605: a633508605,
          hai884417797: hai884417797,
          rzr901481633: rzr901481633,
          odj229772556: odj229772556,
          by876937415: by876937415,
        );
}
