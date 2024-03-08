import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:medallia_dxa/src/w974258490.dart';
import 'package:medallia_dxa/src/gy879958473.dart';
import 'package:medallia_dxa/src/bsc337065323.dart';
import 'package:medallia_dxa/src/cwx452801876.dart';

class Hcd427178884 {
  Hcd427178884({
    required this.p946289818,
    required this.r32651564,
    required this.dxm385126893,
  }) {
    _wpi191947923 = _jet975615362.receiveBroadcastStream().listen(
      _izt437534418,
      onError: (dynamic odg153120639) {
        debugPrint('${_jet975615362.name} error: $odg153120639');
      },
    );
  }

  final Uwl344141913 p946289818;
  final Mq1013316958 r32651564;
  final Za153257438 dxm385126893;
  late StreamSubscription _wpi191947923;
  static const _jet975615362 = EventChannel('multiplatform.flutter.streamChannel');

  void _izt437534418(dynamic pz515237254) {
    if (pz515237254 is! String) {
      debugPrint('Data should be a String');
      return;
    }
    final db205317318 = jsonDecode(pz515237254) as Map<String, dynamic>;
    final Cnd739167428? e685191535 =
        _p588752015(db205317318.keys.first);
    //
    if (Yt583050306.ss892083397.v190648622.n378495455) {
      if (e685191535 is! Mq1013316958) {
        return;
      }
    }
    if (e685191535 == null) return;
    _i97636858(db205317318, e685191535);
  }

  void _i97636858(
    Map<String, dynamic> ef481948083,
    Cnd739167428 e685191535,
  ) {
    e685191535.vxz1015924446(ef481948083);
  }

  Cnd739167428? _p588752015(String bfr691969188) {
    switch (bfr691969188) {
      case Uwl344141913.bfr691969188:
        return p946289818;
      case Mq1013316958.bfr691969188:
        return r32651564;
      case Za153257438.bfr691969188:
        return dxm385126893;
      default:
        return null;
    }
  }

  void j806519973() {
    _wpi191947923.cancel();
  }
}

abstract class Cnd739167428 {
  void vxz1015924446(Map<String, dynamic> ef481948083);
}
