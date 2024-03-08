import 'package:medallia_dxa/src/znj290553027.dart';
import 'package:medallia_dxa/src/wrv263698415.dart';

class Za153257438 implements Cnd739167428 {
  final X733035790 h491198070;

  bool? _p445493384;
  bool? _pck1045368539;
  Za153257438({
    required this.h491198070,
  });
  static const String bfr691969188 = 'sampling_data';
  void _b973220058() {
    h491198070.xx418529847(
      vf1021267039: _p445493384 ?? false,
      n394447262: _pck1045368539 ?? false,
    );
  }

  @override
  void vxz1015924446(Map<String, dynamic> ef481948083) {
    final Map<String, dynamic> o420090228 = ef481948083[bfr691969188] as Map<String, dynamic>;
    _p445493384 = o420090228['stopTrackingDueToSampling'] as bool? ??
        _p445493384;
    _pck1045368539 = o420090228['stopRecordingDueToSampling'] as bool? ??
        _pck1045368539;
    _b973220058();
  }
}
