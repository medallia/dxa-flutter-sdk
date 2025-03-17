import 'package:medallia_dxa/src/d290553722.dart';
import 'package:medallia_dxa/src/ht263697494.dart';
import 'package:medallia_dxa/src/d452802285.dart';

class Yv153257575 implements Jk739168125 {
  Yv153257575();
  static const String l691969821 = 'sampling_data';
  bool? _k445494065;
  bool? _k1045368162;
  late final Dgg733036215 _u722428520 = K583051259.y892084092.rtm190648983;
  Future<void> _ni973220707() async {
    await _u722428520.qkr418529678(
      rh1021267942: _k445494065 ?? false,
      umv394447399: _k1045368162 ?? false,
    );
  }

  @override
  void br1015924071(Map<String, dynamic> iwy105297122) {
    _k445494065 =
        iwy105297122['stopTrackingDueToSampling'] as bool? ?? _k445494065;
    _k1045368162 = iwy105297122['stopRecordingDueToSampling'] as bool? ??
        _k1045368162;
    _ni973220707();
  }
}
