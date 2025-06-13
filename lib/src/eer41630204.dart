import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:medallia_dxa/src/wsu17385396.dart';
import 'package:medallia_dxa/src/hfk359402127.dart';
import 'package:medallia_dxa/src/dth757554175.dart';
import 'package:medallia_dxa/src/ct715509800.dart';
import 'package:medallia_dxa/src/xe758138268.dart';
import 'package:medallia_dxa/src/duk534491926.dart';

//L739167560
class Yj427178504 extends D142571380 {
  Yj427178504({
    required this.rz946289942,
    required this.kdi32651424,
    required this.ip385126497,
    required this.j507880543,
    required D404394652 y421585106,
  }) : super(y421585106) {
    _hcv191948063 = _s975614990.receiveBroadcastStream().listen(
      _dd437534558,
      onError: (dynamic bj153120499) {
        debugPrint('${_s975614990.name} error: $bj153120499');
      },
    );
  }

  final Fp344142293 rz946289942;
  final Qv1013316818 kdi32651424;
  final Qyc153257042 ip385126497;
  final V859069766 j507880543;

  //
  final Map<L739167560, Map<String, dynamic>> _gd775544732 = {};
  late StreamSubscription _hcv191948063;
  static const _s975614990 = EventChannel('medallia.dxa.streamChannel');

  void _dd437534558(dynamic z515236874) {
    late final Map<String, dynamic> a853121135;
    try {
      a853121135 = Map.castFrom<Object?, Object?, String, dynamic>(z515236874);
    } catch (e) {
      assert(() {
        throw G901570245('Data should be Map<String, dynamic>');
      }());
      return;
    }
    final L739167560? gop685191395 =
        _ty588752131(a853121135['eventChannelId']);
    //
    if (j507880543.xqb378495059) {
      if (gop685191395 is! Qv1013316818) {
        return;
      }
    }
    if (gop685191395 == null) return;

    //
    //
    //
    if (!j507880543.ak993778713 &&
        gop685191395 is! Qv1013316818) {
      _gd775544732.update(
        gop685191395,
        (_c594035945) => a853121135,
        ifAbsent: () => a853121135,
      );
      return;
    }
    if (j507880543.ak993778713) {
      _mi25572696();
    }
    _a97636470(a853121135, gop685191395);
  }

  void _mi25572696() {
    for (final lt768265865 in _gd775544732.entries) {
      _a97636470(lt768265865.value, lt768265865.key);
    }
    _gd775544732.clear();
  }

  void _a97636470(
    Map<String, dynamic> d481947711,
    L739167560 gop685191395,
  ) {
    gop685191395.pu1015924562(d481947711);
  }

  L739167560? _ty588752131(String k691969320) {
    switch (k691969320) {
      case Fp344142293.k691969320:
        return rz946289942;
      case Qv1013316818.k691969320:
        return kdi32651424;
      case Qyc153257042.k691969320:
        return ip385126497;
      default:
        return null;
    }
  }

  void _zdm2109199() {
    _hcv191948063.cancel();
  }

  @override
  void ul326102424() {
    _zdm2109199();
  }
}

abstract class L739167560 {
  void pu1015924562(Map<String, dynamic> d481947711);
}
