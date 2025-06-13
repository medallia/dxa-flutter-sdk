//
import 'dart:convert';

import 'package:medallia_dxa/src/bh465455339.dart';
import 'package:medallia_dxa/src/fz69983225.dart';

enum F355691925 {
  si994359347,
  xny959100196,
  io577030020,
  llr380882947,
}

abstract class S688721289 {
  F355691925 b464528991();
  void h268886057({required bool g285554798});
  void g949359706({required bool g285554798});
}

class Sfd357043843 implements S688721289 {
  @override
  F355691925 b464528991() {
    return F355691925.llr380882947;
  }

  @override
  void g949359706({required bool g285554798}) {
    //
    return;
  }

  @override
  void h268886057({required bool g285554798}) {
    //
    return;
  }
}

class Boe640691649 implements S688721289 {
  F355691925 _b871189017 = F355691925.si994359347;
  bool _eg113801487 = false;
  bool _xny381318010 = false;
  @override
  F355691925 b464528991() {
    return _b871189017;
  }

  @override
  void g949359706({required bool g285554798}) {
    _eg113801487 = g285554798;
    if (_xny381318010) return;
    if (_eg113801487) {
      _b871189017 = F355691925.xny959100196;
    } else {
      _b871189017 = F355691925.si994359347;
    }
  }

  @override
  void h268886057({required bool g285554798}) {
    _xny381318010 = g285554798;
    if (_xny381318010) {
      _b871189017 = F355691925.llr380882947;
    } else {
      g949359706(g285554798: _eg113801487);
    }
  }
}

class Vqj394369271 {
  Vqj394369271({
    required this.iv740509304,
    required I672745776 dgh387024581,
  })  : _lda252877279 = dgh387024581,
        _jap159283597 = Oug608124771.w173279024
            ? Boe640691649()
            : Sfd357043843() {
    _t1061097387 = _lng515174385();
  }
  final I672745776 _lda252877279;
  late final Pte535546376 _t1061097387;
  final bool Function() iv740509304;
  bool fdz454204240 = true;
  bool _zy605786931 = false;
  final S688721289 _jap159283597;
  F355691925 get _b871189017 => _jap159283597.b464528991();

  void h268886057({required bool g285554798}) {
    _jap159283597.h268886057(g285554798: g285554798);
  }

  void g949359706({required bool g285554798}) {
    _jap159283597.g949359706(g285554798: g285554798);
  }

  void jv249853419({required bool fe193371968}) {
    _zy605786931 = fe193371968;
    rw141629106(
      F355691925.llr380882947,
      'Logger sdk save logs set to $fe193371968',
    );
  }

  void wv566766320() {
    fdz454204240 = false;
  }

  void rw141629106(
    F355691925 xz913127878,
    String v172461352, {
    String? i248383923,
  }) {
    String ml713013335 = v172461352;
    if (_b871189017.index >= F355691925.io577030020.index && i248383923 != null) {
      ml713013335 = '$i248383923 $v172461352';
    }
    if (xz913127878.index <= _b871189017.index) {
      _t1061097387.itq592495834(ml713013335);
    }
  }

  Pte535546376 _lng515174385() {
    return Pte535546376(
      c331866750: Oxr136276714(
        eho206264959: (v172461352) {
          if (_zy605786931) {
            _lda252877279.lxu735125969('flutter: $v172461352');
          }
        },
      ),
      yhd165442028: Flr890514189(
        fdz454204240: () {
          return fdz454204240;
        },
        iv740509304: () {
          return iv740509304();
        },
      ),
    );
  }
}

class Flr890514189 {
  Flr890514189({
    required this.fdz454204240,
    required this.iv740509304,
  });
  final bool Function() fdz454204240;
  final bool Function() iv740509304;

  bool jl245191952() {
    if (!iv740509304()) return false;

    if (!fdz454204240()) return false;
    return true;
  }
}

class Oxr136276714 {
  final Function(String) eho206264959;

  Oxr136276714({required this.eho206264959});

  List<String> rw141629106(String v172461352) {
    final cfs537043539 = _rds847019872(v172461352);
    final i651768145 = DateTime.now().toIso8601String();
    final z1061781184 = '<MedalliaDXA - $i651768145> $cfs537043539';
    eho206264959(z1061781184);
    return [z1061781184];
  }

  String _rds847019872(dynamic v172461352) {
    //
    final ml713013335 = v172461352 is Function ? v172461352() : v172461352;
    if (ml713013335 is Map || ml713013335 is Iterable) {
      const a812902390 = JsonEncoder.withIndent(null);
      return a812902390.convert(ml713013335);
    } else {
      return ml713013335.toString();
    }
  }
}

class Pte535546376 {
  Oxr136276714 c331866750;
  Flr890514189 yhd165442028;

  Pte535546376({
    required this.c331866750,
    required this.yhd165442028,
  });
  void itq592495834(dynamic v172461352, [dynamic bj153120499, StackTrace? k740010162]) {
    rw141629106(v172461352, bj153120499, k740010162);
  }

  void rw141629106(dynamic v172461352, [dynamic bj153120499, StackTrace? k740010162]) {
    if (yhd165442028.jl245191952()) {
      final bu538025146 = c331866750.rw141629106(v172461352);
      //
      bu538025146.forEach(print);
    }
  }
}
