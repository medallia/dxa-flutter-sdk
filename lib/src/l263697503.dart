import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:medallia_dxa/src/s974258826.dart';
import 'package:medallia_dxa/src/i879958649.dart';
import 'package:medallia_dxa/src/xtn452802276.dart';

class Xsl427178036 {
  Xsl427178036({
    required this.zr946290474,
    required this.wyl32651932,
  }) {
    _vb191948579 = _p975615538.receiveBroadcastStream().listen(
      _udf437534050,
      onError: (dynamic ks153119951) {
        debugPrint('${_p975615538.name} error: $ks153119951');
      },
    );
  }

  final Ol344142825 zr946290474;
  final M1013317358 wyl32651932;
  late StreamSubscription _vb191948579;
  static const _p975615538 = EventChannel('multiplatform.flutter.streamChannel');

  void _udf437534050(dynamic mjo515237430) {
    if (mjo515237430 is! String) {
      debugPrint('Data should be a String');
      return;
    }
    final gda205318006 = jsonDecode(mjo515237430) as Map<String, dynamic>;
    final Jl739168116? g685191903 =
        _be588752703(gda205318006.keys.first);
    //
    if (Ka583051250.fc892084085.j190648990.s378495599) {
      if (g685191903 is! M1013317358) {
        return;
      }
    }
    if (g685191903 == null) return;
    _ih97636938(gda205318006, g685191903);
  }

  void _ih97636938(
    Map<String, dynamic> zku481948163,
    Jl739168116 g685191903,
  ) {
    g685191903.q1015924078(zku481948163);
  }

  Jl739168116? _be588752703(String uj691969812) {
    switch (uj691969812) {
      case Ol344142825.uj691969812:
        return zr946290474;
      case M1013317358.uj691969812:
        return wyl32651932;
      default:
        return null;
    }
  }

  void qb806520597() {
    _vb191948579.cancel();
  }
}

abstract class Jl739168116 {
  void q1015924078(Map<String, dynamic> zku481948163);
}
