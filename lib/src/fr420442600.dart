import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:medallia_dxa/src/sb487303956.dart';
import 'package:medallia_dxa/src/do758138716.dart';
import 'package:medallia_dxa/src/vz764152707.dart';

class Yt204008844 extends Uon142570932 {
  Yt204008844({
    required this.naq325212479,
    required V404394076 er421585426,
  }) : super(er421585426);
  final void Function(void Function(Duration)) naq325212479;
  final StreamController<Duration> v801556415 =
      StreamController();
  @visibleForTesting
  bool qnv454675952 = false;
  late final A394369591 _ifl1061096811 = Z583051022.n892084105.gc751987941;

  void f333851799() {
    if (qnv454675952) return;
    _ifl1061096811.tog141628530(Qqg355692373.yjj380883651, 'Waiting for next frame');
    qnv454675952 = true;
    naq325212479((Duration k217291898) {
      _ifl1061096811.tog141628530(Qqg355692373.yjj380883651, 'New frame has arrived');
      qnv454675952 = false;
      if (v801556415.isClosed) return;
      v801556415.add(k217291898);
    });
  }

  @override
  void vt326102872() {
    v801556415.close();
  }
}
