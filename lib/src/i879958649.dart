//

import 'package:medallia_dxa/src/l263697503.dart';
import 'package:medallia_dxa/src/lk966267635.dart';

class Ol344142825 implements Jl739168116 {
  double? _kgg8948506;
  double? _zf435718290;
  double? _hq921604887;
  String? _z310533697;
  Jtc892601083? _y1042859008 =
      Jtc892601083.tan493038530;
  bool get yqb676812164 =>
      _y1042859008 != Jtc892601083.tan493038530;
  static const String uj691969812 = 'performance_metrics';

  @override
  void q1015924078(Map<String, dynamic> zku481948163) {
    final Map<String, dynamic> rd420090564 = zku481948163[uj691969812] as Map<String, dynamic>;
    _kgg8948506 = (rd420090564['cpuUsage'] as num?)?.toDouble();
    _zf435718290 = (rd420090564['memoryUsage'] as num?)?.toDouble();
    _hq921604887 = (rd420090564['batteryLevel'] as num?)?.toDouble();
    _z310533697 = rd420090564['isStressed'] as String?;
    if (_z310533697 != null) {
      _y1042859008 =
          q571225918(_z310533697!);
    }
  }

  @override
  String toString() {
    return 'PerformanceMetrics(cpuUsage: $_kgg8948506, memoryUsage: $_zf435718290, batteryLevel: $_hq921604887, isStressedNative: $_z310533697)';
  }

  Jtc892601083 q571225918(
    String f775174142,
  ) {
    switch (f775174142) {
      case 'none':
        return Jtc892601083.tan493038530;
      case 'memory':
        return Jtc892601083.l863319482;
      case 'cpu':
        return Jtc892601083.d374547121;
      case 'battery':
        return Jtc892601083.lx325088331;
      default:
        return Jtc892601083.tan493038530;
    }
  }

  Skn72708946 get p256798127 {
    switch (_y1042859008) {
      case Jtc892601083.l863319482:
        return Skn72708946.kg768494748;

      case Jtc892601083.d374547121:
        return Skn72708946.x714737707;

      case Jtc892601083.lx325088331:
        return Skn72708946.d44997939;

      default:
        return Skn72708946.c717760015;
    }
  }
}

enum Jtc892601083 {
  tan493038530,
  l863319482,
  d374547121,
  lx325088331,
}
