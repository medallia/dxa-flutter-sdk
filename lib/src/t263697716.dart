import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:medallia_dxa/src/xgu7916898.dart';
import 'package:medallia_dxa/src/ewh974259169.dart';
import 'package:medallia_dxa/src/dh879958802.dart';
import 'package:medallia_dxa/src/d337065904.dart';
import 'package:medallia_dxa/src/uzh439716763.dart';
import 'package:medallia_dxa/src/r336048674.dart';

//Kpb739167775
class Vmn427178335 with DisposeListeners {
  Vmn427178335({
    required this.oky946290241,
    required this.jmo32652279,
    required this.k385127222,
    required this.oxm507881224,
  }) {
    _cic191948360 = _gw975615833.receiveBroadcastStream().listen(
      _iu437533705,
      onError: (dynamic uoc153120164) {
        debugPrint('${_gw975615833.name} error: $uoc153120164');
      },
    );
  }

  final K344142466 oky946290241;
  final Je1013317509 jmo32652279;
  final U153257733 k385127222;
  final Kbl859069969 oxm507881224;

  //
  final Map<Kpb739167775, Map<String, dynamic>> _wg775544011 = {};
  late StreamSubscription _cic191948360;
  static const _gw975615833 = EventChannel('multiplatform.flutter.streamChannel');

  void _iu437533705(dynamic blk515237725) {
    late final Map<String, dynamic> fwp853121848;
    try {
      fwp853121848 = Map.castFrom<Object?, Object?, String, dynamic>(blk515237725);
    } catch (e) {
      assert(() {
        throw Ftf901569938('Data should be Map<String, dynamic>');
      }());
      return;
    }
    final Kpb739167775? kwa685192116 =
        _u588752468(fwp853121848['eventChannelId']);
    //
    if (oxm507881224.i378495748) {
      if (kwa685192116 is! Je1013317509) {
        return;
      }
    }
    if (kwa685192116 == null) return;

    //
    //
    //
    if (!oxm507881224.pbr993779534 &&
        kwa685192116 is! Je1013317509) {
      _wg775544011.update(
        kwa685192116,
        (_t594036670) => fwp853121848,
        ifAbsent: () => fwp853121848,
      );
      return;
    }
    if (oxm507881224.pbr993779534) {
      _a25572879();
    }
    _gne97637153(fwp853121848, kwa685192116);
  }

  void _a25572879() {
    for (final pct768265694 in _wg775544011.entries) {
      _gne97637153(pct768265694.value, pct768265694.key);
    }
    _wg775544011.clear();
  }

  void _gne97637153(
    Map<String, dynamic> gt481948520,
    Kpb739167775 kwa685192116,
  ) {
    kwa685192116.dxv1015923717(gt481948520);
  }

  Kpb739167775? _u588752468(String da691969663) {
    switch (da691969663) {
      case K344142466.da691969663:
        return oky946290241;
      case Je1013317509.da691969663:
        return jmo32652279;
      case U153257733.da691969663:
        return k385127222;
      default:
        return null;
    }
  }

  void _js2108504() {
    _cic191948360.cancel();
  }

  @override
  void osx326102735() {
    _js2108504();
  }
}

abstract class Kpb739167775 {
  void dxv1015923717(Map<String, dynamic> gt481948520);
}
