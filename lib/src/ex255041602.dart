//
import 'dart:convert';

import 'package:medallia_dxa/src/hd681534656.dart';
import 'package:medallia_dxa/src/qqu832304222.dart';

enum Ym355692403 {
  yy994360021,
  in959100866,
  pd577029474,
  kg380883685,
}

abstract class Cws688721775 {
  Ym355692403 bu464528569();
  void wqg268886735({required bool m285555336});
  void sl949360316({required bool m285555336});
}

class Hs357043301 implements Cws688721775 {
  @override
  Ym355692403 bu464528569() {
    return Ym355692403.kg380883685;
  }

  @override
  void sl949360316({required bool m285555336}) {
    //
    return;
  }

  @override
  void wqg268886735({required bool m285555336}) {
    //
    return;
  }
}

class G640692007 implements Cws688721775 {
  Ym355692403 _jeu871188735 = Ym355692403.yy994360021;
  bool _sc113802217 = false;
  bool _ln381317532 = false;
  @override
  Ym355692403 bu464528569() {
    return _jeu871188735;
  }

  @override
  void sl949360316({required bool m285555336}) {
    _sc113802217 = m285555336;
    if (_ln381317532) return;
    if (_sc113802217) {
      _jeu871188735 = Ym355692403.in959100866;
    } else {
      _jeu871188735 = Ym355692403.yy994360021;
    }
  }

  @override
  void wqg268886735({required bool m285555336}) {
    _ln381317532 = m285555336;
    if (_ln381317532) {
      _jeu871188735 = Ym355692403.kg380883685;
    } else {
      sl949360316(m285555336: _sc113802217);
    }
  }
}

class Bcw394369553 {
  Bcw394369553({
    required this.a740508830,
    required Bz1038099113 w387023907,
  })  : _q252877625 = w387023907,
        _pd159284075 = Gru608124293.kv173278678
            ? G640692007()
            : Hs357043301() {
    _q1061096781 = _qxs515173655();
  }
  final Bz1038099113 _q252877625;
  late final Op535546094 _q1061096781;
  final bool Function() a740508830;
  bool yr454203830 = true;
  bool _x605786581 = false;
  final Cws688721775 _pd159284075;
  Ym355692403 get _jeu871188735 => _pd159284075.bu464528569();

  void wqg268886735({required bool m285555336}) {
    _pd159284075.wqg268886735(m285555336: m285555336);
  }

  void sl949360316({required bool m285555336}) {
    _pd159284075.sl949360316(m285555336: m285555336);
  }

  void xz249853709({required bool uh193371558}) {
    _x605786581 = uh193371558;
    r141628500(
      Ym355692403.kg380883685,
      'Logger sdk save logs set to $uh193371558',
    );
  }

  void j566765590() {
    yr454203830 = false;
  }

  void r141628500(
    Ym355692403 ck913128224,
    String msj172462030, {
    String? lky248384341,
  }) {
    String yql713013937 = msj172462030;
    if (_jeu871188735.index >= Ym355692403.pd577029474.index && lky248384341 != null) {
      yql713013937 = '$lky248384341 $msj172462030';
    }
    if (ck913128224.index <= _jeu871188735.index) {
      _q1061096781.e592496188(yql713013937);
    }
  }

  Op535546094 _qxs515173655() {
    return Op535546094(
      np331866264: K136275980(
        rn206264473: (msj172462030) {
          if (_x605786581) {
            _q252877625.xes735126327('flutter: $msj172462030');
          }
        },
      ),
      k165442314: Xss890513899(
        yr454203830: () {
          return yr454203830;
        },
        a740508830: () {
          return a740508830();
        },
      ),
    );
  }
}

class Xss890513899 {
  Xss890513899({
    required this.yr454203830,
    required this.a740508830,
  });
  final bool Function() yr454203830;
  final bool Function() a740508830;

  bool p245192694() {
    if (!a740508830()) return false;

    if (!yr454203830()) return false;
    return true;
  }
}

class K136275980 {
  final Function(String) rn206264473;

  K136275980({required this.rn206264473});

  List<String> r141628500(String msj172462030) {
    final g537043125 = _lyd847019398(msj172462030);
    final fq651768759 = DateTime.now().toIso8601String();
    final do1061780518 = '<MedalliaDXA - $fq651768759> $g537043125';
    rn206264473(do1061780518);
    return [do1061780518];
  }

  String _lyd847019398(dynamic msj172462030) {
    final yql713013937 = msj172462030 is Function ? msj172462030() : msj172462030;
    if (yql713013937 is Map || yql713013937 is Iterable) {
      const x812901648 = JsonEncoder.withIndent(null);
      return x812901648.convert(yql713013937);
    } else {
      return yql713013937.toString();
    }
  }
}

class Op535546094 {
  K136275980 np331866264;
  Xss890513899 k165442314;

  Op535546094({
    required this.np331866264,
    required this.k165442314,
  });
  void e592496188(dynamic msj172462030, [dynamic lvq153119765, StackTrace? l740010580]) {
    r141628500(msj172462030, lvq153119765, l740010580);
  }

  void r141628500(dynamic msj172462030, [dynamic lvq153119765, StackTrace? l740010580]) {
    if (k165442314.p245192694()) {
      final pr538025564 = np331866264.r141628500(msj172462030);
      pr538025564.forEach(print);
    }
  }
}
