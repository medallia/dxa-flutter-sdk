import 'package:flutter/material.dart';

import 'package:medallia_dxa/src/ls290553137.dart';
import 'package:medallia_dxa/src/be263697949.dart';
import 'package:medallia_dxa/src/mc40563342.dart';
import 'package:medallia_dxa/src/mlm681535064.dart';
import 'package:medallia_dxa/src/e452801702.dart';
import 'package:medallia_dxa/src/kb304042598.dart';

class Byf1013316780 implements Ok739167542 {
  static const String o691969366 = 'live_configuration';
  final P733035772 swi491198340;
  bool get x208388899 => _m709250757 ?? false;
  Color? get s938089191 => _vd374220240;
  Duration? get sah529815709 => _de709691319;
  int? get qk1024540411 => _d1040033619;
  Duration? get d76065863 => _mez25664350;
  ImageQuality? get pc178815377 => _vi450260002;
  bool? _m709250757;
  List<String?>? _m629889050;
  List<String?>? _e134457119;
  bool vqk709782260 = false;
  bool tai324839319 = false;
  String? _x202704047;
  Color? _vd374220240;
  bool? _d381317892;
  int? _m653443669;
  ImageQuality? _vi450260002;
  int? _ik157011706;
  Duration? _de709691319;
  int? _d1040033619;
  int? _u19836736;
  Duration? _mez25664350;
  List<String?>? _vjb386269698;
  List<String?>? _p981467927;
  String? _r534558426;
  Byf1013316780({
    required this.swi491198340,
  });
  Future<void> s721003830() async {
    g148236542();
    if (_d381317892 != null) {
      a172475974(o285554704: _d381317892!);
    }

    if (sah529815709 != null) {
      Pg583050672.vpo892083511.i522100632.oi86558900();
    }

    vqk709782260 = false;
    tai324839319 = false;
    if (_m629889050 != null &&
        _m629889050!.isNotEmpty) {
      final String ojt281063566 = swi491198340.ojt281063566;
      if (_m629889050!.contains(ojt281063566)) {
        vqk709782260 = true;
        await swi491198340.m231535662();
      }
    }
    if (_e134457119 != null &&
        _e134457119!.isNotEmpty) {
      if (_e134457119!.contains(_r534558426)) {
        tai324839319 = true;
        await swi491198340.m231535662();
      }
    }
  }

  void g148236542() {
    if (_x202704047 != null) {
      final String m1015216719 =
          _x202704047!.o31857479;
      final int? w615146377 =
          int.tryParse(m1015216719, radix: 16);
      if (w615146377 != null) {
        _vd374220240 = Color.fromARGB(
          255,
          (w615146377 & 0xFF0000) >> 16,
          (w615146377 & 0x00FF00) >> 8,
          w615146377 & 0x0000FF,
        );
      }
    }
    if (_ik157011706 != null) {
      _de709691319 = _nhc599320177(
        _ik157011706!,
      );
    }
    if (_u19836736 != null) {
      _mez25664350 = Duration(minutes: _u19836736!);
    }
    if (_m653443669 != null) {
      _vi450260002 =
          Qmw720223306.jrp844448009(_m653443669!);
    }
  }

  void a172475974({bool o285554704 = true}) {
    final b153542773 = Pg583050672.vpo892083511.nky751988315;
    if (o285554704) {
      b153542773.z92491783();
    } else {
      b153542773.axp129784277();
    }
  }

  bool y68326253(String lz343814206) {
    return _vjb386269698?.contains(lz343814206) ?? false;
  }

  bool as317036229(String lz343814206) {
    return _p981467927?.contains(lz343814206) ?? false;
  }

  Duration _nhc599320177(
    int sah529815709,
  ) {
    late final Duration fpu453742836;
    switch (sah529815709) {
      case 0:
        fpu453742836 = const Duration(milliseconds: 500);
        break;
      case 1:
        fpu453742836 = const Duration(milliseconds: 250);
        break;
      case 2:
        fpu453742836 = const Duration(milliseconds: 167);
        break;
      case 3:
        fpu453742836 = const Duration(milliseconds: 125);

        break;
      case 4:
        fpu453742836 = const Duration(milliseconds: 100);

        break;
      default:
        fpu453742836 = const Duration(milliseconds: 250);
    }
    return fpu453742836;
  }

