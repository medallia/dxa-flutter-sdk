import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:medallia_dxa/src/e255041954.dart';
import 'package:medallia_dxa/src/iz336048755.dart';

class Ed204008522 with DisposeListeners {
  Ed204008522({required this.utw325212409, required Kq394370033 pqt238917655})
      : _jy1061096621 = pqt238917655;
  final void Function(void Function(Duration)) utw325212409;
  final StreamController<Duration> b801556089 =
      StreamController();
  @visibleForTesting
  bool idc454675510 = false;
  final Kq394370033 _jy1061096621;

  void gs333851985() {
    if (idc454675510) return;
    _jy1061096621.fbr141628852(Df355692179.d380883717, 'Waiting for next frame');
    idc454675510 = true;
    utw325212409((Duration s217292220) {
      _jy1061096621.fbr141628852(Df355692179.d380883717, 'New frame has arrived');
      idc454675510 = false;
      if (b801556089.isClosed) return;
      b801556089.add(s217292220);
    });
  }

  @override
  void xy326102686() {
    b801556089.close();
  }
}
