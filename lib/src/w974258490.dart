import 'package:flutter/material.dart';

import 'package:medallia_dxa/src/znj290553027.dart';
import 'package:medallia_dxa/src/wrv263698415.dart';
import 'package:medallia_dxa/src/qjx40563580.dart';
import 'package:medallia_dxa/src/mo681535402.dart';
import 'package:medallia_dxa/src/cwx452801876.dart';
import 'package:medallia_dxa/src/sor304042900.dart';

class Mq1013316958 implements Cnd739167428 {
  static const String bfr691969188 = 'live_configuration';
  final X733035790 h491198070;
  bool get s208388817 => _iot709250871 ?? false;
  Color? get wc938089237 => _d374219810;
  Duration? get dg529815919 => _od709690949;
  int? get tsa1024540425 => _wb1040033441;
  Duration? get ydx76066229 => _gya25664172;
  ImageQuality? get m178815075 => _xk450260432;
  bool? _iot709250871;
  List<String?>? _cf629889512;
  List<String?>? _y134457069;
  bool j709782278 = false;
  bool m324839013 = false;
  String? _jw202704221;
  Color? _d374219810;
  bool? _mjg381317878;
  int? _nw653444007;
  ImageQuality? _xk450260432;
  int? _bzs157011720;
  Duration? _od709690949;
  int? _wb1040033441;
  int? _z19836594;
  Duration? _gya25664172;
  List<String?>? _d386270192;
  List<String?>? _l981467877;
  String? _wz534558504;
  Mq1013316958({
    required this.h491198070,
  });
  Future<void> uue721003716() async {
    i148236556();
    if (_mjg381317878 != null) {
      rq172476340(wy285555170: _mjg381317878!);
    }

    if (dg529815919 != null) {
      Yt583050306.ss892083397.cj522100330.rc86559046();
    }

    j709782278 = false;
    m324839013 = false;
    if (_cf629889512 != null &&
        _cf629889512!.isNotEmpty) {
      final String uc281063804 = h491198070.uc281063804;
      if (_cf629889512!.contains(uc281063804)) {
        j709782278 = true;
        await h491198070.sl231536092();
      }
    }
    if (_y134457069 != null &&
        _y134457069!.isNotEmpty) {
      if (_y134457069!.contains(_wz534558504)) {
        m324839013 = true;
        await h491198070.sl231536092();
      }
    }
  }

  void i148236556() {
    if (_jw202704221 != null) {
      final String tl1015217085 =
          _jw202704221!.yn31857333;
      final int? mgh615146107 =
          int.tryParse(tl1015217085, radix: 16);
      if (mgh615146107 != null) {
        _d374219810 = Color.fromARGB(
          255,
          (mgh615146107 & 0xFF0000) >> 16,
          (mgh615146107 & 0x00FF00) >> 8,
          mgh615146107 & 0x0000FF,
        );
      }
    }
    if (_bzs157011720 != null) {
      _od709690949 = _r599320451(
        _bzs157011720!,
      );
    }
    if (_z19836594 != null) {
      _gya25664172 = Duration(minutes: _z19836594!);
    }
    if (_nw653444007 != null) {
      _xk450260432 =
          U720223672.in844447995(_nw653444007!);
    }
  }

  void rq172476340({bool wy285555170 = true}) {
    final ti153543047 = Yt583050306.ss892083397.ka751988649;
    if (wy285555170) {
      ti153543047.caf92492277();
    } else {
      ti153543047.o129783847();
    }
  }

  bool ys68326047(String vu343814604) {
    return _d386270192?.contains(vu343814604) ?? false;
  }

  bool apv317036343(String vu343814604) {
    return _l981467877?.contains(vu343814604) ?? false;
  }

  Duration _r599320451(
    int dg529815919,
  ) {
    late final Duration mg453742854;
    switch (dg529815919) {
      case 0:
        mg453742854 = const Duration(milliseconds: 500);
        break;
      case 1:
        mg453742854 = const Duration(milliseconds: 250);
        break;
      case 2:
        mg453742854 = const Duration(milliseconds: 167);
        break;
      case 3:
        mg453742854 = const Duration(milliseconds: 125);

        break;
      case 4:
        mg453742854 = const Duration(milliseconds: 100);

        break;
      default:
        mg453742854 = const Duration(milliseconds: 250);
    }
    return mg453742854;
  }

