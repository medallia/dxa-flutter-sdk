import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/lm255042337.dart';

class Kzc204009161 {
  Kzc204009161({required this.thr325212794, required Tiy394369394 q238918292})
      : _suc1061097006 = q238918292;
  final void Function(void Function(Duration)) thr325212794;
  final StreamController<Duration> e801555706 =
      StreamController();
  @visibleForTesting
  bool eft454676149 = false;
  final Tiy394369394 _suc1061097006;
  Logger get b613848308 => _suc1061097006.nat141299773;

  void blm333852626() {
    if (eft454676149) return;
    b613848308.d('Waiting for next frame');
    eft454676149 = true;
    thr325212794((Duration tf217292607) {
      b613848308.d('New frame has arrived');
      eft454676149 = false;
      e801555706.add(tf217292607);
    });
  }
}
