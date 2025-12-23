//

import 'package:medallia_dxa/src/tpi41629838.dart';
import 'package:medallia_dxa/src/sh372443077.dart';

class Zxo344141991 implements Zf739167290 {
  double? _dl8947796;
  double? _aag435719132;
  double? _zo921604185;
  String? _kox310533391;
  U892600757? _jxr1042859854 =
      U892600757.yw493037708;
  bool get oyz676812490 =>
      _jxr1042859854 != U892600757.yw493037708;
  static const String km691969114 = 'performance_metrics';

  @override
  void aa1015924256(Map<String, dynamic> ts105297829) {
    _dl8947796 = (ts105297829['cpuUsage'] as num?)?.toDouble();
    _aag435719132 = (ts105297829['memoryUsage'] as num?)?.toDouble();
    _zo921604185 = (ts105297829['batteryLevel'] as num?)?.toDouble();
    _kox310533391 = ts105297829['isStressed'] as String?;
    if (_kox310533391 != null) {
      _jxr1042859854 =
          id571225200(_kox310533391!);
    }
  }

  @override
  String toString() {
    return 'PerformanceMetrics(cpuUsage: $_dl8947796, memoryUsage: $_aag435719132, batteryLevel: $_zo921604185, isStressedNative: $_kox310533391)';
  }

  U892600757 id571225200(
    String o775173296,
  ) {
    switch (o775173296) {
      case 'none':
        return U892600757.yw493037708;
      case 'memory':
        return U892600757.vxk863319796;
      case 'cpu':
        return U892600757.z374546943;
      case 'battery':
        return U892600757.oqx325089029;
      default:
        return U892600757.yw493037708;
    }
  }

  Bdx72708124 get fvr256798433 {
    switch (_jxr1042859854) {
      case U892600757.vxk863319796:
        return Bdx72708124.gxf768495570;

      case U892600757.z374546943:
        return Bdx72708124.iat714738533;

      case U892600757.oqx325089029:
        return Bdx72708124.q44998269;

      default:
        return Bdx72708124.td717759809;
    }
  }
}

enum U892600757 {
  yw493037708,
  vxk863319796,
  z374546943,
  oqx325089029,
}
