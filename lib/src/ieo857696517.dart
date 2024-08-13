import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:medallia_dxa/src/oa452802110.dart';
import 'package:medallia_dxa/src/ex255041602.dart';
import 'package:medallia_dxa/src/e336049043.dart';

class Ig204008874 with DisposeListeners {
  Ig204008874({required this.sf325212441});
  final void Function(void Function(Duration)) sf325212441;
  final StreamController<Duration> g801556377 =
      StreamController();
  @visibleForTesting
  bool ru454675926 = false;
  late final Bcw394369553 _q1061096781 = Klj583051048.yrd892084143.vyc751987907;

  void x333851825() {
    if (ru454675926) return;
    _q1061096781.r141628500(Ym355692403.kg380883685, 'Waiting for next frame');
    ru454675926 = true;
    sf325212441((Duration i217291868) {
      _q1061096781.r141628500(Ym355692403.kg380883685, 'New frame has arrived');
      ru454675926 = false;
      if (g801556377.isClosed) return;
      g801556377.add(i217291868);
    });
  }

  @override
  void bq326102910() {
    g801556377.close();
  }
}
