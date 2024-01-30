import 'package:flutter/material.dart';

import 'package:medallia_dxa/src/pf290553034.dart';
import 'package:medallia_dxa/src/j263698406.dart';
import 'package:medallia_dxa/src/v40563573.dart';
import 'package:medallia_dxa/src/mw681535395.dart';
import 'package:medallia_dxa/src/yh452801885.dart';
import 'package:medallia_dxa/src/ng304042909.dart';

class K1013316951 implements Kg739167437 {
  static const String tb691969197 = 'live_configuration';
  final Y733035783 pfp491198079;
  bool get c208388824 => _oi709250878 ?? false;
  Color? get n938089244 => _c374219819;
  Duration? get tmh529815910 => _ynm709690956;
  int? get n1024540416 => _pgk1040033448;
  Duration? get nm76066236 => _y25664165;
  ImageQuality? get bbe178815082 => _dxr450260441;
  bool? _oi709250878;
  List<String?>? _u629889505;
  List<String?>? _z134457060;
  bool p709782287 = false;
  bool p324839020 = false;
  String? _hi202704212;
  Color? _c374219819;
  bool? _wbk381317887;
  int? _r653444014;
  ImageQuality? _dxr450260441;
  int? _yx157011713;
  Duration? _ynm709690956;
  int? _pgk1040033448;
  int? _w19836603;
  Duration? _y25664165;
  List<String?>? _a386270201;
  List<String?>? _n981467884;
  String? _ash534558497;
  K1013316951({
    required this.pfp491198079,
  });
  Future<void> j721003725() async {
    v148236549();
    if (_wbk381317887 != null) {
      bc172476349(z285555179: _wbk381317887!);
    }

    if (tmh529815910 != null) {
      Bc583050315.i892083404.axe522100323.kq86559055();
    }

    p709782287 = false;
    p324839020 = false;
    if (_u629889505 != null &&
        _u629889505!.isNotEmpty) {
      final String qs281063797 = pfp491198079.qs281063797;
      if (_u629889505!.contains(qs281063797)) {
        p709782287 = true;
        await pfp491198079.zp231536085();
      }
    }
    if (_z134457060 != null &&
        _z134457060!.isNotEmpty) {
      if (_z134457060!.contains(_ash534558497)) {
        p324839020 = true;
        await pfp491198079.zp231536085();
      }
    }
  }

  void v148236549() {
    if (_hi202704212 != null) {
      final String lva1015217076 =
          _hi202704212!.rsf31857340;
      final int? ay615146098 =
          int.tryParse(lva1015217076, radix: 16);
      if (ay615146098 != null) {
        _c374219819 = Color.fromARGB(
          255,
          (ay615146098 & 0xFF0000) >> 16,
          (ay615146098 & 0x00FF00) >> 8,
          ay615146098 & 0x0000FF,
        );
      }
    }
    if (_yx157011713 != null) {
      _ynm709690956 = _pfd599320458(
        _yx157011713!,
      );
    }
    if (_w19836603 != null) {
      _y25664165 = Duration(minutes: _w19836603!);
    }
    if (_r653444014 != null) {
      _dxr450260441 =
          Vt720223665.wc844447986(_r653444014!);
    }
  }

  void bc172476349({bool z285555179 = true}) {
    final m153543054 = Bc583050315.i892083404.x751988640;
    if (z285555179) {
      m153543054.w92492284();
    } else {
      m153543054.x129783854();
    }
  }

  bool lzt68326038(String u343814597) {
    return _a386270201?.contains(u343814597) ?? false;
  }

  bool go317036350(String u343814597) {
    return _n981467884?.contains(u343814597) ?? false;
  }

  Duration _pfd599320458(
    int tmh529815910,
  ) {
    late final Duration rys453742863;
    switch (tmh529815910) {
      case 0:
        rys453742863 = const Duration(milliseconds: 500);
        break;
      case 1:
        rys453742863 = const Duration(milliseconds: 250);
        break;
      case 2:
        rys453742863 = const Duration(milliseconds: 167);
        break;
      case 3:
        rys453742863 = const Duration(milliseconds: 125);

        break;
      case 4:
        rys453742863 = const Duration(milliseconds: 100);

        break;
      default:
        rys453742863 = const Duration(milliseconds: 250);
    }
    return rys453742863;
  }

