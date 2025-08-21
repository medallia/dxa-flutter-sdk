import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:medallia_dxa/src/e487303575.dart';
import 'package:medallia_dxa/src/jt758138335.dart';
import 'package:medallia_dxa/src/br764152064.dart';

class H204009231 extends Ll142571319 {
  H204009231({
    required this.tne325213116,
    required X404394719 nd421585041,
  }) : super(nd421585041);
  final void Function(void Function(Duration)) tne325213116;
  final StreamController<Duration> avf801555772 =
      StreamController();
  @visibleForTesting
  bool xx454676339 = false;
  late final Jnx394369204 _e1061097448 = Zmk583050637.u892083466.gcv751988326;

  void kyy333852180() {
    if (xx454676339) return;
    _e1061097448.w141629169(F355691990.e380883008, 'Waiting for next frame');
    xx454676339 = true;
    tne325213116((Duration pyh217292537) {
      _e1061097448.w141629169(F355691990.e380883008, 'New frame has arrived');
      xx454676339 = false;
      if (avf801555772.isClosed) return;
      avf801555772.add(pyh217292537);
    });
  }

  @override
  void b326102491() {
    avf801555772.close();
  }
}
