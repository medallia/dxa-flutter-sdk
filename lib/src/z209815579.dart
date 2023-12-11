import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/b943817878.dart';
import 'package:medallia_dxa/src/jpa681534609.dart';
import 'package:medallia_dxa/src/xwa452802159.dart';
import 'package:medallia_dxa/src/pr304042159.dart';
import 'package:medallia_dxa/src/xp966267512.dart';

@immutable
class W686663986 {
  final String oc459292837;
  final String j652312572;
  final int hdi212009794;
  final int? go1032418038;
  final bool zn633508637;
  final List<X958539025> y986357034;
  final List<X958539025> sb916463044;
  final bool k614816303;

  final bool j884417765;
  final bool mtr901481793;
  final Vme72709081? hmz876937511;
  final List<F627940267> l229772524;

  //
  List<X958539025> get ry685065003 {
    return sb916463044.where((fwj286663416) => !y986357034.contains(fwj286663416)).toList()
      ..removeWhere((jnk412700287) =>
          jnk412700287.fir1001734781.navigator == null || !jnk412700287.v89098398);
  }

  bool get n370875222 => y986357034.last.ih501561250;

  Element get w313789671 =>
      V583051129.h892084222.rk759432681.k353675722!;

  bool get xca821948928 {
    return y986357034.every((jnk412700287) => jnk412700287.fir1001734781 is ModalRoute) &&
        ry685065003.every((jnk412700287) => jnk412700287.fir1001734781 is ModalRoute);
  }

  X958539025 get s408144227 =>
      y986357034.lastWhere((jnk412700287) => jnk412700287.v89098398);

  bool get ee243852335 =>
      y986357034.any((jnk412700287) => jnk412700287.fir1001734781.navigator == null);

  bool get n368020754 =>
      !y986357034.any((jnk412700287) => jnk412700287.v89098398);

  final bool o469235638;
  int get hp161819395 => oc459292837.hashCode ^ hdi212009794.hashCode;

  W686663986({
    required this.oc459292837,
    required this.j652312572,
    required this.hdi212009794,
    required this.y986357034,
    required this.sb916463044,
    required this.go1032418038,
    required this.o469235638,
    required this.k614816303,
    required this.zn633508637,
    required this.j884417765,
    required this.mtr901481793,
    required this.hmz876937511,
  }) : l229772524 = [];

  W686663986.standard({
    required this.oc459292837,
    required this.j652312572,
    required this.hdi212009794,
    required this.y986357034,
    required this.sb916463044,
    required this.j884417765,
    required this.mtr901481793,
    required this.hmz876937511,
    this.go1032418038,
  })  : o469235638 = false,
        k614816303 = false,
        zn633508637 = false,
        l229772524 = [];

  //h712080315
  const W686663986.createFinished({
    required this.oc459292837,
    required this.hdi212009794,
    required this.j652312572,
    required this.go1032418038,
    required this.y986357034,
    required this.sb916463044,
    required this.k614816303,
    required this.zn633508637,
    required this.j884417765,
    required this.mtr901481793,
    required this.l229772524,
    required this.hmz876937511,
  }) : o469235638 = true;

  Ezf270264371 h712080315(int go1032418038) {
    return Ezf270264371(
      oc459292837: oc459292837,
      j652312572: j652312572,
      y986357034: y986357034,
      sb916463044: sb916463044,
      hdi212009794: hdi212009794,
      go1032418038: go1032418038,
      k614816303: k614816303,
      zn633508637: zn633508637,
      j884417765: j884417765,
      mtr901481793: mtr901481793,
      hmz876937511: hmz876937511,
      l229772524: l229772524,
    );
  }

  //
  //
  W686663986 hom623466154(int kil124519077) {
    return W686663986(
      oc459292837: oc459292837,
      j652312572: j652312572,
      hdi212009794: kil124519077,
      y986357034: y986357034,
      sb916463044: sb916463044,
      go1032418038: go1032418038,
      o469235638: o469235638,
      k614816303: k614816303,
      zn633508637: zn633508637,
      j884417765: j884417765,
      mtr901481793: mtr901481793,
      hmz876937511: hmz876937511,
    );
  }

  @override
  String toString() {
    return 'ScreenVisited(id: $oc459292837, uniqueid $hp161819395, name: $j652312572, timestamp: $hdi212009794, endTimestamp: $go1032418038, isTabBar: $zn633508637, finished: $o469235638)';
  }
}

@immutable
class F627940267 {
  final bool do450169267;
  final Ebr491807664 e815611225;
  const F627940267({
    required this.do450169267,
    required this.e815611225,
  });
}

@immutable
class Ezf270264371 extends W686663986 {
  @override
  int get go1032418038 => super.go1032418038!;
  const Ezf270264371({
    required String oc459292837,
    required int hdi212009794,
    required String j652312572,
    required int go1032418038,
    required List<X958539025> y986357034,
    required List<X958539025> sb916463044,
    required bool k614816303,
    required bool zn633508637,
    required bool j884417765,
    required bool mtr901481793,
    required List<F627940267> l229772524,
    required Vme72709081? hmz876937511,
  }) : super.createFinished(
          oc459292837: oc459292837,
          hdi212009794: hdi212009794,
          j652312572: j652312572,
          go1032418038: go1032418038,
          y986357034: y986357034,
          sb916463044: sb916463044,
          k614816303: k614816303,
          zn633508637: zn633508637,
          j884417765: j884417765,
          mtr901481793: mtr901481793,
          l229772524: l229772524,
          hmz876937511: hmz876937511,
        );
}
