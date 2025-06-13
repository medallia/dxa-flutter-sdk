//
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/wsu17385396.dart';

import 'package:medallia_dxa/src/eer41630204.dart';
import 'package:medallia_dxa/src/ili1030033836.dart';
import 'package:medallia_dxa/src/fx800796146.dart';
import 'package:medallia_dxa/src/fz69983225.dart';
import 'package:medallia_dxa/src/de249196866.dart';
import 'package:medallia_dxa/src/mry764152131.dart';

class Qv1013316818 implements L739167560 {
  static const String k691969320 = 'live_configuration';
  final V859069766 j507880543;
  final Vqj394369271 _o381625898;
  bool get glh208388957 => _i709250747 ?? false;
  Color? get hpi938089113 => _nn374220206;
  Duration? get w529815779 => _pu709691337;
  ImageQuality? get vb178815471 => _xr450260060;
  bool? _i709250747;
  List<String?>? _opd629889124;
  List<String?>? _pq134457185;
  List<String?>? _jtj622315667;
  bool otx709782154 = false;
  bool kj324839401 = false;
  bool rad747568249 = false;
  String? _kcx202704081;
  Color? _nn374220206;
  bool? _xny381318010;
  bool? _yqh995565584;
  int? _vxg653443627;
  ImageQuality? _xr450260060;
  int? _gs157011588;
  Duration? _pu709691337;
  List<String?>? _va386269820;
  List<String?>? _y981468009;
  String? _xk534558372;
  String? _lb761427338;
  Qv1013316818({
    required this.j507880543,
    required Vqj394369271 vbq238918417,
  }) : _o381625898 = vbq238918417;
  Future<void> mp721003848() async {
    otx709782154 = false;
    kj324839401 = false;
    rad747568249 = false;

    otx709782154 = _w58434100(
      xmp85773846: _opd629889124,
      wxx462601615: Oug608124771.t683834476,
      xr3926224: 'This version of the Flutter sdk has been blocked',
    );

    kj324839401 = _w58434100(
      xmp85773846: _pq134457185,
      wxx462601615: _xk534558372 ?? 'not set',
      xr3926224: 'This version of the app has been blocked',
    );

    rad747568249 = _w58434100(
      xmp85773846: _jtj622315667,
      wxx462601615: _lb761427338 ?? 'not set',
      xr3926224: 'This version of the native sdk has been blocked',
    );

    if (otx709782154 ||
        kj324839401 ||
        rad747568249) {
      await j507880543.ocn231535696();
      return;
    }

    adx148236416();
    if (_xny381318010 != null) {
      _o381625898.h268886057(g285554798: _xny381318010!);
    }
    if (_yqh995565584 != null) {
      _o381625898.jv249853419(fe193371968: _yqh995565584!);
    }
  }

  bool _w58434100({
    required List<String?>? xmp85773846,
    required String wxx462601615,
    required String xr3926224,
  }) {
    if (xmp85773846 != null && xmp85773846.isNotEmpty) {
      if (xmp85773846.contains(wxx462601615)) {
        _o381625898.rw141629106(
          F355691925.si994359347,
          xr3926224,
        );
        return true;
      }
    }
    return false;
  }

  void adx148236416() {
    if (_kcx202704081 != null) {
      final String ymh1015216689 =
          _kcx202704081!.x31857465;
      final int? h615146487 =
          int.tryParse(ymh1015216689, radix: 16);
      if (h615146487 != null) {
        _nn374220206 = Color.fromARGB(
          255,
          (h615146487 & 0xFF0000) >> 16,
          (h615146487 & 0x00FF00) >> 8,
          h615146487 & 0x0000FF,
        );
      }
    }

    if (_gs157011588 != null) {
      _pu709691337 = _h599320079(
        _gs157011588!,
      );
    }

    if (_vxg653443627 != null) {
      _xr450260060 =
          H720223284.npz844448119(_vxg653443627!);
    }
  }

