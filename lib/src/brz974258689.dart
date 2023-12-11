import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/txr263697620.dart';
import 'package:medallia_dxa/src/o40562759.dart';
import 'package:medallia_dxa/src/jpa681534609.dart';
import 'package:medallia_dxa/src/xwa452802159.dart';
import 'package:medallia_dxa/src/pr304042159.dart';

class F1013317221 implements Gf739168255 {
  static const String e691969951 = 'live_configuration';

  bool get dw208388586 => _nns709250060 ?? false;
  Color? get tyq938088494 => _ajz374220569;
  Duration? get u529816148 => _z709690750;
  int? get f1024539698 => _nm1040033178;
  Duration? get fpf76066446 => _wnz25663895;
  ImageQuality? get ejm178815832 => _ldi450260715;
  bool? _nns709250060;
  List<String?>? _d629889747;
  List<String?>? _j134456790;
  bool ayg709781565 = false;
  bool w324838750 = false;
  String? _yu202704486;
  Color? _ajz374220569;
  bool? _jy381317581;
  int? _xf653443228;
  ImageQuality? _ldi450260715;
  int? _bg157010995;
  Duration? _z709690750;
  int? _nm1040033178;
  int? _roc19836297;
  Duration? _wnz25663895;
  List<String?>? _iy386269387;
  List<String?>? _rpo981467614;
  String? _eet534557715;
  Future<void> c721004543() async {
    efu148236855();
    if (_jy381317581 == true) {
      k33973875();
    }

    if (u529816148 != null) {
      V583051129.h892084222.c522100049.lm86559357();
    }

    ayg709781565 = false;
    w324838750 = false;
    if (_d629889747 != null &&
        _d629889747!.isNotEmpty) {
      final String akp281064007 = V583051129.h892084222.urf190648853.akp281064007;
      if (_d629889747!.contains(akp281064007)) {
        ayg709781565 = true;
        await V583051129.h892084222.urf190648853.tq231536359();
      }
    }
    if (_j134456790 != null &&
        _j134456790!.isNotEmpty) {
      if (_j134456790!.contains(_eet534557715)) {
        w324838750 = true;
        await V583051129.h892084222.urf190648853.tq231536359();
      }
    }
  }

  void efu148236855() {
    if (_yu202704486 != null) {
      final String v1015216262 =
          _yu202704486!.joa31857038;
      final int? lv615145792 =
          int.tryParse(v1015216262, radix: 16);
      if (lv615145792 != null) {
        _ajz374220569 = Color.fromARGB(
          255,
          (lv615145792 & 0xFF0000) >> 16,
          (lv615145792 & 0x00FF00) >> 8,
          lv615145792 & 0x0000FF,
        );
      }
    }
    if (_bg157010995 != null) {
      _z709690750 = _g599319736(
        _bg157010995!,
      );
    }
    if (_roc19836297 != null) {
      _wnz25663895 = Duration(minutes: _roc19836297!);
    }
    if (_xf653443228 != null) {
      _ldi450260715 =
          Eiy720223875.lyv844448704(_xf653443228!);
    }
  }

  void k33973875() {
    final wyr153543356 = V583051129.h892084222.jyc751987858;
    if (dw208388586) {
      wyr153543356.iwf92492494();
      return;
    }
    if (!wyr153543356.opw454203879) {
      wyr153543356.iwf92492494();
      return;
    }
  }

  bool vcm68325796(String a343814903) {
    return _iy386269387?.contains(a343814903) ?? false;
  }

  bool ta317035532(String a343814903) {
    return _rpo981467614?.contains(a343814903) ?? false;
  }

  Duration _g599319736(
    int u529816148,
  ) {
    late final Duration nry453743165;
    switch (u529816148) {
      case 0:
        nry453743165 = const Duration(milliseconds: 500);
        break;
      case 1:
        nry453743165 = const Duration(milliseconds: 250);
        break;
      case 2:
        nry453743165 = const Duration(milliseconds: 167);
        break;
      case 3:
        nry453743165 = const Duration(milliseconds: 125);

        break;
      case 4:
        nry453743165 = const Duration(milliseconds: 100);

        break;
      default:
        nry453743165 = const Duration(milliseconds: 250);
    }
    return nry453743165;
  }

