import 'package:medallia_dxa/src/pk290553368.dart';
import 'package:medallia_dxa/src/t263697716.dart';
import 'package:medallia_dxa/src/q452802447.dart';

class U153257733 implements Kpb739167775 {
  U153257733();
  static const String da691969663 = 'sampling_data';
  bool? _pjy445493843;
  bool? _b1045367808;
  late final Wpk733036501 _ula722428682 = Zz583050905.rq892083742.s190649333;
  Future<void> _gsw973220353() async {
    await _ula722428682.a418529516(
      ot1021267588: _pjy445493843 ?? false,
      uzz394447685: _b1045367808 ?? false,
    );
  }

  @override
  void dxv1015923717(Map<String, dynamic> h105297280) {
    _pjy445493843 =
        h105297280['stopTrackingDueToSampling'] as bool? ?? _pjy445493843;
    _b1045367808 = h105297280['stopRecordingDueToSampling'] as bool? ??
        _b1045367808;
    _gsw973220353();
  }
}
