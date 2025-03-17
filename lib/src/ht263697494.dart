import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:medallia_dxa/src/bka7916544.dart';
import 'package:medallia_dxa/src/c974258819.dart';
import 'package:medallia_dxa/src/hi879958640.dart';
import 'package:medallia_dxa/src/z337065682.dart';
import 'package:medallia_dxa/src/x248600066.dart';
import 'package:medallia_dxa/src/q439716601.dart';

//Jk739168125
class Kn427178045 extends By142570817 {
  Kn427178045({
    required this.c946290467,
    required this.nyy32651925,
    required this.tb385126996,
    required this.f507881066,
    required Xhs404394153 db421585639,
  }) : super(db421585639) {
    _ef191948586 = _tv975615547.receiveBroadcastStream().listen(
      _ts437534059,
      onError: (dynamic tr153119942) {
        debugPrint('${_tv975615547.name} error: $tr153119942');
      },
    );
  }

  final Gqo344142816 c946290467;
  final Hr1013317351 nyy32651925;
  final Yv153257575 tb385126996;
  final Ri859070323 f507881066;

  //
  final Map<Jk739168125, Map<String, dynamic>> _xj775544233 = {};
  late StreamSubscription _ef191948586;
  static const _tv975615547 = EventChannel('medallia.dxa.streamChannel');

  void _ts437534059(dynamic zzk515237439) {
    late final Map<String, dynamic> b853121626;
    try {
      b853121626 = Map.castFrom<Object?, Object?, String, dynamic>(zzk515237439);
    } catch (e) {
      assert(() {
        throw Fc901569776('Data should be Map<String, dynamic>');
      }());
      return;
    }
    final Jk739168125? fyt685191894 =
        _xzn588752694(b853121626['eventChannelId']);
    //
    if (f507881066.ab378495590) {
      if (fyt685191894 is! Hr1013317351) {
        return;
      }
    }
    if (fyt685191894 == null) return;

    //
    //
    //
    if (!f507881066.b993779244 &&
        fyt685191894 is! Hr1013317351) {
      _xj775544233.update(
        fyt685191894,
        (_rwo594036444) => b853121626,
        ifAbsent: () => b853121626,
      );
      return;
    }
    if (f507881066.b993779244) {
      _ylp25573229();
    }
    _g97636931(b853121626, fyt685191894);
  }

  void _ylp25573229() {
    for (final qkn768265404 in _xj775544233.entries) {
      _g97636931(qkn768265404.value, qkn768265404.key);
    }
    _xj775544233.clear();
  }

  void _g97636931(
    Map<String, dynamic> l481948170,
    Jk739168125 fyt685191894,
  ) {
    fyt685191894.br1015924071(l481948170);
  }

  Jk739168125? _xzn588752694(String l691969821) {
    switch (l691969821) {
      case Gqo344142816.l691969821:
        return c946290467;
      case Hr1013317351.l691969821:
        return nyy32651925;
      case Yv153257575.l691969821:
        return tb385126996;
      default:
        return null;
    }
  }

  void _wdw2108730() {
    _ef191948586.cancel();
  }

  @override
  void e326102957() {
    _wdw2108730();
  }
}

abstract class Jk739168125 {
  void br1015924071(Map<String, dynamic> l481948170);
}
