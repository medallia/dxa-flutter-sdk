//

import 'package:medallia_dxa/src/kbe263697971.dart';
import 'package:medallia_dxa/src/mk966267039.dart';

class Fr344142213 implements H739167512 {
  double? _jmo8948086;
  double? _w435718910;
  double? _o921604475;
  String? _jp310533165;
  Wrp892600471? _mk1042859628 =
      Wrp892600471.to493037998;
  bool get c676812776 =>
      _mk1042859628 != Wrp892600471.to493037998;
  static const String q691969400 = 'performance_metrics';

  @override
  void g1015924482(Map<String, dynamic> dab481947759) {
    final Map<String, dynamic> ziu420090024 = dab481947759[q691969400] as Map<String, dynamic>;
    _jmo8948086 = (ziu420090024['cpuUsage'] as num?)?.toDouble();
    _w435718910 = (ziu420090024['memoryUsage'] as num?)?.toDouble();
    _o921604475 = (ziu420090024['batteryLevel'] as num?)?.toDouble();
    _jp310533165 = ziu420090024['isStressed'] as String?;
    if (_jp310533165 != null) {
      _mk1042859628 =
          oua571225426(_jp310533165!);
    }
  }

  @override
  String toString() {
    return 'PerformanceMetrics(cpuUsage: $_jmo8948086, memoryUsage: $_w435718910, batteryLevel: $_o921604475, isStressedNative: $_jp310533165)';
  }

  Wrp892600471 oua571225426(
    String k775173522,
  ) {
    switch (k775173522) {
      case 'none':
        return Wrp892600471.to493037998;
      case 'memory':
        return Wrp892600471.rt863320022;
      case 'cpu':
        return Wrp892600471.cad374546653;
      case 'battery':
        return Wrp892600471.i325088807;
      default:
        return Wrp892600471.to493037998;
    }
  }

  U72708414 get nyq256798659 {
    switch (_mk1042859628) {
      case Wrp892600471.rt863320022:
        return U72708414.fx768495344;

      case Wrp892600471.cad374546653:
        return U72708414.yv714738247;

      case Wrp892600471.i325088807:
        return U72708414.zq44998495;

      default:
        return U72708414.m717759587;
    }
  }
}

enum Wrp892600471 {
  to493037998,
  rt863320022,
  cad374546653,
  i325088807,
}
