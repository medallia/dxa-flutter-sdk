//
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/jhb17385158.dart';

import 'package:medallia_dxa/src/tpi41629838.dart';
import 'package:medallia_dxa/src/ms1030033630.dart';
import 'package:medallia_dxa/src/kua800795776.dart';
import 'package:medallia_dxa/src/n69982859.dart';
import 'package:medallia_dxa/src/kmb249196592.dart';
import 'package:medallia_dxa/src/xx764151857.dart';

class Jkq1013317024 implements Zf739167290 {
  static const String km691969114 = 'live_configuration';
  final Rtv859069492 nm507880749;
  final Cqd394369413 _j381626200;
  bool get ma208388655 => _rmc709251017 ?? false;
  Color? get jmg938089451 => _xz374219996;
  Duration? get eed529815953 => _fag709691067;
  ImageQuality? get sa178815133 => _kv450260270;
  bool? _rmc709251017;
  List<String?>? _qv629889302;
  List<String?>? _blv134456851;
  List<String?>? _ra622316001;
  bool dkc709782520 = false;
  bool yvu324839067 = false;
  bool m747568395 = false;
  String? _so202704291;
  Color? _xz374219996;
  bool? _nv381317640;
  bool? _hrt995565922;
  int? _v653443929;
  ImageQuality? _kv450260270;
  int? _m157011958;
  Duration? _fag709691067;
  List<String?>? _snk386269966;
  List<String?>? _pco981467675;
  String? _mza534558678;
  String? _bak761427192;
  Jkq1013317024({
    required this.nm507880749,
    required Cqd394369413 d238918243,
  }) : _j381626200 = d238918243;
  Future<void> zsp721003578() async {
    dkc709782520 = false;
    yvu324839067 = false;
    m747568395 = false;

    dkc709782520 = _exk58434374(
      jev85774180: _qv629889302,
      lij462601469: Od608124433.gw683834654,
      ycd3926434: 'This version of the Flutter sdk has been blocked',
    );

    yvu324839067 = _exk58434374(
      jev85774180: _blv134456851,
      lij462601469: _mza534558678 ?? 'not set',
      ycd3926434: 'This version of the app has been blocked',
    );

    m747568395 = _exk58434374(
      jev85774180: _ra622316001,
      lij462601469: _bak761427192 ?? 'not set',
      ycd3926434: 'This version of the native sdk has been blocked',
    );

    if (dkc709782520 ||
        yvu324839067 ||
        m747568395) {
      await nm507880749.hh231535906();
      return;
    }

    csz148236786();
    if (_nv381317640 != null) {
      _j381626200.cy268886363(iao285554972: _nv381317640!);
    }
    if (_hrt995565922 != null) {
      _j381626200.bm249853081(dzo193371698: _hrt995565922!);
    }
  }

  bool _exk58434374({
    required List<String?>? jev85774180,
    required String lij462601469,
    required String ycd3926434,
  }) {
    if (jev85774180 != null && jev85774180.isNotEmpty) {
      if (jev85774180.contains(lij462601469)) {
        _j381626200.n141629376(
          Gs355691751.rzr994359617,
          ycd3926434,
        );
        return true;
      }
    }
    return false;
  }

  void csz148236786() {
    if (_so202704291 != null) {
      final String pck1015216963 =
          _so202704291!.rzw31857227;
      final int? voo615146117 =
          int.tryParse(pck1015216963, radix: 16);
      if (voo615146117 != null) {
        _xz374219996 = Color.fromARGB(
          255,
          (voo615146117 & 0xFF0000) >> 16,
          (voo615146117 & 0x00FF00) >> 8,
          voo615146117 & 0x0000FF,
        );
      }
    }

    if (_m157011958 != null) {
      _fag709691067 = _oj599320445(
        _m157011958!,
      );
    }

    if (_v653443929 != null) {
      _kv450260270 =
          Y720223558.ka844447749(_v653443929!);
    }
  }