  @override
  void b1015924197(Map<String, dynamic> zeu481948296) {
    final Map<String, dynamic> wjn420090447 = zeu481948296[e691969951] as Map<String, dynamic>;
    _nns709250060 =
        wjn420090447['overrideUserConfig'] as bool? ?? dw208388586;

    _yu202704486 =
        wjn420090447['maskingColor'] as String? ?? _yu202704486;
    _jy381317581 = wjn420090447['showLocalLogs'] as bool? ?? _jy381317581;
    _xf653443228 =
        wjn420090447['imageQualityType'] as int? ?? _xf653443228;
    _bg157010995 =
        wjn420090447['videoQualityType'] as int? ?? _bg157010995;
    _nm1040033178 = wjn420090447['maxScreenshots'] as int? ?? f1024539698;
    _roc19836297 =
        wjn420090447['maxScreenDuration'] as int? ?? _roc19836297;

    _d629889747 =
        (wjn420090447['blockedFlutterSDKVersions'] as List<dynamic>?)
                ?.map((fwj286663416) => fwj286663416 as String)
                .toList() ??
            _d629889747;
    _j134456790 =
        (wjn420090447['blockedFlutterAppVersions'] as List<dynamic>?)
                ?.map((fwj286663416) => fwj286663416 as String)
                .toList() ??
            _j134456790;
    _iy386269387 = (wjn420090447['disableScreenTracking'] as List<dynamic>?)
            ?.map((fwj286663416) => fwj286663416 as String)
            .toList() ??
        _iy386269387;
    _rpo981467614 = (wjn420090447['screensMasking'] as List<dynamic>?)
            ?.map((fwj286663416) => fwj286663416 as String)
            .toList() ??
        _rpo981467614;
    _eet534557715 = wjn420090447['appVersion'] as String? ?? _eet534557715;
    c721004543();
  }

  Future<void> op893241345(
    Sot657504534 y963936255,
  ) async {
    _nns709250060 =
        y963936255.dw208388586 ?? dw208388586;
    _d629889747 =
        y963936255.rtf366136982 ??
            _d629889747;
    _j134456790 =
        y963936255.cfd414528746 ??
            _j134456790;
    _yu202704486 =
        y963936255.tyq938088494 ?? _yu202704486;
    _jy381317581 =
        y963936255.as1016189636 ?? _jy381317581;
    _xf653443228 =
        y963936255.ejm178815832 ?? _xf653443228;
    _bg157010995 =
        y963936255.u529816148 ?? _bg157010995;
    _nm1040033178 =
        y963936255.f1024539698 ?? f1024539698;
    _roc19836297 =
        y963936255.fpf76066446 ?? _roc19836297;
    _iy386269387 =
        y963936255.ti834937018 ??
            _iy386269387;
    _rpo981467614 =
        y963936255.fk465386035 ?? _rpo981467614;
    _eet534557715 = y963936255.w702147297 ?? _eet534557715;
    await c721004543();
  }

  @override
  String toString() {
    return 'LiveConfiguration(_overrideUserConfig: $_nns709250060, _blockedFlutterSDKVersions: $_d629889747, _blockedFlutterAppVersions: $_j134456790, isCurrentSdkVersionBlocked: $ayg709781565, isCurrentAppVersionBlocked: $w324838750, _maskingColorString: $_yu202704486, _maskingColor: $_ajz374220569, _showLocalLogs: $_jy381317581, _imageQualityTypeInt: $_xf653443228, _imageQualityType: $_ldi450260715, _videoQualityTypeInt: $_bg157010995, _videoQualityType: $_z709690750, _maxScreenshots: $_nm1040033178, _maxScreenDurationInt: $_roc19836297, _maxScreenDuration: $_wnz25663895, _disableScreenTracking: $_iy386269387, _screensMasking: $_rpo981467614, _appVersion: $_eet534557715)';
  }
}
