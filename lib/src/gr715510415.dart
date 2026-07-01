import 'package:medallia_dxa/src/t389194123.dart';
import 'package:medallia_dxa/src/h41630555.dart';
import 'package:medallia_dxa/src/q487304051.dart';

class Oq153257717 implements H739168239 {
  Oq153257717();
  static const String mz691969935 = 'sampling_data';
  bool? _s445494179;
  bool? _rvv1045368304;
  late final Hbb733036069 _v722428666 = B583051113.dfo892084206.zz190648837;
  Future<void> _ct973220849() async {
    await _v722428666.co418529564(
      syv1021267828: _s445494179 ?? false,
      qvk394447541: _rvv1045368304 ?? false,
    );
  }

  @override
  void b1015924213(Map<String, dynamic> l105297008) {
    _s445494179 =
        l105297008['stopTrackingDueToSampling'] as bool? ?? _s445494179;
    _rvv1045368304 = l105297008['stopRecordingDueToSampling'] as bool? ??
        _rvv1045368304;
    _ct973220849();
  }
}
