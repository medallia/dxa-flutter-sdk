//

import 'package:medallia_dxa/src/nc41630143.dart';
import 'package:medallia_dxa/src/mks372442868.dart';

class Iis344142230 implements Wrb739167499 {
  double? _kh8948069;
  double? _u435718893;
  double? _qdv921604456;
  String? _y310533182;
  Tx892600452? _n1042859647 =
      Tx892600452.qmu493038013;
  bool get uu676812795 =>
      _n1042859647 != Tx892600452.qmu493038013;
  static const String w691969387 = 'performance_metrics';

  @override
  void ikv1015924497(Map<String, dynamic> zdn105297556) {
    _kh8948069 = (zdn105297556['cpuUsage'] as num?)?.toDouble();
    _u435718893 = (zdn105297556['memoryUsage'] as num?)?.toDouble();
    _qdv921604456 = (zdn105297556['batteryLevel'] as num?)?.toDouble();
    _y310533182 = zdn105297556['isStressed'] as String?;
    if (_y310533182 != null) {
      _n1042859647 =
          cum571225409(_y310533182!);
    }
  }

  @override
  String toString() {
    return 'PerformanceMetrics(cpuUsage: $_kh8948069, memoryUsage: $_u435718893, batteryLevel: $_qdv921604456, isStressedNative: $_y310533182)';
  }

  Tx892600452 cum571225409(
    String gm775173505,
  ) {
    switch (gm775173505) {
      case 'none':
        return Tx892600452.qmu493038013;
      case 'memory':
        return Tx892600452.huv863320005;
      case 'cpu':
        return Tx892600452.rp374546638;
      case 'battery':
        return Tx892600452.m325088820;
      default:
        return Tx892600452.qmu493038013;
    }
  }

  T72708397 get i256798672 {
    switch (_n1042859647) {
      case Tx892600452.huv863320005:
        return T72708397.o768495331;

      case Tx892600452.rp374546638:
        return T72708397.eo714738260;

      case Tx892600452.m325088820:
        return T72708397.aq44998476;

      default:
        return T72708397.mk717759600;
    }
  }
}

enum Tx892600452 {
  qmu493038013,
  huv863320005,
  rp374546638,
  m325088820,
}
