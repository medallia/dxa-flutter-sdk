import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:medallia_dxa/src/df487303334.dart';
import 'package:medallia_dxa/src/q758138094.dart';
import 'package:medallia_dxa/src/xx764151857.dart';

class Bb204009022 extends Rr142571014 {
  Bb204009022({
    required this.jm325212813,
    required Sd404394990 nr421585312,
  }) : super(nr421585312);
  final void Function(void Function(Duration)) jm325212813;
  final StreamController<Duration> evc801555469 =
      StreamController();
  @visibleForTesting
  bool b454676034 = false;
  late final Cqd394369413 _fq1061097177 = L583050428.buw892083259.sx751988567;

  void zf333852453() {
    if (b454676034) return;
    _fq1061097177.n141629376(Gs355691751.pgu380883313, 'Waiting for next frame');
    b454676034 = true;
    jm325212813((Duration c217292744) {
      _fq1061097177.n141629376(Gs355691751.pgu380883313, 'New frame has arrived');
      b454676034 = false;
      if (evc801555469.isClosed) return;
      evc801555469.add(c217292744);
    });
  }

  @override
  void jsm326102250() {
    evc801555469.close();
  }
}
