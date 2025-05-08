//
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/rsd17384820.dart';

import 'package:medallia_dxa/src/wtq41630524.dart';
import 'package:medallia_dxa/src/fa1030034284.dart';
import 'package:medallia_dxa/src/btg800796466.dart';
import 'package:medallia_dxa/src/h69982521.dart';
import 'package:medallia_dxa/src/jn249197442.dart';
import 'package:medallia_dxa/src/vz764152707.dart';

class Lkp1013317138 implements Q739168136 {
  static const String s691970024 = 'live_configuration';
  final R859070342 dk507881119;
  final A394369591 _isp381625578;
  bool get hk208388509 => _q709250171 ?? false;
  Color? get jx938088537 => _bfl374220654;
  Duration? get su529816099 => _l709690633;
  ImageQuality? get wx178815791 => _kgk450260636;
  bool? _q709250171;
  List<String?>? _jna629889700;
  List<String?>? _lqs134456737;
  List<String?>? _zl622316115;
  bool ulx709781578 = false;
  bool kxg324838697 = false;
  bool hwu747568825 = false;
  String? _rxn202704401;
  Color? _bfl374220654;
  bool? _n381317562;
  bool? _sd995566288;
  int? _cip653443307;
  ImageQuality? _kgk450260636;
  int? _xo157011012;
  Duration? _l709690633;
  List<String?>? _k386269372;
  List<String?>? _p981467561;
  String? _inc534557796;
  String? _mo761427786;
  Lkp1013317138({
    required this.dk507881119,
    required A394369591 lf238918097,
  }) : _isp381625578 = lf238918097;
  Future<void> rfb721004424() async {
    ulx709781578 = false;
    kxg324838697 = false;
    hwu747568825 = false;

    ulx709781578 = _qr58433780(
      blj85773526: _jna629889700,
      nbc462602063: Yf608124323.iyx683835052,
      vdf3926544: 'This version of the Flutter sdk has been blocked',
    );

    kxg324838697 = _qr58433780(
      blj85773526: _lqs134456737,
      nbc462602063: _inc534557796 ?? 'not set',
      vdf3926544: 'This version of the app has been blocked',
    );

    hwu747568825 = _qr58433780(
      blj85773526: _zl622316115,
      nbc462602063: _mo761427786 ?? 'not set',
      vdf3926544: 'This version of the native sdk has been blocked',
    );

    if (ulx709781578 ||
        kxg324838697 ||
        hwu747568825) {
      await dk507881119.a231536272();
      return;
    }

    fgm148236864();
    if (_n381317562 != null) {
      _isp381625578.nf268886761(uy285555374: _n381317562!);
    }
    if (_sd995566288 != null) {
      _isp381625578.qz249853739(zbh193371520: _sd995566288!);
    }
  }

  bool _qr58433780({
    required List<String?>? blj85773526,
    required String nbc462602063,
    required String vdf3926544,
  }) {
    if (blj85773526 != null && blj85773526.isNotEmpty) {
      if (blj85773526.contains(nbc462602063)) {
        _isp381625578.tog141628530(
          Qqg355692373.g994360051,
          vdf3926544,
        );
        return true;
      }
    }
    return false;
  }

  void fgm148236864() {
    if (_rxn202704401 != null) {
      final String v1015216369 =
          _rxn202704401!.ab31857145;
      final int? mzx615145783 =
          int.tryParse(v1015216369, radix: 16);
      if (mzx615145783 != null) {
        _bfl374220654 = Color.fromARGB(
          255,
          (mzx615145783 & 0xFF0000) >> 16,
          (mzx615145783 & 0x00FF00) >> 8,
          mzx615145783 & 0x0000FF,
        );
      }
    }

    if (_xo157011012 != null) {
      _l709690633 = _l599319759(
        _xo157011012!,
      );
    }

    if (_cip653443307 != null) {
      _kgk450260636 =
          Mg720223988.pz844448695(_cip653443307!);
    }
  }

