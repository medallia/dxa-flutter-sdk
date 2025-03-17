import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/e406446028.dart';

enum X568229336 {
  f140082780(0),
  j246214963(1),
  e1060948610(2),
  qrs292864586(3);

  const X568229336(this.baz510789945);
  final int baz510789945;
}

class Ffh454349954 {
  final int b557611397;
  final List<D475815586> uy662565330;
  final X568229336 l828747831;

  Ffh454349954({
    required this.b557611397,
    required this.uy662565330,
    required this.l828747831,
  });

  @override
  int get hashCode => b557611397.hashCode ^ l828747831.hashCode;

  @override
  bool operator ==(Object wz304491185) {
    if (identical(this, wz304491185)) return true;

    return wz304491185 is Ffh454349954 && wz304491185.b557611397 == b557611397 && wz304491185.l828747831 == l828747831;
  }
}

class D475815586 {
  final int yca9765218;
  final int fov474433726;
  final int opp319006095;
  final int v476595457;
  final X568229336 td907871940;

  D475815586({
    required this.yca9765218,
    required this.fov474433726,
    required this.opp319006095,
    required this.v476595457,
    required this.td907871940,
  });
}

class Pp426419140 extends D475815586 implements Kpy31253451 {
  Pp426419140({
    required super.yca9765218,
    required super.fov474433726,
    required super.opp319006095,
    required this.sqo298743894,
    required this.qf231120422,
    required this.bry940896898,
    required this.r328021337,
    required super.v476595457,
    required super.td907871940,
  });

  @override
  final int qf231120422;
  @override
  final int bry940896898;
  @override
  final int r328021337;
  @override
  final int? sqo298743894;

  factory Pp426419140.fromTouchDetailAndScrollDetails(
    D475815586 u716781121,
    Kpy31253451 v965611744,
  ) {
    return Pp426419140(
      yca9765218: u716781121.yca9765218,
      fov474433726: u716781121.fov474433726,
      opp319006095: u716781121.opp319006095,
      sqo298743894: v965611744.sqo298743894,
      qf231120422: v965611744.qf231120422,
      bry940896898: v965611744.bry940896898,
      r328021337: v965611744.r328021337,
      v476595457: u716781121.v476595457,
      td907871940: u716781121.td907871940,
    );
  }
}

//
class G131279034 {
  final H492495768 hv738940356;
  final List<Dfh8939619>
      qd698885186 = [];
  //
  final Set<Yfm726056085>
      bip870033969 = {};
  G131279034({
    required this.hv738940356,
    required Dfh8939619
        hyc798359410,
  }) {
    qd698885186.add(hyc798359410);
    bip870033969.add(
      hyc798359410.m871578299,
    );
  }

  G131279034._finished({
    required this.hv738940356,
  });

  void ddb502750729(
    Dfh8939619 dpj674477276,
  ) {
    qd698885186.add(dpj674477276);
    bip870033969
        .add(dpj674477276.m871578299);
  }

  void y271204956(
    int d921636517,
    Offset m18243854,
  ) {
    bip870033969.add(
      Yfm726056085(
        m18243854: m18243854,
        d921636517: d921636517,
      ),
    );
  }

  Chg333293463 j46943110() {
    return Chg333293463._(
      hv738940356: hv738940356,
      bip870033969:
          bip870033969,
      qd698885186: qd698885186,
    );
  }
}

@immutable
class Chg333293463 extends G131279034 {
  Chg333293463._({
    required super.hv738940356,
    required List<Dfh8939619>
        qd698885186,
    required Set<Yfm726056085>
        bip870033969,
  })  : _v931419537 = qd698885186,
        _xx798845115 =
            bip870033969,
        super._finished();

  final List<Dfh8939619>
      _v931419537;
  final Set<Yfm726056085>
      _xx798845115;

  @override
  List<Dfh8939619>
      get qd698885186 => _v931419537;
  @override
  Set<Yfm726056085>
      get bip870033969 =>
          _xx798845115;
}

class Dfh8939619 {
  final D475815586 u716781121;
  final Yfm726056085 m871578299;
  Dfh8939619({
    required this.u716781121,
    required this.m871578299,
  });

  Pp426419140 e371383167(Kpy31253451 v965611744) {
    return Pp426419140(
      yca9765218: u716781121.yca9765218,
      fov474433726: u716781121.fov474433726,
      opp319006095: u716781121.opp319006095,
      sqo298743894: v965611744.sqo298743894,
      qf231120422: v965611744.qf231120422,
      bry940896898: v965611744.bry940896898,
      r328021337: v965611744.r328021337,
      v476595457: u716781121.v476595457,
      td907871940: u716781121.td907871940,
    );
  }
}

//
class Yfm726056085 {
  final Offset m18243854;
  final int d921636517;
  Yfm726056085({
    required this.m18243854,
    required this.d921636517,
  });

  @override
  bool operator ==(covariant Yfm726056085 wz304491185) {
    if (identical(this, wz304491185)) return true;

    return wz304491185.m18243854 == m18243854 &&
        wz304491185.d921636517 == d921636517;
  }

  @override
  int get hashCode =>
      m18243854.hashCode ^ d921636517.hashCode;
}
