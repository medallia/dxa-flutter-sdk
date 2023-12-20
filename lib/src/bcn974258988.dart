import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/iz263697913.dart';
import 'package:medallia_dxa/src/uv40563050.dart';
import 'package:medallia_dxa/src/gc681534908.dart';
import 'package:medallia_dxa/src/s452802370.dart';
import 'package:medallia_dxa/src/kua304042370.dart';

class Ogh1013317448 implements B739167954 {
  static const String z691969714 = 'live_configuration';

  bool get w208388295 => _aj709250337 ?? false;
  Color? get l938088707 => _h374220340;
  Duration? get oku529816441 => _pyt709690451;
  int? get c1024539935 => _hws1040032951;
  Duration? get zvg76066723 => _pfy25663674;
  ImageQuality? get syt178815605 => _rb450260934;
  bool? _aj709250337;
  List<String?>? _mpj629890046;
  List<String?>? _qsy134456571;
  bool mw709781776 = false;
  bool elz324838515 = false;
  String? _bm202704715;
  Color? _h374220340;
  bool? _lyl381317344;
  int? _s653443505;
  ImageQuality? _rb450260934;
  int? _p157011230;
  Duration? _pyt709690451;
  int? _hws1040032951;
  int? _at19836068;
  Duration? _pfy25663674;
  List<String?>? _my386269670;
  List<String?>? _u981467379;
  String? _cc534558014;
  Future<void> mk721004242() async {
    arm148237082();
    if (_lyl381317344 != null) {
      ir172475810(dct285555700: _lyl381317344!);
    }

    if (oku529816441 != null) {
      Lgg583050836.dh892083923.io522099836.tx86559568();
    }

    mw709781776 = false;
    elz324838515 = false;
    if (_mpj629890046 != null &&
        _mpj629890046!.isNotEmpty) {
      final String z281064298 = Lgg583050836.dh892083923.av190649144.z281064298;
      if (_mpj629890046!.contains(z281064298)) {
        mw709781776 = true;
        await Lgg583050836.dh892083923.av190649144.s231536586();
      }
    }
    if (_qsy134456571 != null &&
        _qsy134456571!.isNotEmpty) {
      if (_qsy134456571!.contains(_cc534558014)) {
        elz324838515 = true;
        await Lgg583050836.dh892083923.av190649144.s231536586();
      }
    }
  }

  void arm148237082() {
    if (_bm202704715 != null) {
      final String eau1015216555 =
          _bm202704715!.rfy31856803;
      final int? z615145581 =
          int.tryParse(eau1015216555, radix: 16);
      if (z615145581 != null) {
        _h374220340 = Color.fromARGB(
          255,
          (z615145581 & 0xFF0000) >> 16,
          (z615145581 & 0x00FF00) >> 8,
          z615145581 & 0x0000FF,
        );
      }
    }
    if (_p157011230 != null) {
      _pyt709690451 = _ss599319957(
        _p157011230!,
      );
    }
    if (_at19836068 != null) {
      _pfy25663674 = Duration(minutes: _at19836068!);
    }
    if (_s653443505 != null) {
      _rb450260934 =
          Efs720224174.k844448493(_s653443505!);
    }
  }

  void ir172475810({bool dct285555700 = true}) {
    final glb153543569 = Lgg583050836.dh892083923.uq751988159;
    if (dct285555700) {
      glb153543569.vit92492771();
    } else {
      glb153543569.px129784369();
    }
  }

  bool mzo68325513(String duz343815130) {
    return _my386269670?.contains(duz343815130) ?? false;
  }

  bool t317035809(String duz343815130) {
    return _u981467379?.contains(duz343815130) ?? false;
  }

  Duration _ss599319957(
    int oku529816441,
  ) {
    late final Duration yzf453743376;
    switch (oku529816441) {
      case 0:
        yzf453743376 = const Duration(milliseconds: 500);
        break;
      case 1:
        yzf453743376 = const Duration(milliseconds: 250);
        break;
      case 2:
        yzf453743376 = const Duration(milliseconds: 167);
        break;
      case 3:
        yzf453743376 = const Duration(milliseconds: 125);

        break;
      case 4:
        yzf453743376 = const Duration(milliseconds: 100);

        break;
      default:
        yzf453743376 = const Duration(milliseconds: 250);
    }
    return yzf453743376;
  }

