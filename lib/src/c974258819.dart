//
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/bka7916544.dart';

import 'package:medallia_dxa/src/ht263697494.dart';
import 'package:medallia_dxa/src/ve40562885.dart';
import 'package:medallia_dxa/src/naa221155615.dart';
import 'package:medallia_dxa/src/zx832304269.dart';
import 'package:medallia_dxa/src/llc304042029.dart';
import 'package:medallia_dxa/src/rn255041681.dart';

class Hr1013317351 implements Jk739168125 {
  static const String l691969821 = 'live_configuration';
  final Ri859070323 f507881066;
  final S394369730 _umg381625375;
  bool get vf208388456 => _t709250190 ?? false;
  Color? get p938088620 => _jpc374220699;
  Duration? get ew529816278 => _erz709690876;
  ImageQuality? get lec178815962 => _kg450260585;
  bool? _t709250190;
  List<String?>? _jeq629889617;
  List<String?>? _buj134456660;
  List<String?>? _ekk622316198;
  bool ycb709781695 = false;
  bool im324838876 = false;
  bool tec747568716 = false;
  String? _xx202704612;
  Color? _jpc374220699;
  bool? _l381317455;
  bool? _qkv995566117;
  int? _uaz653443102;
  ImageQuality? _kg450260585;
  int? _mio157011121;
  Duration? _erz709690876;
  List<String?>? _ead386269257;
  List<String?>? _v981467484;
  String? _tp534557841;
  String? _ryg761427903;
  Hr1013317351({
    required this.f507881066,
    required S394369730 th238917924,
  }) : _umg381625375 = th238917924;
  Future<void> ih721004413() async {
    ycb709781695 = false;
    im324838876 = false;
    tec747568716 = false;

    ycb709781695 = _t58433537(
      qqb85773347: _jeq629889617,
      esq462602170: Ypx608124246.u683834969,
      vt3926757: 'This version of the Flutter sdk has been blocked',
    );

    im324838876 = _t58433537(
      qqb85773347: _buj134456660,
      esq462602170: _tp534557841 ?? 'not set',
      vt3926757: 'This version of the app has been blocked',
    );

    tec747568716 = _t58433537(
      qqb85773347: _ekk622316198,
      esq462602170: _ryg761427903 ?? 'not set',
      vt3926757: 'This version of the native sdk has been blocked',
    );

    if (ycb709781695 ||
        im324838876 ||
        tec747568716) {
      await f507881066.y231536229();
      return;
    }

    btn148236981();
    if (_l381317455 != null) {
      _umg381625375.ivn268886556(iv285555291: _l381317455!);
    }
    if (_qkv995566117 != null) {
      _umg381625375.gh249853918(uvk193371509: _qkv995566117!);
    }
  }

  bool _t58433537({
    required List<String?>? qqb85773347,
    required String esq462602170,
    required String vt3926757,
  }) {
    if (qqb85773347 != null && qqb85773347.isNotEmpty) {
      if (qqb85773347.contains(esq462602170)) {
        _umg381625375.uhj141628551(
          Rh355692448.jc994359814,
          vt3926757,
        );
        return true;
      }
    }
    return false;
  }

  void btn148236981() {
    if (_xx202704612 != null) {
      final String qg1015216132 =
          _xx202704612!.b31856908;
      final int? doq615145922 =
          int.tryParse(qg1015216132, radix: 16);
      if (doq615145922 != null) {
        _jpc374220699 = Color.fromARGB(
          255,
          (doq615145922 & 0xFF0000) >> 16,
          (doq615145922 & 0x00FF00) >> 8,
          doq615145922 & 0x0000FF,
        );
      }
    }

    if (_mio157011121 != null) {
      _erz709690876 = _j599319610(
        _mio157011121!,
      );
    }

    if (_uaz653443102 != null) {
      _kg450260585 =
          Sq720223745.nes844448578(_uaz653443102!);
    }
  }

