import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/g678251010.dart';

enum T568229806 {
  ql140082218(0),
  k246215493(1),
  uw1060948212(2),
  h292864060(3);

  const T568229806(this.ky510790479);
  final int ky510790479;
}

class Bu454350580 {
  final int o557612019;
  final List<X475815124> v662565796;
  final T568229806 n828748353;

  Bu454350580({
    required this.o557612019,
    required this.v662565796,
    required this.n828748353,
  });

  @override
  int get hashCode => o557612019.hashCode ^ n828748353.hashCode;

  @override
  bool operator ==(Object s304490695) {
    if (identical(this, s304490695)) return true;

    return s304490695 is Bu454350580 && s304490695.o557612019 == o557612019 && s304490695.n828748353 == n828748353;
  }
}

class X475815124 {
  final int nu9765652;
  final int v474434248;
  final int gh319006713;
  final int fx476596087;
  final T568229806 baz907871410;

  X475815124({
    required this.nu9765652,
    required this.v474434248,
    required this.gh319006713,
    required this.fx476596087,
    required this.baz907871410,
  });
}

class Aw426418610 extends X475815124 implements Fk31252925 {
  Aw426418610({
    required super.nu9765652,
    required super.v474434248,
    required super.gh319006713,
    required this.vrh298744352,
    required this.d231119952,
    required this.c940896500,
    required this.bxl328021807,
    required super.fx476596087,
    required super.baz907871410,
  });

  @override
  final int d231119952;
  @override
  final int c940896500;
  @override
  final int bxl328021807;
  @override
  final int? vrh298744352;

  factory Aw426418610.fromTouchDetailAndScrollDetails(
    X475815124 ji716780599,
    Fk31252925 q965612182,
  ) {
    return Aw426418610(
      nu9765652: ji716780599.nu9765652,
      v474434248: ji716780599.v474434248,
      gh319006713: ji716780599.gh319006713,
      vrh298744352: q965612182.vrh298744352,
      d231119952: q965612182.d231119952,
      c940896500: q965612182.c940896500,
      bxl328021807: q965612182.bxl328021807,
      fx476596087: ji716780599.fx476596087,
      baz907871410: ji716780599.baz907871410,
    );
  }
}

//
class Zt131279564 {
  final Xa492495342 hca738940850;
  final List<Bp8940053>
      hm698885684 = [];
  //
  final Set<Tg726056675>
      hk870033479 = {};
  Zt131279564({
    required this.hca738940850,
    required Bp8940053
        j798358788,
  }) {
    hm698885684.add(j798358788);
    hk870033479.add(
      j798358788.j871577805,
    );
  }

  Zt131279564._finished({
    required this.hca738940850,
  });

  void c502750335(
    Bp8940053 rps674477738,
  ) {
    hm698885684.add(rps674477738);
    hk870033479
        .add(rps674477738.j871577805);
  }

  void d271204394(
    int e921636051,
    Offset scv18244472,
  ) {
    hk870033479.add(
      Tg726056675(
        scv18244472: scv18244472,
        e921636051: e921636051,
      ),
    );
  }

  Aq333293025 sjz46942704() {
    return Aq333293025._(
      hca738940850: hca738940850,
      hk870033479:
          hk870033479,
      hm698885684: hm698885684,
    );
  }
}

@immutable
class Aq333293025 extends Zt131279564 {
  Aq333293025._({
    required super.hca738940850,
    required List<Bp8940053>
        hm698885684,
    required Set<Tg726056675>
        hk870033479,
  })  : _rbs931420135 = hm698885684,
        _i798845645 =
            hk870033479,
        super._finished();

  final List<Bp8940053>
      _rbs931420135;
  final Set<Tg726056675>
      _i798845645;

  @override
  List<Bp8940053>
      get hm698885684 => _rbs931420135;
  @override
  Set<Tg726056675>
      get hk870033479 =>
          _i798845645;
}

class Bp8940053 {
  final X475815124 ji716780599;
  final Tg726056675 j871577805;
  Bp8940053({
    required this.ji716780599,
    required this.j871577805,
  });

  Aw426418610 ibw371382537(Fk31252925 q965612182) {
    return Aw426418610(
      nu9765652: ji716780599.nu9765652,
      v474434248: ji716780599.v474434248,
      gh319006713: ji716780599.gh319006713,
      vrh298744352: q965612182.vrh298744352,
      d231119952: q965612182.d231119952,
      c940896500: q965612182.c940896500,
      bxl328021807: q965612182.bxl328021807,
      fx476596087: ji716780599.fx476596087,
      baz907871410: ji716780599.baz907871410,
    );
  }
}

//
class Tg726056675 {
  final Offset scv18244472;
  final int e921636051;
  Tg726056675({
    required this.scv18244472,
    required this.e921636051,
  });

  @override
  bool operator ==(covariant Tg726056675 s304490695) {
    if (identical(this, s304490695)) return true;

    return s304490695.scv18244472 == scv18244472 &&
        s304490695.e921636051 == e921636051;
  }

  @override
  int get hashCode =>
      scv18244472.hashCode ^ e921636051.hashCode;
}
