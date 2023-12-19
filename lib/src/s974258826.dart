import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/l263697503.dart';
import 'package:medallia_dxa/src/zpv40562892.dart';
import 'package:medallia_dxa/src/fa681534490.dart';
import 'package:medallia_dxa/src/xtn452802276.dart';
import 'package:medallia_dxa/src/e304042020.dart';

class M1013317358 implements Jl739168116 {
  static const String uj691969812 = 'live_configuration';

  bool get fg208388449 => _k709250183 ?? false;
  Color? get zi938088613 => _qp374220690;
  Duration? get j529816287 => _q709690869;
  int? get zuv1024539833 => _s1040033041;
  Duration? get do76066309 => _kj25663772;
  ImageQuality? get bx178815955 => _zj450260576;
  bool? _k709250183;
  List<String?>? _qy629889624;
  List<String?>? _fvq134456669;
  bool h709781686 = false;
  bool w324838869 = false;
  String? _si202704621;
  Color? _qp374220690;
  bool? _wxr381317446;
  int? _rek653443095;
  ImageQuality? _zj450260576;
  int? _o157011128;
  Duration? _q709690869;
  int? _s1040033041;
  int? _qms19836162;
  Duration? _kj25663772;
  List<String?>? _hg386269248;
  List<String?>? _c981467477;
  String? _kac534557848;
  Future<void> hez721004404() async {
    cd148236988();
    if (_wxr381317446 == true) {
      bge33974008();
    }

    if (j529816287 != null) {
      Ka583051250.fc892084085.wyr522100186.c86559478();
    }

    h709781686 = false;
    w324838869 = false;
    if (_qy629889624 != null &&
        _qy629889624!.isNotEmpty) {
      final String vs281064140 = Ka583051250.fc892084085.j190648990.vs281064140;
      if (_qy629889624!.contains(vs281064140)) {
        h709781686 = true;
        await Ka583051250.fc892084085.j190648990.hu231536236();
      }
    }
    if (_fvq134456669 != null &&
        _fvq134456669!.isNotEmpty) {
      if (_fvq134456669!.contains(_kac534557848)) {
        w324838869 = true;
        await Ka583051250.fc892084085.j190648990.hu231536236();
      }
    }
  }

  void cd148236988() {
    if (_si202704621 != null) {
      final String uo1015216141 =
          _si202704621!.ab31856901;
      final int? rk615145931 =
          int.tryParse(uo1015216141, radix: 16);
      if (rk615145931 != null) {
        _qp374220690 = Color.fromARGB(
          255,
          (rk615145931 & 0xFF0000) >> 16,
          (rk615145931 & 0x00FF00) >> 8,
          rk615145931 & 0x0000FF,
        );
      }
    }
    if (_o157011128 != null) {
      _q709690869 = _nw599319603(
        _o157011128!,
      );
    }
    if (_qms19836162 != null) {
      _kj25663772 = Duration(minutes: _qms19836162!);
    }
    if (_rek653443095 != null) {
      _zj450260576 =
          At720223752.we844448587(_rek653443095!);
    }
  }

  void bge33974008() {
    final spi153543223 = Ka583051250.fc892084085.idu751987737;
    if (fg208388449) {
      spi153543223.qtd92492357();
      return;
    }
    if (!spi153543223.cw454203756) {
      spi153543223.qtd92492357();
      return;
    }
  }

  bool xh68325679(String yc343814780) {
    return _hg386269248?.contains(yc343814780) ?? false;
  }

  bool swl317035655(String yc343814780) {
    return _c981467477?.contains(yc343814780) ?? false;
  }

  Duration _nw599319603(
    int j529816287,
  ) {
    late final Duration d453743286;
    switch (j529816287) {
      case 0:
        d453743286 = const Duration(milliseconds: 500);
        break;
      case 1:
        d453743286 = const Duration(milliseconds: 250);
        break;
      case 2:
        d453743286 = const Duration(milliseconds: 167);
        break;
      case 3:
        d453743286 = const Duration(milliseconds: 125);

        break;
      case 4:
        d453743286 = const Duration(milliseconds: 100);

        break;
      default:
        d453743286 = const Duration(milliseconds: 250);
    }
    return d453743286;
  }

