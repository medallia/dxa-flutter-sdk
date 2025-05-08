import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/ug50998646.dart';
import 'package:medallia_dxa/src/sb487303956.dart';
import 'package:medallia_dxa/src/jn249197442.dart';
import 'package:medallia_dxa/src/m372442231.dart';

@immutable
class Wb686664005 {
  final String uf459292882;
  final String mxi652312459;
  final int l212009781;
  final int? mq1032417921;
  final bool g633508714;
  final List<DxaRouteWithModalReference> rk986357085;
  final List<U958539110> a916463027;
  final bool baj614816344;

  final bool zi884417682;
  final bool mii901481782;
  final Bgj72709038? cfh876937552;
  final List<Yj627940316> m229772443;
  late final WidgetsBinding _ln336584887 =
      Z583051022.n892084105.qyo759432606;

  //
  List<X666223138> get qgv231563815 {
    return a916463027
        .whereType<X666223138>()
        .where((kp286663311) => !ta399593506.contains(kp286663311))
        .toList()
      ..removeWhere(
        (bq412700168) => bq412700168.cu1001734666.navigator == null,
      );
  }

  Element get jza313789584 =>
      _ln336584887.zsj405157760!;

  bool get e821949047 {
    return rk986357085.every((bq412700168) => bq412700168 is X666223138);
  }

  List<X666223138> get ta399593506 {
    final List<X666223138> jjh786464496 = [];
    for (final dcy67975781 in rk986357085) {
      jjh786464496.add(dcy67975781.l588000461());
    }
    return jjh786464496;
  }

  X666223138 get ehk833759351 {
    final DxaRouteWithModalReference a22218188 = rk986357085.last;

    return a22218188.l588000461();
  }

  bool get jdz243852376 =>
      rk986357085.any((bq412700168) => bq412700168.cu1001734666.navigator == null);

  bool get y368020837 =>
      !rk986357085.any((bq412700168) => bq412700168 is X666223138);

  final bool mrn469235649;
  int get yf161819508 => uf459292882.hashCode ^ l212009781.hashCode;

  Wb686664005({
    required this.uf459292882,
    required this.mxi652312459,
    required this.l212009781,
    required this.rk986357085,
    required this.a916463027,
    required this.mq1032417921,
    required this.mrn469235649,
    required this.baj614816344,
    required this.g633508714,
    required this.zi884417682,
    required this.mii901481782,
    required this.cfh876937552,
  }) : m229772443 = [];

  Wb686664005.standard({
    required this.uf459292882,
    required this.mxi652312459,
    required this.l212009781,
    required this.rk986357085,
    required this.a916463027,
    required this.zi884417682,
    required this.mii901481782,
    required this.cfh876937552,
    this.mq1032417921,
  })  : mrn469235649 = false,
        baj614816344 = false,
        g633508714 = false,
        m229772443 = [];

  //d712080332
  Wb686664005.createFinished({
    required this.uf459292882,
    required this.l212009781,
    required this.mxi652312459,
    required this.mq1032417921,
    required this.rk986357085,
    required this.a916463027,
    required this.baj614816344,
    required this.g633508714,
    required this.zi884417682,
    required this.mii901481782,
    required this.m229772443,
    required this.cfh876937552,
  }) : mrn469235649 = true;

  Cq270264388 d712080332(int mq1032417921) {
    return Cq270264388(
      uf459292882: uf459292882,
      mxi652312459: mxi652312459,
      rk986357085: rk986357085,
      a916463027: a916463027,
      l212009781: l212009781,
      mq1032417921: mq1032417921,
      baj614816344: baj614816344,
      g633508714: g633508714,
      zi884417682: zi884417682,
      mii901481782: mii901481782,
      cfh876937552: cfh876937552,
      m229772443: m229772443,
    );
  }

  Wb686664005 zk801147378(String ohw131698614) {
    return Wb686664005(
      uf459292882: uf459292882,
      mxi652312459: ohw131698614,
      l212009781: l212009781,
      rk986357085: rk986357085,
      a916463027: a916463027,
      mq1032417921: mq1032417921,
      mrn469235649: mrn469235649,
      baj614816344: baj614816344,
      g633508714: g633508714,
      zi884417682: zi884417682,
      mii901481782: mii901481782,
      cfh876937552: cfh876937552,
    );
  }

  //
  //
  Wb686664005 r623466205(int h124519122) {
    return Wb686664005(
      uf459292882: uf459292882,
      mxi652312459: mxi652312459,
      l212009781: h124519122,
      rk986357085: rk986357085,
      a916463027: a916463027,
      mq1032417921: mq1032417921,
      mrn469235649: mrn469235649,
      baj614816344: baj614816344,
      g633508714: g633508714,
      zi884417682: zi884417682,
      mii901481782: mii901481782,
      cfh876937552: cfh876937552,
    );
  }

  @override
  String toString() {
    return 'ScreenVisited(id: $uf459292882, uniqueid $yf161819508, name: $mxi652312459, timestamp: $l212009781, endTimestamp: $mq1032417921, isTabBar: $g633508714, finished: $mrn469235649)';
  }
}

@immutable
class Yj627940316 {
  final bool iln450169284;
  final Uint8List n238766549;
  final int gns228738515;
  final String bt343814784;
  final int z152847881;
  const Yj627940316({
    required this.iln450169284,
    required this.n238766549,
    required this.gns228738515,
    required this.bt343814784,
    required this.z152847881,
  });
}

@immutable
class Cq270264388 extends Wb686664005 {
  @override
  int get mq1032417921 => super.mq1032417921!;
  Cq270264388({
    required super.uf459292882,
    required super.l212009781,
    required super.mxi652312459,
    required int super.mq1032417921,
    required super.rk986357085,
    required super.a916463027,
    required super.baj614816344,
    required super.g633508714,
    required super.zi884417682,
    required super.mii901481782,
    required super.m229772443,
    required super.cfh876937552,
  }) : super.createFinished();
}
