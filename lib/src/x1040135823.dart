import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/hfd678251073.dart';

enum Fds568229869 {
  fah140082281(0),
  kj246215430(1),
  v1060948151(2),
  dn292864127(3);

  const Fds568229869(this.fch510790412);
  final int fch510790412;
}

class Qrg454350519 {
  final int m557611952;
  final List<Yg475815063> xo662565863;
  final Fds568229869 q828748290;

  Qrg454350519({
    required this.m557611952,
    required this.xo662565863,
    required this.q828748290,
  });

  @override
  int get hashCode => m557611952.hashCode ^ q828748290.hashCode;

  @override
  bool operator ==(Object lb304490628) {
    if (identical(this, lb304490628)) return true;

    return lb304490628 is Qrg454350519 && lb304490628.m557611952 == m557611952 && lb304490628.q828748290 == q828748290;
  }
}

class Yg475815063 {
  final int ga9765719;
  final int cmj474434187;
  final int ws319006650;
  final int itd476596020;
  final Fds568229869 zb907871473;

  Yg475815063({
    required this.ga9765719,
    required this.cmj474434187,
    required this.ws319006650,
    required this.itd476596020,
    required this.zb907871473,
  });
}

class Lp426418673 extends Yg475815063 implements Xe31252990 {
  Lp426418673({
    required super.ga9765719,
    required super.cmj474434187,
    required super.ws319006650,
    required this.rc298744419,
    required this.gva231119891,
    required this.wpd940896439,
    required this.gbj328021868,
    required super.itd476596020,
    required super.zb907871473,
  });

  @override
  final int gva231119891;
  @override
  final int wpd940896439;
  @override
  final int gbj328021868;
  @override
  final int? rc298744419;

  factory Lp426418673.fromTouchDetailAndScrollDetails(
    Yg475815063 fi716780660,
    Xe31252990 k965612245,
  ) {
    return Lp426418673(
      ga9765719: fi716780660.ga9765719,
      cmj474434187: fi716780660.cmj474434187,
      ws319006650: fi716780660.ws319006650,
      rc298744419: k965612245.rc298744419,
      gva231119891: k965612245.gva231119891,
      wpd940896439: k965612245.wpd940896439,
      gbj328021868: k965612245.gbj328021868,
      itd476596020: fi716780660.itd476596020,
      zb907871473: fi716780660.zb907871473,
    );
  }
}

//
class Ses131279503 {
  final Ai492495277 jp738940913;
  final List<Ni8940118>
      fz698885751 = [];
  //
  final Set<Ft726056608>
      aa870033412 = {};
  Ses131279503({
    required this.jp738940913,
    required Ni8940118
        xj798358855,
  }) {
    fz698885751.add(xj798358855);
    aa870033412.add(
      xj798358855.hs871577742,
    );
  }

  Ses131279503._finished({
    required this.jp738940913,
  });

  void m502750268(
    Ni8940118 tse674477801,
  ) {
    fz698885751.add(tse674477801);
    aa870033412
        .add(tse674477801.hs871577742);
  }

  void v271204457(
    int sj921635984,
    Offset c18244411,
  ) {
    aa870033412.add(
      Ft726056608(
        c18244411: c18244411,
        sj921635984: sj921635984,
      ),
    );
  }

  Wuc333292962 rkc46942643() {
    return Wuc333292962._(
      jp738940913: jp738940913,
      aa870033412:
          aa870033412,
      fz698885751: fz698885751,
    );
  }
}

@immutable
class Wuc333292962 extends Ses131279503 {
  Wuc333292962._({
    required super.jp738940913,
    required List<Ni8940118>
        fz698885751,
    required Set<Ft726056608>
        aa870033412,
  })  : _ty931420068 = fz698885751,
        _i798845582 =
            aa870033412,
        super._finished();

  final List<Ni8940118>
      _ty931420068;
  final Set<Ft726056608>
      _i798845582;

  @override
  List<Ni8940118>
      get fz698885751 => _ty931420068;
  @override
  Set<Ft726056608>
      get aa870033412 =>
          _i798845582;
}

class Ni8940118 {
  final Yg475815063 fi716780660;
  final Ft726056608 hs871577742;
  Ni8940118({
    required this.fi716780660,
    required this.hs871577742,
  });

  Lp426418673 ki371382602(Xe31252990 k965612245) {
    return Lp426418673(
      ga9765719: fi716780660.ga9765719,
      cmj474434187: fi716780660.cmj474434187,
      ws319006650: fi716780660.ws319006650,
      rc298744419: k965612245.rc298744419,
      gva231119891: k965612245.gva231119891,
      wpd940896439: k965612245.wpd940896439,
      gbj328021868: k965612245.gbj328021868,
      itd476596020: fi716780660.itd476596020,
      zb907871473: fi716780660.zb907871473,
    );
  }
}

//
class Ft726056608 {
  final Offset c18244411;
  final int sj921635984;
  Ft726056608({
    required this.c18244411,
    required this.sj921635984,
  });

  @override
  bool operator ==(covariant Ft726056608 lb304490628) {
    if (identical(this, lb304490628)) return true;

    return lb304490628.c18244411 == c18244411 &&
        lb304490628.sj921635984 == sj921635984;
  }

  @override
  int get hashCode =>
      c18244411.hashCode ^ sj921635984.hashCode;
}
