//
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/o1040135247.dart';

typedef Q492495725 = int;
typedef A28321299 = int;

class L31253310 {
  final int f231120595;
  final int g940896887;
  final A28321299 dfu328021420;
  final A28321299? vyc298743971;

  L31253310({
    required this.f231120595,
    required this.g940896887,
    required this.dfu328021420,
    required this.vyc298743971,
  });

  factory L31253310.withAxis({
    required Axis bjz680437849,
    required int l185851210,
    required A28321299 dfu328021420,
    required A28321299? em98050034,
  }) {
    return L31253310(
      f231120595: bjz680437849 == Axis.horizontal ? l185851210 : 0,
      g940896887: bjz680437849 == Axis.vertical ? l185851210 : 0,
      vyc298743971: em98050034,
      dfu328021420: dfu328021420,
    );
  }
}

//ScrollNotificationSz519988207
class Jh347441398 {
  final ScrollMetrics dk283409099;
  final Bb243188386 cti639058540;
  final BuildContext? xv180727902;
  final int? x124147599;
  final RenderObject? hs643260254;
  final Offset? uef185395272;
  Jh347441398({
    required this.dk283409099,
    required this.xv180727902,
    required this.cti639058540,
    required this.x124147599,
    required this.hs643260254,
    required this.uef185395272,
  });

  bool get t447504945 =>
      xv180727902 != null &&
      x124147599 != null &&
      hs643260254 != null &&
      uef185395272 != null;
  int? ep528465147() => hs643260254?.hashCode;

  Sz519988207? r317247938() {
    if (!t447504945) {
      return null;
    }
    return Sz519988207(
      dk283409099: dk283409099,
      xv180727902: xv180727902!,
      x124147599: x124147599!,
      hs643260254: hs643260254!,
      cti639058540: cti639058540,
      uef185395272: uef185395272!,
    );
  }
}

//
class Sz519988207 implements Jh347441398 {
  @override
  final ScrollMetrics dk283409099;
  @override
  final Bb243188386 cti639058540;
  @override
  final BuildContext xv180727902;
  @override
  final int x124147599;
  @override
  final RenderObject hs643260254;
  @override
  final Offset uef185395272;
  Sz519988207({
    required this.dk283409099,
    required this.cti639058540,
    required this.xv180727902,
    required this.x124147599,
    required this.hs643260254,
    required this.uef185395272,
  });

  @override
  bool get t447504945 => true;

  @override
  int ep528465147() {
    return hs643260254.hashCode;
  }

  @override
  Sz519988207 r317247938() {
    return this;
  }
}

//
class E857031430 {
  final List<Sz519988207> gli909034330 = [];

  //
  final Set<A726056032> gr927850067 =
      {};
  E857031430({
    required Sz519988207 u269890391,
  }) {
    gli909034330.add(u269890391);
    gr927850067.add(
      A726056032(
        fpk921636432:
            u269890391.x124147599,
        n18244091: u269890391.uef185395272,
      ),
    );
  }

  Sz519988207 get u269890391 => gli909034330.first;

  //
  void hsd749000452(
    Sz519988207 hsd749000452,
  ) {
    assert(
      hsd749000452.ep528465147() ==
          u269890391.ep528465147(),
    );
    gli909034330.add(hsd749000452);
    gr927850067.add(
      A726056032(
        fpk921636432:
            hsd749000452.x124147599,
        n18244091: hsd749000452.uef185395272,
      ),
    );
  }

  //
  Sz519988207? vtt236851142(int i696663109) {
    for (final dus224376240 in gli909034330) {
      if (dus224376240.x124147599 == i696663109) {
        return dus224376240;
      }
    }
    return null;
  }
}

enum Bb243188386 {
  lk81536896,
  msv916957601,
  bq818185544,
}
