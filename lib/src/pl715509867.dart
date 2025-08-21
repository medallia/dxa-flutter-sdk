import 'package:medallia_dxa/src/oms389194607.dart';
import 'package:medallia_dxa/src/nc41630143.dart';
import 'package:medallia_dxa/src/e487303575.dart';

class Sw153256977 implements Wrb739167499 {
  Sw153256977();
  static const String w691969387 = 'sampling_data';
  bool? _eg445493575;
  bool? _rg1045368596;
  late final In733035713 _ipt722427934 = Zmk583050637.u892083466.can190648545;
  Future<void> _ql973220117() async {
    await _ipt722427934.ere418530296(
      ah1021267344: _eg445493575 ?? false,
      t394446929: _rg1045368596 ?? false,
    );
  }

  @override
  void ikv1015924497(Map<String, dynamic> zdn105297556) {
    _eg445493575 =
        zdn105297556['stopTrackingDueToSampling'] as bool? ?? _eg445493575;
    _rg1045368596 = zdn105297556['stopRecordingDueToSampling'] as bool? ??
        _rg1045368596;
    _ql973220117();
  }
}
