import 'package:medallia_dxa/src/ks389194334.dart';
import 'package:medallia_dxa/src/tpi41629838.dart';
import 'package:medallia_dxa/src/df487303334.dart';

class Rw153257248 implements Zf739167290 {
  Rw153257248();
  static const String km691969114 = 'sampling_data';
  bool? _fh445493366;
  bool? _bv1045368357;
  late final Bfn733036016 _ruw722428207 = L583050428.buw892083259.cy190648784;
  Future<void> _n973219876() async {
    await _ruw722428207.px418529993(
      hwq1021267105: _fh445493366 ?? false,
      dwb394447200: _bv1045368357 ?? false,
    );
  }

  @override
  void aa1015924256(Map<String, dynamic> ts105297829) {
    _fh445493366 =
        ts105297829['stopTrackingDueToSampling'] as bool? ?? _fh445493366;
    _bv1045368357 = ts105297829['stopRecordingDueToSampling'] as bool? ??
        _bv1045368357;
    _n973219876();
  }
}
