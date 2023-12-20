import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:medallia_dxa/src/bcn974258988.dart';
import 'package:medallia_dxa/src/dar879959007.dart';
import 'package:medallia_dxa/src/s452802370.dart';

class Ep427178386 {
  Ep427178386({
    required this.pj946290316,
    required this.qk32652090,
  }) {
    _a191948421 = _umc975615892.receiveBroadcastStream().listen(
      _tyn437533892,
      onError: (dynamic aif153120105) {
        debugPrint('${_umc975615892.name} error: $aif153120105');
      },
    );
  }

  final Td344142415 pj946290316;
  final Ogh1013317448 qk32652090;
  late StreamSubscription _a191948421;
  static const _umc975615892 = EventChannel('multiplatform.flutter.streamChannel');

  void _tyn437533892(dynamic yz515237776) {
    if (yz515237776 is! String) {
      debugPrint('Data should be a String');
      return;
    }
    final u205317840 = jsonDecode(yz515237776) as Map<String, dynamic>;
    final B739167954? ohr685192057 =
        _v588752537(u205317840.keys.first);
    //
    if (Lgg583050836.dh892083923.av190649144.by378495945) {
      if (ohr685192057 is! Ogh1013317448) {
        return;
      }
    }
    if (ohr685192057 == null) return;
    _c97637356(u205317840, ohr685192057);
  }

  void _c97637356(
    Map<String, dynamic> nbt481948581,
    B739167954 ohr685192057,
  ) {
    ohr685192057.all1015923912(nbt481948581);
  }

  B739167954? _v588752537(String z691969714) {
    switch (z691969714) {
      case Td344142415.z691969714:
        return pj946290316;
      case Ogh1013317448.z691969714:
        return qk32652090;
      default:
        return null;
    }
  }

  void vqz806520499() {
    _a191948421.cancel();
  }
}

abstract class B739167954 {
  void all1015923912(Map<String, dynamic> nbt481948581);
}
