//
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/idy1040135208.dart';

typedef Eci492495626 = int;
typedef Lgl28321396 = int;

class Fv31253337 {
  final int dki231120564;
  final int d940896784;
  final Lgl28321396 pl328021451;
  final Lgl28321396? q298744004;

  Fv31253337({
    required this.dki231120564,
    required this.d940896784,
    required this.pl328021451,
    required this.q298744004,
  });

  factory Fv31253337.withAxis({
    required Axis f680437822,
    required int u185851181,
    required Lgl28321396 pl328021451,
    required Lgl28321396? nz98049941,
  }) {
    return Fv31253337(
      dki231120564: f680437822 == Axis.horizontal ? u185851181 : 0,
      d940896784: f680437822 == Axis.vertical ? u185851181 : 0,
      q298744004: nz98049941,
      pl328021451: pl328021451,
    );
  }
}

//ScrollNotificationM519988104
class Bku347441297 {
  final ScrollMetrics o283409068;
  final Lx243188421 dct639058443;
  final BuildContext? ld180727865;
  final int? ix124147688;
  final RenderObject? jm643260217;
  final Offset? g185395247;
  Bku347441297({
    required this.o283409068,
    required this.ld180727865,
    required this.dct639058443,
    required this.ix124147688,
    required this.jm643260217,
    required this.g185395247,
  });

  bool get wql447504982 =>
      ld180727865 != null &&
      ix124147688 != null &&
      jm643260217 != null &&
      g185395247 != null;
  int? bkx528465052() => jm643260217?.hashCode;

  M519988104? t317247909() {
    if (!wql447504982) {
      return null;
    }
    return M519988104(
      o283409068: o283409068,
      ld180727865: ld180727865!,
      ix124147688: ix124147688!,
      jm643260217: jm643260217!,
      dct639058443: dct639058443,
      g185395247: g185395247!,
    );
  }
}

//
class M519988104 implements Bku347441297 {
  @override
  final ScrollMetrics o283409068;
  @override
  final Lx243188421 dct639058443;
  @override
  final BuildContext ld180727865;
  @override
  final int ix124147688;
  @override
  final RenderObject jm643260217;
  @override
  final Offset g185395247;
  M519988104({
    required this.o283409068,
    required this.dct639058443,
    required this.ld180727865,
    required this.ix124147688,
    required this.jm643260217,
    required this.g185395247,
  });

  @override
  bool get wql447504982 => true;

  @override
  int bkx528465052() {
    return jm643260217.hashCode;
  }

  @override
  M519988104 t317247909() {
    return this;
  }
}

//
class Ff857031521 {
  final List<M519988104> xua909034301 = [];

  //
  final Set<Vw726055943> q927850036 =
      {};
  Ff857031521({
    required M519988104 joj269890352,
  }) {
    xua909034301.add(joj269890352);
    q927850036.add(
      Vw726055943(
        k921636407:
            joj269890352.ix124147688,
        c18243996: joj269890352.g185395247,
      ),
    );
  }

  M519988104 get joj269890352 => xua909034301.first;

  //
  void mxg749000547(
    M519988104 mxg749000547,
  ) {
    assert(
      mxg749000547.bkx528465052() ==
          joj269890352.bkx528465052(),
    );
    xua909034301.add(mxg749000547);
    q927850036.add(
      Vw726055943(
        k921636407:
            mxg749000547.ix124147688,
        c18243996: mxg749000547.g185395247,
      ),
    );
  }

  //
  M519988104? bs236851105(int t696663074) {
    for (final dt224376279 in xua909034301) {
      if (dt224376279.ix124147688 == t696663074) {
        return dt224376279;
      }
    }
    return null;
  }
}

enum Lx243188421 {
  fvl81536999,
  uo916957638,
  xg818185519,
}
