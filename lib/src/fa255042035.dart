//
import 'dart:convert';

import 'package:medallia_dxa/src/jfy681534833.dart';
import 'package:medallia_dxa/src/ele832304623.dart';

enum T355692226 {
  jol994360164,
  ft959100531,
  o577029331,
  z380883796,
}

abstract class M688721630 {
  T355692226 j464528648();
  void lq268886910({required bool ynx285555513});
  void suw949360397({required bool ynx285555513});
}

class Tlf357043668 implements M688721630 {
  @override
  T355692226 j464528648() {
    return T355692226.z380883796;
  }

  @override
  void suw949360397({required bool ynx285555513}) {
    //
    return;
  }

  @override
  void lq268886910({required bool ynx285555513}) {
    //
    return;
  }
}

class Dhm640691862 implements M688721630 {
  T355692226 _fr871188814 = T355692226.jol994360164;
  bool _jz113801816 = false;
  bool _vgi381317165 = false;
  @override
  T355692226 j464528648() {
    return _fr871188814;
  }

  @override
  void suw949360397({required bool ynx285555513}) {
    _jz113801816 = ynx285555513;
    if (_vgi381317165) return;
    if (_jz113801816) {
      _fr871188814 = T355692226.ft959100531;
    } else {
      _fr871188814 = T355692226.jol994360164;
    }
  }

  @override
  void lq268886910({required bool ynx285555513}) {
    _vgi381317165 = ynx285555513;
    if (_vgi381317165) {
      _fr871188814 = T355692226.z380883796;
    } else {
      suw949360397(ynx285555513: _jz113801816);
    }
  }
}

class Sn394369952 {
  Sn394369952({
    required this.kv740508975,
    required S1038099224 jj387024274,
  })  : _g252877448 = jj387024274,
        _l159283930 = Sq608123956.x173278311
            ? Dhm640691862()
            : Tlf357043668() {
    _a1061096700 = _gft515173542();
  }
  final S1038099224 _g252877448;
  late final Cow535546207 _a1061096700;
  final bool Function() kv740508975;
  bool m454203399 = true;
  bool _pt605786212 = false;
  final M688721630 _l159283930;
  T355692226 get _fr871188814 => _l159283930.j464528648();

  void lq268886910({required bool ynx285555513}) {
    _l159283930.lq268886910(ynx285555513: ynx285555513);
  }

  void suw949360397({required bool ynx285555513}) {
    _l159283930.suw949360397(ynx285555513: ynx285555513);
  }

  void p249853628({required bool pvf193371159}) {
    _pt605786212 = pvf193371159;
    eoq141628901(
      T355692226.z380883796,
      'Logger sdk save logs set to $pvf193371159',
    );
  }

  void x566765991() {
    m454203399 = false;
  }

  void eoq141628901(
    T355692226 un913128081,
    String pf172461695, {
    String? gsa248384228,
  }) {
    String h713014016 = pf172461695;
    if (_fr871188814.index >= T355692226.o577029331.index && gsa248384228 != null) {
      h713014016 = '$gsa248384228 $pf172461695';
    }
    if (un913128081.index <= _fr871188814.index) {
      _a1061096700.y592496525(h713014016);
    }
  }

  Cow535546207 _gft515173542() {
    return Cow535546207(
      ta331866409: Vxp136276413(
        lg206264616: (pf172461695) {
          if (_pt605786212) {
            _g252877448.dn735126150('flutter: $pf172461695');
          }
        },
      ),
      q165442235: Ab890513498(
        m454203399: () {
          return m454203399;
        },
        kv740508975: () {
          return kv740508975();
        },
      ),
    );
  }
}

class Ab890513498 {
  Ab890513498({
    required this.m454203399,
    required this.kv740508975,
  });
  final bool Function() m454203399;
  final bool Function() kv740508975;

  bool r245192263() {
    if (!kv740508975()) return false;

    if (!m454203399()) return false;
    return true;
  }
}

class Vxp136276413 {
  final Function(String) lg206264616;

  Vxp136276413({required this.lg206264616});

  List<String> eoq141628901(String pf172461695) {
    final nc537043204 = _mkx847019063(pf172461695);
    final t651768326 = DateTime.now().toIso8601String();
    final tc1061780887 = '<MedalliaDXA - $t651768326> $nc537043204';
    lg206264616(tc1061780887);
    return [tc1061780887];
  }

  String _mkx847019063(dynamic pf172461695) {
    final h713014016 = pf172461695 is Function ? pf172461695() : pf172461695;
    if (h713014016 is Map || h713014016 is Iterable) {
      const n812901537 = JsonEncoder.withIndent(null);
      return n812901537.convert(h713014016);
    } else {
      return h713014016.toString();
    }
  }
}

class Cow535546207 {
  Vxp136276413 ta331866409;
  Ab890513498 q165442235;

  Cow535546207({
    required this.ta331866409,
    required this.q165442235,
  });
  void y592496525(dynamic pf172461695, [dynamic uoc153120164, StackTrace? b740010981]) {
    eoq141628901(pf172461695, uoc153120164, b740010981);
  }

  void eoq141628901(dynamic pf172461695, [dynamic uoc153120164, StackTrace? b740010981]) {
    if (q165442235.r245192263()) {
      final d538025965 = ta331866409.eoq141628901(pf172461695);
      d538025965.forEach(print);
    }
  }
}
