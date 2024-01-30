import 'package:medallia_dxa/src/pf290553034.dart';
import 'package:medallia_dxa/src/j263698406.dart';

class Ii153257431 implements Kg739167437 {
  final Y733035783 pfp491198079;

  bool? _z445493377;
  bool? _qd1045368530;
  Ii153257431({
    required this.pfp491198079,
  });
  static const String tb691969197 = 'sampling_data';
  void _ij973220051() {
    pfp491198079.mb418529854(
      c1021267030: _z445493377 ?? false,
      soy394447255: _qd1045368530 ?? false,
    );
  }

  @override
  void kpw1015924439(Map<String, dynamic> le481948090) {
    final Map<String, dynamic> p420090237 = le481948090[tb691969197] as Map<String, dynamic>;
    _z445493377 = p420090237['stopTrackingDueToSampling'] as bool? ??
        _z445493377;
    _qd1045368530 = p420090237['stopRecordingDueToSampling'] as bool? ??
        _qd1045368530;
    _ij973220051();
  }
}