  @override
  void all1015923912(Map<String, dynamic> nbt481948581) {
    final Map<String, dynamic> p420090722 = nbt481948581[z691969714] as Map<String, dynamic>;
    _aj709250337 =
        p420090722['overrideUserConfig'] as bool? ?? w208388295;

    _bm202704715 =
        p420090722['maskingColor'] as String? ?? _bm202704715;
    _lyl381317344 = p420090722['showLocalLogs'] as bool? ?? _lyl381317344;
    _s653443505 =
        p420090722['imageQualityType'] as int? ?? _s653443505;
    _p157011230 =
        p420090722['videoQualityType'] as int? ?? _p157011230;
    _hws1040032951 = p420090722['maxScreenshots'] as int? ?? c1024539935;
    _at19836068 =
        p420090722['maxScreenDuration'] as int? ?? _at19836068;

    _mpj629890046 =
        (p420090722['blockedFlutterSDKVersions'] as List<dynamic>?)
                ?.map((t286663637) => t286663637 as String)
                .toList() ??
            _mpj629890046;
    _qsy134456571 =
        (p420090722['blockedFlutterAppVersions'] as List<dynamic>?)
                ?.map((t286663637) => t286663637 as String)
                .toList() ??
            _qsy134456571;
    _my386269670 = (p420090722['disableScreenTracking'] as List<dynamic>?)
            ?.map((t286663637) => t286663637 as String)
            .toList() ??
        _my386269670;
    _u981467379 = (p420090722['screensMasking'] as List<dynamic>?)
            ?.map((t286663637) => t286663637 as String)
            .toList() ??
        _u981467379;
    _cc534558014 = p420090722['appVersion'] as String? ?? _cc534558014;
    mk721004242();
  }

  Future<void> auj893241644(
    Jnq657504315 umr963935954,
  ) async {
    _aj709250337 =
        umr963935954.w208388295 ?? w208388295;
    _mpj629890046 =
        umr963935954.wt366137275 ??
            _mpj629890046;
    _qsy134456571 =
        umr963935954.n414528967 ??
            _qsy134456571;
    _bm202704715 =
        umr963935954.l938088707 ?? _bm202704715;
    _lyl381317344 =
        umr963935954.wf1016189929 ?? _lyl381317344;
    _s653443505 =
        umr963935954.syt178815605 ?? _s653443505;
    _p157011230 =
        umr963935954.oku529816441 ?? _p157011230;
    _hws1040032951 =
        umr963935954.c1024539935 ?? c1024539935;
    _at19836068 =
        umr963935954.zvg76066723 ?? _at19836068;
    _my386269670 =
        umr963935954.xu834937239 ??
            _my386269670;
    _u981467379 =
        umr963935954.fd465386270 ?? _u981467379;
    _cc534558014 = umr963935954.lh702147532 ?? _cc534558014;
    await mk721004242();
  }

  @override
  String toString() {
    return 'LiveConfiguration(_overrideUserConfig: $_aj709250337, _blockedFlutterSDKVersions: $_mpj629890046, _blockedFlutterAppVersions: $_qsy134456571, isCurrentSdkVersionBlocked: $mw709781776, isCurrentAppVersionBlocked: $elz324838515, _maskingColorString: $_bm202704715, _maskingColor: $_h374220340, _showLocalLogs: $_lyl381317344, _imageQualityTypeInt: $_s653443505, _imageQualityType: $_rb450260934, _videoQualityTypeInt: $_p157011230, _videoQualityType: $_pyt709690451, _maxScreenshots: $_hws1040032951, _maxScreenDurationInt: $_at19836068, _maxScreenDuration: $_pfy25663674, _disableScreenTracking: $_my386269670, _screensMasking: $_u981467379, _appVersion: $_cc534558014)';
  }
}
