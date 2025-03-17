//
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/l496100031.dart';

typedef H492495768 = int;
typedef Y28321510 = int;

class Kpy31253451 {
  final int qf231120422;
  final int bry940896898;
  final Y28321510 r328021337;
  final Y28321510? sqo298743894;

  Kpy31253451({
    required this.qf231120422,
    required this.bry940896898,
    required this.r328021337,
    required this.sqo298743894,
  });

  factory Kpy31253451.withAxis({
    required Axis r680437932,
    required int r185851327,
    required Y28321510 r328021337,
    required Y28321510? zzw98049799,
  }) {
    return Kpy31253451(
      qf231120422: r680437932 == Axis.horizontal ? r185851327 : 0,
      bry940896898: r680437932 == Axis.vertical ? r185851327 : 0,
      sqo298743894: zzw98049799,
      r328021337: r328021337,
    );
  }
}

//ScrollNotificationO519987994
class Ar347441155 {
  final ScrollMetrics v283408958;
  final Ls243188311 twt639058585;
  final BuildContext? ics180727979;
  final int? ke124147578;
  final RenderObject? gcx643260331;
  final Offset? j185395389;
  Ar347441155({
    required this.v283408958,
    required this.ics180727979,
    required this.twt639058585,
    required this.ke124147578,
    required this.gcx643260331,
    required this.j185395389,
  });

  bool get rm447505092 =>
      ics180727979 != null &&
      ke124147578 != null &&
      gcx643260331 != null &&
      j185395389 != null;
  int? z528464910() => gcx643260331?.hashCode;

  O519987994? opf317247799() {
    if (!rm447505092) {
      return null;
    }
    return O519987994(
      v283408958: v283408958,
      ics180727979: ics180727979!,
      ke124147578: ke124147578!,
      gcx643260331: gcx643260331!,
      twt639058585: twt639058585,
      j185395389: j185395389!,
    );
  }
}

//
class O519987994 implements Ar347441155 {
  @override
  final ScrollMetrics v283408958;
  @override
  final Ls243188311 twt639058585;
  @override
  final BuildContext ics180727979;
  @override
  final int ke124147578;
  @override
  final RenderObject gcx643260331;
  @override
  final Offset j185395389;
  O519987994({
    required this.v283408958,
    required this.twt639058585,
    required this.ics180727979,
    required this.ke124147578,
    required this.gcx643260331,
    required this.j185395389,
  });

  @override
  bool get rm447505092 => true;

  @override
  int z528464910() {
    return gcx643260331.hashCode;
  }

  @override
  O519987994 opf317247799() {
    return this;
  }
}

//
class Zjx857031667 {
  final List<O519987994> pex909034415 = [];

  //
  final Set<Yfm726056085> m927850150 =
      {};
  Zjx857031667({
    required O519987994 kj269890466,
  }) {
    pex909034415.add(kj269890466);
    m927850150.add(
      Yfm726056085(
        d921636517:
            kj269890466.ke124147578,
        m18243854: kj269890466.j185395389,
      ),
    );
  }

  O519987994 get kj269890466 => pex909034415.first;

  //
  void wex749000689(
    O519987994 wex749000689,
  ) {
    assert(
      wex749000689.z528464910() ==
          kj269890466.z528464910(),
    );
    pex909034415.add(wex749000689);
    m927850150.add(
      Yfm726056085(
        d921636517:
            wex749000689.ke124147578,
        m18243854: wex749000689.j185395389,
      ),
    );
  }

  //
  O519987994? zia236850995(int d696663216) {
    for (final bf224376133 in pex909034415) {
      if (bf224376133.ke124147578 == d696663216) {
        return bf224376133;
      }
    }
    return null;
  }
}

enum Ls243188311 {
  u81536885,
  nar916957524,
  va818185661,
}
