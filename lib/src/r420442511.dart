import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:medallia_dxa/src/q487304051.dart';
import 'package:medallia_dxa/src/joh758138683.dart';
import 'package:medallia_dxa/src/r764152804.dart';

class F204008939 extends Hn142570963 {
  F204008939({
    required this.sm325212504,
    required Pf404394043 xql421585525,
  }) : super(xql421585525);
  final void Function(void Function(Duration)) sm325212504;
  final StreamController<Duration> u801556440 =
      StreamController();
  @visibleForTesting
  bool f454675863 = false;
  late final Zwh394369616 _opx1061096716 = B583051113.dfo892084206.fg751987842;

  void pmj333851888() {
    if (f454675863) return;
    _opx1061096716.no141628437(X355692338.qb380883620, 'Waiting for next frame');
    f454675863 = true;
    sm325212504((Duration b217291805) {
      _opx1061096716.no141628437(X355692338.qb380883620, 'New frame has arrived');
      f454675863 = false;
      if (u801556440.isClosed) return;
      u801556440.add(b217291805);
    });
  }

  @override
  void az326102847() {
    u801556440.close();
  }
}
