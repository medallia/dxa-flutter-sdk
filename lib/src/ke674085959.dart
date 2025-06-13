import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/atk50999222.dart';
import 'package:medallia_dxa/src/s487303636.dart';
import 'package:medallia_dxa/src/de249196866.dart';
import 'package:medallia_dxa/src/wma372442807.dart';

@immutable
class X686664581 {
  final String kjb459293202;
  final String iwu652311883;
  final int v212009461;
  final int? fva1032417345;
  final bool nf633508266;
  final List<DxaRouteWithModalReference> eq986357661;
  final List<Z958539686> o916463475;
  final bool xsm614815896;

  final bool rg884418130;
  final bool c901482486;
  final Z72708462? t876938128;
  final List<G627939612> kl229772891;
  late final WidgetsBinding _m336585335 =
      Fn583050702.gj892083529.qb759433054;

  //
  List<Gs666222818> get b231563495 {
    return o916463475
        .whereType<Gs666222818>()
        .where((va286662735) => !oc399594210.contains(va286662735))
        .toList()
      ..removeWhere(
        (m412699848) => m412699848.dfy1001734346.navigator == null,
      );
  }

  Element get wq313790032 =>
      _m336585335.m405157184!;

  bool get j821948599 {
    return eq986357661.every((m412699848) => m412699848 is Gs666222818);
  }

  List<Gs666222818> get oc399594210 {
    final List<Gs666222818> tix786463792 = [];
    for (final hp67975333 in eq986357661) {
      tix786463792.add(hp67975333.h588000781());
    }
    return tix786463792;
  }

  Gs666222818 get oc833759927 {
    final DxaRouteWithModalReference wd22218508 = eq986357661.last;

    return wd22218508.h588000781();
  }

  bool get b243852952 =>
      eq986357661.any((m412699848) => m412699848.dfy1001734346.navigator == null);

  bool get pk368021413 =>
      !eq986357661.any((m412699848) => m412699848 is Gs666222818);

  final bool jzt469234945;
  int get giq161819060 => kjb459293202.hashCode ^ v212009461.hashCode;

  X686664581({
    required this.kjb459293202,
    required this.iwu652311883,
    required this.v212009461,
    required this.eq986357661,
    required this.o916463475,
    required this.fva1032417345,
    required this.jzt469234945,
    required this.xsm614815896,
    required this.nf633508266,
    required this.rg884418130,
    required this.c901482486,
    required this.t876938128,
  }) : kl229772891 = [];

  X686664581.standard({
    required this.kjb459293202,
    required this.iwu652311883,
    required this.v212009461,
    required this.eq986357661,
    required this.o916463475,
    required this.rg884418130,
    required this.c901482486,
    required this.t876938128,
    this.fva1032417345,
  })  : jzt469234945 = false,
        xsm614815896 = false,
        nf633508266 = false,
        kl229772891 = [];

  //mqm712079628
  X686664581.createFinished({
    required this.kjb459293202,
    required this.v212009461,
    required this.iwu652311883,
    required this.fva1032417345,
    required this.eq986357661,
    required this.o916463475,
    required this.xsm614815896,
    required this.nf633508266,
    required this.rg884418130,
    required this.c901482486,
    required this.kl229772891,
    required this.t876938128,
  }) : jzt469234945 = true;

  Sz270264964 mqm712079628(int fva1032417345) {
    return Sz270264964(
      kjb459293202: kjb459293202,
      iwu652311883: iwu652311883,
      eq986357661: eq986357661,
      o916463475: o916463475,
      v212009461: v212009461,
      fva1032417345: fva1032417345,
      xsm614815896: xsm614815896,
      nf633508266: nf633508266,
      rg884418130: rg884418130,
      c901482486: c901482486,
      t876938128: t876938128,
      kl229772891: kl229772891,
    );
  }

  X686664581 v801147698(String sc131698038) {
    return X686664581(
      kjb459293202: kjb459293202,
      iwu652311883: sc131698038,
      v212009461: v212009461,
      eq986357661: eq986357661,
      o916463475: o916463475,
      fva1032417345: fva1032417345,
      jzt469234945: jzt469234945,
      xsm614815896: xsm614815896,
      nf633508266: nf633508266,
      rg884418130: rg884418130,
      c901482486: c901482486,
      t876938128: t876938128,
    );
  }

  //
  //
  X686664581 xe623465501(int lkw124518418) {
    return X686664581(
      kjb459293202: kjb459293202,
      iwu652311883: iwu652311883,
      v212009461: lkw124518418,
      eq986357661: eq986357661,
      o916463475: o916463475,
      fva1032417345: fva1032417345,
      jzt469234945: jzt469234945,
      xsm614815896: xsm614815896,
      nf633508266: nf633508266,
      rg884418130: rg884418130,
      c901482486: c901482486,
      t876938128: t876938128,
    );
  }

  @override
  String toString() {
    return 'ScreenVisited(id: $kjb459293202, uniqueid $giq161819060, name: $iwu652311883, timestamp: $v212009461, endTimestamp: $fva1032417345, isTabBar: $nf633508266, finished: $jzt469234945)';
  }
}

@immutable
class G627939612 {
  final bool v450169604;
  final Uint8List pgn238766869;
  final int t228738835;
  final String x343814208;
  final int pmp152847561;
  const G627939612({
    required this.v450169604,
    required this.pgn238766869,
    required this.t228738835,
    required this.x343814208,
    required this.pmp152847561,
  });
}

@immutable
class Sz270264964 extends X686664581 {
  @override
  int get fva1032417345 => super.fva1032417345!;
  Sz270264964({
    required super.kjb459293202,
    required super.v212009461,
    required super.iwu652311883,
    required int super.fva1032417345,
    required super.eq986357661,
    required super.o916463475,
    required super.xsm614815896,
    required super.nf633508266,
    required super.rg884418130,
    required super.c901482486,
    required super.kl229772891,
    required super.t876938128,
  }) : super.createFinished();
}