  @override
  void ie1015924524(Map<String, dynamic> ga481947713) {
    final Map<String, dynamic> oty420089990 = ga481947713[o691969366] as Map<String, dynamic>;
    _m709250757 =
        oty420089990['overrideUserConfig'] as bool? ?? x208388899;

    _x202704047 =
        oty420089990['maskingColor'] as String? ?? _x202704047;
    _d381317892 = oty420089990['showLocalLogs'] as bool? ?? _d381317892;
    _m653443669 =
        oty420089990['imageQualityType'] as int? ?? _m653443669;
    _ik157011706 =
        oty420089990['videoQualityType'] as int? ?? _ik157011706;
    _d1040033619 = oty420089990['maxScreenshots'] as int? ?? qk1024540411;
    _u19836736 =
        oty420089990['maxScreenDuration'] as int? ?? _u19836736;

    _m629889050 =
        (oty420089990['blockedFlutterSDKVersions'] as List<dynamic>?)
                ?.map((tls286662705) => tls286662705 as String)
                .toList() ??
            _m629889050;
    _e134457119 =
        (oty420089990['blockedFlutterAppVersions'] as List<dynamic>?)
                ?.map((tls286662705) => tls286662705 as String)
                .toList() ??
            _e134457119;
    _vjb386269698 = (oty420089990['disableScreenTracking'] as List<dynamic>?)
            ?.map((tls286662705) => tls286662705 as String)
            .toList() ??
        _vjb386269698;
    _p981467927 = (oty420089990['screensMasking'] as List<dynamic>?)
            ?.map((tls286662705) => tls286662705 as String)
            .toList() ??
        _p981467927;
    _r534558426 = oty420089990['appVersion'] as String? ?? _r534558426;
    s721003830();
  }

  Future<void> s893242056(
    Jcb657505247 nvg963935542,
  ) async {
    _m709250757 =
        nvg963935542.x208388899 ?? x208388899;
    _m629889050 =
        nvg963935542.ul366136415 ??
            _m629889050;
    _e134457119 =
        nvg963935542.lb414529059 ??
            _e134457119;
    _x202704047 =
        nvg963935542.s938089191 ?? _x202704047;
    _d381317892 =
        nvg963935542.rpy1016188941 ?? _d381317892;
    _m653443669 =
        nvg963935542.pc178815377 ?? _m653443669;
    _ik157011706 =
        nvg963935542.sah529815709 ?? _ik157011706;
    _d1040033619 =
        nvg963935542.qk1024540411 ?? qk1024540411;
    _u19836736 =
        nvg963935542.d76065863 ?? _u19836736;
    _vjb386269698 =
        nvg963935542.wve834937459 ??
            _vjb386269698;
    _p981467927 =
        nvg963935542.xae465385722 ?? _p981467927;
    _r534558426 = nvg963935542.si702146600 ?? _r534558426;
    await s721003830();
  }

  @override
  String toString() {
    return 'LiveConfiguration(_overrideUserConfig: $_m709250757, _blockedFlutterSDKVersions: $_m629889050, _blockedFlutterAppVersions: $_e134457119, isCurrentSdkVersionBlocked: $vqk709782260, isCurrentAppVersionBlocked: $tai324839319, _maskingColorString: $_x202704047, _maskingColor: $_vd374220240, _showLocalLogs: $_d381317892, _imageQualityTypeInt: $_m653443669, _imageQualityType: $_vi450260002, _videoQualityTypeInt: $_ik157011706, _videoQualityType: $_de709691319, _maxScreenshots: $_d1040033619, _maxScreenDurationInt: $_u19836736, _maxScreenDuration: $_mez25664350, _disableScreenTracking: $_vjb386269698, _screensMasking: $_p981467927, _appVersion: $_r534558426)';
  }
}
