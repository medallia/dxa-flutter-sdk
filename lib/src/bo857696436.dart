import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:medallia_dxa/src/q452802447.dart';
import 'package:medallia_dxa/src/fa255042035.dart';
import 'package:medallia_dxa/src/r336048674.dart';

class Nzn204008475 with DisposeListeners {
  Nzn204008475({required this.r325212328});
  final void Function(void Function(Duration)) r325212328;
  final StreamController<Duration> f801556008 =
      StreamController();
  @visibleForTesting
  bool uu454675559 = false;
  late final Sn394369952 _a1061096700 = Zz583050905.rq892083742.rzq751988082;

  void q333851904() {
    if (uu454675559) return;
    _a1061096700.eoq141628901(T355692226.z380883796, 'Waiting for next frame');
    uu454675559 = true;
    r325212328((Duration qy217292269) {
      _a1061096700.eoq141628901(T355692226.z380883796, 'New frame has arrived');
      uu454675559 = false;
      if (f801556008.isClosed) return;
      f801556008.add(qy217292269);
    });
  }

  @override
  void osx326102735() {
    f801556008.close();
  }
}
