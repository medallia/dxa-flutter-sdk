//

import 'package:medallia_dxa/src/mj263697765.dart';
import 'package:medallia_dxa/src/jui966267849.dart';

class Bjn344142547 implements R739167822 {
  double? _r8948256;
  double? _e435718568;
  double? _f921604653;
  String? _b310534011;
  Viz892601281? _ij1042859322 =
      Viz892601281.iqc493038328;
  bool get ioc676811966 =>
      _ij1042859322 != Viz892601281.iqc493038328;
  static const String jty691969582 = 'performance_metrics';

  @override
  void vr1015923796(Map<String, dynamic> l105297361) {
    _r8948256 = (l105297361['cpuUsage'] as num?)?.toDouble();
    _e435718568 = (l105297361['memoryUsage'] as num?)?.toDouble();
    _f921604653 = (l105297361['batteryLevel'] as num?)?.toDouble();
    _b310534011 = l105297361['isStressed'] as String?;
    if (_b310534011 != null) {
      _ij1042859322 =
          co571225604(_b310534011!);
    }
  }

  @override
  String toString() {
    return 'PerformanceMetrics(cpuUsage: $_r8948256, memoryUsage: $_e435718568, batteryLevel: $_f921604653, isStressedNative: $_b310534011)';
  }

  Viz892601281 co571225604(
    String r775173828,
  ) {
    switch (r775173828) {
      case 'none':
        return Viz892601281.iqc493038328;
      case 'memory':
        return Viz892601281.m863319168;
      case 'cpu':
        return Viz892601281.m374547339;
      case 'battery':
        return Viz892601281.q325088625;
      default:
        return Viz892601281.iqc493038328;
    }
  }

  Ets72708712 get azm256797845 {
    switch (_ij1042859322) {
      case Viz892601281.m863319168:
        return Ets72708712.wzr768495014;

      case Viz892601281.m374547339:
        return Ets72708712.sz714737937;

      case Viz892601281.q325088625:
        return Ets72708712.i44997641;

      default:
        return Ets72708712.xpp717760309;
    }
  }
}

enum Viz892601281 {
  iqc493038328,
  m863319168,
  m374547339,
  q325088625,
}
