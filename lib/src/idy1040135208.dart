import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/qx678250726.dart';

enum Sf568229194 {
  zm140082894(0),
  tv246215073(1),
  lu1060948496(2),
  qc292864728(3);

  const Sf568229194(this.lgn510790059);
  final int lgn510790059;
}

class Us454349840 {
  final int dcy557611287;
  final List<Ak475815472> in662565184;
  final Sf568229194 iu828747941;

  Us454349840({
    required this.dcy557611287,
    required this.in662565184,
    required this.iu828747941,
  });

  @override
  int get hashCode => dcy557611287.hashCode ^ iu828747941.hashCode;

  @override
  bool operator ==(Object ydy304491043) {
    if (identical(this, ydy304491043)) return true;

    return ydy304491043 is Us454349840 && ydy304491043.dcy557611287 == dcy557611287 && ydy304491043.iu828747941 == iu828747941;
  }
}

class Ak475815472 {
  final int pc9765360;
  final int e474433580;
  final int y319005981;
  final int ju476595603;
  final Sf568229194 ox907871830;

  Ak475815472({
    required this.pc9765360,
    required this.e474433580,
    required this.y319005981,
    required this.ju476595603,
    required this.ox907871830,
  });
}

class F426419030 extends Ak475815472 implements Fv31253337 {
  F426419030({
    required super.pc9765360,
    required super.e474433580,
    required super.y319005981,
    required this.q298744004,
    required this.dki231120564,
    required this.d940896784,
    required this.pl328021451,
    required super.ju476595603,
    required super.ox907871830,
  });

  @override
  final int dki231120564;
  @override
  final int d940896784;
  @override
  final int pl328021451;
  @override
  final int? q298744004;

  factory F426419030.fromTouchDetailAndScrollDetails(
    Ak475815472 tp716781267,
    Fv31253337 ffg965611634,
  ) {
    return F426419030(
      pc9765360: tp716781267.pc9765360,
      e474433580: tp716781267.e474433580,
      y319005981: tp716781267.y319005981,
      q298744004: ffg965611634.q298744004,
      dki231120564: ffg965611634.dki231120564,
      d940896784: ffg965611634.d940896784,
      pl328021451: ffg965611634.pl328021451,
      ju476595603: tp716781267.ju476595603,
      ox907871830: tp716781267.ox907871830,
    );
  }
}

//
class Wbe131278888 {
  final Eci492495626 sz738940246;
  final List<Rv8939761>
      z698885328 = [];
  //
  final Set<Vw726055943>
      k870034083 = {};
  Wbe131278888({
    required this.sz738940246,
    required Rv8939761
        p798359520,
  }) {
    z698885328.add(p798359520);
    k870034083.add(
      p798359520.r871578153,
    );
  }

  Wbe131278888._finished({
    required this.sz738940246,
  });

  void r502750875(
    Rv8939761 etz674477134,
  ) {
    z698885328.add(etz674477134);
    k870034083
        .add(etz674477134.r871578153);
  }

  void vw271205070(
    int k921636407,
    Offset c18243996,
  ) {
    k870034083.add(
      Vw726055943(
        c18243996: c18243996,
        k921636407: k921636407,
      ),
    );
  }

  H333293317 wlz46942996() {
    return H333293317._(
      sz738940246: sz738940246,
      k870034083:
          k870034083,
      z698885328: z698885328,
    );
  }
}

@immutable
class H333293317 extends Wbe131278888 {
  H333293317._({
    required super.sz738940246,
    required List<Rv8939761>
        z698885328,
    required Set<Vw726055943>
        k870034083,
  })  : _rn931419395 = z698885328,
        _h798844969 =
            k870034083,
        super._finished();

  final List<Rv8939761>
      _rn931419395;
  final Set<Vw726055943>
      _h798844969;

  @override
  List<Rv8939761>
      get z698885328 => _rn931419395;
  @override
  Set<Vw726055943>
      get k870034083 =>
          _h798844969;
}

class Rv8939761 {
  final Ak475815472 tp716781267;
  final Vw726055943 r871578153;
  Rv8939761({
    required this.tp716781267,
    required this.r871578153,
  });

  F426419030 sjj371383277(Fv31253337 ffg965611634) {
    return F426419030(
      pc9765360: tp716781267.pc9765360,
      e474433580: tp716781267.e474433580,
      y319005981: tp716781267.y319005981,
      q298744004: ffg965611634.q298744004,
      dki231120564: ffg965611634.dki231120564,
      d940896784: ffg965611634.d940896784,
      pl328021451: ffg965611634.pl328021451,
      ju476595603: tp716781267.ju476595603,
      ox907871830: tp716781267.ox907871830,
    );
  }
}

//
class Vw726055943 {
  final Offset c18243996;
  final int k921636407;
  Vw726055943({
    required this.c18243996,
    required this.k921636407,
  });

  @override
  bool operator ==(covariant Vw726055943 ydy304491043) {
    if (identical(this, ydy304491043)) return true;

    return ydy304491043.c18243996 == c18243996 &&
        ydy304491043.k921636407 == k921636407;
  }

  @override
  int get hashCode =>
      c18243996.hashCode ^ k921636407.hashCode;
}
