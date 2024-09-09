//
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/szs7917082.dart';

import 'package:medallia_dxa/src/cpv263697996.dart';
import 'package:medallia_dxa/src/gv40563423.dart';
import 'package:medallia_dxa/src/x681534985.dart';
import 'package:medallia_dxa/src/f832304791.dart';
import 'package:medallia_dxa/src/xd304042551.dart';
import 'package:medallia_dxa/src/yyq255042187.dart';

class V1013316861 implements Mfn739167591 {
  static const String qk691969287 = 'live_configuration';
  final H859069801 aaq507880560;
  final Nfs394369240 _i381625861;
  bool get j208388978 => _g709250708 ?? false;
  Color? get g938089142 => _bu374220161;
  Duration? get qqs529815756 => _on709691366;
  ImageQuality? get yh178815424 => _ssi450260083;
  bool? _g709250708;
  List<String?>? _jb629889099;
  List<String?>? _ye134457166;
  bool q709782181 = false;
  bool au324839366 = false;
  String? _bq202704126;
  Color? _bu374220161;
  bool? _sc381317973;
  bool? _m995565631;
  int? _ox653443588;
  ImageQuality? _ssi450260083;
  int? _j157011627;
  Duration? _on709691366;
  List<String?>? _t386269779;
  List<String?>? _jux981467974;
  String? _q534558347;
  V1013316861({
    required this.aaq507880560,
    required Nfs394369240 i238918462,
  }) : _i381625861 = i238918462;
  Future<void> nd721003879() async {
    q709782181 = false;
    au324839366 = false;
    if (_jb629889099 != null &&
        _jb629889099!.isNotEmpty) {
      const String qy281063647 = Fzz608124748.brl683834435;
      if (_jb629889099!.contains(qy281063647)) {
        q709782181 = true;
        _i381625861.ieh141629085(
          Cu355691962.dy994359324,
          'This version of the sdk has been blocked',
        );
        await aaq507880560.req231535743();
        return;
      }
    }
    if (_ye134457166 != null &&
        _ye134457166!.isNotEmpty) {
      if (_ye134457166!.contains(_q534558347)) {
        au324839366 = true;
        _i381625861.ieh141629085(
          Cu355691962.dy994359324,
          'This version of the app has been blocked',
        );
        await aaq507880560.req231535743();
        return;
      }
    }
    yot148236463();
    if (_sc381317973 != null) {
      _i381625861.p268886022(vsy285554753: _sc381317973!);
    }
    if (_m995565631 != null) {
      _i381625861.lo249853380(hsq193372015: _m995565631!);
    }
  }

  void yot148236463() {
    if (_bq202704126 != null) {
      final String flg1015216670 =
          _bq202704126!.ta31857430;
      final int? gsb615146456 =
          int.tryParse(flg1015216670, radix: 16);
      if (gsb615146456 != null) {
        _bu374220161 = Color.fromARGB(
          255,
          (gsb615146456 & 0xFF0000) >> 16,
          (gsb615146456 & 0x00FF00) >> 8,
          gsb615146456 & 0x0000FF,
        );
      }
    }

    if (_j157011627 != null) {
      _on709691366 = _oo599320096(
        _j157011627!,
      );
    }

    if (_ox653443588 != null) {
      _ssi450260083 =
          Mlp720223259.nj844448088(_ox653443588!);
    }
  }

  bool jwi68326204(String h343814255) {
    return _t386269779?.contains(h343814255) ?? false;
  }

  bool i317036180(String h343814255) {
    return _jux981467974?.contains(h343814255) ?? false;
  }

  Duration _oo599320096(
    int qqs529815756,
  ) {
    late final Duration grr453742757;
    switch (qqs529815756) {
      case 0:
        grr453742757 = const Duration(milliseconds: 500);
        break;
      case 1:
        grr453742757 = const Duration(milliseconds: 250);
        break;
      case 2:
        grr453742757 = const Duration(milliseconds: 167);
        break;
      case 3:
        grr453742757 = const Duration(milliseconds: 125);

        break;
      case 4:
        grr453742757 = const Duration(milliseconds: 100);

        break;
      default:
        grr453742757 = const Duration(milliseconds: 250);
    }
    return grr453742757;
  }

  @override
  void tsc1015924605(Map<String, dynamic> idb105297656) {
    _g709250708 =
        idb105297656['overrideUserConfig'] as bool? ?? j208388978;

    _bq202704126 = idb105297656['maskingColor'] as String? ?? _bq202704126;
    _sc381317973 = idb105297656['showLocalLogs'] as bool? ?? _sc381317973;
    _m995565631 = idb105297656['allowLocalLogs'] as bool? ?? _m995565631;
    _ox653443588 =
        idb105297656['imageQualityType'] as int? ?? _ox653443588;
    _j157011627 =
        idb105297656['videoQualityType'] as int? ?? _j157011627;

    _jb629889099 =
        (idb105297656['blockedFlutterSDKVersions'] as List<dynamic>?)
                ?.map((moj286662752) => moj286662752 as String)
                .toList() ??
            _jb629889099;
    _ye134457166 =
        (idb105297656['blockedFlutterAppVersions'] as List<dynamic>?)
                ?.map((moj286662752) => moj286662752 as String)
                .toList() ??
            _ye134457166;
    _t386269779 = (idb105297656['disableScreenTracking'] as List<dynamic>?)
            ?.map((moj286662752) => moj286662752 as String)
            .toList() ??
        _t386269779;
    _jux981467974 = (idb105297656['screensMasking'] as List<dynamic>?)
            ?.map((moj286662752) => moj286662752 as String)
            .toList() ??
        _jux981467974;
    _q534558347 = idb105297656['appVersion'] as String? ?? _q534558347;
    nd721003879();
  }

  Future<void> waf893242009(
    Lh657505166 fy963935591,
  ) async {
    _g709250708 =
        fy963935591.j208388978 ?? j208388978;
    _jb629889099 =
        fy963935591.b366136334 ??
            _jb629889099;
    _ye134457166 =
        fy963935591.z414529138 ??
            _ye134457166;
    _bq202704126 =
        fy963935591.g938089142 ?? _bq202704126;
    _sc381317973 =
        fy963935591.t1016189020 ?? _sc381317973;
    _m995565631 =
        fy963935591.sdi531796203 ?? _m995565631;
    _ox653443588 =
        fy963935591.yh178815424 ?? _ox653443588;
    _j157011627 =
        fy963935591.qqs529815756 ?? _j157011627;

    _t386269779 =
        fy963935591.pxx834937378 ??
            _t386269779;
    _jux981467974 =
        fy963935591.xff465385643 ?? _jux981467974;
    _q534558347 = fy963935591.lp702146681 ?? _q534558347;
    await nd721003879();
  }
}
