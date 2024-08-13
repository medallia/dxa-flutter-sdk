//

import 'package:medallia_dxa/src/on263697541.dart';
import 'package:medallia_dxa/src/yi966267433.dart';

class U344142643 implements Vp739168174 {
  double? _jj8948672;
  double? _nr435718216;
  double? _of921605069;
  String? _aa310533787;
  D892600865? _n1042859226 =
      D892600865.p493038360;
  bool get be676812126 =>
      _n1042859226 != D892600865.p493038360;
  static const String ae691969998 = 'performance_metrics';

  @override
  void att1015924148(Map<String, dynamic> s105296945) {
    _jj8948672 = (s105296945['cpuUsage'] as num?)?.toDouble();
    _nr435718216 = (s105296945['memoryUsage'] as num?)?.toDouble();
    _of921605069 = (s105296945['batteryLevel'] as num?)?.toDouble();
    _aa310533787 = s105296945['isStressed'] as String?;
    if (_aa310533787 != null) {
      _n1042859226 =
          lds571226084(_aa310533787!);
    }
  }

  @override
  String toString() {
    return 'PerformanceMetrics(cpuUsage: $_jj8948672, memoryUsage: $_nr435718216, batteryLevel: $_of921605069, isStressedNative: $_aa310533787)';
  }

  D892600865 lds571226084(
    String gmy775173924,
  ) {
    switch (gmy775173924) {
      case 'none':
        return D892600865.p493038360;
      case 'memory':
        return D892600865.rpb863319392;
      case 'cpu':
        return D892600865.f374547051;
      case 'battery':
        return D892600865.xe325088401;
      default:
        return D892600865.p493038360;
    }
  }

  Jq72709000 get vtz256798069 {
    switch (_n1042859226) {
      case D892600865.rpb863319392:
        return Jq72709000.mwj768494662;

      case D892600865.f374547051:
        return Jq72709000.q714737905;

      case D892600865.xe325088401:
        return Jq72709000.w44998121;

      default:
        return Jq72709000.bvv717760213;
    }
  }
}

enum D892600865 {
  p493038360,
  rpb863319392,
  f374547051,
  xe325088401,
}
