//

import 'package:medallia_dxa/src/wrv263698415.dart';
import 'package:medallia_dxa/src/zan966267203.dart';

class Uwl344141913 implements Cnd739167428 {
  double? _ov8947882;
  double? _co435718946;
  double? _cbv921604263;
  String? _ezp310533617;
  Jdk892600651? _w1042859952 =
      Jdk892600651.s493037682;
  bool get u676812340 =>
      _w1042859952 != Jdk892600651.s493037682;
  static const String bfr691969188 = 'performance_metrics';

  @override
  void vxz1015924446(Map<String, dynamic> ef481948083) {
    final Map<String, dynamic> o420090228 = ef481948083[bfr691969188] as Map<String, dynamic>;
    _ov8947882 = (o420090228['cpuUsage'] as num?)?.toDouble();
    _co435718946 = (o420090228['memoryUsage'] as num?)?.toDouble();
    _cbv921604263 = (o420090228['batteryLevel'] as num?)?.toDouble();
    _ezp310533617 = o420090228['isStressed'] as String?;
    if (_ezp310533617 != null) {
      _w1042859952 =
          wc571225230(_ezp310533617!);
    }
  }

  @override
  String toString() {
    return 'PerformanceMetrics(cpuUsage: $_ov8947882, memoryUsage: $_co435718946, batteryLevel: $_cbv921604263, isStressedNative: $_ezp310533617)';
  }

  Jdk892600651 wc571225230(
    String qy775173198,
  ) {
    switch (qy775173198) {
      case 'none':
        return Jdk892600651.s493037682;
      case 'memory':
        return Jdk892600651.zvn863319562;
      case 'cpu':
        return Jdk892600651.ryt374546689;
      case 'battery':
        return Jdk892600651.kz325089275;
      default:
        return Jdk892600651.s493037682;
    }
  }

  E72708322 get cv256798239 {
    switch (_w1042859952) {
      case Jdk892600651.zvn863319562:
        return E72708322.wox768495404;

      case Jdk892600651.ryt374546689:
        return E72708322.g714738587;

      case Jdk892600651.kz325089275:
        return E72708322.zo44998275;

      default:
        return E72708322.ovx717759935;
    }
  }
}

enum Jdk892600651 {
  s493037682,
  zvn863319562,
  ryt374546689,
  kz325089275,
}
