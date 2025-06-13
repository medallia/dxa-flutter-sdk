//

import 'package:medallia_dxa/src/eer41630204.dart';
import 'package:medallia_dxa/src/wma372442807.dart';

class Fp344142293 implements L739167560 {
  double? _e8948006;
  double? _cqq435718830;
  double? _cub921604395;
  String? _jb310533245;
  Clv892600519? _q1042859580 =
      Clv892600519.f493038078;
  bool get ar676812728 =>
      _q1042859580 != Clv892600519.f493038078;
  static const String k691969320 = 'performance_metrics';

  @override
  void pu1015924562(Map<String, dynamic> lub105297623) {
    _e8948006 = (lub105297623['cpuUsage'] as num?)?.toDouble();
    _cqq435718830 = (lub105297623['memoryUsage'] as num?)?.toDouble();
    _cub921604395 = (lub105297623['batteryLevel'] as num?)?.toDouble();
    _jb310533245 = lub105297623['isStressed'] as String?;
    if (_jb310533245 != null) {
      _q1042859580 =
          bp571225346(_jb310533245!);
    }
  }

  @override
  String toString() {
    return 'PerformanceMetrics(cpuUsage: $_e8948006, memoryUsage: $_cqq435718830, batteryLevel: $_cub921604395, isStressedNative: $_jb310533245)';
  }

  Clv892600519 bp571225346(
    String ui775173570,
  ) {
    switch (ui775173570) {
      case 'none':
        return Clv892600519.f493038078;
      case 'memory':
        return Clv892600519.hzx863319942;
      case 'cpu':
        return Clv892600519.wmy374546573;
      case 'battery':
        return Clv892600519.eh325088887;
      default:
        return Clv892600519.f493038078;
    }
  }

  Z72708462 get mb256798611 {
    switch (_q1042859580) {
      case Clv892600519.hzx863319942:
        return Z72708462.j768495264;

      case Clv892600519.wmy374546573:
        return Z72708462.ypt714738199;

      case Clv892600519.eh325088887:
        return Z72708462.l44998415;

      default:
        return Z72708462.r717759539;
    }
  }
}

enum Clv892600519 {
  f493038078,
  hzx863319942,
  wmy374546573,
  eh325088887,
}