  @override
  void vxz1015924446(Map<String, dynamic> ef481948083) {
    final Map<String, dynamic> o420090228 = ef481948083[bfr691969188] as Map<String, dynamic>;
    _iot709250871 =
        o420090228['overrideUserConfig'] as bool? ?? s208388817;

    _jw202704221 =
        o420090228['maskingColor'] as String? ?? _jw202704221;
    _mjg381317878 = o420090228['showLocalLogs'] as bool? ?? _mjg381317878;
    _nw653444007 =
        o420090228['imageQualityType'] as int? ?? _nw653444007;
    _bzs157011720 =
        o420090228['videoQualityType'] as int? ?? _bzs157011720;
    _wb1040033441 = o420090228['maxScreenshots'] as int? ?? tsa1024540425;
    _z19836594 =
        o420090228['maxScreenDuration'] as int? ?? _z19836594;

    _cf629889512 =
        (o420090228['blockedFlutterSDKVersions'] as List<dynamic>?)
                ?.map((wl286663107) => wl286663107 as String)
                .toList() ??
            _cf629889512;
    _y134457069 =
        (o420090228['blockedFlutterAppVersions'] as List<dynamic>?)
                ?.map((wl286663107) => wl286663107 as String)
                .toList() ??
            _y134457069;
    _d386270192 = (o420090228['disableScreenTracking'] as List<dynamic>?)
            ?.map((wl286663107) => wl286663107 as String)
            .toList() ??
        _d386270192;
    _l981467877 = (o420090228['screensMasking'] as List<dynamic>?)
            ?.map((wl286663107) => wl286663107 as String)
            .toList() ??
        _l981467877;
    _wz534558504 = o420090228['appVersion'] as String? ?? _wz534558504;
    uue721003716();
  }

  Future<void> naq893242170(
    Fh657504813 ls963935428,
  ) async {
    _iot709250871 =
        ls963935428.s208388817 ?? s208388817;
    _cf629889512 =
        ls963935428.w366136749 ??
            _cf629889512;
    _y134457069 =
        ls963935428.yb414529489 ??
            _y134457069;
    _jw202704221 =
        ls963935428.wc938089237 ?? _jw202704221;
    _mjg381317878 =
        ls963935428.w1016189439 ?? _mjg381317878;
    _nw653444007 =
        ls963935428.m178815075 ?? _nw653444007;
    _bzs157011720 =
        ls963935428.dg529815919 ?? _bzs157011720;
    _wb1040033441 =
        ls963935428.tsa1024540425 ?? tsa1024540425;
    _z19836594 =
        ls963935428.ydx76066229 ?? _z19836594;
    _d386270192 =
        ls963935428.nq834937729 ??
            _d386270192;
    _l981467877 =
        ls963935428.rfr465385736 ?? _l981467877;
    _wz534558504 = ls963935428.xhx702147034 ?? _wz534558504;
    await uue721003716();
  }

  @override
  String toString() {
    return 'LiveConfiguration(_overrideUserConfig: $_iot709250871, _blockedFlutterSDKVersions: $_cf629889512, _blockedFlutterAppVersions: $_y134457069, isCurrentSdkVersionBlocked: $j709782278, isCurrentAppVersionBlocked: $m324839013, _maskingColorString: $_jw202704221, _maskingColor: $_d374219810, _showLocalLogs: $_mjg381317878, _imageQualityTypeInt: $_nw653444007, _imageQualityType: $_xk450260432, _videoQualityTypeInt: $_bzs157011720, _videoQualityType: $_od709690949, _maxScreenshots: $_wb1040033441, _maxScreenDurationInt: $_z19836594, _maxScreenDuration: $_gya25664172, _disableScreenTracking: $_d386270192, _screensMasking: $_l981467877, _appVersion: $_wz534558504)';
  }
}
