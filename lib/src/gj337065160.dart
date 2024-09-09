import 'package:medallia_dxa/src/gix290553184.dart';
import 'package:medallia_dxa/src/cpv263697996.dart';
import 'package:medallia_dxa/src/v452801783.dart';

class B153257085 implements Mfn739167591 {
  B153257085();
  static const String qk691969287 = 'sampling_data';
  bool? _nrv445493547;
  bool? _qpp1045368696;
  late final Ntp733035693 _z722428018 = Wyf583050721.wf892083558.k190648461;
  Future<void> _rtl973220217() async {
    await _z722428018.t418530196(
      aba1021267452: _nrv445493547 ?? false,
      wlg394446909: _qpp1045368696 ?? false,
    );
  }

  @override
  void tsc1015924605(Map<String, dynamic> idb105297656) {
    _nrv445493547 =
        idb105297656['stopTrackingDueToSampling'] as bool? ?? _nrv445493547;
    _qpp1045368696 = idb105297656['stopRecordingDueToSampling'] as bool? ??
        _qpp1045368696;
    _rtl973220217();
  }
}
