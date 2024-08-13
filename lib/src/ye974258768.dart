//
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/tvh7916755.dart';

import 'package:medallia_dxa/src/on263697541.dart';
import 'package:medallia_dxa/src/ol40562710.dart';
import 'package:medallia_dxa/src/hd681534656.dart';
import 'package:medallia_dxa/src/qqu832304222.dart';
import 'package:medallia_dxa/src/j304042238.dart';
import 'package:medallia_dxa/src/ex255041602.dart';

class Jb1013317172 implements Vp739168174 {
  static const String ae691969998 = 'live_configuration';
  final Nw859070368 jm507881145;
  final Bcw394369553 _l381625548;
  bool get g208388539 => _s709250141 ?? false;
  Color? get i938088575 => _llo374220616;
  Duration? get d529816069 => _ax709690671;
  ImageQuality? get qmt178815753 => _cjz450260666;
  bool? _s709250141;
  List<String?>? _neq629889666;
  List<String?>? _dn134456711;
  bool mj709781612 = false;
  bool f324838671 = false;
  String? _zs202704439;
  Color? _llo374220616;
  bool? _ln381317532;
  bool? _uw995566326;
  int? _xwo653443277;
  ImageQuality? _cjz450260666;
  int? _hkh157011042;
  Duration? _ax709690671;
  List<String?>? _l386269338;
  List<String?>? _uts981467535;
  String? _pv534557762;
  Jb1013317172({
    required this.jm507881145,
    required Bcw394369553 fcv238918135,
  }) : _l381625548 = fcv238918135;
  Future<void> dju721004462() async {
    mj709781612 = false;
    f324838671 = false;
    if (_neq629889666 != null &&
        _neq629889666!.isNotEmpty) {
      const String fgf281063958 = Gru608124293.nl683835018;
      if (_neq629889666!.contains(fgf281063958)) {
        mj709781612 = true;
        _l381625548.r141628500(
          Ym355692403.yy994360021,
          'This version of the sdk has been blocked',
        );
        await jm507881145.m231536310();
        return;
      }
    }
    if (_dn134456711 != null &&
        _dn134456711!.isNotEmpty) {
      if (_dn134456711!.contains(_pv534557762)) {
        f324838671 = true;
        _l381625548.r141628500(
          Ym355692403.yy994360021,
          'This version of the app has been blocked',
        );
        await jm507881145.m231536310();
        return;
      }
    }
    s148236902();
    if (_ln381317532 != null) {
      _l381625548.wqg268886735(m285555336: _ln381317532!);
    }
    if (_uw995566326 != null) {
      _l381625548.xz249853709(uh193371558: _uw995566326!);
    }
  }

  void s148236902() {
    if (_zs202704439 != null) {
      final String vbx1015216343 =
          _zs202704439!.w31857119;
      final int? jg615145745 =
          int.tryParse(vbx1015216343, radix: 16);
      if (jg615145745 != null) {
        _llo374220616 = Color.fromARGB(
          255,
          (jg615145745 & 0xFF0000) >> 16,
          (jg615145745 & 0x00FF00) >> 8,
          jg615145745 & 0x0000FF,
        );
      }
    }

    if (_hkh157011042 != null) {
      _ax709690671 = _k599319785(
        _hkh157011042!,
      );
    }

    if (_xwo653443277 != null) {
      _cjz450260666 =
          Avu720223954.afm844448657(_xwo653443277!);
    }
  }

  bool yyo68325877(String l343814822) {
    return _l386269338?.contains(l343814822) ?? false;
  }

  bool c317035613(String l343814822) {
    return _uts981467535?.contains(l343814822) ?? false;
  }

  Duration _k599319785(
    int d529816069,
  ) {
    late final Duration sgp453743212;
    switch (d529816069) {
      case 0:
        sgp453743212 = const Duration(milliseconds: 500);
        break;
      case 1:
        sgp453743212 = const Duration(milliseconds: 250);
        break;
      case 2:
        sgp453743212 = const Duration(milliseconds: 167);
        break;
      case 3:
        sgp453743212 = const Duration(milliseconds: 125);

        break;
      case 4:
        sgp453743212 = const Duration(milliseconds: 100);

        break;
      default:
        sgp453743212 = const Duration(milliseconds: 250);
    }
    return sgp453743212;
  }

  @override
  void att1015924148(Map<String, dynamic> s105296945) {
    _s709250141 =
        s105296945['overrideUserConfig'] as bool? ?? g208388539;

    _zs202704439 = s105296945['maskingColor'] as String? ?? _zs202704439;
    _ln381317532 = s105296945['showLocalLogs'] as bool? ?? _ln381317532;
    _uw995566326 = s105296945['allowLocalLogs'] as bool? ?? _uw995566326;
    _xwo653443277 =
        s105296945['imageQualityType'] as int? ?? _xwo653443277;
    _hkh157011042 =
        s105296945['videoQualityType'] as int? ?? _hkh157011042;

    _neq629889666 =
        (s105296945['blockedFlutterSDKVersions'] as List<dynamic>?)
                ?.map((o286663337) => o286663337 as String)
                .toList() ??
            _neq629889666;
    _dn134456711 =
        (s105296945['blockedFlutterAppVersions'] as List<dynamic>?)
                ?.map((o286663337) => o286663337 as String)
                .toList() ??
            _dn134456711;
    _l386269338 = (s105296945['disableScreenTracking'] as List<dynamic>?)
            ?.map((o286663337) => o286663337 as String)
            .toList() ??
        _l386269338;
    _uts981467535 = (s105296945['screensMasking'] as List<dynamic>?)
            ?.map((o286663337) => o286663337 as String)
            .toList() ??
        _uts981467535;
    _pv534557762 = s105296945['appVersion'] as String? ?? _pv534557762;
    dju721004462();
  }

  Future<void> o893241424(
    T657504583 r963936174,
  ) async {
    _s709250141 =
        r963936174.g208388539 ?? g208388539;
    _neq629889666 =
        r963936174.wdn366137031 ??
            _neq629889666;
    _dn134456711 =
        r963936174.ilw414528699 ??
            _dn134456711;
    _zs202704439 =
        r963936174.i938088575 ?? _zs202704439;
    _ln381317532 =
        r963936174.pr1016189589 ?? _ln381317532;
    _uw995566326 =
        r963936174.qrn531796514 ?? _uw995566326;
    _xwo653443277 =
        r963936174.qmt178815753 ?? _xwo653443277;
    _hkh157011042 =
        r963936174.d529816069 ?? _hkh157011042;

    _l386269338 =
        r963936174.l834937067 ??
            _l386269338;
    _uts981467535 =
        r963936174.f465386082 ?? _uts981467535;
    _pv534557762 = r963936174.pin702147248 ?? _pv534557762;
    await dju721004462();
  }
}