  bool w68325985(String j343814450) {
    return _snk386269966?.contains(j343814450) ?? false;
  }

  bool ei317036489(String j343814450) {
    return _pco981467675?.contains(j343814450) ?? false;
  }

  Duration _oj599320445(
    int eed529815953,
  ) {
    late final Duration sz453743096;
    switch (eed529815953) {
      case 0:
        sz453743096 = const Duration(milliseconds: 500);
        break;
      case 1:
        sz453743096 = const Duration(milliseconds: 250);
        break;
      case 2:
        sz453743096 = const Duration(milliseconds: 167);
        break;
      case 3:
        sz453743096 = const Duration(milliseconds: 125);

        break;
      case 4:
        sz453743096 = const Duration(milliseconds: 100);

        break;
      default:
        sz453743096 = const Duration(milliseconds: 250);
    }
    return sz453743096;
  }

  @override
  void aa1015924256(Map<String, dynamic> ts105297829) {
    _rmc709251017 =
        ts105297829['overrideUserConfig'] as bool? ?? ma208388655;

    _so202704291 = ts105297829['maskingColor'] as String? ?? _so202704291;
    _nv381317640 = ts105297829['showLocalLogs'] as bool? ?? _nv381317640;
    _hrt995565922 = ts105297829['allowLocalLogs'] as bool? ?? _hrt995565922;
    _v653443929 =
        ts105297829['imageQualityType'] as int? ?? _v653443929;
    _m157011958 =
        ts105297829['videoQualityType'] as int? ?? _m157011958;

    _qv629889302 =
        (ts105297829['blockedFlutterSDKVersions'] as List<dynamic>?)
                ?.map((q286662973) => q286662973 as String)
                .toList() ??
            _qv629889302;
    _blv134456851 =
        (ts105297829['blockedFlutterAppVersions'] as List<dynamic>?)
                ?.map((q286662973) => q286662973 as String)
                .toList() ??
            _blv134456851;
    _ra622316001 =
        (ts105297829['blockedNativeSDKVersions'] as List<dynamic>?)
                ?.map((q286662973) => q286662973 as String)
                .toList() ??
            _ra622316001;
    _snk386269966 = (ts105297829['disableScreenTracking'] as List<dynamic>?)
            ?.map((q286662973) => q286662973 as String)
            .toList() ??
        _snk386269966;
    _pco981467675 = (ts105297829['screensMasking'] as List<dynamic>?)
            ?.map((q286662973) => q286662973 as String)
            .toList() ??
        _pco981467675;
    _mza534558678 = ts105297829['appVersion'] as String? ?? _mza534558678;
    zsp721003578();
  }

  Future<void> f893242308(
    W730200539 zzt963935290,
  ) async {
    _rmc709251017 =
        zzt963935290.ma208388655 ?? ma208388655;
    _qv629889302 =
        zzt963935290.igz366136659 ??
            _qv629889302;
    _blv134456851 =
        zzt963935290.wiv414529327 ??
            _blv134456851;
    _ra622316001 =
        zzt963935290.rg746704389 ??
            _ra622316001;
    _so202704291 =
        zzt963935290.jmg938089451 ?? _so202704291;
    _nv381317640 =
        zzt963935290.qol1016189185 ?? _nv381317640;
    _hrt995565922 =
        zzt963935290.tby531796406 ?? _hrt995565922;
    _v653443929 =
        zzt963935290.sa178815133 ?? _v653443929;
    _m157011958 =
        zzt963935290.eed529815953 ?? _m157011958;

    _snk386269966 =
        zzt963935290.ce834937727 ??
            _snk386269966;
    _pco981467675 =
        zzt963935290.b465385974 ?? _pco981467675;
    _mza534558678 = zzt963935290.p702146852 ?? _mza534558678;
    _bak761427192 =
        zzt963935290.k13557617 ?? _bak761427192;
    await zsp721003578();
  }
}
