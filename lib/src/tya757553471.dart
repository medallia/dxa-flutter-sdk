//

import 'package:medallia_dxa/src/wtq41630524.dart';
import 'package:medallia_dxa/src/m372442231.dart';

class Sm344142613 implements Q739168136 {
  double? _q8948710;
  double? _p435718254;
  double? _fu921605099;
  String? _geo310533821;
  Ila892600839? _u1042859260 =
      Ila892600839.uip493038398;
  bool get by676812152 =>
      _u1042859260 != Ila892600839.uip493038398;
  static const String s691970024 = 'performance_metrics';

  @override
  void jt1015924114(Map<String, dynamic> yw105296919) {
    _q8948710 = (yw105296919['cpuUsage'] as num?)?.toDouble();
    _p435718254 = (yw105296919['memoryUsage'] as num?)?.toDouble();
    _fu921605099 = (yw105296919['batteryLevel'] as num?)?.toDouble();
    _geo310533821 = yw105296919['isStressed'] as String?;
    if (_geo310533821 != null) {
      _u1042859260 =
          vk571226050(_geo310533821!);
    }
  }

  @override
  String toString() {
    return 'PerformanceMetrics(cpuUsage: $_q8948710, memoryUsage: $_p435718254, batteryLevel: $_fu921605099, isStressedNative: $_geo310533821)';
  }

  Ila892600839 vk571226050(
    String jvk775173890,
  ) {
    switch (jvk775173890) {
      case 'none':
        return Ila892600839.uip493038398;
      case 'memory':
        return Ila892600839.hqk863319366;
      case 'cpu':
        return Ila892600839.x374547021;
      case 'battery':
        return Ila892600839.ccq325088439;
      default:
        return Ila892600839.uip493038398;
    }
  }

  Bgj72709038 get m256798035 {
    switch (_u1042859260) {
      case Ila892600839.hqk863319366:
        return Bgj72709038.mck768494688;

      case Ila892600839.x374547021:
        return Bgj72709038.u714737879;

      case Ila892600839.ccq325088439:
        return Bgj72709038.haa44998095;

      default:
        return Bgj72709038.m717760243;
    }
  }
}

enum Ila892600839 {
  uip493038398,
  hqk863319366,
  x374547021,
  ccq325088439,
}
