import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/fsv255042266.dart';

class X204009266 {
  X204009266({required this.io325213057, required A394369161 nem238918511})
      : _zah1061097429 = nem238918511;
  final void Function(void Function(Duration)) io325213057;
  final StreamController<Duration> jwc801555713 =
      StreamController();
  @visibleForTesting
  bool sa454676302 = false;
  final A394369161 _zah1061097429;
  Logger get qa613848335 => _zah1061097429.c141300166;

  void qu333852201() {
    if (sa454676302) return;
    qa613848335.d('Waiting for next frame');
    sa454676302 = true;
    io325213057((Duration fss217292484) {
      qa613848335.d('New frame has arrived');
      sa454676302 = false;
      jwc801555713.add(fss217292484);
    });
  }
}
