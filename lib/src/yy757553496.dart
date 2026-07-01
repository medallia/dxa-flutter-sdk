//

import 'package:medallia_dxa/src/h41630555.dart';
import 'package:medallia_dxa/src/pu372442128.dart';

class Sj344142706 implements H739168239 {
  double? _gjf8948609;
  double? _udw435718153;
  double? _bs921605004;
  String? _e310533850;
  Yo892600928? _vv1042859163 =
      Yo892600928.ft493038425;
  bool get rj676812063 =>
      _vv1042859163 != Yo892600928.ft493038425;
  static const String mz691969935 = 'performance_metrics';

  @override
  void b1015924213(Map<String, dynamic> l105297008) {
    _gjf8948609 = (l105297008['cpuUsage'] as num?)?.toDouble();
    _udw435718153 = (l105297008['memoryUsage'] as num?)?.toDouble();
    _bs921605004 = (l105297008['batteryLevel'] as num?)?.toDouble();
    _e310533850 = l105297008['isStressed'] as String?;
    if (_e310533850 != null) {
      _vv1042859163 =
          y571226021(_e310533850!);
    }
  }

  @override
  String toString() {
    return 'PerformanceMetrics(cpuUsage: $_gjf8948609, memoryUsage: $_udw435718153, batteryLevel: $_bs921605004, isStressedNative: $_e310533850)';
  }

  Yo892600928 y571226021(
    String iei775173989,
  ) {
    switch (iei775173989) {
      case 'none':
        return Yo892600928.ft493038425;
      case 'memory':
        return Yo892600928.krp863319329;
      case 'cpu':
        return Yo892600928.glz374546986;
      case 'battery':
        return Yo892600928.a325088464;
      default:
        return Yo892600928.ft493038425;
    }
  }

  Rvb72709065 get fhe256798004 {
    switch (_vv1042859163) {
      case Yo892600928.krp863319329:
        return Rvb72709065.f768494599;

      case Yo892600928.glz374546986:
        return Rvb72709065.kj714737840;

      case Yo892600928.a325088464:
        return Rvb72709065.j44998056;

      default:
        return Rvb72709065.vi717760148;
    }
  }
}

enum Yo892600928 {
  ft493038425,
  krp863319329,
  glz374546986,
  a325088464,
}
