import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:medallia_dxa/src/k974259120.dart';
import 'package:medallia_dxa/src/d879958851.dart';
import 'package:medallia_dxa/src/ar337065953.dart';
import 'package:medallia_dxa/src/l452802526.dart';
import 'package:medallia_dxa/src/jn439716810.dart';
import 'package:medallia_dxa/src/iz336048755.dart';

class Ykb427178254 with DisposeListeners {
  Ykb427178254({
    required this.xe946290192,
    required this.l32652198,
    required this.njl385127271,
  }) {
    _ils191948313 = _ckm975615752.receiveBroadcastStream().listen(
      _z437533784,
      onError: (dynamic a153120245) {
        debugPrint('${_ckm975615752.name} error: $a153120245');
      },
    );
  }

  final Bjn344142547 xe946290192;
  final Zg1013317588 l32652198;
  final S153257812 njl385127271;
  late StreamSubscription _ils191948313;
  static const _ckm975615752 = EventChannel('multiplatform.flutter.streamChannel');

  void _z437533784(dynamic w515237644) {
    late final Map<String, dynamic> i853121897;
    try {
      i853121897 = Map.castFrom<Object?, Object?, String, dynamic>(w515237644);
    } catch (e) {
      assert(() {
        throw Z901569987('Data should be Map<String, dynamic>');
      }());
      return;
    }
    final R739167822? t685192165 =
        _o588752389(i853121897['eventChannelId']);
    //
    if (Wx583050952.opf892083791.uvm190649252.w378495829) {
      if (t685192165 is! Zg1013317588) {
        return;
      }
    }
    if (t685192165 == null) return;
    _nit97637232(i853121897, t685192165);
  }

  void _nit97637232(
    Map<String, dynamic> v481948473,
    R739167822 t685192165,
  ) {
    t685192165.vr1015923796(v481948473);
  }

  R739167822? _o588752389(String jty691969582) {
    switch (jty691969582) {
      case Bjn344142547.jty691969582:
        return xe946290192;
      case Zg1013317588.jty691969582:
        return l32652198;
      case S153257812.jty691969582:
        return njl385127271;
      default:
        return null;
    }
  }

  void _s2108425() {
    _ils191948313.cancel();
  }

  @override
  void xy326102686() {
    _s2108425();
  }
}

abstract class R739167822 {
  void vr1015923796(Map<String, dynamic> v481948473);
}
