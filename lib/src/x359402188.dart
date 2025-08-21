//
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/v17385463.dart';

import 'package:medallia_dxa/src/nc41630143.dart';
import 'package:medallia_dxa/src/lp1030033903.dart';
import 'package:medallia_dxa/src/hpu800796081.dart';
import 'package:medallia_dxa/src/ydm69983162.dart';
import 'package:medallia_dxa/src/hk249196801.dart';
import 'package:medallia_dxa/src/br764152064.dart';

class Yy1013316753 implements Wrb739167499 {
  static const String w691969387 = 'live_configuration';
  final Rhw859069701 bpv507880476;
  final Jnx394369204 _hdu381625961;
  bool get bey208388894 => _aq709250808 ?? false;
  Color? get upo938089178 => _h374220269;
  Duration? get y529815712 => _b709691274;
  ImageQuality? get amp178815404 => _g450259999;
  bool? _aq709250808;
  List<String?>? _dgt629889063;
  List<String?>? _x134457122;
  List<String?>? _qys622315728;
  bool yd709782217 = false;
  bool c324839338 = false;
  bool zp747568186 = false;
  String? _ayc202704018;
  Color? _h374220269;
  bool? _lho381317945;
  bool? _qoq995565651;
  int? _a653443688;
  ImageQuality? _g450259999;
  int? _na157011655;
  Duration? _b709691274;
  List<String?>? _ahl386269759;
  List<String?>? _h981467946;
  String? _eyc534558439;
  String? _lr761427401;
  Yy1013316753({
    required this.bpv507880476,
    required Jnx394369204 us238918482,
  }) : _hdu381625961 = us238918482;
  Future<void> ma721003787() async {
    yd709782217 = false;
    c324839338 = false;
    zp747568186 = false;

    yd709782217 = _kt58434167(
      qyw85773909: _dgt629889063,
      cz462601676: Wf608124704.naw683834415,
      gl3926163: 'This version of the Flutter sdk has been blocked',
    );

    c324839338 = _kt58434167(
      qyw85773909: _x134457122,
      cz462601676: _eyc534558439 ?? 'not set',
      gl3926163: 'This version of the app has been blocked',
    );

    zp747568186 = _kt58434167(
      qyw85773909: _qys622315728,
      cz462601676: _lr761427401 ?? 'not set',
      gl3926163: 'This version of the native sdk has been blocked',
    );

    if (yd709782217 ||
        c324839338 ||
        zp747568186) {
      await bpv507880476.fte231535635();
      return;
    }

    dm148236483();
    if (_lho381317945 != null) {
      _hdu381625961.sb268886122(qeq285554733: _lho381317945!);
    }
    if (_qoq995565651 != null) {
      _hdu381625961.w249853352(ica193371907: _qoq995565651!);
    }
  }

  bool _kt58434167({
    required List<String?>? qyw85773909,
    required String cz462601676,
    required String gl3926163,
  }) {
    if (qyw85773909 != null && qyw85773909.isNotEmpty) {
      if (qyw85773909.contains(cz462601676)) {
        _hdu381625961.w141629169(
          F355691990.plv994359408,
          gl3926163,
        );
        return true;
      }
    }
    return false;
  }

  void dm148236483() {
    if (_ayc202704018 != null) {
      final String blt1015216754 =
          _ayc202704018!.d31857530;
      final int? xav615146420 =
          int.tryParse(blt1015216754, radix: 16);
      if (xav615146420 != null) {
        _h374220269 = Color.fromARGB(
          255,
          (xav615146420 & 0xFF0000) >> 16,
          (xav615146420 & 0x00FF00) >> 8,
          xav615146420 & 0x0000FF,
        );
      }
    }

    if (_na157011655 != null) {
      _b709691274 = _itj599320140(
        _na157011655!,
      );
    }

    if (_a653443688 != null) {
      _g450259999 =
          Ab720223351.y844448052(_a653443688!);
    }
  }

