//
import 'dart:convert';

import 'package:medallia_dxa/src/uoj465455272.dart';
import 'package:medallia_dxa/src/ydm69983162.dart';

enum F355691990 {
  plv994359408,
  z959100263,
  ozy577030087,
  e380883008,
}

abstract class Rl688721354 {
  F355691990 xu464528924();
  void sb268886122({required bool qeq285554733});
  void fww949359641({required bool qeq285554733});
}

class Q357043904 implements Rl688721354 {
  @override
  F355691990 xu464528924() {
    return F355691990.e380883008;
  }

  @override
  void fww949359641({required bool qeq285554733}) {
    //
    return;
  }

  @override
  void sb268886122({required bool qeq285554733}) {
    //
    return;
  }
}

class Fpy640691586 implements Rl688721354 {
  F355691990 _ufo871189082 = F355691990.plv994359408;
  bool _irg113801548 = false;
  bool _lho381317945 = false;
  @override
  F355691990 xu464528924() {
    return _ufo871189082;
  }

  @override
  void fww949359641({required bool qeq285554733}) {
    _irg113801548 = qeq285554733;
    if (_lho381317945) return;
    if (_irg113801548) {
      _ufo871189082 = F355691990.z959100263;
    } else {
      _ufo871189082 = F355691990.plv994359408;
    }
  }

  @override
  void sb268886122({required bool qeq285554733}) {
    _lho381317945 = qeq285554733;
    if (_lho381317945) {
      _ufo871189082 = F355691990.e380883008;
    } else {
      fww949359641(qeq285554733: _irg113801548);
    }
  }
}

class Jnx394369204 {
  Jnx394369204({
    required this.zdb740509243,
    required Hum672745843 mt387024518,
  })  : _e252877212 = mt387024518,
        _m159283662 = Wf608124704.yj173279091
            ? Fpy640691586()
            : Q357043904() {
    _e1061097448 = _rkq515174322();
  }
  final Hum672745843 _e252877212;
  late final Eo535546443 _e1061097448;
  final bool Function() zdb740509243;
  bool p454204179 = true;
  bool _f605786992 = false;
  final Rl688721354 _m159283662;
  F355691990 get _ufo871189082 => _m159283662.xu464528924();

  void sb268886122({required bool qeq285554733}) {
    _m159283662.sb268886122(qeq285554733: qeq285554733);
  }

  void fww949359641({required bool qeq285554733}) {
    _m159283662.fww949359641(qeq285554733: qeq285554733);
  }

  void w249853352({required bool ica193371907}) {
    _f605786992 = ica193371907;
    w141629169(
      F355691990.e380883008,
      'Logger sdk save logs set to $ica193371907',
    );
  }

  void c566766259() {
    p454204179 = false;
  }

  void w141629169(
    F355691990 vb913127813,
    String caf172461419, {
    String? oe248383984,
  }) {
    String yo713013268 = caf172461419;
    if (_ufo871189082.index >= F355691990.ozy577030087.index && oe248383984 != null) {
      yo713013268 = '$oe248383984 $caf172461419';
    }
    if (vb913127813.index <= _ufo871189082.index) {
      _e1061097448.f592495769(yo713013268);
    }
  }

  Eo535546443 _rkq515174322() {
    return Eo535546443(
      qi331866685: I136276649(
        y206264892: (caf172461419) {
          if (_f605786992) {
            _e252877212.de735125906('flutter: $caf172461419');
          }
        },
      ),
      kwo165441967: Ns890514254(
        p454204179: () {
          return p454204179;
        },
        zdb740509243: () {
          return zdb740509243();
        },
      ),
    );
  }
}

class Ns890514254 {
  Ns890514254({
    required this.p454204179,
    required this.zdb740509243,
  });
  final bool Function() p454204179;
  final bool Function() zdb740509243;

  bool f245192019() {
    if (!zdb740509243()) return false;

    if (!p454204179()) return false;
    return true;
  }
}

class I136276649 {
  final Function(String) y206264892;

  I136276649({required this.y206264892});

  List<String> w141629169(String caf172461419) {
    final rfo537043472 = _y847019811(caf172461419);
    final k651768082 = DateTime.now().toIso8601String();
    final l1061781123 = '<MedalliaDXA - $k651768082> $rfo537043472';
    y206264892(l1061781123);
    return [l1061781123];
  }

  String _y847019811(dynamic caf172461419) {
    //
    final yo713013268 = caf172461419 is Function ? caf172461419() : caf172461419;
    if (yo713013268 is Map || yo713013268 is Iterable) {
      const q812902325 = JsonEncoder.withIndent(null);
      return q812902325.convert(yo713013268);
    } else {
      return yo713013268.toString();
    }
  }
}

class Eo535546443 {
  I136276649 qi331866685;
  Ns890514254 kwo165441967;

  Eo535546443({
    required this.qi331866685,
    required this.kwo165441967,
  });
  void f592495769(dynamic caf172461419, [dynamic s153120432, StackTrace? zim740010225]) {
    w141629169(caf172461419, s153120432, zim740010225);
  }

  void w141629169(dynamic caf172461419, [dynamic s153120432, StackTrace? zim740010225]) {
    if (kwo165441967.f245192019()) {
      final bu538025209 = qi331866685.w141629169(caf172461419);
      //
      bu538025209.forEach(print);
    }
  }
}
