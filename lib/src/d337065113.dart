import 'package:medallia_dxa/src/ls290553137.dart';
import 'package:medallia_dxa/src/be263697949.dart';

class E153257004 implements Ok739167542 {
  final P733035772 swi491198340;

  bool? _usq445493626;
  bool? _io1045368617;
  E153257004({
    required this.swi491198340,
  });
  static const String o691969366 = 'sampling_data';
  void _c973220136() {
    swi491198340.pyx418530245(
      fvw1021267373: _usq445493626 ?? false,
      jo394446956: _io1045368617 ?? false,
    );
  }

  @override
  void ie1015924524(Map<String, dynamic> ga481947713) {
    final Map<String, dynamic> oty420089990 = ga481947713[o691969366] as Map<String, dynamic>;
    _usq445493626 = oty420089990['stopTrackingDueToSampling'] as bool? ??
        _usq445493626;
    _io1045368617 = oty420089990['stopRecordingDueToSampling'] as bool? ??
        _io1045368617;
    _c973220136();
  }
}
