//
import 'dart:convert';

import 'package:medallia_dxa/src/d465455692.dart';
import 'package:medallia_dxa/src/tl69982558.dart';

enum X355692338 {
  s994359956,
  g959100803,
  k577029411,
  qb380883620,
}

abstract class L688721710 {
  X355692338 pt464528632();
  void swz268886670({required bool na285555401});
  void ucp949360381({required bool na285555401});
}

class Csc357043236 implements L688721710 {
  @override
  X355692338 pt464528632() {
    return X355692338.qb380883620;
  }

  @override
  void ucp949360381({required bool na285555401}) {
    //
    return;
  }

  @override
  void swz268886670({required bool na285555401}) {
    //
    return;
  }
}

class Syo640692070 implements L688721710 {
  X355692338 _my871188670 = X355692338.s994359956;
  bool _u113802152 = false;
  bool _uw381317597 = false;
  @override
  X355692338 pt464528632() {
    return _my871188670;
  }

  @override
  void ucp949360381({required bool na285555401}) {
    _u113802152 = na285555401;
    if (_uw381317597) return;
    if (_u113802152) {
      _my871188670 = X355692338.g959100803;
    } else {
      _my871188670 = X355692338.s994359956;
    }
  }

  @override
  void swz268886670({required bool na285555401}) {
    _uw381317597 = na285555401;
    if (_uw381317597) {
      _my871188670 = X355692338.qb380883620;
    } else {
      ucp949360381(na285555401: _u113802152);
    }
  }
}

class Zwh394369616 {
  Zwh394369616({
    required this.s740508895,
    required I672746391 cva387023970,
  })  : _l252877688 = cva387023970,
        _oq159284010 = Tl608124356.nd173278615
            ? Syo640692070()
            : Csc357043236() {
    _opx1061096716 = _ha515173718();
  }
  final I672746391 _l252877688;
  late final Wof535546031 _opx1061096716;
  final bool Function() s740508895;
  bool yef454203895 = true;
  bool _w605786516 = false;
  final L688721710 _oq159284010;
  X355692338 get _my871188670 => _oq159284010.pt464528632();

  void swz268886670({required bool na285555401}) {
    _oq159284010.swz268886670(na285555401: na285555401);
  }

  void ucp949360381({required bool na285555401}) {
    _oq159284010.ucp949360381(na285555401: na285555401);
  }

  void d249853772({required bool q193371623}) {
    _w605786516 = q193371623;
    no141628437(
      X355692338.qb380883620,
      'Logger sdk save logs set to $q193371623',
    );
  }

  void n566765655() {
    yef454203895 = false;
  }

  void no141628437(
    X355692338 zlk913128289,
    String riv172461967, {
    String? txc248384276,
  }) {
    String l713014000 = riv172461967;
    if (_my871188670.index >= X355692338.k577029411.index && txc248384276 != null) {
      l713014000 = '$txc248384276 $riv172461967';
    }
    if (zlk913128289.index <= _my871188670.index) {
      _opx1061096716.y592496253(l713014000);
    }
  }

  Wof535546031 _ha515173718() {
    return Wof535546031(
      u331866329: E136276045(
        yxs206264536: (riv172461967) {
          if (_w605786516) {
            _l252877688.l735126390('flutter: $riv172461967');
          }
        },
      ),
      hj165442379: Hyw890513834(
        yef454203895: () {
          return yef454203895;
        },
        s740508895: () {
          return s740508895();
        },
      ),
    );
  }
}

class Hyw890513834 {
  Hyw890513834({
    required this.yef454203895,
    required this.s740508895,
  });
  final bool Function() yef454203895;
  final bool Function() s740508895;

  bool sc245192631() {
    if (!s740508895()) return false;

    if (!yef454203895()) return false;
    return true;
  }
}

class E136276045 {
  final Function(String) yxs206264536;

  E136276045({required this.yxs206264536});

  List<String> no141628437(String riv172461967) {
    final l537043188 = _tvf847019463(riv172461967);
    final aq651768822 = DateTime.now().toIso8601String();
    final kn1061780583 = '<MedalliaDXA - $aq651768822> $l537043188';
    yxs206264536(kn1061780583);
    return [kn1061780583];
  }

  String _tvf847019463(dynamic riv172461967) {
    //
    final l713014000 = riv172461967 is Function ? riv172461967() : riv172461967;
    if (l713014000 is Map || l713014000 is Iterable) {
      const m812901713 = JsonEncoder.withIndent(null);
      return m812901713.convert(l713014000);
    } else {
      return l713014000.toString();
    }
  }
}

class Wof535546031 {
  E136276045 u331866329;
  Hyw890513834 hj165442379;

  Wof535546031({
    required this.u331866329,
    required this.hj165442379,
  });
  void y592496253(dynamic riv172461967, [dynamic w153119828, StackTrace? dxr740010517]) {
    no141628437(riv172461967, w153119828, dxr740010517);
  }

  void no141628437(dynamic riv172461967, [dynamic w153119828, StackTrace? dxr740010517]) {
    if (hj165442379.sc245192631()) {
      final r538025501 = u331866329.no141628437(riv172461967);
      //
      r538025501.forEach(print);
    }
  }
}
