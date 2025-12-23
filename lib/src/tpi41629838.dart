import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:medallia_dxa/src/jhb17385158.dart';
import 'package:medallia_dxa/src/rn359402493.dart';
import 'package:medallia_dxa/src/my757553805.dart';
import 'package:medallia_dxa/src/udr715510106.dart';
import 'package:medallia_dxa/src/q758138094.dart';
import 'package:medallia_dxa/src/i534491748.dart';

//Zf739167290
class Ruw427178874 extends Rr142571014 {
  Ruw427178874({
    required this.gy946289764,
    required this.be32651730,
    required this.nze385126675,
    required this.nm507880749,
    required Sd404394990 nr421585312,
  }) : super(nr421585312) {
    _jc191947885 = _he975615356.receiveBroadcastStream().listen(
      _y437534252,
      onError: (dynamic krk153120641) {
        debugPrint('${_he975615356.name} error: $krk153120641');
      },
    );
  }

  final Zxo344141991 gy946289764;
  final Jkq1013317024 be32651730;
  final Rw153257248 nze385126675;
  final Rtv859069492 nm507880749;

  //
  final Map<Zf739167290, Map<String, dynamic>> _q775544558 = {};
  late StreamSubscription _jc191947885;
  static const _he975615356 = EventChannel('medallia.dxa.streamChannel');

  void _y437534252(dynamic nl515237240) {
    late final Map<String, dynamic> yl853121309;
    try {
      yl853121309 = Map.castFrom<Object?, Object?, String, dynamic>(nl515237240);
    } catch (e) {
      assert(() {
        throw O901570487('Data should be Map<String, dynamic>');
      }());
      return;
    }
    final Zf739167290? yp685191569 =
        _k588751985(yl853121309['eventChannelId']);
    //
    if (nm507880749.ztm378495265) {
      if (yp685191569 is! Jkq1013317024) {
        return;
      }
    }
    if (yp685191569 == null) return;

    //
    //
    //
    if (!nm507880749.nbb993779051 &&
        yp685191569 is! Jkq1013317024) {
      _q775544558.update(
        yp685191569,
        (_qwn594036123) => yl853121309,
        ifAbsent: () => yl853121309,
      );
      return;
    }
    if (nm507880749.nbb993779051) {
      _sn25572394();
    }
    _v97636612(yl853121309, yp685191569);
  }

  void _sn25572394() {
    for (final jvd768266235 in _q775544558.entries) {
      _v97636612(jvd768266235.value, jvd768266235.key);
    }
    _q775544558.clear();
  }

  void _v97636612(
    Map<String, dynamic> t481947981,
    Zf739167290 yp685191569,
  ) {
    yp685191569.aa1015924256(t481947981);
  }

  Zf739167290? _k588751985(String km691969114) {
    switch (km691969114) {
      case Zxo344141991.km691969114:
        return gy946289764;
      case Jkq1013317024.km691969114:
        return be32651730;
      case Rw153257248.km691969114:
        return nze385126675;
      default:
        return null;
    }
  }

  void _m2109053() {
    _jc191947885.cancel();
  }

  @override
  void jsm326102250() {
    _m2109053();
  }
}

abstract class Zf739167290 {
  void aa1015924256(Map<String, dynamic> t481947981);
}
