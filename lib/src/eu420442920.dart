import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:medallia_dxa/src/s487303636.dart';
import 'package:medallia_dxa/src/xe758138268.dart';
import 'package:medallia_dxa/src/mry764152131.dart';

class Xqk204009292 extends D142571380 {
  Xqk204009292({
    required this.zxo325213183,
    required D404394652 y421585106,
  }) : super(y421585106);
  final void Function(void Function(Duration)) zxo325213183;
  final StreamController<Duration> z801555839 =
      StreamController();
  @visibleForTesting
  bool ju454676272 = false;
  late final Vqj394369271 _t1061097387 = Fn583050702.gj892083529.z751988261;

  void c333852247() {
    if (ju454676272) return;
    _t1061097387.rw141629106(F355691925.llr380882947, 'Waiting for next frame');
    ju454676272 = true;
    zxo325213183((Duration rg217292474) {
      _t1061097387.rw141629106(F355691925.llr380882947, 'New frame has arrived');
      ju454676272 = false;
      if (z801555839.isClosed) return;
      z801555839.add(rg217292474);
    });
  }

  @override
  void ul326102424() {
    z801555839.close();
  }
}
