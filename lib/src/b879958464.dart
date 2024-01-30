//

import 'package:medallia_dxa/src/j263698406.dart';
import 'package:medallia_dxa/src/kr966267210.dart';

class I344141904 implements Kg739167437 {
  double? _eds8947875;
  double? _cy435718955;
  double? _laa921604270;
  String? _nj310533624;
  Wmz892600642? _a1042859961 =
      Wmz892600642.uv493037691;
  bool get jb676812349 =>
      _a1042859961 != Wmz892600642.uv493037691;
  static const String tb691969197 = 'performance_metrics';

  @override
  void kpw1015924439(Map<String, dynamic> le481948090) {
    final Map<String, dynamic> p420090237 = le481948090[tb691969197] as Map<String, dynamic>;
    _eds8947875 = (p420090237['cpuUsage'] as num?)?.toDouble();
    _cy435718955 = (p420090237['memoryUsage'] as num?)?.toDouble();
    _laa921604270 = (p420090237['batteryLevel'] as num?)?.toDouble();
    _nj310533624 = p420090237['isStressed'] as String?;
    if (_nj310533624 != null) {
      _a1042859961 =
          xil571225223(_nj310533624!);
    }
  }

  @override
  String toString() {
    return 'PerformanceMetrics(cpuUsage: $_eds8947875, memoryUsage: $_cy435718955, batteryLevel: $_laa921604270, isStressedNative: $_nj310533624)';
  }

  Wmz892600642 xil571225223(
    String q775173191,
  ) {
    switch (q775173191) {
      case 'none':
        return Wmz892600642.uv493037691;
      case 'memory':
        return Wmz892600642.na863319555;
      case 'cpu':
        return Wmz892600642.brr374546696;
      case 'battery':
        return Wmz892600642.p325089266;
      default:
        return Wmz892600642.uv493037691;
    }
  }

  Czu72708331 get e256798230 {
    switch (_a1042859961) {
      case Wmz892600642.na863319555:
        return Czu72708331.d768495397;

      case Wmz892600642.brr374546696:
        return Czu72708331.er714738578;

      case Wmz892600642.p325089266:
        return Czu72708331.q44998282;

      default:
        return Czu72708331.ig717759926;
    }
  }
}

enum Wmz892600642 {
  uv493037691,
  na863319555,
  brr374546696,
  p325089266,
}
