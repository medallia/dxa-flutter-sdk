import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/lq1031390144.dart';
import 'package:medallia_dxa/src/mlm681535064.dart';
import 'package:medallia_dxa/src/e452801702.dart';
import 'package:medallia_dxa/src/kb304042598.dart';
import 'package:medallia_dxa/src/gxe966267057.dart';

@immutable
class Szr686664699 {
  final String i459293292;
  final String dxl652311861;
  final int r212009355;
  final int? upi1032417343;
  final bool hps633508308;
  final List<DxaRouteWithModalRederence> dm986357731;
  final List<Iag958539736> ic916463373;
  final bool ptm614815974;

  final bool j884418092;
  final bool eol901482376;
  final V72708368? zzq876938222;
  final List<Qg627939682> l229772837;

  //
  List<Ipv666222748> get b231563417 {
    return ic916463373
        .whereType<Ipv666222748>()
        .where((tls286662705) => !hlv399594140.contains(tls286662705))
        .toList()
      ..removeWhere(
        (yte412699830) => yte412699830.o1001734324.navigator == null,
      );
  }

  bool get rnr370874783 => dm986357731.last.zz501560683;

  Element get d313789998 =>
      Pg583050672.vpo892083511.ee759432992.jur353676035!;

  bool get pj821948617 {
    return dm986357731.every((yte412699830) => yte412699830 is Ipv666222748);
  }

  List<Ipv666222748> get hlv399594140 {
    final List<Ipv666222748> yk786463822 = [];
    for (final arh67975387 in dm986357731) {
      yk786463822.add(arh67975387.ybl588000883());
    }
    return yk786463822;
  }

  Ipv666222748 get ex833759945 {
    final DxaRouteWithModalRederence e22218610 = dm986357731.last;

    return e22218610.ybl588000883();
  }

  bool get wbb243853030 =>
      dm986357731.any((yte412699830) => yte412699830.o1001734324.navigator == null);

  bool get cqs368021467 =>
      !dm986357731.any((yte412699830) => yte412699830 is Ipv666222748);

  final bool sjf469235071;
  int get kxj161819082 => i459293292.hashCode ^ r212009355.hashCode;

  Szr686664699({
    required this.i459293292,
    required this.dxl652311861,
    required this.r212009355,
    required this.dm986357731,
    required this.ic916463373,
    required this.upi1032417343,
    required this.sjf469235071,
    required this.ptm614815974,
    required this.hps633508308,
    required this.j884418092,
    required this.eol901482376,
    required this.zzq876938222,
  }) : l229772837 = [];

  Szr686664699.standard({
    required this.i459293292,
    required this.dxl652311861,
    required this.r212009355,
    required this.dm986357731,
    required this.ic916463373,
    required this.j884418092,
    required this.eol901482376,
    required this.zzq876938222,
    this.upi1032417343,
  })  : sjf469235071 = false,
        ptm614815974 = false,
        hps633508308 = false,
        l229772837 = [];

  //mbk712079730
  const Szr686664699.createFinished({
    required this.i459293292,
    required this.r212009355,
    required this.dxl652311861,
    required this.upi1032417343,
    required this.dm986357731,
    required this.ic916463373,
    required this.ptm614815974,
    required this.hps633508308,
    required this.j884418092,
    required this.eol901482376,
    required this.l229772837,
    required this.zzq876938222,
  }) : sjf469235071 = true;

  Xt270265082 mbk712079730(int upi1032417343) {
    return Xt270265082(
      i459293292: i459293292,
      dxl652311861: dxl652311861,
      dm986357731: dm986357731,
      ic916463373: ic916463373,
      r212009355: r212009355,
      upi1032417343: upi1032417343,
      ptm614815974: ptm614815974,
      hps633508308: hps633508308,
      j884418092: j884418092,
      eol901482376: eol901482376,
      zzq876938222: zzq876938222,
      l229772837: l229772837,
    );
  }

  //
  //
  Szr686664699 rxd623465571(int ivw124518508) {
    return Szr686664699(
      i459293292: i459293292,
      dxl652311861: dxl652311861,
      r212009355: ivw124518508,
      dm986357731: dm986357731,
      ic916463373: ic916463373,
      upi1032417343: upi1032417343,
      sjf469235071: sjf469235071,
      ptm614815974: ptm614815974,
      hps633508308: hps633508308,
      j884418092: j884418092,
      eol901482376: eol901482376,
      zzq876938222: zzq876938222,
    );
  }

  @override
  String toString() {
    return 'ScreenVisited(id: $i459293292, uniqueid $kxj161819082, name: $dxl652311861, timestamp: $r212009355, endTimestamp: $upi1032417343, isTabBar: $hps633508308, finished: $sjf469235071)';
  }
}

@immutable
class Qg627939682 {
  final bool hb450169722;
  final Yzp491807097 kb815611792;
  const Qg627939682({
    required this.hb450169722,
    required this.kb815611792,
  });
}

@immutable
class Xt270265082 extends Szr686664699 {
  @override
  int get upi1032417343 => super.upi1032417343!;
  const Xt270265082({
    required String i459293292,
    required int r212009355,
    required String dxl652311861,
    required int upi1032417343,
    required List<DxaRouteWithModalRederence> dm986357731,
    required List<Iag958539736> ic916463373,
    required bool ptm614815974,
    required bool hps633508308,
    required bool j884418092,
    required bool eol901482376,
    required List<Qg627939682> l229772837,
    required V72708368? zzq876938222,
  }) : super.createFinished(
          i459293292: i459293292,
          r212009355: r212009355,
          dxl652311861: dxl652311861,
          upi1032417343: upi1032417343,
          dm986357731: dm986357731,
          ic916463373: ic916463373,
          ptm614815974: ptm614815974,
          hps633508308: hps633508308,
          j884418092: j884418092,
          eol901482376: eol901482376,
          l229772837: l229772837,
          zzq876938222: zzq876938222,
        );
}