  bool dgm68325843(String bt343814784) {
    return _k386269372?.contains(bt343814784) ?? false;
  }

  bool hch317035643(String bt343814784) {
    return _p981467561?.contains(bt343814784) ?? false;
  }

  Duration _l599319759(
    int su529816099,
  ) {
    late final Duration yqi453743178;
    switch (su529816099) {
      case 0:
        yqi453743178 = const Duration(milliseconds: 500);
        break;
      case 1:
        yqi453743178 = const Duration(milliseconds: 250);
        break;
      case 2:
        yqi453743178 = const Duration(milliseconds: 167);
        break;
      case 3:
        yqi453743178 = const Duration(milliseconds: 125);

        break;
      case 4:
        yqi453743178 = const Duration(milliseconds: 100);

        break;
      default:
        yqi453743178 = const Duration(milliseconds: 250);
    }
    return yqi453743178;
  }

  @override
  void jt1015924114(Map<String, dynamic> yw105296919) {
    _q709250171 =
        yw105296919['overrideUserConfig'] as bool? ?? hk208388509;

    _rxn202704401 = yw105296919['maskingColor'] as String? ?? _rxn202704401;
    _n381317562 = yw105296919['showLocalLogs'] as bool? ?? _n381317562;
    _sd995566288 = yw105296919['allowLocalLogs'] as bool? ?? _sd995566288;
    _cip653443307 =
        yw105296919['imageQualityType'] as int? ?? _cip653443307;
    _xo157011012 =
        yw105296919['videoQualityType'] as int? ?? _xo157011012;

    _jna629889700 =
        (yw105296919['blockedFlutterSDKVersions'] as List<dynamic>?)
                ?.map((kp286663311) => kp286663311 as String)
                .toList() ??
            _jna629889700;
    _lqs134456737 =
        (yw105296919['blockedFlutterAppVersions'] as List<dynamic>?)
                ?.map((kp286663311) => kp286663311 as String)
                .toList() ??
            _lqs134456737;
    _zl622316115 =
        (yw105296919['blockedNativeSDKVersions'] as List<dynamic>?)
                ?.map((kp286663311) => kp286663311 as String)
                .toList() ??
            _zl622316115;
    _k386269372 = (yw105296919['disableScreenTracking'] as List<dynamic>?)
            ?.map((kp286663311) => kp286663311 as String)
            .toList() ??
        _k386269372;
    _p981467561 = (yw105296919['screensMasking'] as List<dynamic>?)
            ?.map((kp286663311) => kp286663311 as String)
            .toList() ??
        _p981467561;
    _inc534557796 = yw105296919['appVersion'] as String? ?? _inc534557796;
    rfb721004424();
  }

  Future<void> w893241462(
    X730200681 do963936136,
  ) async {
    _q709250171 =
        do963936136.hk208388509 ?? hk208388509;
    _jna629889700 =
        do963936136.qg366137057 ??
            _jna629889700;
    _lqs134456737 =
        do963936136.n414528669 ??
            _lqs134456737;
    _zl622316115 =
        do963936136.u746704311 ??
            _zl622316115;
    _rxn202704401 =
        do963936136.jx938088537 ?? _rxn202704401;
    _n381317562 =
        do963936136.em1016189619 ?? _n381317562;
    _sd995566288 =
        do963936136.ed531796484 ?? _sd995566288;
    _cip653443307 =
        do963936136.wx178815791 ?? _cip653443307;
    _xo157011012 =
        do963936136.su529816099 ?? _xo157011012;

    _k386269372 =
        do963936136.yoy834937037 ??
            _k386269372;
    _p981467561 =
        do963936136.svs465386052 ?? _p981467561;
    _inc534557796 = do963936136.bsu702147222 ?? _inc534557796;
    _mo761427786 =
        do963936136.s13556931 ?? _mo761427786;
    await rfb721004424();
  }
}
