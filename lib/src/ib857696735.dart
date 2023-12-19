import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/cr255041688.dart';

class Lh204008816 {
  Lh204008816({required this.lz325212611, required R394369739 b238917933})
      : _v1061096855 = b238917933;
  final void Function(void Function(Duration)) lz325212611;
  final StreamController<Duration> p801556291 =
      StreamController();
  @visibleForTesting
  bool gb454675724 = false;
  final R394369739 _v1061096855;
  Logger get m613848909 => _v1061096855.m141300612;

  void r333851755() {
    if (gb454675724) return;
    m613848909.d('Waiting for next frame');
    gb454675724 = true;
    lz325212611((Duration qtf217291910) {
      m613848909.d('New frame has arrived');
      gb454675724 = false;
      p801556291.add(qtf217291910);
    });
  }
}
