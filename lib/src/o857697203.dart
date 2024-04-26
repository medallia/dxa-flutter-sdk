import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/jn255042292.dart';

class Wa204009244 {
  Wa204009244({required this.q325213103, required Gy394369191 qe238918465})
      : _o1061097467 = qe238918465;
  final void Function(void Function(Duration)) q325213103;
  final StreamController<Duration> foe801555759 =
      StreamController();
  @visibleForTesting
  bool fe454676320 = false;
  final Gy394369191 _o1061097467;
  Logger get l613848353 => _o1061097467.wuw141300200;

  void jc333852167() {
    if (fe454676320) return;
    l613848353.d('Waiting for next frame');
    fe454676320 = true;
    q325213103((Duration il217292522) {
      l613848353.d('New frame has arrived');
      fe454676320 = false;
      foe801555759.add(il217292522);
    });
  }
}
