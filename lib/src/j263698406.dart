import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:medallia_dxa/src/j974258483.dart';
import 'package:medallia_dxa/src/b879958464.dart';
import 'package:medallia_dxa/src/i337065314.dart';
import 'package:medallia_dxa/src/yh452801885.dart';

class Bci427178893 {
  Bci427178893({
    required this.z946289811,
    required this.ytv32651557,
    required this.kwi385126884,
  }) {
    _xai191947930 = _x975615371.receiveBroadcastStream().listen(
      _r437534427,
      onError: (dynamic qlw153120630) {
        debugPrint('${_x975615371.name} error: $qlw153120630');
      },
    );
  }

  final I344141904 z946289811;
  final K1013316951 ytv32651557;
  final Ii153257431 kwi385126884;
  late StreamSubscription _xai191947930;
  static const _x975615371 = EventChannel('multiplatform.flutter.streamChannel');

  void _r437534427(dynamic cve515237263) {
    if (cve515237263 is! String) {
      debugPrint('Data should be a String');
      return;
    }
    final sk205317327 = jsonDecode(cve515237263) as Map<String, dynamic>;
    final Kg739167437? cld685191526 =
        _ng588752006(sk205317327.keys.first);
    //
    if (Bc583050315.i892083404.tee190648615.mvw378495446) {
      if (cld685191526 is! K1013316951) {
        return;
      }
    }
    if (cld685191526 == null) return;
    _ymz97636851(sk205317327, cld685191526);
  }

  void _ymz97636851(
    Map<String, dynamic> le481948090,
    Kg739167437 cld685191526,
  ) {
    cld685191526.kpw1015924439(le481948090);
  }

  Kg739167437? _ng588752006(String tb691969197) {
    switch (tb691969197) {
      case I344141904.tb691969197:
        return z946289811;
      case K1013316951.tb691969197:
        return ytv32651557;
      case Ii153257431.tb691969197:
        return kwi385126884;
      default:
        return null;
    }
  }

  void z806519980() {
    _xai191947930.cancel();
  }
}

abstract class Kg739167437 {
  void kpw1015924439(Map<String, dynamic> le481948090);
}
