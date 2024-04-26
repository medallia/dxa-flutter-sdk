import 'package:medallia_dxa/src/ij290553119.dart';
import 'package:medallia_dxa/src/kbe263697971.dart';

class An153256962 implements H739167512 {
  final Sv733035730 o491198378;

  bool? _c445493588;
  bool? _p1045368583;
  An153256962({
    required this.o491198378,
  });
  static const String q691969400 = 'sampling_data';
  void _c973220102() {
    o491198378.teb418530283(
      sr1021267331: _c445493588 ?? false,
      fpg394446914: _p1045368583 ?? false,
    );
  }

  @override
  void g1015924482(Map<String, dynamic> dab481947759) {
    final Map<String, dynamic> ziu420090024 = dab481947759[q691969400] as Map<String, dynamic>;
    _c445493588 = ziu420090024['stopTrackingDueToSampling'] as bool? ??
        _c445493588;
    _p1045368583 = ziu420090024['stopRecordingDueToSampling'] as bool? ??
        _p1045368583;
    _c973220102();
  }
}
