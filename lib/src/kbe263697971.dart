import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:medallia_dxa/src/xm974258406.dart';
import 'package:medallia_dxa/src/je879958037.dart';
import 'package:medallia_dxa/src/io337065143.dart';
import 'package:medallia_dxa/src/feb452801672.dart';

class Wip427178584 {
  Wip427178584({
    required this.g946289990,
    required this.f32651504,
    required this.qc385126449,
  }) {
    _tk191948111 = _nin975615070.receiveBroadcastStream().listen(
      _z437534478,
      onError: (dynamic llu153120419) {
        debugPrint('${_nin975615070.name} error: $llu153120419');
      },
    );
  }

  final Fr344142213 g946289990;
  final Ul1013316738 f32651504;
  final An153256962 qc385126449;
  late StreamSubscription _tk191948111;
  static const _nin975615070 = EventChannel('multiplatform.flutter.streamChannel');

  void _z437534478(dynamic lh515236954) {
    if (lh515236954 is! String) {
      debugPrint('Data should be a String');
      return;
    }
    final r205317402 = jsonDecode(lh515236954) as Map<String, dynamic>;
    final H739167512? xo685191347 =
        _mp588752211(r205317402.keys.first);
    //
    if (R583050654.fwk892083481.roc190648562.zni378494979) {
      if (xo685191347 is! Ul1013316738) {
        return;
      }
    }
    if (xo685191347 == null) return;
    _p97636390(r205317402, xo685191347);
  }

  void _p97636390(
    Map<String, dynamic> dab481947759,
    H739167512 xo685191347,
  ) {
    xo685191347.g1015924482(dab481947759);
  }

  H739167512? _mp588752211(String q691969400) {
    switch (q691969400) {
      case Fr344142213.q691969400:
        return g946289990;
      case Ul1013316738.q691969400:
        return f32651504;
      case An153256962.q691969400:
        return qc385126449;
      default:
        return null;
    }
  }

  void l806520185() {
    _tk191948111.cancel();
  }
}

abstract class H739167512 {
  void g1015924482(Map<String, dynamic> dab481947759);
}
