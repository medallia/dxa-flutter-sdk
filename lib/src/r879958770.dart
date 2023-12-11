//

import 'package:medallia_dxa/src/txr263697620.dart';
import 'package:medallia_dxa/src/xp966267512.dart';

class Chw344142690 implements Gf739168255 {
  double? _p8948625;
  double? _t435718169;
  double? _y921605020;
  String? _f310533834;
  H892600944? _kzg1042859147 =
      H892600944.vfm493038409;
  bool get pbs676812047 =>
      _kzg1042859147 != H892600944.vfm493038409;
  static const String e691969951 = 'performance_metrics';

  @override
  void b1015924197(Map<String, dynamic> zeu481948296) {
    final Map<String, dynamic> wjn420090447 = zeu481948296[e691969951] as Map<String, dynamic>;
    _p8948625 = (wjn420090447['cpuUsage'] as num?)?.toDouble();
    _t435718169 = (wjn420090447['memoryUsage'] as num?)?.toDouble();
    _y921605020 = (wjn420090447['batteryLevel'] as num?)?.toDouble();
    _f310533834 = wjn420090447['isStressed'] as String?;
    if (_f310533834 != null) {
      _kzg1042859147 =
          q571226037(_f310533834!);
    }
  }

  @override
  String toString() {
    return 'PerformanceMetrics(cpuUsage: $_p8948625, memoryUsage: $_t435718169, batteryLevel: $_y921605020, isStressedNative: $_f310533834)';
  }

  H892600944 q571226037(
    String yec775174005,
  ) {
    switch (yec775174005) {
      case 'none':
        return H892600944.vfm493038409;
      case 'memory':
        return H892600944.gps863319345;
      case 'cpu':
        return H892600944.s374547002;
      case 'battery':
        return H892600944.s325088448;
      default:
        return H892600944.vfm493038409;
    }
  }

  Vme72709081 get xf256797988 {
    switch (_kzg1042859147) {
      case H892600944.gps863319345:
        return Vme72709081.zyw768494615;

      case H892600944.s374547002:
        return Vme72709081.o714737824;

      case H892600944.s325088448:
        return Vme72709081.ecd44998072;

      default:
        return Vme72709081.le717760132;
    }
  }
}

enum H892600944 {
  vfm493038409,
  gps863319345,
  s374547002,
  s325088448,
}
