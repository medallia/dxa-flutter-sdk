//

import 'package:medallia_dxa/src/t263697716.dart';
import 'package:medallia_dxa/src/k966267800.dart';

class K344142466 implements Kpb739167775 {
  double? _ms8948337;
  double? _yid435718649;
  double? _lz921604732;
  String? _r310533930;
  Pb892601232? _qzm1042859371 =
      Pb892601232.f493038249;
  bool get x676812015 =>
      _qzm1042859371 != Pb892601232.f493038249;
  static const String da691969663 = 'performance_metrics';

  @override
  void dxv1015923717(Map<String, dynamic> h105297280) {
    _ms8948337 = (h105297280['cpuUsage'] as num?)?.toDouble();
    _yid435718649 = (h105297280['memoryUsage'] as num?)?.toDouble();
    _lz921604732 = (h105297280['batteryLevel'] as num?)?.toDouble();
    _r310533930 = h105297280['isStressed'] as String?;
    if (_r310533930 != null) {
      _qzm1042859371 =
          nu571225685(_r310533930!);
    }
  }

  @override
  String toString() {
    return 'PerformanceMetrics(cpuUsage: $_ms8948337, memoryUsage: $_yid435718649, batteryLevel: $_lz921604732, isStressedNative: $_r310533930)';
  }

  Pb892601232 nu571225685(
    String gpb775173781,
  ) {
    switch (gpb775173781) {
      case 'none':
        return Pb892601232.f493038249;
      case 'memory':
        return Pb892601232.yq863319249;
      case 'cpu':
        return Pb892601232.cq374547418;
      case 'battery':
        return Pb892601232.be325088544;
      default:
        return Pb892601232.f493038249;
    }
  }

  Mf72708665 get jry256797892 {
    switch (_qzm1042859371) {
      case Pb892601232.yq863319249:
        return Mf72708665.vb768495095;

      case Pb892601232.cq374547418:
        return Mf72708665.cp714737984;

      case Pb892601232.be325088544:
        return Mf72708665.rc44997720;

      default:
        return Mf72708665.wk717760356;
    }
  }
}

enum Pb892601232 {
  f493038249,
  yq863319249,
  cq374547418,
  be325088544,
}
