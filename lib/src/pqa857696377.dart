import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/w255041854.dart';

class B204008662 {
  B204008662({required this.o325212261, required Z394369901 bv238917771})
      : _s1061096497 = bv238917771;
  final void Function(void Function(Duration)) o325212261;
  final StreamController<Duration> fd801556197 =
      StreamController();
  @visibleForTesting
  bool vux454675626 = false;
  final Z394369901 _s1061096497;
  Logger get bc613848811 => _s1061096497.l141300258;

  void mlx333852109() {
    if (vux454675626) return;
    bc613848811.d('Waiting for next frame');
    vux454675626 = true;
    o325212261((Duration xz217292064) {
      bc613848811.d('New frame has arrived');
      vux454675626 = false;
      fd801556197.add(xz217292064);
    });
  }
}