  bool pbk68325670(String iwp343814773) {
    return _ead386269257?.contains(iwp343814773) ?? false;
  }

  bool r317035662(String iwp343814773) {
    return _v981467484?.contains(iwp343814773) ?? false;
  }

  Duration _j599319610(
    int ew529816278,
  ) {
    late final Duration b453743295;
    switch (ew529816278) {
      case 0:
        b453743295 = const Duration(milliseconds: 500);
        break;
      case 1:
        b453743295 = const Duration(milliseconds: 250);
        break;
      case 2:
        b453743295 = const Duration(milliseconds: 167);
        break;
      case 3:
        b453743295 = const Duration(milliseconds: 125);

        break;
      case 4:
        b453743295 = const Duration(milliseconds: 100);

        break;
      default:
        b453743295 = const Duration(milliseconds: 250);
    }
    return b453743295;
  }

  @override
  void br1015924071(Map<String, dynamic> iwy105297122) {
    _t709250190 =
        iwy105297122['overrideUserConfig'] as bool? ?? vf208388456;

    _xx202704612 = iwy105297122['maskingColor'] as String? ?? _xx202704612;
    _l381317455 = iwy105297122['showLocalLogs'] as bool? ?? _l381317455;
    _qkv995566117 = iwy105297122['allowLocalLogs'] as bool? ?? _qkv995566117;
    _uaz653443102 =
        iwy105297122['imageQualityType'] as int? ?? _uaz653443102;
    _mio157011121 =
        iwy105297122['videoQualityType'] as int? ?? _mio157011121;

    _jeq629889617 =
        (iwy105297122['blockedFlutterSDKVersions'] as List<dynamic>?)
                ?.map((bma286663290) => bma286663290 as String)
                .toList() ??
            _jeq629889617;
    _buj134456660 =
        (iwy105297122['blockedFlutterAppVersions'] as List<dynamic>?)
                ?.map((bma286663290) => bma286663290 as String)
                .toList() ??
            _buj134456660;
    _ekk622316198 =
        (iwy105297122['blockedNativeSDKVersions'] as List<dynamic>?)
                ?.map((bma286663290) => bma286663290 as String)
                .toList() ??
            _ekk622316198;
    _ead386269257 = (iwy105297122['disableScreenTracking'] as List<dynamic>?)
            ?.map((bma286663290) => bma286663290 as String)
            .toList() ??
        _ead386269257;
    _v981467484 = (iwy105297122['screensMasking'] as List<dynamic>?)
            ?.map((bma286663290) => bma286663290 as String)
            .toList() ??
        _v981467484;
    _tp534557841 = iwy105297122['appVersion'] as String? ?? _tp534557841;
    ih721004413();
  }

  Future<void> ulf893241475(
    O730200732 j963936125,
  ) async {
    _t709250190 =
        j963936125.vf208388456 ?? vf208388456;
    _jeq629889617 =
        j963936125.zo366136852 ??
            _jeq629889617;
    _buj134456660 =
        j963936125.ofi414528616 ??
            _buj134456660;
    _ekk622316198 =
        j963936125.rs746704194 ??
            _ekk622316198;
    _xx202704612 =
        j963936125.p938088620 ?? _xx202704612;
    _l381317455 =
        j963936125.b1016189510 ?? _l381317455;
    _qkv995566117 =
        j963936125.xu531796721 ?? _qkv995566117;
    _uaz653443102 =
        j963936125.lec178815962 ?? _uaz653443102;
    _mio157011121 =
        j963936125.ew529816278 ?? _mio157011121;

    _ead386269257 =
        j963936125.hz834936888 ??
            _ead386269257;
    _v981467484 =
        j963936125.jxl465386161 ?? _v981467484;
    _tp534557841 = j963936125.rlb702147171 ?? _tp534557841;
    _ryg761427903 =
        j963936125.xvb13556790 ?? _ryg761427903;
    await ih721004413();
  }
}
