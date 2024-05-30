import 'package:medallia_dxa/src/ofi290553417.dart';
import 'package:medallia_dxa/src/mj263697765.dart';

class S153257812 implements R739167822 {
  final Bx733036420 d491197692;

  bool? _ya445493762;
  bool? _l1045367889;
  S153257812({
    required this.d491197692,
  });
  static const String jty691969582 = 'sampling_data';
  Future<void> _vaj973220432() async {
    await d491197692.w418529469(
      n1021267669: _ya445493762 ?? false,
      tod394447636: _l1045367889 ?? false,
    );
  }

  @override
  void vr1015923796(Map<String, dynamic> l105297361) {
    _ya445493762 =
        l105297361['stopTrackingDueToSampling'] as bool? ?? _ya445493762;
    _l1045367889 = l105297361['stopRecordingDueToSampling'] as bool? ??
        _l1045367889;
    _vaj973220432();
  }
}
