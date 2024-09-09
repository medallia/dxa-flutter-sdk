//

import 'package:medallia_dxa/src/cpv263697996.dart';
import 'package:medallia_dxa/src/en966267104.dart';

class Egl344142330 implements Mfn739167591 {
  double? _fr8947977;
  double? _a435718785;
  double? _vya921604356;
  String? _ldq310533202;
  Cet892600552? _u1042859539 =
      Cet892600552.dgb493038033;
  bool get v676812695 =>
      _u1042859539 != Cet892600552.dgb493038033;
  static const String qk691969287 = 'performance_metrics';

  @override
  void tsc1015924605(Map<String, dynamic> idb105297656) {
    _fr8947977 = (idb105297656['cpuUsage'] as num?)?.toDouble();
    _a435718785 = (idb105297656['memoryUsage'] as num?)?.toDouble();
    _vya921604356 = (idb105297656['batteryLevel'] as num?)?.toDouble();
    _ldq310533202 = idb105297656['isStressed'] as String?;
    if (_ldq310533202 != null) {
      _u1042859539 =
          nz571225389(_ldq310533202!);
    }
  }

  @override
  String toString() {
    return 'PerformanceMetrics(cpuUsage: $_fr8947977, memoryUsage: $_a435718785, batteryLevel: $_vya921604356, isStressedNative: $_ldq310533202)';
  }

  Cet892600552 nz571225389(
    String zgz775173613,
  ) {
    switch (zgz775173613) {
      case 'none':
        return Cet892600552.dgb493038033;
      case 'memory':
        return Cet892600552.auu863319977;
      case 'cpu':
        return Cet892600552.ttl374546594;
      case 'battery':
        return Cet892600552.lh325088856;
      default:
        return Cet892600552.dgb493038033;
    }
  }

  Q72708417 get q256798652 {
    switch (_u1042859539) {
      case Cet892600552.auu863319977:
        return Q72708417.xgb768495247;

      case Cet892600552.ttl374546594:
        return Q72708417.d714738232;

      case Cet892600552.lh325088856:
        return Q72708417.q44998432;

      default:
        return Q72708417.s717759516;
    }
  }
}

enum Cet892600552 {
  dgb493038033,
  auu863319977,
  ttl374546594,
  lh325088856,
}
