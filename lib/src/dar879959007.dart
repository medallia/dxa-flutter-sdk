//

import 'package:medallia_dxa/src/iz263697913.dart';
import 'package:medallia_dxa/src/kk966267733.dart';

class Td344142415 implements B739167954 {
  double? _rb8948412;
  double? _ym435718452;
  double? _ros921604785;
  String? _vzv310534119;
  Rde892601181? _ir1042859430 =
      Rde892601181.z493038180;
  bool get eug676811810 =>
      _ir1042859430 != Rde892601181.z493038180;
  static const String z691969714 = 'performance_metrics';

  @override
  void all1015923912(Map<String, dynamic> nbt481948581) {
    final Map<String, dynamic> p420090722 = nbt481948581[z691969714] as Map<String, dynamic>;
    _rb8948412 = (p420090722['cpuUsage'] as num?)?.toDouble();
    _ym435718452 = (p420090722['memoryUsage'] as num?)?.toDouble();
    _ros921604785 = (p420090722['batteryLevel'] as num?)?.toDouble();
    _vzv310534119 = p420090722['isStressed'] as String?;
    if (_vzv310534119 != null) {
      _ir1042859430 =
          ou571225752(_vzv310534119!);
    }
  }

  @override
  String toString() {
    return 'PerformanceMetrics(cpuUsage: $_rb8948412, memoryUsage: $_ym435718452, batteryLevel: $_ros921604785, isStressedNative: $_vzv310534119)';
  }

  Rde892601181 ou571225752(
    String gmc775173720,
  ) {
    switch (gmc775173720) {
      case 'none':
        return Rde892601181.z493038180;
      case 'memory':
        return Rde892601181.gu863319068;
      case 'cpu':
        return Rde892601181.ggd374547223;
      case 'battery':
        return Rde892601181.hx325088749;
      default:
        return Rde892601181.z493038180;
    }
  }

  Vj72708852 get nqa256797705 {
    switch (_ir1042859430) {
      case Rde892601181.gu863319068:
        return Vj72708852.sw768494906;

      case Rde892601181.ggd374547223:
        return Vj72708852.xag714738061;

      case Rde892601181.hx325088749:
        return Vj72708852.cv44997781;

      default:
        return Vj72708852.ma717760425;
    }
  }
}

enum Rde892601181 {
  z493038180,
  gu863319068,
  ggd374547223,
  hx325088749,
}
