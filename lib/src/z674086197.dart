import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/hi50998980.dart';
import 'package:medallia_dxa/src/df487303334.dart';
import 'package:medallia_dxa/src/kmb249196592.dart';
import 'package:medallia_dxa/src/sh372443077.dart';

@immutable
class S686664439 {
  final String iks459293536;
  final String bf652311609;
  final int mox212009095;
  final int? kfn1032417587;
  final bool ko633508056;
  final List<DxaRouteWithModalReference> nc986357487;
  final List<Kt958539476> pi916463105;
  final bool und614816234;

  final bool i884418336;
  final bool vku901482116;
  final Bdx72708124? lf876937954;
  final List<P627939438> epy229773097;
  late final WidgetsBinding _grk336585477 =
      L583050428.buw892083259.tcy759432748;

  //
  List<V666222992> get kav231563669 {
    return pi916463105
        .whereType<V666222992>()
        .where((q286662973) => !w399594384.contains(q286662973))
        .toList()
      ..removeWhere(
        (v412700090) => v412700090.n1001734584.navigator == null,
      );
  }

  Element get fzg313790242 =>
      _grk336585477.wm405156914!;

  bool get e821948869 {
    return nc986357487.every((v412700090) => v412700090 is V666222992);
  }

  List<V666222992> get w399594384 {
    final List<V666222992> hd786464066 = [];
    for (final lzh67975639 in nc986357487) {
      hd786464066.add(lzh67975639.pp588001151());
    }
    return hd786464066;
  }

  V666222992 get fjz833760197 {
    final DxaRouteWithModalReference pzp22218366 = nc986357487.last;

    return pzp22218366.pp588001151();
  }

  bool get bkx243853290 =>
      nc986357487.any((v412700090) => v412700090.n1001734584.navigator == null);

  bool get c368021207 =>
      !nc986357487.any((v412700090) => v412700090 is V666222992);

  final bool anj469234803;
  int get pub161818822 => iks459293536.hashCode ^ mox212009095.hashCode;

  S686664439({
    required this.iks459293536,
    required this.bf652311609,
    required this.mox212009095,
    required this.nc986357487,
    required this.pi916463105,
    required this.kfn1032417587,
    required this.anj469234803,
    required this.und614816234,
    required this.ko633508056,
    required this.i884418336,
    required this.vku901482116,
    required this.lf876937954,
  }) : epy229773097 = [];

  S686664439.standard({
    required this.iks459293536,
    required this.bf652311609,
    required this.mox212009095,
    required this.nc986357487,
    required this.pi916463105,
    required this.i884418336,
    required this.vku901482116,
    required this.lf876937954,
    this.kfn1032417587,
  })  : anj469234803 = false,
        und614816234 = false,
        ko633508056 = false,
        epy229773097 = [];

  //qmm712079486
  S686664439.createFinished({
    required this.iks459293536,
    required this.mox212009095,
    required this.bf652311609,
    required this.kfn1032417587,
    required this.nc986357487,
    required this.pi916463105,
    required this.und614816234,
    required this.ko633508056,
    required this.i884418336,
    required this.vku901482116,
    required this.epy229773097,
    required this.lf876937954,
  }) : anj469234803 = true;

  Cp270265334 qmm712079486(int kfn1032417587) {
    return Cp270265334(
      iks459293536: iks459293536,
      bf652311609: bf652311609,
      nc986357487: nc986357487,
      pi916463105: pi916463105,
      mox212009095: mox212009095,
      kfn1032417587: kfn1032417587,
      und614816234: und614816234,
      ko633508056: ko633508056,
      i884418336: i884418336,
      vku901482116: vku901482116,
      lf876937954: lf876937954,
      epy229773097: epy229773097,
    );
  }

  S686664439 ae801147456(String vxg131697668) {
    return S686664439(
      iks459293536: iks459293536,
      bf652311609: vxg131697668,
      mox212009095: mox212009095,
      nc986357487: nc986357487,
      pi916463105: pi916463105,
      kfn1032417587: kfn1032417587,
      anj469234803: anj469234803,
      und614816234: und614816234,
      ko633508056: ko633508056,
      i884418336: i884418336,
      vku901482116: vku901482116,
      lf876937954: lf876937954,
    );
  }

  //
  //
  S686664439 h623465839(int rqg124518752) {
    return S686664439(
      iks459293536: iks459293536,
      bf652311609: bf652311609,
      mox212009095: rqg124518752,
      nc986357487: nc986357487,
      pi916463105: pi916463105,
      kfn1032417587: kfn1032417587,
      anj469234803: anj469234803,
      und614816234: und614816234,
      ko633508056: ko633508056,
      i884418336: i884418336,
      vku901482116: vku901482116,
      lf876937954: lf876937954,
    );
  }

  @override
  String toString() {
    return 'ScreenVisited(id: $iks459293536, uniqueid $pub161818822, name: $bf652311609, timestamp: $mox212009095, endTimestamp: $kfn1032417587, isTabBar: $ko633508056, finished: $anj469234803)';
  }
}

@immutable
class P627939438 {
  final bool g450169462;
  final Uint8List pmr238766695;
  final int epz228738657;
  final String j343814450;
  final int s152847803;
  const P627939438({
    required this.g450169462,
    required this.pmr238766695,
    required this.epz228738657,
    required this.j343814450,
    required this.s152847803,
  });
}

@immutable
class Cp270265334 extends S686664439 {
  @override
  int get kfn1032417587 => super.kfn1032417587!;
  Cp270265334({
    required super.iks459293536,
    required super.mox212009095,
    required super.bf652311609,
    required int super.kfn1032417587,
    required super.nc986357487,
    required super.pi916463105,
    required super.und614816234,
    required super.ko633508056,
    required super.i884418336,
    required super.vku901482116,
    required super.epy229773097,
    required super.lf876937954,
  }) : super.createFinished();
}
