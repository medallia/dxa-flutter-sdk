import 'package:medallia_dxa/src/kf389194220.dart';
import 'package:medallia_dxa/src/wtq41630524.dart';
import 'package:medallia_dxa/src/sb487303956.dart';

class Ed153257618 implements Q739168136 {
  Ed153257618();
  static const String s691970024 = 'sampling_data';
  bool? _c445494212;
  bool? _z1045368215;
  late final Md733036098 _du722428573 = Z583051022.n892084105.vd190648930;
  Future<void> _wnp973220758() async {
    await _du722428573.m418529659(
      zv1021267731: _c445494212 ?? false,
      r394447570: _z1045368215 ?? false,
    );
  }

  @override
  void jt1015924114(Map<String, dynamic> yw105296919) {
    _c445494212 =
        yw105296919['stopTrackingDueToSampling'] as bool? ?? _c445494212;
    _z1045368215 = yw105296919['stopRecordingDueToSampling'] as bool? ??
        _z1045368215;
    _wnp973220758();
  }
}
