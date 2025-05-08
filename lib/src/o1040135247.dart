import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/tc678250625.dart';

enum Avp568229165 {
  e140082857(0),
  ncd246215110(1),
  usy1060948599(2),
  jpt292864703(3);

  const Avp568229165(this.ovs510790092);
  final int ovs510790092;
}

class Pj454349943 {
  final int qgz557611376;
  final List<Ddb475815511> mte662565159;
  final Avp568229165 u828747970;

  Pj454349943({
    required this.qgz557611376,
    required this.mte662565159,
    required this.u828747970,
  });

  @override
  int get hashCode => qgz557611376.hashCode ^ u828747970.hashCode;

  @override
  bool operator ==(Object br304491076) {
    if (identical(this, br304491076)) return true;

    return br304491076 is Pj454349943 && br304491076.qgz557611376 == qgz557611376 && br304491076.u828747970 == u828747970;
  }
}

class Ddb475815511 {
  final int xsx9765271;
  final int mz474433611;
  final int one319006074;
  final int sv476595700;
  final Avp568229165 t907871793;

  Ddb475815511({
    required this.xsx9765271,
    required this.mz474433611,
    required this.one319006074,
    required this.sv476595700,
    required this.t907871793,
  });
}

class Avm426418993 extends Ddb475815511 implements L31253310 {
  Avm426418993({
    required super.xsx9765271,
    required super.mz474433611,
    required super.one319006074,
    required this.vyc298743971,
    required this.f231120595,
    required this.g940896887,
    required this.dfu328021420,
    required super.sv476595700,
    required super.t907871793,
  });

  @override
  final int f231120595;
  @override
  final int g940896887;
  @override
  final int dfu328021420;
  @override
  final int? vyc298743971;

  factory Avm426418993.fromTouchDetailAndScrollDetails(
    Ddb475815511 oq716781236,
    L31253310 v965611541,
  ) {
    return Avm426418993(
      xsx9765271: oq716781236.xsx9765271,
      mz474433611: oq716781236.mz474433611,
      one319006074: oq716781236.one319006074,
      vyc298743971: v965611541.vyc298743971,
      f231120595: v965611541.f231120595,
      g940896887: v965611541.g940896887,
      dfu328021420: v965611541.dfu328021420,
      sv476595700: oq716781236.sv476595700,
      t907871793: oq716781236.t907871793,
    );
  }
}

//
class Df131278927 {
  final Q492495725 y738940209;
  final List<Cc8939670>
      my698885303 = [];
  //
  final Set<A726056032>
      x870034116 = {};
  Df131278927({
    required this.y738940209,
    required Cc8939670
        je798359431,
  }) {
    my698885303.add(je798359431);
    x870034116.add(
      je798359431.v871578190,
    );
  }

  Df131278927._finished({
    required this.y738940209,
  });

  void iwd502750972(
    Cc8939670 od674477097,
  ) {
    my698885303.add(od674477097);
    x870034116
        .add(od674477097.v871578190);
  }

  void m271205033(
    int fpk921636432,
    Offset n18244091,
  ) {
    x870034116.add(
      A726056032(
        n18244091: n18244091,
        fpk921636432: fpk921636432,
      ),
    );
  }

  P333293410 hej46943091() {
    return P333293410._(
      y738940209: y738940209,
      x870034116:
          x870034116,
      my698885303: my698885303,
    );
  }
}

@immutable
class P333293410 extends Df131278927 {
  P333293410._({
    required super.y738940209,
    required List<Cc8939670>
        my698885303,
    required Set<A726056032>
        x870034116,
  })  : _e931419492 = my698885303,
        _dsw798845006 =
            x870034116,
        super._finished();

  final List<Cc8939670>
      _e931419492;
  final Set<A726056032>
      _dsw798845006;

  @override
  List<Cc8939670>
      get my698885303 => _e931419492;
  @override
  Set<A726056032>
      get x870034116 =>
          _dsw798845006;
}

class Cc8939670 {
  final Ddb475815511 oq716781236;
  final A726056032 v871578190;
  Cc8939670({
    required this.oq716781236,
    required this.v871578190,
  });

  Avm426418993 y371383178(L31253310 v965611541) {
    return Avm426418993(
      xsx9765271: oq716781236.xsx9765271,
      mz474433611: oq716781236.mz474433611,
      one319006074: oq716781236.one319006074,
      vyc298743971: v965611541.vyc298743971,
      f231120595: v965611541.f231120595,
      g940896887: v965611541.g940896887,
      dfu328021420: v965611541.dfu328021420,
      sv476595700: oq716781236.sv476595700,
      t907871793: oq716781236.t907871793,
    );
  }
}

//
class A726056032 {
  final Offset n18244091;
  final int fpk921636432;
  A726056032({
    required this.n18244091,
    required this.fpk921636432,
  });

  @override
  bool operator ==(covariant A726056032 br304491076) {
    if (identical(this, br304491076)) return true;

    return br304491076.n18244091 == n18244091 &&
        br304491076.fpk921636432 == fpk921636432;
  }

  @override
  int get hashCode =>
      n18244091.hashCode ^ fpk921636432.hashCode;
}