  bool m68326224(String u343814147) {
    return _ahl386269759?.contains(u343814147) ?? false;
  }

  bool lus317036280(String u343814147) {
    return _h981467946?.contains(u343814147) ?? false;
  }

  Duration _itj599320140(
    int y529815712,
  ) {
    late final Duration at453742793;
    switch (y529815712) {
      case 0:
        at453742793 = const Duration(milliseconds: 500);
        break;
      case 1:
        at453742793 = const Duration(milliseconds: 250);
        break;
      case 2:
        at453742793 = const Duration(milliseconds: 167);
        break;
      case 3:
        at453742793 = const Duration(milliseconds: 125);

        break;
      case 4:
        at453742793 = const Duration(milliseconds: 100);

        break;
      default:
        at453742793 = const Duration(milliseconds: 250);
    }
    return at453742793;
  }

  @override
  void ikv1015924497(Map<String, dynamic> zdn105297556) {
    _aq709250808 =
        zdn105297556['overrideUserConfig'] as bool? ?? bey208388894;

    _ayc202704018 = zdn105297556['maskingColor'] as String? ?? _ayc202704018;
    _lho381317945 = zdn105297556['showLocalLogs'] as bool? ?? _lho381317945;
    _qoq995565651 = zdn105297556['allowLocalLogs'] as bool? ?? _qoq995565651;
    _a653443688 =
        zdn105297556['imageQualityType'] as int? ?? _a653443688;
    _na157011655 =
        zdn105297556['videoQualityType'] as int? ?? _na157011655;

    _dgt629889063 =
        (zdn105297556['blockedFlutterSDKVersions'] as List<dynamic>?)
                ?.map((p286662668) => p286662668 as String)
                .toList() ??
            _dgt629889063;
    _x134457122 =
        (zdn105297556['blockedFlutterAppVersions'] as List<dynamic>?)
                ?.map((p286662668) => p286662668 as String)
                .toList() ??
            _x134457122;
    _qys622315728 =
        (zdn105297556['blockedNativeSDKVersions'] as List<dynamic>?)
                ?.map((p286662668) => p286662668 as String)
                .toList() ??
            _qys622315728;
    _ahl386269759 = (zdn105297556['disableScreenTracking'] as List<dynamic>?)
            ?.map((p286662668) => p286662668 as String)
            .toList() ??
        _ahl386269759;
    _h981467946 = (zdn105297556['screensMasking'] as List<dynamic>?)
            ?.map((p286662668) => p286662668 as String)
            .toList() ??
        _h981467946;
    _eyc534558439 = zdn105297556['appVersion'] as String? ?? _eyc534558439;
    ma721003787();
  }

  Future<void> od893242101(
    V730200298 l963935499,
  ) async {
    _aq709250808 =
        l963935499.bey208388894 ?? bey208388894;
    _dgt629889063 =
        l963935499.wip366136418 ??
            _dgt629889063;
    _x134457122 =
        l963935499.h414529054 ??
            _x134457122;
    _qys622315728 =
        l963935499.z746704692 ??
            _qys622315728;
    _ayc202704018 =
        l963935499.upo938089178 ?? _ayc202704018;
    _lho381317945 =
        l963935499.t1016188976 ?? _lho381317945;
    _qoq995565651 =
        l963935499.l531796103 ?? _qoq995565651;
    _a653443688 =
        l963935499.amp178815404 ?? _a653443688;
    _na157011655 =
        l963935499.y529815712 ?? _na157011655;

    _ahl386269759 =
        l963935499.t834937422 ??
            _ahl386269759;
    _h981467946 =
        l963935499.g465385671 ?? _h981467946;
    _eyc534558439 = l963935499.i702146581 ?? _eyc534558439;
    _lr761427401 =
        l963935499.sv13557312 ?? _lr761427401;
    await ma721003787();
  }
}
