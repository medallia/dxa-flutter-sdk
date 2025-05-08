//
import 'dart:convert';

import 'package:medallia_dxa/src/e465455659.dart';
import 'package:medallia_dxa/src/h69982521.dart';

enum Qqg355692373 {
  g994360051,
  ad959100900,
  a577029444,
  yjj380883651,
}

abstract class Am688721737 {
  Qqg355692373 ey464528543();
  void nf268886761({required bool uy285555374});
  void txx949360282({required bool uy285555374});
}

class Plq357043267 implements Am688721737 {
  @override
  Qqg355692373 ey464528543() {
    return Qqg355692373.yjj380883651;
  }

  @override
  void txx949360282({required bool uy285555374}) {
    //
    return;
  }

  @override
  void nf268886761({required bool uy285555374}) {
    //
    return;
  }
}

class Cxy640691969 implements Am688721737 {
  Qqg355692373 _a871188697 = Qqg355692373.g994360051;
  bool _ima113802191 = false;
  bool _n381317562 = false;
  @override
  Qqg355692373 ey464528543() {
    return _a871188697;
  }

  @override
  void txx949360282({required bool uy285555374}) {
    _ima113802191 = uy285555374;
    if (_n381317562) return;
    if (_ima113802191) {
      _a871188697 = Qqg355692373.ad959100900;
    } else {
      _a871188697 = Qqg355692373.g994360051;
    }
  }

  @override
  void nf268886761({required bool uy285555374}) {
    _n381317562 = uy285555374;
    if (_n381317562) {
      _a871188697 = Qqg355692373.yjj380883651;
    } else {
      txx949360282(uy285555374: _ima113802191);
    }
  }
}

class A394369591 {
  A394369591({
    required this.gb740508856,
    required Iil672746480 sjf387023877,
  })  : _zcu252877599 = sjf387023877,
        _xl159284045 = Yf608124323.vs173278704
            ? Cxy640691969()
            : Plq357043267() {
    _ifl1061096811 = _ot515173681();
  }
  final Iil672746480 _zcu252877599;
  late final Wt535546056 _ifl1061096811;
  final bool Function() gb740508856;
  bool b454203792 = true;
  bool _uwa605786611 = false;
  final Am688721737 _xl159284045;
  Qqg355692373 get _a871188697 => _xl159284045.ey464528543();

  void nf268886761({required bool uy285555374}) {
    _xl159284045.nf268886761(uy285555374: uy285555374);
  }

  void txx949360282({required bool uy285555374}) {
    _xl159284045.txx949360282(uy285555374: uy285555374);
  }

  void qz249853739({required bool zbh193371520}) {
    _uwa605786611 = zbh193371520;
    tog141628530(
      Qqg355692373.yjj380883651,
      'Logger sdk save logs set to $zbh193371520',
    );
  }

  void th566765616() {
    b454203792 = false;
  }

  void tog141628530(
    Qqg355692373 c913128198,
    String fz172462056, {
    String? j248384371,
  }) {
    String ab713013911 = fz172462056;
    if (_a871188697.index >= Qqg355692373.a577029444.index && j248384371 != null) {
      ab713013911 = '$j248384371 $fz172462056';
    }
    if (c913128198.index <= _a871188697.index) {
      _ifl1061096811.s592496154(ab713013911);
    }
  }

  Wt535546056 _ot515173681() {
    return Wt535546056(
      jmd331866302: Ak136276010(
        t206264511: (fz172462056) {
          if (_uwa605786611) {
            _zcu252877599.vxs735126289('flutter: $fz172462056');
          }
        },
      ),
      p165442348: Ks890513869(
        b454203792: () {
          return b454203792;
        },
        gb740508856: () {
          return gb740508856();
        },
      ),
    );
  }
}

class Ks890513869 {
  Ks890513869({
    required this.b454203792,
    required this.gb740508856,
  });
  final bool Function() b454203792;
  final bool Function() gb740508856;

  bool uxw245192656() {
    if (!gb740508856()) return false;

    if (!b454203792()) return false;
    return true;
  }
}

class Ak136276010 {
  final Function(String) t206264511;

  Ak136276010({required this.t206264511});

  List<String> tog141628530(String fz172462056) {
    final t537043091 = _w847019424(fz172462056);
    final xab651768721 = DateTime.now().toIso8601String();
    final x1061780480 = '<MedalliaDXA - $xab651768721> $t537043091';
    t206264511(x1061780480);
    return [x1061780480];
  }

  String _w847019424(dynamic fz172462056) {
    //
    final ab713013911 = fz172462056 is Function ? fz172462056() : fz172462056;
    if (ab713013911 is Map || ab713013911 is Iterable) {
      const rnp812901686 = JsonEncoder.withIndent(null);
      return rnp812901686.convert(ab713013911);
    } else {
      return ab713013911.toString();
    }
  }
}

class Wt535546056 {
  Ak136276010 jmd331866302;
  Ks890513869 p165442348;

  Wt535546056({
    required this.jmd331866302,
    required this.p165442348,
  });
  void s592496154(dynamic fz172462056, [dynamic pdm153119795, StackTrace? kxp740010610]) {
    tog141628530(fz172462056, pdm153119795, kxp740010610);
  }

  void tog141628530(dynamic fz172462056, [dynamic pdm153119795, StackTrace? kxp740010610]) {
    if (p165442348.uxw245192656()) {
      final ar538025594 = jmd331866302.tog141628530(fz172462056);
      //
      ar538025594.forEach(print);
    }
  }
}
