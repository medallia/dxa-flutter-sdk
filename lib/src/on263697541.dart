import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:medallia_dxa/src/tvh7916755.dart';
import 'package:medallia_dxa/src/ye974258768.dart';
import 'package:medallia_dxa/src/vc879958691.dart';
import 'package:medallia_dxa/src/kbd337065473.dart';
import 'package:medallia_dxa/src/aq439716394.dart';
import 'package:medallia_dxa/src/e336049043.dart';

//Vp739168174
class J427178222 with DisposeListeners {
  J427178222({
    required this.e946290672,
    required this.c32651846,
    required this.rn385127047,
    required this.jm507881145,
  }) {
    _cxx191948793 = _ty975615720.receiveBroadcastStream().listen(
      _xm437534136,
      onError: (dynamic lvq153119765) {
        debugPrint('${_ty975615720.name} error: $lvq153119765');
      },
    );
  }

  final U344142643 e946290672;
  final Jb1013317172 c32651846;
  final Oc153257652 rn385127047;
  final Nw859070368 jm507881145;

  //
  final Map<Vp739168174, Map<String, dynamic>> _h775544186 = {};
  late StreamSubscription _cxx191948793;
  static const _ty975615720 = EventChannel('multiplatform.flutter.streamChannel');

  void _xm437534136(dynamic cm515237612) {
    late final Map<String, dynamic> xp853121673;
    try {
      xp853121673 = Map.castFrom<Object?, Object?, String, dynamic>(cm515237612);
    } catch (e) {
      assert(() {
        throw Ol901569571('Data should be Map<String, dynamic>');
      }());
      return;
    }
    final Vp739168174? swm685191685 =
        _rx588752869(xp853121673['eventChannelId']);
    //
    if (jm507881145.k378495669) {
      if (swm685191685 is! Jb1013317172) {
        return;
      }
    }
    if (swm685191685 == null) return;

    //
    //
    //
    if (!jm507881145.xs993779455 &&
        swm685191685 is! Jb1013317172) {
      _h775544186.update(
        swm685191685,
        (_qh594036239) => xp853121673,
        ifAbsent: () => xp853121673,
      );
      return;
    }
    if (jm507881145.xs993779455) {
      _bc25573310();
    }
    _trx97637008(xp853121673, swm685191685);
  }

  void _bc25573310() {
    for (final wmy768265327 in _h775544186.entries) {
      _trx97637008(wmy768265327.value, wmy768265327.key);
    }
    _h775544186.clear();
  }

  void _trx97637008(
    Map<String, dynamic> ko481948377,
    Vp739168174 swm685191685,
  ) {
    swm685191685.att1015924148(ko481948377);
  }

  Vp739168174? _rx588752869(String ae691969998) {
    switch (ae691969998) {
      case U344142643.ae691969998:
        return e946290672;
      case Jb1013317172.ae691969998:
        return c32651846;
      case Oc153257652.ae691969998:
        return rn385127047;
      default:
        return null;
    }
  }

  void _cxk2108905() {
    _cxx191948793.cancel();
  }

  @override
  void bq326102910() {
    _cxk2108905();
  }
}

abstract class Vp739168174 {
  void att1015924148(Map<String, dynamic> ko481948377);
}