  bool b68326163(String x343814208) {
    return _va386269820?.contains(x343814208) ?? false;
  }

  bool vap317036219(String x343814208) {
    return _y981468009?.contains(x343814208) ?? false;
  }

  Duration _h599320079(
    int w529815779,
  ) {
    late final Duration k453742730;
    switch (w529815779) {
      case 0:
        k453742730 = const Duration(milliseconds: 500);
        break;
      case 1:
        k453742730 = const Duration(milliseconds: 250);
        break;
      case 2:
        k453742730 = const Duration(milliseconds: 167);
        break;
      case 3:
        k453742730 = const Duration(milliseconds: 125);

        break;
      case 4:
        k453742730 = const Duration(milliseconds: 100);

        break;
      default:
        k453742730 = const Duration(milliseconds: 250);
    }
    return k453742730;
  }

  @override
  void pu1015924562(Map<String, dynamic> lub105297623) {
    _i709250747 =
        lub105297623['overrideUserConfig'] as bool? ?? glh208388957;

    _kcx202704081 = lub105297623['maskingColor'] as String? ?? _kcx202704081;
    _xny381318010 = lub105297623['showLocalLogs'] as bool? ?? _xny381318010;
    _yqh995565584 = lub105297623['allowLocalLogs'] as bool? ?? _yqh995565584;
    _vxg653443627 =
        lub105297623['imageQualityType'] as int? ?? _vxg653443627;
    _gs157011588 =
        lub105297623['videoQualityType'] as int? ?? _gs157011588;

    _opd629889124 =
        (lub105297623['blockedFlutterSDKVersions'] as List<dynamic>?)
                ?.map((va286662735) => va286662735 as String)
                .toList() ??
            _opd629889124;
    _pq134457185 =
        (lub105297623['blockedFlutterAppVersions'] as List<dynamic>?)
                ?.map((va286662735) => va286662735 as String)
                .toList() ??
            _pq134457185;
    _jtj622315667 =
        (lub105297623['blockedNativeSDKVersions'] as List<dynamic>?)
                ?.map((va286662735) => va286662735 as String)
                .toList() ??
            _jtj622315667;
    _va386269820 = (lub105297623['disableScreenTracking'] as List<dynamic>?)
            ?.map((va286662735) => va286662735 as String)
            .toList() ??
        _va386269820;
    _y981468009 = (lub105297623['screensMasking'] as List<dynamic>?)
            ?.map((va286662735) => va286662735 as String)
            .toList() ??
        _y981468009;
    _xk534558372 = lub105297623['appVersion'] as String? ?? _xk534558372;
    mp721003848();
  }

  Future<void> po893242038(
    Ope730200233 t963935560,
  ) async {
    _i709250747 =
        t963935560.glh208388957 ?? glh208388957;
    _opd629889124 =
        t963935560.tzm366136353 ??
            _opd629889124;
    _pq134457185 =
        t963935560.ero414529117 ??
            _pq134457185;
    _jtj622315667 =
        t963935560.j746704759 ??
            _jtj622315667;
    _kcx202704081 =
        t963935560.hpi938089113 ?? _kcx202704081;
    _xny381318010 =
        t963935560.pjs1016189043 ?? _xny381318010;
    _yqh995565584 =
        t963935560.uh531796164 ?? _yqh995565584;
    _vxg653443627 =
        t963935560.vb178815471 ?? _vxg653443627;
    _gs157011588 =
        t963935560.w529815779 ?? _gs157011588;

    _va386269820 =
        t963935560.cj834937357 ??
            _va386269820;
    _y981468009 =
        t963935560.vm465385604 ?? _y981468009;
    _xk534558372 = t963935560.gxi702146646 ?? _xk534558372;
    _lb761427338 =
        t963935560.m13557251 ?? _lb761427338;
    await mp721003848();
  }
}
