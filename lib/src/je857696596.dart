import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/pa255041555.dart';

class Iya204008955 {
  Iya204008955({required this.kn325212488, required N394369600 x238918054})
      : _o1061096732 = x238918054;
  final void Function(void Function(Duration)) kn325212488;
  final StreamController<Duration> ni801556424 =
      StreamController();
  @visibleForTesting
  bool y454675847 = false;
  final N394369600 _o1061096732;
  Logger get n613849030 => _o1061096732.r141300495;

  void r333851872() {
    if (y454675847) return;
    n613849030.d('Waiting for next frame');
    y454675847 = true;
    kn325212488((Duration zto217291789) {
      n613849030.d('New frame has arrived');
      y454675847 = false;
      ni801556424.add(zto217291789);
    });
  }
}