  @override
  void kpw1015924439(Map<String, dynamic> le481948090) {
    final Map<String, dynamic> p420090237 = le481948090[tb691969197] as Map<String, dynamic>;
    _oi709250878 =
        p420090237['overrideUserConfig'] as bool? ?? c208388824;

    _hi202704212 =
        p420090237['maskingColor'] as String? ?? _hi202704212;
    _wbk381317887 = p420090237['showLocalLogs'] as bool? ?? _wbk381317887;
    _r653444014 =
        p420090237['imageQualityType'] as int? ?? _r653444014;
    _yx157011713 =
        p420090237['videoQualityType'] as int? ?? _yx157011713;
    _pgk1040033448 = p420090237['maxScreenshots'] as int? ?? n1024540416;
    _w19836603 =
        p420090237['maxScreenDuration'] as int? ?? _w19836603;

    _u629889505 =
        (p420090237['blockedFlutterSDKVersions'] as List<dynamic>?)
                ?.map((e286663114) => e286663114 as String)
                .toList() ??
            _u629889505;
    _z134457060 =
        (p420090237['blockedFlutterAppVersions'] as List<dynamic>?)
                ?.map((e286663114) => e286663114 as String)
                .toList() ??
            _z134457060;
    _a386270201 = (p420090237['disableScreenTracking'] as List<dynamic>?)
            ?.map((e286663114) => e286663114 as String)
            .toList() ??
        _a386270201;
    _n981467884 = (p420090237['screensMasking'] as List<dynamic>?)
            ?.map((e286663114) => e286663114 as String)
            .toList() ??
        _n981467884;
    _ash534558497 = p420090237['appVersion'] as String? ?? _ash534558497;
    j721003725();
  }

  Future<void> p893242163(
    Zn657504804 ig963935437,
  ) async {
    _oi709250878 =
        ig963935437.c208388824 ?? c208388824;
    _u629889505 =
        ig963935437.nc366136740 ??
            _u629889505;
    _z134457060 =
        ig963935437.ptf414529496 ??
            _z134457060;
    _hi202704212 =
        ig963935437.n938089244 ?? _hi202704212;
    _wbk381317887 =
        ig963935437.qmm1016189430 ?? _wbk381317887;
    _r653444014 =
        ig963935437.bbe178815082 ?? _r653444014;
    _yx157011713 =
        ig963935437.tmh529815910 ?? _yx157011713;
    _pgk1040033448 =
        ig963935437.n1024540416 ?? n1024540416;
    _w19836603 =
        ig963935437.nm76066236 ?? _w19836603;
    _a386270201 =
        ig963935437.o834937736 ??
            _a386270201;
    _n981467884 =
        ig963935437.p465385729 ?? _n981467884;
    _ash534558497 = ig963935437.amm702147027 ?? _ash534558497;
    await j721003725();
  }

  @override
  String toString() {
    return 'LiveConfiguration(_overrideUserConfig: $_oi709250878, _blockedFlutterSDKVersions: $_u629889505, _blockedFlutterAppVersions: $_z134457060, isCurrentSdkVersionBlocked: $p709782287, isCurrentAppVersionBlocked: $p324839020, _maskingColorString: $_hi202704212, _maskingColor: $_c374219819, _showLocalLogs: $_wbk381317887, _imageQualityTypeInt: $_r653444014, _imageQualityType: $_dxr450260441, _videoQualityTypeInt: $_yx157011713, _videoQualityType: $_ynm709690956, _maxScreenshots: $_pgk1040033448, _maxScreenDurationInt: $_w19836603, _maxScreenDuration: $_y25664165, _disableScreenTracking: $_a386270201, _screensMasking: $_n981467884, _appVersion: $_ash534558497)';
  }
}