  @override
  void q1015924078(Map<String, dynamic> zku481948163) {
    final Map<String, dynamic> rd420090564 = zku481948163[uj691969812] as Map<String, dynamic>;
    _k709250183 =
        rd420090564['overrideUserConfig'] as bool? ?? fg208388449;

    _si202704621 =
        rd420090564['maskingColor'] as String? ?? _si202704621;
    _wxr381317446 = rd420090564['showLocalLogs'] as bool? ?? _wxr381317446;
    _rek653443095 =
        rd420090564['imageQualityType'] as int? ?? _rek653443095;
    _o157011128 =
        rd420090564['videoQualityType'] as int? ?? _o157011128;
    _s1040033041 = rd420090564['maxScreenshots'] as int? ?? zuv1024539833;
    _qms19836162 =
        rd420090564['maxScreenDuration'] as int? ?? _qms19836162;

    _qy629889624 =
        (rd420090564['blockedFlutterSDKVersions'] as List<dynamic>?)
                ?.map((rgs286663283) => rgs286663283 as String)
                .toList() ??
            _qy629889624;
    _fvq134456669 =
        (rd420090564['blockedFlutterAppVersions'] as List<dynamic>?)
                ?.map((rgs286663283) => rgs286663283 as String)
                .toList() ??
            _fvq134456669;
    _hg386269248 = (rd420090564['disableScreenTracking'] as List<dynamic>?)
            ?.map((rgs286663283) => rgs286663283 as String)
            .toList() ??
        _hg386269248;
    _c981467477 = (rd420090564['screensMasking'] as List<dynamic>?)
            ?.map((rgs286663283) => rgs286663283 as String)
            .toList() ??
        _c981467477;
    _kac534557848 = rd420090564['appVersion'] as String? ?? _kac534557848;
    hez721004404();
  }

  Future<void> x893241482(
    D657504669 xu963936116,
  ) async {
    _k709250183 =
        xu963936116.fg208388449 ?? fg208388449;
    _qy629889624 =
        xu963936116.bl366136861 ??
            _qy629889624;
    _fvq134456669 =
        xu963936116.hor414528609 ??
            _fvq134456669;
    _si202704621 =
        xu963936116.zi938088613 ?? _si202704621;
    _wxr381317446 =
        xu963936116.g1016189519 ?? _wxr381317446;
    _rek653443095 =
        xu963936116.bx178815955 ?? _rek653443095;
    _o157011128 =
        xu963936116.j529816287 ?? _o157011128;
    _s1040033041 =
        xu963936116.zuv1024539833 ?? zuv1024539833;
    _qms19836162 =
        xu963936116.do76066309 ?? _qms19836162;
    _hg386269248 =
        xu963936116.y834936881 ??
            _hg386269248;
    _c981467477 =
        xu963936116.k465386168 ?? _c981467477;
    _kac534557848 = xu963936116.v702147178 ?? _kac534557848;
    await hez721004404();
  }

  @override
  String toString() {
    return 'LiveConfiguration(_overrideUserConfig: $_k709250183, _blockedFlutterSDKVersions: $_qy629889624, _blockedFlutterAppVersions: $_fvq134456669, isCurrentSdkVersionBlocked: $h709781686, isCurrentAppVersionBlocked: $w324838869, _maskingColorString: $_si202704621, _maskingColor: $_qp374220690, _showLocalLogs: $_wxr381317446, _imageQualityTypeInt: $_rek653443095, _imageQualityType: $_zj450260576, _videoQualityTypeInt: $_o157011128, _videoQualityType: $_q709690869, _maxScreenshots: $_s1040033041, _maxScreenDurationInt: $_qms19836162, _maxScreenDuration: $_kj25663772, _disableScreenTracking: $_hg386269248, _screensMasking: $_c981467477, _appVersion: $_kac534557848)';
  }
}
