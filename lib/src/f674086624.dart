import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/fpg50998545.dart';
import 'package:medallia_dxa/src/q487304051.dart';
import 'package:medallia_dxa/src/c249197541.dart';
import 'package:medallia_dxa/src/pu372442128.dart';

@immutable
class R686663970 {
  final String gi459292853;
  final String ov652312556;
  final int kmj212009810;
  final int? tg1032418022;
  final bool tnq633508621;
  final List<DxaRouteWithModalReference> mu986357050;
  final List<Js958539009> f916463060;
  final bool ppv614816319;

  final bool awr884417781;
  final bool jq901481809;
  final Rvb72709065? rj876937527;
  final List<Tw627940283> b229772540;
  late final WidgetsBinding _eg336584912 =
      B583051113.dfo892084206.rhs759432697;

  //
  List<Pgj666223173> get tsh231563840 {
    return f916463060
        .whereType<Pgj666223173>()
        .where((y286663400) => !s399593541.contains(y286663400))
        .toList()
      ..removeWhere(
        (mbm412700271) => mbm412700271.sxx1001734765.navigator == null,
      );
  }

  Element get pg313789687 =>
      _eg336584912.bad405157863!;

  bool get fk821948944 {
    return mu986357050.every((mbm412700271) => mbm412700271 is Pgj666223173);
  }

  List<Pgj666223173> get s399593541 {
    final List<Pgj666223173> vd786464407 = [];
    for (final kl67975682 in mu986357050) {
      vd786464407.add(kl67975682.dr588000426());
    }
    return vd786464407;
  }

  Pgj666223173 get rg833759248 {
    final DxaRouteWithModalReference ywu22218155 = mu986357050.last;

    return ywu22218155.dr588000426();
  }

  bool get yuw243852351 =>
      mu986357050.any((mbm412700271) => mbm412700271.sxx1001734765.navigator == null);

  bool get ti368020738 =>
      !mu986357050.any((mbm412700271) => mbm412700271 is Pgj666223173);

  final bool evw469235622;
  int get go161819411 => gi459292853.hashCode ^ kmj212009810.hashCode;

  R686663970({
    required this.gi459292853,
    required this.ov652312556,
    required this.kmj212009810,
    required this.mu986357050,
    required this.f916463060,
    required this.tg1032418022,
    required this.evw469235622,
    required this.ppv614816319,
    required this.tnq633508621,
    required this.awr884417781,
    required this.jq901481809,
    required this.rj876937527,
  }) : b229772540 = [];

  R686663970.standard({
    required this.gi459292853,
    required this.ov652312556,
    required this.kmj212009810,
    required this.mu986357050,
    required this.f916463060,
    required this.awr884417781,
    required this.jq901481809,
    required this.rj876937527,
    this.tg1032418022,
  })  : evw469235622 = false,
        ppv614816319 = false,
        tnq633508621 = false,
        b229772540 = [];

  //zcg712080299
  R686663970.createFinished({
    required this.gi459292853,
    required this.kmj212009810,
    required this.ov652312556,
    required this.tg1032418022,
    required this.mu986357050,
    required this.f916463060,
    required this.ppv614816319,
    required this.tnq633508621,
    required this.awr884417781,
    required this.jq901481809,
    required this.b229772540,
    required this.rj876937527,
  }) : evw469235622 = true;

  Hb270264355 zcg712080299(int tg1032418022) {
    return Hb270264355(
      gi459292853: gi459292853,
      ov652312556: ov652312556,
      mu986357050: mu986357050,
      f916463060: f916463060,
      kmj212009810: kmj212009810,
      tg1032418022: tg1032418022,
      ppv614816319: ppv614816319,
      tnq633508621: tnq633508621,
      awr884417781: awr884417781,
      jq901481809: jq901481809,
      rj876937527: rj876937527,
      b229772540: b229772540,
    );
  }

  R686663970 c801147285(String nz131698641) {
    return R686663970(
      gi459292853: gi459292853,
      ov652312556: nz131698641,
      kmj212009810: kmj212009810,
      mu986357050: mu986357050,
      f916463060: f916463060,
      tg1032418022: tg1032418022,
      evw469235622: evw469235622,
      ppv614816319: ppv614816319,
      tnq633508621: tnq633508621,
      awr884417781: awr884417781,
      jq901481809: jq901481809,
      rj876937527: rj876937527,
    );
  }

  //
  //
  R686663970 d623466170(int pfs124519093) {
    return R686663970(
      gi459292853: gi459292853,
      ov652312556: ov652312556,
      kmj212009810: pfs124519093,
      mu986357050: mu986357050,
      f916463060: f916463060,
      tg1032418022: tg1032418022,
      evw469235622: evw469235622,
      ppv614816319: ppv614816319,
      tnq633508621: tnq633508621,
      awr884417781: awr884417781,
      jq901481809: jq901481809,
      rj876937527: rj876937527,
    );
  }

  @override
  String toString() {
    return 'ScreenVisited(id: $gi459292853, uniqueid $go161819411, name: $ov652312556, timestamp: $kmj212009810, endTimestamp: $tg1032418022, isTabBar: $tnq633508621, finished: $evw469235622)';
  }
}

@immutable
class Tw627940283 {
  final bool dn450169251;
  final Uint8List za238766514;
  final int zlx228738484;
  final String y343814887;
  final int hfp152847982;
  const Tw627940283({
    required this.dn450169251,
    required this.za238766514,
    required this.zlx228738484,
    required this.y343814887,
    required this.hfp152847982,
  });
}

@immutable
class Hb270264355 extends R686663970 {
  @override
  int get tg1032418022 => super.tg1032418022!;
  Hb270264355({
    required super.gi459292853,
    required super.kmj212009810,
    required super.ov652312556,
    required int super.tg1032418022,
    required super.mu986357050,
    required super.f916463060,
    required super.ppv614816319,
    required super.tnq633508621,
    required super.awr884417781,
    required super.jq901481809,
    required super.b229772540,
    required super.rj876937527,
  }) : super.createFinished();
}
