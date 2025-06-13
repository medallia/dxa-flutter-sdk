//
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/x1040135823.dart';

typedef Ai492495277 = int;
typedef Hxl28320979 = int;

class Xe31252990 {
  final int gva231119891;
  final int wpd940896439;
  final Hxl28320979 gbj328021868;
  final Hxl28320979? rc298744419;

  Xe31252990({
    required this.gva231119891,
    required this.wpd940896439,
    required this.gbj328021868,
    required this.rc298744419,
  });

  factory Xe31252990.withAxis({
    required Axis qq680438425,
    required int yc185851786,
    required Hxl28320979 gbj328021868,
    required Hxl28320979? vrf98049330,
  }) {
    return Xe31252990(
      gva231119891: qq680438425 == Axis.horizontal ? yc185851786 : 0,
      wpd940896439: qq680438425 == Axis.vertical ? yc185851786 : 0,
      rc298744419: vrf98049330,
      gbj328021868: gbj328021868,
    );
  }
}

//ScrollNotificationYeu519987503
class Sk347441718 {
  final ScrollMetrics y283408395;
  final Wvz243187810 j639058092;
  final BuildContext? xqe180728478;
  final int? mib124147023;
  final RenderObject? i643259806;
  final Offset? hvq185395848;
  Sk347441718({
    required this.y283408395,
    required this.xqe180728478,
    required this.j639058092,
    required this.mib124147023,
    required this.i643259806,
    required this.hvq185395848,
  });

  bool get kxr447504625 =>
      xqe180728478 != null &&
      mib124147023 != null &&
      i643259806 != null &&
      hvq185395848 != null;
  int? jyq528465467() => i643259806?.hashCode;

  Yeu519987503? lnq317248258() {
    if (!kxr447504625) {
      return null;
    }
    return Yeu519987503(
      y283408395: y283408395,
      xqe180728478: xqe180728478!,
      mib124147023: mib124147023!,
      i643259806: i643259806!,
      j639058092: j639058092,
      hvq185395848: hvq185395848!,
    );
  }
}

//
class Yeu519987503 implements Sk347441718 {
  @override
  final ScrollMetrics y283408395;
  @override
  final Wvz243187810 j639058092;
  @override
  final BuildContext xqe180728478;
  @override
  final int mib124147023;
  @override
  final RenderObject i643259806;
  @override
  final Offset hvq185395848;
  Yeu519987503({
    required this.y283408395,
    required this.j639058092,
    required this.xqe180728478,
    required this.mib124147023,
    required this.i643259806,
    required this.hvq185395848,
  });

  @override
  bool get kxr447504625 => true;

  @override
  int jyq528465467() {
    return i643259806.hashCode;
  }

  @override
  Yeu519987503 lnq317248258() {
    return this;
  }
}

//
class Dg857031110 {
  final List<Yeu519987503> etx909033882 = [];

  //
  final Set<Ft726056608> d927849619 =
      {};
  Dg857031110({
    required Yeu519987503 z269889943,
  }) {
    etx909033882.add(z269889943);
    d927849619.add(
      Ft726056608(
        sj921635984:
            z269889943.mib124147023,
        c18244411: z269889943.hvq185395848,
      ),
    );
  }

  Yeu519987503 get z269889943 => etx909033882.first;

  //
  void q749000132(
    Yeu519987503 q749000132,
  ) {
    assert(
      q749000132.jyq528465467() ==
          z269889943.jyq528465467(),
    );
    etx909033882.add(q749000132);
    d927849619.add(
      Ft726056608(
        sj921635984:
            q749000132.mib124147023,
        c18244411: q749000132.hvq185395848,
      ),
    );
  }

  //
  Yeu519987503? wi236850438(int n696663685) {
    for (final z224376688 in etx909033882) {
      if (z224376688.mib124147023 == n696663685) {
        return z224376688;
      }
    }
    return null;
  }
}

enum Wvz243187810 {
  tq81536320,
  xn916958049,
  t818186120,
}
