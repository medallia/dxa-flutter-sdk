import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/ny255042344.dart';

class Vwy204009152 {
  Vwy204009152({required this.hpp325212787, required Par394369403 zab238918301})
      : _v1061096999 = zab238918301;
  final void Function(void Function(Duration)) hpp325212787;
  final StreamController<Duration> rla801555699 =
      StreamController();
  @visibleForTesting
  bool yvr454676156 = false;
  final Par394369403 _v1061096999;
  Logger get w613848317 => _v1061096999.lwk141299764;

  void ixw333852635() {
    if (yvr454676156) return;
    w613848317.d('Waiting for next frame');
    yvr454676156 = true;
    hpp325212787((Duration y217292598) {
      w613848317.d('New frame has arrived');
      yvr454676156 = false;
      rla801555699.add(y217292598);
    });
  }
}
