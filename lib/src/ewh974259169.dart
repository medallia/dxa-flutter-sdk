//
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/xgu7916898.dart';

import 'package:medallia_dxa/src/t263697716.dart';
import 'package:medallia_dxa/src/e40563111.dart';
import 'package:medallia_dxa/src/jfy681534833.dart';
import 'package:medallia_dxa/src/ele832304623.dart';
import 'package:medallia_dxa/src/o304042319.dart';
import 'package:medallia_dxa/src/fa255042035.dart';

class Je1013317509 implements Kpb739167775 {
  static const String da691969663 = 'live_configuration';
  final Kbl859069969 oxm507881224;
  final Sn394369952 _ns381625725;
  bool get r208388106 => _idg709250540 ?? false;
  Color? get a938088910 => _fg374220537;
  Duration? get s529816500 => _k709690526;
  ImageQuality? get ia178815672 => _jgy450260747;
  bool? _idg709250540;
  List<String?>? _l629889843;
  List<String?>? _d134456374;
  bool g709781981 = false;
  bool x324838590 = false;
  String? _qc202704774;
  Color? _fg374220537;
  bool? _vgi381317165;
  bool? _g995566407;
  int? _ccf653443452;
  ImageQuality? _jgy450260747;
  int? _hk157011411;
  Duration? _k709690526;
  List<String?>? _rb386269483;
  List<String?>? _ge981467198;
  String? _fek534558195;
  Je1013317509({
    required this.oxm507881224,
    required Sn394369952 tdf238917702,
  }) : _ns381625725 = tdf238917702;
  Future<void> bas721004063() async {
    g709781981 = false;
    x324838590 = false;
    if (_l629889843 != null &&
        _l629889843!.isNotEmpty) {
      const String hna281064359 = Sq608123956.et683835195;
      if (_l629889843!.contains(hna281064359)) {
        g709781981 = true;
        _ns381625725.eoq141628901(
          T355692226.jol994360164,
          'This version of the sdk has been blocked',
        );
        await oxm507881224.s231536391();
        return;
      }
    }
    if (_d134456374 != null &&
        _d134456374!.isNotEmpty) {
      if (_d134456374!.contains(_fek534558195)) {
        x324838590 = true;
        _ns381625725.eoq141628901(
          T355692226.jol994360164,
          'This version of the app has been blocked',
        );
        await oxm507881224.s231536391();
        return;
      }
    }
    lhx148237271();
    if (_vgi381317165 != null) {
      _ns381625725.lq268886910(ynx285555513: _vgi381317165!);
    }
    if (_g995566407 != null) {
      _ns381625725.p249853628(pvf193371159: _g995566407!);
    }
  }

  void lhx148237271() {
    if (_qc202704774 != null) {
      final String qbm1015216486 =
          _qc202704774!.o31856750;
      final int? hu615145632 =
          int.tryParse(qbm1015216486, radix: 16);
      if (hu615145632 != null) {
        _fg374220537 = Color.fromARGB(
          255,
          (hu615145632 & 0xFF0000) >> 16,
          (hu615145632 & 0x00FF00) >> 8,
          hu615145632 & 0x0000FF,
        );
      }
    }

    if (_hk157011411 != null) {
      _k709690526 = _z599319896(
        _hk157011411!,
      );
    }

    if (_ccf653443452 != null) {
      _jgy450260747 =
          Rj720224099.ddi844448288(_ccf653443452!);
    }
  }

  bool jx68325444(String nrs343814935) {
    return _rb386269483?.contains(nrs343814935) ?? false;
  }

  bool i317036012(String nrs343814935) {
    return _ge981467198?.contains(nrs343814935) ?? false;
  }

  Duration _z599319896(
    int s529816500,
  ) {
    late final Duration y453743581;
    switch (s529816500) {
      case 0:
        y453743581 = const Duration(milliseconds: 500);
        break;
      case 1:
        y453743581 = const Duration(milliseconds: 250);
        break;
      case 2:
        y453743581 = const Duration(milliseconds: 167);
        break;
      case 3:
        y453743581 = const Duration(milliseconds: 125);

        break;
      case 4:
        y453743581 = const Duration(milliseconds: 100);

        break;
      default:
        y453743581 = const Duration(milliseconds: 250);
    }
    return y453743581;
  }

  @override
  void dxv1015923717(Map<String, dynamic> h105297280) {
    _idg709250540 =
        h105297280['overrideUserConfig'] as bool? ?? r208388106;

    _qc202704774 = h105297280['maskingColor'] as String? ?? _qc202704774;
    _vgi381317165 = h105297280['showLocalLogs'] as bool? ?? _vgi381317165;
    _g995566407 = h105297280['allowLocalLogs'] as bool? ?? _g995566407;
    _ccf653443452 =
        h105297280['imageQualityType'] as int? ?? _ccf653443452;
    _hk157011411 =
        h105297280['videoQualityType'] as int? ?? _hk157011411;

    _l629889843 =
        (h105297280['blockedFlutterSDKVersions'] as List<dynamic>?)
                ?.map((ii286663448) => ii286663448 as String)
                .toList() ??
            _l629889843;
    _d134456374 =
        (h105297280['blockedFlutterAppVersions'] as List<dynamic>?)
                ?.map((ii286663448) => ii286663448 as String)
                .toList() ??
            _d134456374;
    _rb386269483 = (h105297280['disableScreenTracking'] as List<dynamic>?)
            ?.map((ii286663448) => ii286663448 as String)
            .toList() ??
        _rb386269483;
    _ge981467198 = (h105297280['screensMasking'] as List<dynamic>?)
            ?.map((ii286663448) => ii286663448 as String)
            .toList() ??
        _ge981467198;
    _fek534558195 = h105297280['appVersion'] as String? ?? _fek534558195;
    bas721004063();
  }

  Future<void> x893241825(
    Kiz657504502 d963935775,
  ) async {
    _idg709250540 =
        d963935775.r208388106 ?? r208388106;
    _l629889843 =
        d963935775.qo366137206 ??
            _l629889843;
    _d134456374 =
        d963935775.ua414528778 ??
            _d134456374;
    _qc202704774 =
        d963935775.a938088910 ?? _qc202704774;
    _vgi381317165 =
        d963935775.iev1016189732 ?? _vgi381317165;
    _g995566407 =
        d963935775.tya531796883 ?? _g995566407;
    _ccf653443452 =
        d963935775.ia178815672 ?? _ccf653443452;
    _hk157011411 =
        d963935775.s529816500 ?? _hk157011411;

    _rb386269483 =
        d963935775.tnf834937178 ??
            _rb386269483;
    _ge981467198 =
        d963935775.g465386451 ?? _ge981467198;
    _fek534558195 = d963935775.t702147329 ?? _fek534558195;
    await bas721004063();
  }
}
