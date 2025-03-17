import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/u1031389579.dart';
import 'package:medallia_dxa/src/d452802285.dart';
import 'package:medallia_dxa/src/llc304042029.dart';
import 'package:medallia_dxa/src/fg966267642.dart';

@immutable
class T686664112 {
  final String ptf459292711;
  final String m652312446;
  final int qb212009920;
  final int? e1032417908;
  final bool kfm633508767;
  final List<DxaRouteWithModalReference> fxk986357160;
  final List<Zs958539155> xrm916462918;
  final bool nei614816429;

  final bool or884417639;
  final bool y901481923;
  final Hzm72708955? w876937637;
  final List<Zel627940137> xlw229772398;
  late final WidgetsBinding _fzq336584770 =
      K583051259.y892084092.fx759432555;

  //
  List<Y666223319> get fmi231563986 {
    return xrm916462918
        .whereType<Y666223319>()
        .where((bma286663290) => !m399593687.contains(bma286663290))
        .toList()
      ..removeWhere(
        (w412700413) => w412700413.ahj1001734911.navigator == null,
      );
  }

  Element get e313789541 =>
      _fzq336584770.g405157749!;

  bool get pdy821949058 {
    return fxk986357160.every((w412700413) => w412700413 is Y666223319);
  }

  List<Y666223319> get m399593687 {
    final List<Y666223319> w786464261 = [];
    for (final ehk67975824 in fxk986357160) {
      w786464261.add(ehk67975824.yom588000312());
    }
    return w786464261;
  }

  Y666223319 get kyk833759362 {
    final DxaRouteWithModalReference u22218041 = fxk986357160.last;

    return u22218041.yom588000312();
  }

  bool get njl243852461 =>
      fxk986357160.any((w412700413) => w412700413.ahj1001734911.navigator == null);

  bool get jq368020880 =>
      !fxk986357160.any((w412700413) => w412700413 is Y666223319);

  final bool kt469235508;
  int get uj161819521 => ptf459292711.hashCode ^ qb212009920.hashCode;

  T686664112({
    required this.ptf459292711,
    required this.m652312446,
    required this.qb212009920,
    required this.fxk986357160,
    required this.xrm916462918,
    required this.e1032417908,
    required this.kt469235508,
    required this.nei614816429,
    required this.kfm633508767,
    required this.or884417639,
    required this.y901481923,
    required this.w876937637,
  }) : xlw229772398 = [];

  T686664112.standard({
    required this.ptf459292711,
    required this.m652312446,
    required this.qb212009920,
    required this.fxk986357160,
    required this.xrm916462918,
    required this.or884417639,
    required this.y901481923,
    required this.w876937637,
    this.e1032417908,
  })  : kt469235508 = false,
        nei614816429 = false,
        kfm633508767 = false,
        xlw229772398 = [];

  //n712080185
  T686664112.createFinished({
    required this.ptf459292711,
    required this.qb212009920,
    required this.m652312446,
    required this.e1032417908,
    required this.fxk986357160,
    required this.xrm916462918,
    required this.nei614816429,
    required this.kfm633508767,
    required this.or884417639,
    required this.y901481923,
    required this.xlw229772398,
    required this.w876937637,
  }) : kt469235508 = true;

  T270264497 n712080185(int e1032417908) {
    return T270264497(
      ptf459292711: ptf459292711,
      m652312446: m652312446,
      fxk986357160: fxk986357160,
      xrm916462918: xrm916462918,
      qb212009920: qb212009920,
      e1032417908: e1032417908,
      nei614816429: nei614816429,
      kfm633508767: kfm633508767,
      or884417639: or884417639,
      y901481923: y901481923,
      w876937637: w876937637,
      xlw229772398: xlw229772398,
    );
  }

  T686664112 muc801147143(String qvu131698499) {
    return T686664112(
      ptf459292711: ptf459292711,
      m652312446: qvu131698499,
      qb212009920: qb212009920,
      fxk986357160: fxk986357160,
      xrm916462918: xrm916462918,
      e1032417908: e1032417908,
      kt469235508: kt469235508,
      nei614816429: nei614816429,
      kfm633508767: kfm633508767,
      or884417639: or884417639,
      y901481923: y901481923,
      w876937637: w876937637,
    );
  }

  //
  //
  T686664112 bt623466024(int mk124518951) {
    return T686664112(
      ptf459292711: ptf459292711,
      m652312446: m652312446,
      qb212009920: mk124518951,
      fxk986357160: fxk986357160,
      xrm916462918: xrm916462918,
      e1032417908: e1032417908,
      kt469235508: kt469235508,
      nei614816429: nei614816429,
      kfm633508767: kfm633508767,
      or884417639: or884417639,
      y901481923: y901481923,
      w876937637: w876937637,
    );
  }

  @override
  String toString() {
    return 'ScreenVisited(id: $ptf459292711, uniqueid $uj161819521, name: $m652312446, timestamp: $qb212009920, endTimestamp: $e1032417908, isTabBar: $kfm633508767, finished: $kt469235508)';
  }
}

@immutable
class Zel627940137 {
  final bool t450169137;
  final Uint8List x238766368;
  final int y228738342;
  final String iwp343814773;
  final int drx152848124;
  const Zel627940137({
    required this.t450169137,
    required this.x238766368,
    required this.y228738342,
    required this.iwp343814773,
    required this.drx152848124,
  });
}

@immutable
class T270264497 extends T686664112 {
  @override
  int get e1032417908 => super.e1032417908!;
  T270264497({
    required super.ptf459292711,
    required super.qb212009920,
    required super.m652312446,
    required int super.e1032417908,
    required super.fxk986357160,
    required super.xrm916462918,
    required super.nei614816429,
    required super.kfm633508767,
    required super.or884417639,
    required super.y901481923,
    required super.xlw229772398,
    required super.w876937637,
  }) : super.createFinished();
}
