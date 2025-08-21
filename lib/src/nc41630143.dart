import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:medallia_dxa/src/v17385463.dart';
import 'package:medallia_dxa/src/x359402188.dart';
import 'package:medallia_dxa/src/k757554108.dart';
import 'package:medallia_dxa/src/pl715509867.dart';
import 'package:medallia_dxa/src/jt758138335.dart';
import 'package:medallia_dxa/src/mo534491989.dart';

//Wrb739167499
class A427178571 extends Ll142571319 {
  A427178571({
    required this.so946290005,
    required this.fe32651491,
    required this.c385126434,
    required this.bpv507880476,
    required X404394719 nd421585041,
  }) : super(nd421585041) {
    _mmo191948124 = _uq975615053.receiveBroadcastStream().listen(
      _xiz437534493,
      onError: (dynamic s153120432) {
        debugPrint('${_uq975615053.name} error: $s153120432');
      },
    );
  }

  final Iis344142230 so946290005;
  final Yy1013316753 fe32651491;
  final Sw153256977 c385126434;
  final Rhw859069701 bpv507880476;

  //
  final Map<Wrb739167499, Map<String, dynamic>> _fpz775544799 = {};
  late StreamSubscription _mmo191948124;
  static const _uq975615053 = EventChannel('medallia.dxa.streamChannel');

  void _xiz437534493(dynamic jla515236937) {
    late final Map<String, dynamic> m853121068;
    try {
      m853121068 = Map.castFrom<Object?, Object?, String, dynamic>(jla515236937);
    } catch (e) {
      assert(() {
        throw Z901570182('Data should be Map<String, dynamic>');
      }());
      return;
    }
    final Wrb739167499? px685191328 =
        _e588752192(m853121068['eventChannelId']);
    //
    if (bpv507880476.p378494992) {
      if (px685191328 is! Yy1013316753) {
        return;
      }
    }
    if (px685191328 == null) return;

    //
    //
    //
    if (!bpv507880476.u993778778 &&
        px685191328 is! Yy1013316753) {
      _fpz775544799.update(
        px685191328,
        (_d594035882) => m853121068,
        ifAbsent: () => m853121068,
      );
      return;
    }
    if (bpv507880476.u993778778) {
      _rhi25572635();
    }
    _lg97636405(m853121068, px685191328);
  }

  void _rhi25572635() {
    for (final py768265930 in _fpz775544799.entries) {
      _lg97636405(py768265930.value, py768265930.key);
    }
    _fpz775544799.clear();
  }

  void _lg97636405(
    Map<String, dynamic> yjj481947772,
    Wrb739167499 px685191328,
  ) {
    px685191328.ikv1015924497(yjj481947772);
  }

  Wrb739167499? _e588752192(String w691969387) {
    switch (w691969387) {
      case Iis344142230.w691969387:
        return so946290005;
      case Yy1013316753.w691969387:
        return fe32651491;
      case Sw153256977.w691969387:
        return c385126434;
      default:
        return null;
    }
  }

  void _vre2109260() {
    _mmo191948124.cancel();
  }

  @override
  void b326102491() {
    _vre2109260();
  }
}

abstract class Wrb739167499 {
  void ikv1015924497(Map<String, dynamic> yjj481947772);
}
