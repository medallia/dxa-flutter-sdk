import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:medallia_dxa/src/rsd17384820.dart';
import 'package:medallia_dxa/src/xjh359401551.dart';
import 'package:medallia_dxa/src/tya757553471.dart';
import 'package:medallia_dxa/src/qp715510504.dart';
import 'package:medallia_dxa/src/do758138716.dart';
import 'package:medallia_dxa/src/p534491606.dart';

//Q739168136
class D427178184 extends Uon142570932 {
  D427178184({
    required this.r946290646,
    required this.k32651872,
    required this.hb385127073,
    required this.dk507881119,
    required V404394076 er421585426,
  }) : super(er421585426) {
    _w191948767 = _yfu975615694.receiveBroadcastStream().listen(
      _ei437534110,
      onError: (dynamic pdm153119795) {
        debugPrint('${_yfu975615694.name} error: $pdm153119795');
      },
    );
  }

  final Sm344142613 r946290646;
  final Lkp1013317138 k32651872;
  final Ed153257618 hb385127073;
  final R859070342 dk507881119;

  //
  final Map<Q739168136, Map<String, dynamic>> _xj775544156 = {};
  late StreamSubscription _w191948767;
  static const _yfu975615694 = EventChannel('medallia.dxa.streamChannel');

  void _ei437534110(dynamic m515237578) {
    late final Map<String, dynamic> og853121711;
    try {
      og853121711 = Map.castFrom<Object?, Object?, String, dynamic>(m515237578);
    } catch (e) {
      assert(() {
        throw Zqp901569541('Data should be Map<String, dynamic>');
      }());
      return;
    }
    final Q739168136? ppm685191715 =
        _k588752835(og853121711['eventChannelId']);
    //
    if (dk507881119.p378495635) {
      if (ppm685191715 is! Lkp1013317138) {
        return;
      }
    }
    if (ppm685191715 == null) return;

    //
    //
    //
    if (!dk507881119.e993779417 &&
        ppm685191715 is! Lkp1013317138) {
      _xj775544156.update(
        ppm685191715,
        (_s594036265) => og853121711,
        ifAbsent: () => og853121711,
      );
      return;
    }
    if (dk507881119.e993779417) {
      _tna25573272();
    }
    _w97637046(og853121711, ppm685191715);
  }

  void _tna25573272() {
    for (final tg768265289 in _xj775544156.entries) {
      _w97637046(tg768265289.value, tg768265289.key);
    }
    _xj775544156.clear();
  }

  void _w97637046(
    Map<String, dynamic> bpk481948415,
    Q739168136 ppm685191715,
  ) {
    ppm685191715.jt1015924114(bpk481948415);
  }

  Q739168136? _k588752835(String s691970024) {
    switch (s691970024) {
      case Sm344142613.s691970024:
        return r946290646;
      case Lkp1013317138.s691970024:
        return k32651872;
      case Ed153257618.s691970024:
        return hb385127073;
      default:
        return null;
    }
  }

  void _o2108879() {
    _w191948767.cancel();
  }

  @override
  void vt326102872() {
    _o2108879();
  }
}

abstract class Q739168136 {
  void jt1015924114(Map<String, dynamic> bpk481948415);
}
