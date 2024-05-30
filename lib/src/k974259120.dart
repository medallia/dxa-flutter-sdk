//
import 'package:flutter/material.dart';

import 'package:medallia_dxa/src/ofi290553417.dart';
import 'package:medallia_dxa/src/mj263697765.dart';
import 'package:medallia_dxa/src/th40563190.dart';
import 'package:medallia_dxa/src/t681534752.dart';
import 'package:medallia_dxa/src/l452802526.dart';
import 'package:medallia_dxa/src/u304042270.dart';
import 'package:medallia_dxa/src/e255041954.dart';

class Zg1013317588 implements R739167822 {
  static const String jty691969582 = 'live_configuration';
  final Bx733036420 d491197692;
  final Kq394370033 _fb381625644;
  bool get wej208388187 => _jjq709250493 ?? false;
  Color? get cba938088863 => _okd374220456;
  Duration? get n529816549 => _v709690575;
  int? get r1024540035 => _jun1040032811;
  Duration? get ly76066623 => _ove25663526;
  ImageQuality? get zfw178815721 => _yph450260826;
  bool? _jjq709250493;
  List<String?>? _rgm629889890;
  List<String?>? _kcr134456423;
  bool l709781900 = false;
  bool ir324838639 = false;
  String? _i202704855;
  Color? _okd374220456;
  bool? _qcu381317244;
  bool? _o995566358;
  int? _a653443373;
  ImageQuality? _yph450260826;
  int? _w157011330;
  Duration? _v709690575;
  int? _jun1040032811;
  int? _krh19835960;
  Duration? _ove25663526;
  List<String?>? _s386269562;
  List<String?>? _g981467247;
  String? _pof534558114;
  Zg1013317588({
    required this.d491197692,
    required Kq394370033 pqt238917655,
  }) : _fb381625644 = pqt238917655;
  Future<void> dyd721004110() async {
    fzl148237190();
    if (_qcu381317244 != null) {
      _fb381625644.m268886831(w285555560: _qcu381317244!);
    }
    if (_o995566358 != null) {
      _fb381625644.iya249853677(n193371206: _o995566358!);
    }

    if (n529816549 != null) {
      Wx583050952.opf892083791.m522099936.jj86559692();
    }

    l709781900 = false;
    ir324838639 = false;
    if (_rgm629889890 != null &&
        _rgm629889890!.isNotEmpty) {
      final String hwy281064438 = d491197692.hwy281064438;
      if (_rgm629889890!.contains(hwy281064438)) {
        l709781900 = true;
        _fb381625644.fbr141628852(
          Df355692179.ie994360117,
          'This version of the sdk has been blocked',
        );
        await d491197692.kyn231536470();
      }
    }
    if (_kcr134456423 != null &&
        _kcr134456423!.isNotEmpty) {
      if (_kcr134456423!.contains(_pof534558114)) {
        ir324838639 = true;
        _fb381625644.fbr141628852(
          Df355692179.ie994360117,
          'This version of the app has been blocked',
        );
        await d491197692.kyn231536470();
      }
    }
  }

  void fzl148237190() {
    if (_i202704855 != null) {
      final String v1015216439 =
          _i202704855!.mjo31856703;
      final int? vr615145713 =
          int.tryParse(v1015216439, radix: 16);
      if (vr615145713 != null) {
        _okd374220456 = Color.fromARGB(
          255,
          (vr615145713 & 0xFF0000) >> 16,
          (vr615145713 & 0x00FF00) >> 8,
          vr615145713 & 0x0000FF,
        );
      }
    }
    if (_w157011330 != null) {
      _v709690575 = _q599319817(
        _w157011330!,
      );
    }
    if (_krh19835960 != null) {
      _ove25663526 = Duration(minutes: _krh19835960!);
    }
    if (_a653443373 != null) {
      _yph450260826 =
          O720224050.y844448369(_a653443373!);
    }
  }

  bool nvm68325397(String p343814982) {
    return _s386269562?.contains(p343814982) ?? false;
  }

  bool eo317035965(String p343814982) {
    return _g981467247?.contains(p343814982) ?? false;
  }

  Duration _q599319817(
    int n529816549,
  ) {
    late final Duration e453743500;
    switch (n529816549) {
      case 0:
        e453743500 = const Duration(milliseconds: 500);
        break;
      case 1:
        e453743500 = const Duration(milliseconds: 250);
        break;
      case 2:
        e453743500 = const Duration(milliseconds: 167);
        break;
      case 3:
        e453743500 = const Duration(milliseconds: 125);

        break;
      case 4:
        e453743500 = const Duration(milliseconds: 100);

        break;
      default:
        e453743500 = const Duration(milliseconds: 250);
    }
    return e453743500;
  }

  @override
  void vr1015923796(Map<String, dynamic> l105297361) {
    _jjq709250493 =
        l105297361['overrideUserConfig'] as bool? ?? wej208388187;

    _i202704855 = l105297361['maskingColor'] as String? ?? _i202704855;
    _qcu381317244 = l105297361['showLocalLogs'] as bool? ?? _qcu381317244;
    _o995566358 = l105297361['allowLocalLogs'] as bool? ?? _o995566358;
    _a653443373 =
        l105297361['imageQualityType'] as int? ?? _a653443373;
    _w157011330 =
        l105297361['videoQualityType'] as int? ?? _w157011330;
    _jun1040032811 = l105297361['maxScreenshots'] as int? ?? r1024540035;
    _krh19835960 =
        l105297361['maxScreenDuration'] as int? ?? _krh19835960;

    _rgm629889890 =
        (l105297361['blockedFlutterSDKVersions'] as List<dynamic>?)
                ?.map((lv286663497) => lv286663497 as String)
                .toList() ??
            _rgm629889890;
    _kcr134456423 =
        (l105297361['blockedFlutterAppVersions'] as List<dynamic>?)
                ?.map((lv286663497) => lv286663497 as String)
                .toList() ??
            _kcr134456423;
    _s386269562 = (l105297361['disableScreenTracking'] as List<dynamic>?)
            ?.map((lv286663497) => lv286663497 as String)
            .toList() ??
        _s386269562;
    _g981467247 = (l105297361['screensMasking'] as List<dynamic>?)
            ?.map((lv286663497) => lv286663497 as String)
            .toList() ??
        _g981467247;
    _pof534558114 = l105297361['appVersion'] as String? ?? _pof534558114;
    dyd721004110();
  }

  Future<void> vl893241776(
    Kma657504423 oa963935822,
  ) async {
    _jjq709250493 =
        oa963935822.wej208388187 ?? wej208388187;
    _rgm629889890 =
        oa963935822.lec366137127 ??
            _rgm629889890;
    _kcr134456423 =
        oa963935822.hq414528859 ??
            _kcr134456423;
    _i202704855 =
        oa963935822.cba938088863 ?? _i202704855;
    _qcu381317244 =
        oa963935822.lg1016189813 ?? _qcu381317244;
    _o995566358 =
        oa963935822.mu531796930 ?? _o995566358;
    _a653443373 =
        oa963935822.zfw178815721 ?? _a653443373;
    _w157011330 =
        oa963935822.n529816549 ?? _w157011330;
    _jun1040032811 =
        oa963935822.r1024540035 ?? r1024540035;
    _krh19835960 =
        oa963935822.ly76066623 ?? _krh19835960;
    _s386269562 =
        oa963935822.yqm834937099 ??
            _s386269562;
    _g981467247 =
        oa963935822.mf465386370 ?? _g981467247;
    _pof534558114 = oa963935822.qn702147408 ?? _pof534558114;
    await dyd721004110();
  }
}
