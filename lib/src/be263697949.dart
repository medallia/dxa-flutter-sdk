import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:medallia_dxa/src/zy974258376.dart';
import 'package:medallia_dxa/src/thu879958075.dart';
import 'package:medallia_dxa/src/d337065113.dart';
import 'package:medallia_dxa/src/e452801702.dart';

class Hze427178614 {
  Hze427178614({
    required this.oml946290024,
    required this.ath32651486,
    required this.q385126431,
  }) {
    _pmx191948129 = _fon975615088.receiveBroadcastStream().listen(
      _jwl437534496,
      onError: (dynamic i153120397) {
        debugPrint('${_fon975615088.name} error: $i153120397');
      },
    );
  }

  final Qig344142251 oml946290024;
  final Byf1013316780 ath32651486;
  final E153257004 q385126431;
  late StreamSubscription _pmx191948129;
  static const _fon975615088 = EventChannel('multiplatform.flutter.streamChannel');

  void _jwl437534496(dynamic ohb515236980) {
    if (ohb515236980 is! String) {
      debugPrint('Data should be a String');
      return;
    }
    final bs205317428 = jsonDecode(ohb515236980) as Map<String, dynamic>;
    final Ok739167542? o685191325 =
        _ug588752253(bs205317428.keys.first);
    //
    if (Pg583050672.vpo892083511.q190648540.zkr378495021) {
      if (o685191325 is! Byf1013316780) {
        return;
      }
    }
    if (o685191325 == null) return;
    _p97636360(bs205317428, o685191325);
  }

  void _p97636360(
    Map<String, dynamic> ga481947713,
    Ok739167542 o685191325,
  ) {
    o685191325.ie1015924524(ga481947713);
  }

  Ok739167542? _ug588752253(String o691969366) {
    switch (o691969366) {
      case Qig344142251.o691969366:
        return oml946290024;
      case Byf1013316780.o691969366:
        return ath32651486;
      case E153257004.o691969366:
        return q385126431;
      default:
        return null;
    }
  }

  void v806520151() {
    _pmx191948129.cancel();
  }
}

abstract class Ok739167542 {
  void ie1015924524(Map<String, dynamic> ga481947713);
}
