import 'package:medallia_dxa/src/ga389194540.dart';
import 'package:medallia_dxa/src/eer41630204.dart';
import 'package:medallia_dxa/src/s487303636.dart';

class Qyc153257042 implements L739167560 {
  Qyc153257042();
  static const String k691969320 = 'sampling_data';
  bool? _f445493508;
  bool? _t1045368663;
  late final G733035650 _emn722427997 = Fn583050702.gj892083529.t190648482;
  Future<void> _s973220182() async {
    await _emn722427997.oeb418530235(
      ivn1021267411: _f445493508 ?? false,
      f394446866: _t1045368663 ?? false,
    );
  }

  @override
  void pu1015924562(Map<String, dynamic> lub105297623) {
    _f445493508 =
        lub105297623['stopTrackingDueToSampling'] as bool? ?? _f445493508;
    _t1045368663 = lub105297623['stopRecordingDueToSampling'] as bool? ??
        _t1045368663;
    _s973220182();
  }
}
