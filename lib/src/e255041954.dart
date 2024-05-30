//
import 'dart:convert';

import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/t681534752.dart';
import 'package:medallia_dxa/src/xu832304574.dart';

enum Df355692179 {
  ie994360117,
  pyv959100450,
  x577029250,
  d380883717,
}

abstract class Apj688721551 {
  Df355692179 su464528729();
  void m268886831({required bool w285555560});
  void fc949360476({required bool w285555560});
}

class F357043589 implements Apj688721551 {
  @override
  Df355692179 su464528729() {
    return Df355692179.d380883717;
  }

  @override
  void fc949360476({required bool w285555560}) {
    //
    return;
  }

  @override
  void m268886831({required bool w285555560}) {
    //
    return;
  }
}

class Zwt640691911 implements Apj688721551 {
  Df355692179 _a871188767 = Df355692179.ie994360117;
  bool _dcb113801737 = false;
  bool _qcu381317244 = false;
  @override
  Df355692179 su464528729() {
    return _a871188767;
  }

  @override
  void fc949360476({required bool w285555560}) {
    _dcb113801737 = w285555560;
    if (_qcu381317244) return;
    if (_dcb113801737) {
      _a871188767 = Df355692179.pyv959100450;
    } else {
      _a871188767 = Df355692179.ie994360117;
    }
  }

  @override
  void m268886831({required bool w285555560}) {
    _qcu381317244 = w285555560;
    if (_qcu381317244) {
      _a871188767 = Df355692179.d380883717;
    } else {
      fc949360476(w285555560: _dcb113801737);
    }
  }
}

class Kq394370033 {
  Kq394370033({
    required this.tjw740509054,
    required Yqe1038099273 p387024323,
  })  : _c252877529 = p387024323,
        _nim159283851 = Jm608124005.i173278262
            ? Zwt640691911()
            : F357043589() {
    _jy1061096621 = _m515173623();
  }
  final Yqe1038099273 _c252877529;
  late final Logger _jy1061096621;
  final bool Function() tjw740509054;
  bool av454203478 = true;
  bool _u605786165 = false;
  final Apj688721551 _nim159283851;
  Df355692179 get _a871188767 => _nim159283851.su464528729();

  void m268886831({required bool w285555560}) {
    _nim159283851.m268886831(w285555560: w285555560);
  }

  void fc949360476({required bool w285555560}) {
    _nim159283851.fc949360476(w285555560: w285555560);
  }

  void iya249853677({required bool n193371206}) {
    _u605786165 = n193371206;
    fbr141628852(
      Df355692179.d380883717,
      'Logger sdk save logs changed to $n193371206',
    );
  }

  void zzc566766070() {
    av454203478 = false;
  }

  void fbr141628852(
    Df355692179 x913128128,
    String pui172461614, {
    String? qaw248384181,
  }) {
    String oo713014097 = pui172461614;
    if (_a871188767.index >= Df355692179.x577029250.index && qaw248384181 != null) {
      oo713014097 = '$qaw248384181 $pui172461614';
    }
    if (x913128128.index <= _a871188767.index) {
      _jy1061096621.d(oo713014097);
    }
  }

  Logger _m515173623() {
    return Logger(
      printer: T136276460(
        ue206264697: (pui172461614) {
          if (_u605786165) {
            _c252877529.w735126231('flutter: $pui172461614');
          }
        },
      ),
      filter: Iyi890513419(
        av454203478: () {
          return av454203478;
        },
        tjw740509054: () {
          return tjw740509054();
        },
      ),
    );
  }
}

class Iyi890513419 extends DevelopmentFilter {
  Iyi890513419({
    required this.av454203478,
    required this.tjw740509054,
  });
  final bool Function() av454203478;
  final bool Function() tjw740509054;
  @override
  bool shouldLog(LogEvent zs768265615) {
    if (!tjw740509054()) return false;
    if (!super.shouldLog(zs768265615)) return false;
    if (!av454203478()) return false;
    return true;
  }
}

class T136276460 extends SimplePrinter {
  final Function(String) ue206264697;

  T136276460({required this.ue206264697});
  @override
  List<String> log(LogEvent zs768265615) {
    final ixz537043285 = _f847019110(zs768265615.message);
    final ktx942228989 = zs768265615.error != null ? '  ERROR: ${zs768265615.error}' : '';
    final f651768407 = zs768265615.time.toIso8601String();
    final lqc1061780934 =
        '<MedalliaDXA - $f651768407> $ixz537043285$ktx942228989';
    ue206264697(lqc1061780934);
    return [lqc1061780934];
  }

  String _f847019110(dynamic pui172461614) {
    final oo713014097 = pui172461614 is Function ? pui172461614() : pui172461614;
    if (oo713014097 is Map || oo713014097 is Iterable) {
      const fa812901616 = JsonEncoder.withIndent(null);
      return fa812901616.convert(oo713014097);
    } else {
      return oo713014097.toString();
    }
  }
}
