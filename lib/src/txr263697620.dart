import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:medallia_dxa/src/brz974258689.dart';
import 'package:medallia_dxa/src/r879958770.dart';
import 'package:medallia_dxa/src/xwa452802159.dart';

class D427178175 {
  D427178175({
    required this.yuz946290593,
    required this.ejx32651799,
  }) {
    _ecu191948712 = _as975615673.receiveBroadcastStream().listen(
      _us437534185,
      onError: (dynamic ofq153119812) {
        debugPrint('${_as975615673.name} error: $ofq153119812');
      },
    );
  }

  final Chw344142690 yuz946290593;
  final F1013317221 ejx32651799;
  late StreamSubscription _ecu191948712;
  static const _as975615673 = EventChannel('multiplatform.flutter.streamChannel');

  void _us437534185(dynamic p515237565) {
    if (p515237565 is! String) {
      debugPrint('Data should be a String');
      return;
    }
    final ru205318141 = jsonDecode(p515237565) as Map<String, dynamic>;
    final Gf739168255? f685191764 =
        _bq588752820(ru205318141.keys.first);
    //
    if (V583051129.h892084222.urf190648853.hfx378495716) {
      if (f685191764 is! F1013317221) {
        return;
      }
    }
    if (f685191764 == null) return;
    _zd97637057(ru205318141, f685191764);
  }

  void _zd97637057(
    Map<String, dynamic> zeu481948296,
    Gf739168255 f685191764,
  ) {
    f685191764.b1015924197(zeu481948296);
  }

  Gf739168255? _bq588752820(String e691969951) {
    switch (e691969951) {
      case Chw344142690.e691969951:
        return yuz946290593;
      case F1013317221.e691969951:
        return ejx32651799;
      default:
        return null;
    }
  }

  void utl806520734() {
    _ecu191948712.cancel();
  }
}

abstract class Gf739168255 {
  void b1015924197(Map<String, dynamic> zeu481948296);
}
