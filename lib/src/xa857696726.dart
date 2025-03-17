import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:medallia_dxa/src/d452802285.dart';
import 'package:medallia_dxa/src/x248600066.dart';
import 'package:medallia_dxa/src/rn255041681.dart';

class X204008825 extends By142570817 {
  X204008825({
    required this.cmo325212618,
    required Xhs404394153 db421585639,
  }) : super(db421585639);
  final void Function(void Function(Duration)) cmo325212618;
  final StreamController<Duration> r801556298 =
      StreamController();
  @visibleForTesting
  bool jm454675717 = false;
  late final S394369730 _mc1061096862 = K583051259.y892084092.uqz751987728;

  void gdk333851746() {
    if (jm454675717) return;
    _mc1061096862.uhj141628551(Rh355692448.pm380883510, 'Waiting for next frame');
    jm454675717 = true;
    cmo325212618((Duration e217291919) {
      _mc1061096862.uhj141628551(Rh355692448.pm380883510, 'New frame has arrived');
      jm454675717 = false;
      if (r801556298.isClosed) return;
      r801556298.add(e217291919);
    });
  }

  @override
  void e326102957() {
    r801556298.close();
  }
}
