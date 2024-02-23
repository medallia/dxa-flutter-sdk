//

import 'package:medallia_dxa/src/be263697949.dart';
import 'package:medallia_dxa/src/gxe966267057.dart';

class Qig344142251 implements Ok739167542 {
  double? _hn8948056;
  double? _sz435718864;
  double? _jc921604437;
  String? _zn310533123;
  O892600505? _obd1042859586 =
      O892600505.ctp493037952;
  bool get q676812742 =>
      _obd1042859586 != O892600505.ctp493037952;
  static const String o691969366 = 'performance_metrics';

  @override
  void ie1015924524(Map<String, dynamic> ga481947713) {
    final Map<String, dynamic> oty420089990 = ga481947713[o691969366] as Map<String, dynamic>;
    _hn8948056 = (oty420089990['cpuUsage'] as num?)?.toDouble();
    _sz435718864 = (oty420089990['memoryUsage'] as num?)?.toDouble();
    _jc921604437 = (oty420089990['batteryLevel'] as num?)?.toDouble();
    _zn310533123 = oty420089990['isStressed'] as String?;
    if (_zn310533123 != null) {
      _obd1042859586 =
          m571225468(_zn310533123!);
    }
  }

  @override
  String toString() {
    return 'PerformanceMetrics(cpuUsage: $_hn8948056, memoryUsage: $_sz435718864, batteryLevel: $_jc921604437, isStressedNative: $_zn310533123)';
  }

  O892600505 m571225468(
    String ble775173564,
  ) {
    switch (ble775173564) {
      case 'none':
        return O892600505.ctp493037952;
      case 'memory':
        return O892600505.jwc863320056;
      case 'cpu':
        return O892600505.va374546675;
      case 'battery':
        return O892600505.bl325088777;
      default:
        return O892600505.ctp493037952;
    }
  }

  V72708368 get w256798701 {
    switch (_obd1042859586) {
      case O892600505.jwc863320056:
        return V72708368.wo768495326;

      case O892600505.va374546675:
        return V72708368.q714738281;

      case O892600505.bl325088777:
        return V72708368.k44998513;

      default:
        return V72708368.zbc717759565;
    }
  }
}

enum O892600505 {
  ctp493037952,
  jwc863320056,
  va374546675,
  bl325088777,
}
