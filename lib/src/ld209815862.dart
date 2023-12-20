import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/o943818171.dart';
import 'package:medallia_dxa/src/gc681534908.dart';
import 'package:medallia_dxa/src/s452802370.dart';
import 'package:medallia_dxa/src/kua304042370.dart';
import 'package:medallia_dxa/src/kk966267733.dart';

@immutable
class Q686663711 {
  final String jtl459293064;
  final String o652312273;
  final int m212009583;
  final int? c1032418267;
  final bool shz633508400;
  final List<Th958538812> l986356743;
  final List<Th958538812> vl916462825;
  final bool gbv614816514;

  final bool fi884417992;
  final bool j901481580;
  final Vj72708852? v876937226;
  final List<Sdb627939974> vze229772737;

  //
  List<Th958538812> get bid685064710 {
    return vl916462825.where((t286663637) => !l986356743.contains(t286663637)).toList()
      ..removeWhere((b412700498) =>
          b412700498.vd1001734992.navigator == null || !b412700498.e89098675);
  }

  bool get ke370875003 => l986356743.last.r501560975;

  Element get wlx313789898 =>
      Lgg583050836.dh892083923.m759432388.em353675495!;

  bool get qip821949229 {
    return l986356743.every((b412700498) => b412700498.vd1001734992 is ModalRoute) &&
        bid685064710.every((b412700498) => b412700498.vd1001734992 is ModalRoute);
  }

  Th958538812 get gd408143950 =>
      l986356743.lastWhere((b412700498) => b412700498.e89098675);

  bool get x243852546 =>
      l986356743.any((b412700498) => b412700498.vd1001734992.navigator == null);

  bool get v368020543 =>
      !l986356743.any((b412700498) => b412700498.e89098675);

  final bool r469235355;
  int get q161819182 => jtl459293064.hashCode ^ m212009583.hashCode;

  Q686663711({
    required this.jtl459293064,
    required this.o652312273,
    required this.m212009583,
    required this.l986356743,
    required this.vl916462825,
    required this.c1032418267,
    required this.r469235355,
    required this.gbv614816514,
    required this.shz633508400,
    required this.fi884417992,
    required this.j901481580,
    required this.v876937226,
  }) : vze229772737 = [];

  Q686663711.standard({
    required this.jtl459293064,
    required this.o652312273,
    required this.m212009583,
    required this.l986356743,
    required this.vl916462825,
    required this.fi884417992,
    required this.j901481580,
    required this.v876937226,
    this.c1032418267,
  })  : r469235355 = false,
        gbv614816514 = false,
        shz633508400 = false,
        vze229772737 = [];

  //ql712080022
  const Q686663711.createFinished({
    required this.jtl459293064,
    required this.m212009583,
    required this.o652312273,
    required this.c1032418267,
    required this.l986356743,
    required this.vl916462825,
    required this.gbv614816514,
    required this.shz633508400,
    required this.fi884417992,
    required this.j901481580,
    required this.vze229772737,
    required this.v876937226,
  }) : r469235355 = true;

  G270264606 ql712080022(int c1032418267) {
    return G270264606(
      jtl459293064: jtl459293064,
      o652312273: o652312273,
      l986356743: l986356743,
      vl916462825: vl916462825,
      m212009583: m212009583,
      c1032418267: c1032418267,
      gbv614816514: gbv614816514,
      shz633508400: shz633508400,
      fi884417992: fi884417992,
      j901481580: j901481580,
      v876937226: v876937226,
      vze229772737: vze229772737,
    );
  }

  //
  //
  Q686663711 mn623466375(int k124519304) {
    return Q686663711(
      jtl459293064: jtl459293064,
      o652312273: o652312273,
      m212009583: k124519304,
      l986356743: l986356743,
      vl916462825: vl916462825,
      c1032418267: c1032418267,
      r469235355: r469235355,
      gbv614816514: gbv614816514,
      shz633508400: shz633508400,
      fi884417992: fi884417992,
      j901481580: j901481580,
      v876937226: v876937226,
    );
  }

  @override
  String toString() {
    return 'ScreenVisited(id: $jtl459293064, uniqueid $q161819182, name: $o652312273, timestamp: $m212009583, endTimestamp: $c1032418267, isTabBar: $shz633508400, finished: $r469235355)';
  }
}

@immutable
class Sdb627939974 {
  final bool ig450168990;
  final Hy491807389 wf815610996;
  const Sdb627939974({
    required this.ig450168990,
    required this.wf815610996,
  });
}

@immutable
class G270264606 extends Q686663711 {
  @override
  int get c1032418267 => super.c1032418267!;
  const G270264606({
    required String jtl459293064,
    required int m212009583,
    required String o652312273,
    required int c1032418267,
    required List<Th958538812> l986356743,
    required List<Th958538812> vl916462825,
    required bool gbv614816514,
    required bool shz633508400,
    required bool fi884417992,
    required bool j901481580,
    required List<Sdb627939974> vze229772737,
    required Vj72708852? v876937226,
  }) : super.createFinished(
          jtl459293064: jtl459293064,
          m212009583: m212009583,
          o652312273: o652312273,
          c1032418267: c1032418267,
          l986356743: l986356743,
          vl916462825: vl916462825,
          gbv614816514: gbv614816514,
          shz633508400: shz633508400,
          fi884417992: fi884417992,
          j901481580: j901481580,
          vze229772737: vze229772737,
          v876937226: v876937226,
        );
}
