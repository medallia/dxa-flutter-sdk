//
import 'dart:convert';

import 'package:medallia_dxa/src/x681534985.dart';
import 'package:medallia_dxa/src/f832304791.dart';

enum Cu355691962 {
  dy994359324,
  sv959100171,
  ic577030059,
  qt380882988,
}

abstract class Vs688721318 {
  Cu355691962 zz464529008();
  void p268886022({required bool vsy285554753});
  void ad949359733({required bool vsy285554753});
}

class Zrp357043884 implements Vs688721318 {
  @override
  Cu355691962 zz464529008() {
    return Cu355691962.qt380882988;
  }

  @override
  void ad949359733({required bool vsy285554753}) {
    //
    return;
  }

  @override
  void p268886022({required bool vsy285554753}) {
    //
    return;
  }
}

class Du640691694 implements Vs688721318 {
  Cu355691962 _ot871189046 = Cu355691962.dy994359324;
  bool _siy113801504 = false;
  bool _sc381317973 = false;
  @override
  Cu355691962 zz464529008() {
    return _ot871189046;
  }

  @override
  void ad949359733({required bool vsy285554753}) {
    _siy113801504 = vsy285554753;
    if (_sc381317973) return;
    if (_siy113801504) {
      _ot871189046 = Cu355691962.sv959100171;
    } else {
      _ot871189046 = Cu355691962.dy994359324;
    }
  }

  @override
  void p268886022({required bool vsy285554753}) {
    _sc381317973 = vsy285554753;
    if (_sc381317973) {
      _ot871189046 = Cu355691962.qt380882988;
    } else {
      ad949359733(vsy285554753: _siy113801504);
    }
  }
}

class Nfs394369240 {
  Nfs394369240({
    required this.jpt740509271,
    required Dzw1038098528 r387024618,
  })  : _es252877296 = r387024618,
        _ac159283618 = Fzz608124748.qua173279007
            ? Du640691694()
            : Zrp357043884() {
    _gi1061097348 = _s515174366();
  }
  final Dzw1038098528 _es252877296;
  late final J535546407 _gi1061097348;
  final bool Function() jpt740509271;
  bool qs454204287 = true;
  bool _c605786908 = false;
  final Vs688721318 _ac159283618;
  Cu355691962 get _ot871189046 => _ac159283618.zz464529008();

  void p268886022({required bool vsy285554753}) {
    _ac159283618.p268886022(vsy285554753: vsy285554753);
  }

  void ad949359733({required bool vsy285554753}) {
    _ac159283618.ad949359733(vsy285554753: vsy285554753);
  }

  void lo249853380({required bool hsq193372015}) {
    _c605786908 = hsq193372015;
    ieh141629085(
      Cu355691962.qt380882988,
      'Logger sdk save logs set to $hsq193372015',
    );
  }

  void l566766303() {
    qs454204287 = false;
  }

  void ieh141629085(
    Cu355691962 orv913127913,
    String jo172461319, {
    String? zh248383900,
  }) {
    String sh713013368 = jo172461319;
    if (_ot871189046.index >= Cu355691962.ic577030059.index && zh248383900 != null) {
      sh713013368 = '$zh248383900 $jo172461319';
    }
    if (orv913127913.index <= _ot871189046.index) {
      _gi1061097348.v592495861(sh713013368);
    }
  }

  J535546407 _s515174366() {
    return J535546407(
      v331866705: Ypj136276677(
        u206264912: (jo172461319) {
          if (_c605786908) {
            _es252877296.c735126014('flutter: $jo172461319');
          }
        },
      ),
      jq165441987: Brz890514210(
        qs454204287: () {
          return qs454204287;
        },
        jpt740509271: () {
          return jpt740509271();
        },
      ),
    );
  }
}

class Brz890514210 {
  Brz890514210({
    required this.qs454204287,
    required this.jpt740509271,
  });
  final bool Function() qs454204287;
  final bool Function() jpt740509271;

  bool k245191999() {
    if (!jpt740509271()) return false;

    if (!qs454204287()) return false;
    return true;
  }
}

class Ypj136276677 {
  final Function(String) u206264912;

  Ypj136276677({required this.u206264912});

  List<String> ieh141629085(String jo172461319) {
    final qub537043580 = _o847019855(jo172461319);
    final im651768190 = DateTime.now().toIso8601String();
    final yyc1061781231 = '<MedalliaDXA - $im651768190> $qub537043580';
    u206264912(yyc1061781231);
    return [yyc1061781231];
  }

  String _o847019855(dynamic jo172461319) {
    final sh713013368 = jo172461319 is Function ? jo172461319() : jo172461319;
    if (sh713013368 is Map || sh713013368 is Iterable) {
      const z812902361 = JsonEncoder.withIndent(null);
      return z812902361.convert(sh713013368);
    } else {
      return sh713013368.toString();
    }
  }
}

class J535546407 {
  Ypj136276677 v331866705;
  Brz890514210 jq165441987;

  J535546407({
    required this.v331866705,
    required this.jq165441987,
  });
  void v592495861(dynamic jo172461319, [dynamic c153120476, StackTrace? y740010141]) {
    ieh141629085(jo172461319, c153120476, y740010141);
  }

  void ieh141629085(dynamic jo172461319, [dynamic c153120476, StackTrace? y740010141]) {
    if (jq165441987.k245191999()) {
      final ucw538025109 = v331866705.ieh141629085(jo172461319);
      ucw538025109.forEach(print);
    }
  }
}
