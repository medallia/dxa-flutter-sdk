import 'package:medallia_dxa/src/pe290553769.dart';
import 'package:medallia_dxa/src/on263697541.dart';
import 'package:medallia_dxa/src/oa452802110.dart';

class Oc153257652 implements Vp739168174 {
  Oc153257652();
  static const String ae691969998 = 'sampling_data';
  bool? _il445494242;
  bool? _e1045368241;
  late final Sl733036132 _rkb722428603 = Klj583051048.yrd892084143.hxv190648900;
  Future<void> _od973220784() async {
    await _rkb722428603.ia418529629(
      k1021267765: _il445494242 ?? false,
      cqv394447604: _e1045368241 ?? false,
    );
  }

  @override
  void att1015924148(Map<String, dynamic> s105296945) {
    _il445494242 =
        s105296945['stopTrackingDueToSampling'] as bool? ?? _il445494242;
    _e1045368241 = s105296945['stopRecordingDueToSampling'] as bool? ??
        _e1045368241;
    _od973220784();
  }
}
