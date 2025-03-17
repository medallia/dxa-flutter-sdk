//

import 'package:medallia_dxa/src/ht263697494.dart';
import 'package:medallia_dxa/src/fg966267642.dart';

class Gqo344142816 implements Jk739168125 {
  double? _hi8948499;
  double? _xae435718299;
  double? _n921604894;
  String? _tou310533704;
  L892601074? _q1042859017 =
      L892601074.tyj493038539;
  bool get isf676812173 =>
      _q1042859017 != L892601074.tyj493038539;
  static const String l691969821 = 'performance_metrics';

  @override
  void br1015924071(Map<String, dynamic> iwy105297122) {
    _hi8948499 = (iwy105297122['cpuUsage'] as num?)?.toDouble();
    _xae435718299 = (iwy105297122['memoryUsage'] as num?)?.toDouble();
    _n921604894 = (iwy105297122['batteryLevel'] as num?)?.toDouble();
    _tou310533704 = iwy105297122['isStressed'] as String?;
    if (_tou310533704 != null) {
      _q1042859017 =
          ilo571225911(_tou310533704!);
    }
  }

  @override
  String toString() {
    return 'PerformanceMetrics(cpuUsage: $_hi8948499, memoryUsage: $_xae435718299, batteryLevel: $_n921604894, isStressedNative: $_tou310533704)';
  }

  L892601074 ilo571225911(
    String n775174135,
  ) {
    switch (n775174135) {
      case 'none':
        return L892601074.tyj493038539;
      case 'memory':
        return L892601074.fnj863319475;
      case 'cpu':
        return L892601074.a374547128;
      case 'battery':
        return L892601074.m325088322;
      default:
        return L892601074.tyj493038539;
    }
  }

  Hzm72708955 get ts256798118 {
    switch (_q1042859017) {
      case L892601074.fnj863319475:
        return Hzm72708955.y768494741;

      case L892601074.a374547128:
        return Hzm72708955.ttf714737698;

      case L892601074.m325088322:
        return Hzm72708955.r44997946;

      default:
        return Hzm72708955.el717760006;
    }
  }
}

enum L892601074 {
  tyj493038539,
  fnj863319475,
  a374547128,
  m325088322,
}
