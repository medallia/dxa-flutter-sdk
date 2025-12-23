import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/zur678251315.dart';

enum Q568229535 {
  tas140082459(0),
  n246215284(1),
  oo1060948421(2),
  mj292864269(3);

  const Q568229535(this.qdt510790270);
  final int qdt510790270;
}

class Ehm454350789 {
  final int t557611714;
  final List<B475815397> eb662565525;
  final Q568229535 g828748656;

  Ehm454350789({
    required this.t557611714,
    required this.eb662565525,
    required this.g828748656,
  });

  @override
  int get hashCode => t557611714.hashCode ^ g828748656.hashCode;

  @override
  bool operator ==(Object u304490998) {
    if (identical(this, u304490998)) return true;

    return u304490998 is Ehm454350789 && u304490998.t557611714 == t557611714 && u304490998.g828748656 == g828748656;
  }
}

class B475815397 {
  final int haa9765413;
  final int xxx474434553;
  final int bj319006408;
  final int zx476595782;
  final Q568229535 n907871619;

  B475815397({
    required this.haa9765413,
    required this.xxx474434553,
    required this.bj319006408,
    required this.zx476595782,
    required this.n907871619,
  });
}

class P426418307 extends B475815397 implements Hqy31252620 {
  P426418307({
    required super.haa9765413,
    required super.xxx474434553,
    required super.bj319006408,
    required this.e298744593,
    required this.qi231120225,
    required this.f940896709,
    required this.pd328021534,
    required super.zx476595782,
    required super.n907871619,
  });

  @override
  final int qi231120225;
  @override
  final int f940896709;
  @override
  final int pd328021534;
  @override
  final int? e298744593;

  factory P426418307.fromTouchDetailAndScrollDetails(
    B475815397 ib716780806,
    Hqy31252620 fuf965612455,
  ) {
    return P426418307(
      haa9765413: ib716780806.haa9765413,
      xxx474434553: ib716780806.xxx474434553,
      bj319006408: ib716780806.bj319006408,
      e298744593: fuf965612455.e298744593,
      qi231120225: fuf965612455.qi231120225,
      f940896709: fuf965612455.f940896709,
      pd328021534: fuf965612455.pd328021534,
      zx476595782: ib716780806.zx476595782,
      n907871619: ib716780806.n907871619,
    );
  }
}

//
class Ii131279869 {
  final D492495071 m738940547;
  final List<Xt8940324>
      u698885893 = [];
  //
  final Set<Cu726056914>
      n870033782 = {};
  Ii131279869({
    required this.m738940547,
    required Xt8940324
        l798358581,
  }) {
    u698885893.add(l798358581);
    n870033782.add(
      l798358581.utg871578108,
    );
  }

  Ii131279869._finished({
    required this.m738940547,
  });

  void oor502750542(
    Xt8940324 jg674477979,
  ) {
    u698885893.add(jg674477979);
    n870033782
        .add(jg674477979.utg871578108);
  }

  void atn271204635(
    int aa921636322,
    Offset djw18244169,
  ) {
    n870033782.add(
      Cu726056914(
        djw18244169: djw18244169,
        aa921636322: aa921636322,
      ),
    );
  }

  Rup333292752 e46942401() {
    return Rup333292752._(
      m738940547: m738940547,
      n870033782:
          n870033782,
      u698885893: u698885893,
    );
  }
}

@immutable
class Rup333292752 extends Ii131279869 {
  Rup333292752._({
    required super.m738940547,
    required List<Xt8940324>
        u698885893,
    required Set<Cu726056914>
        n870033782,
  })  : _h931419862 = u698885893,
        _wf798845948 =
            n870033782,
        super._finished();

  final List<Xt8940324>
      _h931419862;
  final Set<Cu726056914>
      _wf798845948;

  @override
  List<Xt8940324>
      get u698885893 => _h931419862;
  @override
  Set<Cu726056914>
      get n870033782 =>
          _wf798845948;
}

class Xt8940324 {
  final B475815397 ib716780806;
  final Cu726056914 utg871578108;
  Xt8940324({
    required this.ib716780806,
    required this.utg871578108,
  });

  P426418307 a371382328(Hqy31252620 fuf965612455) {
    return P426418307(
      haa9765413: ib716780806.haa9765413,
      xxx474434553: ib716780806.xxx474434553,
      bj319006408: ib716780806.bj319006408,
      e298744593: fuf965612455.e298744593,
      qi231120225: fuf965612455.qi231120225,
      f940896709: fuf965612455.f940896709,
      pd328021534: fuf965612455.pd328021534,
      zx476595782: ib716780806.zx476595782,
      n907871619: ib716780806.n907871619,
    );
  }
}

//
class Cu726056914 {
  final Offset djw18244169;
  final int aa921636322;
  Cu726056914({
    required this.djw18244169,
    required this.aa921636322,
  });

  @override
  bool operator ==(covariant Cu726056914 u304490998) {
    if (identical(this, u304490998)) return true;

    return u304490998.djw18244169 == djw18244169 &&
        u304490998.aa921636322 == aa921636322;
  }

  @override
  int get hashCode =>
      djw18244169.hashCode ^ aa921636322.hashCode;
}
