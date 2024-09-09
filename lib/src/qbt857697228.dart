import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:medallia_dxa/src/v452801783.dart';
import 'package:medallia_dxa/src/yyq255042187.dart';
import 'package:medallia_dxa/src/u336048474.dart';

class Igd204009315 with DisposeListeners {
  Igd204009315({required this.uj325213136});
  final void Function(void Function(Duration)) uj325213136;
  final StreamController<Duration> b801555792 =
      StreamController();
  @visibleForTesting
  bool iee454676255 = false;
  late final Nfs394369240 _gi1061097348 = Wyf583050721.wf892083558.b751988234;

  void fte333852280() {
    if (iee454676255) return;
    _gi1061097348.ieh141629085(Cu355691962.qt380882988, 'Waiting for next frame');
    iee454676255 = true;
    uj325213136((Duration xxo217292437) {
      _gi1061097348.ieh141629085(Cu355691962.qt380882988, 'New frame has arrived');
      iee454676255 = false;
      if (b801555792.isClosed) return;
      b801555792.add(xxo217292437);
    });
  }

  @override
  void r326102455() {
    b801555792.close();
  }
}
