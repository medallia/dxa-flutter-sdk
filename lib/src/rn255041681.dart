//
import 'dart:convert';

import 'package:medallia_dxa/src/jpf451565684.dart';
import 'package:medallia_dxa/src/zx832304269.dart';

enum Rh355692448 {
  jc994359814,
  vv959100689,
  o577029553,
  pm380883510,
}

abstract class Qoi688721852 {
  Rh355692448 v464528490();
  void ivn268886556({required bool iv285555291});
  void br949360239({required bool iv285555291});
}

class Ht357043382 implements Qoi688721852 {
  @override
  Rh355692448 v464528490() {
    return Rh355692448.pm380883510;
  }

  @override
  void br949360239({required bool iv285555291}) {
    //
    return;
  }

  @override
  void ivn268886556({required bool iv285555291}) {
    //
    return;
  }
}

class Onh640692212 implements Qoi688721852 {
  Rh355692448 _lx871188524 = Rh355692448.jc994359814;
  bool _pj113802042 = false;
  bool _l381317455 = false;
  @override
  Rh355692448 v464528490() {
    return _lx871188524;
  }

  @override
  void br949360239({required bool iv285555291}) {
    _pj113802042 = iv285555291;
    if (_l381317455) return;
    if (_pj113802042) {
      _lx871188524 = Rh355692448.vv959100689;
    } else {
      _lx871188524 = Rh355692448.jc994359814;
    }
  }

  @override
  void ivn268886556({required bool iv285555291}) {
    _l381317455 = iv285555291;
    if (_l381317455) {
      _lx871188524 = Rh355692448.pm380883510;
    } else {
      br949360239(iv285555291: _pj113802042);
    }
  }
}

class S394369730 {
  S394369730({
    required this.brv740508749,
    required E672746245 v387024112,
  })  : _a252877802 = v387024112,
        _nxh159284152 = Ypx608124246.noi173278469
            ? Onh640692212()
            : Ht357043382() {
    _mc1061096862 = _bc515173828();
  }
  final E672746245 _a252877802;
  late final Jjb535545917 _mc1061096862;
  final bool Function() brv740508749;
  bool zj454203749 = true;
  bool _f605786374 = false;
  final Qoi688721852 _nxh159284152;
  Rh355692448 get _lx871188524 => _nxh159284152.v464528490();

  void ivn268886556({required bool iv285555291}) {
    _nxh159284152.ivn268886556(iv285555291: iv285555291);
  }

  void br949360239({required bool iv285555291}) {
    _nxh159284152.br949360239(iv285555291: iv285555291);
  }

  void gh249853918({required bool uvk193371509}) {
    _f605786374 = uvk193371509;
    uhj141628551(
      Rh355692448.pm380883510,
      'Logger sdk save logs set to $uvk193371509',
    );
  }

  void ph566765765() {
    zj454203749 = false;
  }

  void uhj141628551(
    Rh355692448 ny913128435,
    String gbb172461853, {
    String? k248384390,
  }) {
    String mhb713013858 = gbb172461853;
    if (_lx871188524.index >= Rh355692448.o577029553.index && k248384390 != null) {
      mhb713013858 = '$k248384390 $gbb172461853';
    }
    if (ny913128435.index <= _lx871188524.index) {
      _mc1061096862.hc592496367(mhb713013858);
    }
  }

  Jjb535545917 _bc515173828() {
    return Jjb535545917(
      her331866187: Q136276191(
        e206264394: (gbb172461853) {
          if (_f605786374) {
            _a252877802.e735126500('flutter: $gbb172461853');
          }
        },
      ),
      wxd165442521: Xid890513720(
        zj454203749: () {
          return zj454203749;
        },
        brv740508749: () {
          return brv740508749();
        },
      ),
    );
  }
}

class Xid890513720 {
  Xid890513720({
    required this.zj454203749,
    required this.brv740508749,
  });
  final bool Function() zj454203749;
  final bool Function() brv740508749;

  bool vtd245192485() {
    if (!brv740508749()) return false;

    if (!zj454203749()) return false;
    return true;
  }
}

class Q136276191 {
  final Function(String) e206264394;

  Q136276191({required this.e206264394});

  List<String> uhj141628551(String gbb172461853) {
    final qcg537043046 = _nic847019349(gbb172461853);
    final hex651768676 = DateTime.now().toIso8601String();
    final h1061780725 = '<MedalliaDXA - $hex651768676> $qcg537043046';
    e206264394(h1061780725);
    return [h1061780725];
  }

  String _nic847019349(dynamic gbb172461853) {
    //
    final mhb713013858 = gbb172461853 is Function ? gbb172461853() : gbb172461853;
    if (mhb713013858 is Map || mhb713013858 is Iterable) {
      const r812901827 = JsonEncoder.withIndent(null);
      return r812901827.convert(mhb713013858);
    } else {
      return mhb713013858.toString();
    }
  }
}

class Jjb535545917 {
  Q136276191 her331866187;
  Xid890513720 wxd165442521;

  Jjb535545917({
    required this.her331866187,
    required this.wxd165442521,
  });
  void hc592496367(dynamic gbb172461853, [dynamic tr153119942, StackTrace? zhj740010631]) {
    uhj141628551(gbb172461853, tr153119942, zhj740010631);
  }

  void uhj141628551(dynamic gbb172461853, [dynamic tr153119942, StackTrace? zhj740010631]) {
    if (wxd165442521.vtd245192485()) {
      final w538025615 = her331866187.uhj141628551(gbb172461853);
      //
      w538025615.forEach(print);
    }
  }
}
