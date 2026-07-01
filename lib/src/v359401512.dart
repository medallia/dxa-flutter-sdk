//
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/ov17384723.dart';

import 'package:medallia_dxa/src/h41630555.dart';
import 'package:medallia_dxa/src/gnp1030034187.dart';
import 'package:medallia_dxa/src/fep800796501.dart';
import 'package:medallia_dxa/src/tl69982558.dart';
import 'package:medallia_dxa/src/c249197541.dart';
import 'package:medallia_dxa/src/r764152804.dart';

class Uyh1013317237 implements H739168239 {
  static const String mz691969935 = 'live_configuration';
  final Q859070433 cdw507881208;
  final Zwh394369616 _isi381625485;
  bool get ak208388602 => _bdr709250076 ?? false;
  Color? get xp938088510 => _w374220553;
  Duration? get p529816132 => _cao709690734;
  ImageQuality? get k178815816 => _xj450260731;
  bool? _bdr709250076;
  List<String?>? _z629889731;
  List<String?>? _n134456774;
  List<String?>? _gah622316084;
  bool xv709781549 = false;
  bool n324838734 = false;
  bool f747568862 = false;
  String? _qiw202704502;
  Color? _w374220553;
  bool? _uw381317597;
  bool? _af995566263;
  int? _ps653443212;
  ImageQuality? _xj450260731;
  int? _od157010979;
  Duration? _cao709690734;
  List<String?>? _ksk386269403;
  List<String?>? _t981467598;
  String? _w534557699;
  String? _fq761427757;
  Uyh1013317237({
    required this.cdw507881208,
    required Zwh394369616 he238918070,
  }) : _isi381625485 = he238918070;
  Future<void> ns721004527() async {
    xv709781549 = false;
    n324838734 = false;
    f747568862 = false;

    xv709781549 = _rr58433683(
      a85773489: _z629889731,
      g462602024: Tl608124356.s683835083,
      ps3926647: 'This version of the Flutter sdk has been blocked',
    );

    n324838734 = _rr58433683(
      a85773489: _n134456774,
      g462602024: _w534557699 ?? 'not set',
      ps3926647: 'This version of the app has been blocked',
    );

    f747568862 = _rr58433683(
      a85773489: _gah622316084,
      g462602024: _fq761427757 ?? 'not set',
      ps3926647: 'This version of the native sdk has been blocked',
    );

    if (xv709781549 ||
        n324838734 ||
        f747568862) {
      await cdw507881208.xu231536375();
      return;
    }

    j148236839();
    if (_uw381317597 != null) {
      _isi381625485.swz268886670(na285555401: _uw381317597!);
    }
    if (_af995566263 != null) {
      _isi381625485.d249853772(q193371623: _af995566263!);
    }
  }

  bool _rr58433683({
    required List<String?>? a85773489,
    required String g462602024,
    required String ps3926647,
  }) {
    if (a85773489 != null && a85773489.isNotEmpty) {
      if (a85773489.contains(g462602024)) {
        _isi381625485.no141628437(
          X355692338.s994359956,
          ps3926647,
        );
        return true;
      }
    }
    return false;
  }

  void j148236839() {
    if (_qiw202704502 != null) {
      final String mk1015216278 =
          _qiw202704502!.m31857054;
      final int? vr615145808 =
          int.tryParse(mk1015216278, radix: 16);
      if (vr615145808 != null) {
        _w374220553 = Color.fromARGB(
          255,
          (vr615145808 & 0xFF0000) >> 16,
          (vr615145808 & 0x00FF00) >> 8,
          vr615145808 & 0x0000FF,
        );
      }
    }

    if (_od157010979 != null) {
      _cao709690734 = _qag599319720(
        _od157010979!,
      );
    }

    if (_ps653443212 != null) {
      _xj450260731 =
          V720223891.apv844448720(_ps653443212!);
    }
  }

  bool j68325812(String y343814887) {
    return _ksk386269403?.contains(y343814887) ?? false;
  }

  bool gwr317035548(String y343814887) {
    return _t981467598?.contains(y343814887) ?? false;
  }

  Duration _qag599319720(
    int p529816132,
  ) {
    late final Duration ix453743149;
    switch (p529816132) {
      case 0:
        ix453743149 = const Duration(milliseconds: 500);
        break;
      case 1:
        ix453743149 = const Duration(milliseconds: 250);
        break;
      case 2:
        ix453743149 = const Duration(milliseconds: 167);
        break;
      case 3:
        ix453743149 = const Duration(milliseconds: 125);

        break;
      case 4:
        ix453743149 = const Duration(milliseconds: 100);

        break;
      default:
        ix453743149 = const Duration(milliseconds: 250);
    }
    return ix453743149;
  }

  @override
  void b1015924213(Map<String, dynamic> l105297008) {
    _bdr709250076 =
        l105297008['overrideUserConfig'] as bool? ?? ak208388602;

    _qiw202704502 = l105297008['maskingColor'] as String? ?? _qiw202704502;
    _uw381317597 = l105297008['showLocalLogs'] as bool? ?? _uw381317597;
    _af995566263 = l105297008['allowLocalLogs'] as bool? ?? _af995566263;
    _ps653443212 =
        l105297008['imageQualityType'] as int? ?? _ps653443212;
    _od157010979 =
        l105297008['videoQualityType'] as int? ?? _od157010979;

    _z629889731 =
        (l105297008['blockedFlutterSDKVersions'] as List<dynamic>?)
                ?.map((y286663400) => y286663400 as String)
                .toList() ??
            _z629889731;
    _n134456774 =
        (l105297008['blockedFlutterAppVersions'] as List<dynamic>?)
                ?.map((y286663400) => y286663400 as String)
                .toList() ??
            _n134456774;
    _gah622316084 =
        (l105297008['blockedNativeSDKVersions'] as List<dynamic>?)
                ?.map((y286663400) => y286663400 as String)
                .toList() ??
            _gah622316084;
    _ksk386269403 = (l105297008['disableScreenTracking'] as List<dynamic>?)
            ?.map((y286663400) => y286663400 as String)
            .toList() ??
        _ksk386269403;
    _t981467598 = (l105297008['screensMasking'] as List<dynamic>?)
            ?.map((y286663400) => y286663400 as String)
            .toList() ??
        _t981467598;
    _w534557699 = l105297008['appVersion'] as String? ?? _w534557699;
    ns721004527();
  }

  Future<void> u893241361(
    Uzz730200590 v963936239,
  ) async {
    _bdr709250076 =
        v963936239.ak208388602 ?? ak208388602;
    _z629889731 =
        v963936239.w366136966 ??
            _z629889731;
    _n134456774 =
        v963936239.zi414528762 ??
            _n134456774;
    _gah622316084 =
        v963936239.an746704336 ??
            _gah622316084;
    _qiw202704502 =
        v963936239.xp938088510 ?? _qiw202704502;
    _uw381317597 =
        v963936239.bx1016189652 ?? _uw381317597;
    _af995566263 =
        v963936239.vh531796579 ?? _af995566263;
    _ps653443212 =
        v963936239.k178815816 ?? _ps653443212;
    _od157010979 =
        v963936239.p529816132 ?? _od157010979;

    _ksk386269403 =
        v963936239.pxb834937002 ??
            _ksk386269403;
    _t981467598 =
        v963936239.sz465386019 ?? _t981467598;
    _w534557699 = v963936239.v702147313 ?? _w534557699;
    _fq761427757 =
        v963936239.mxp13556900 ?? _fq761427757;
    await ns721004527();
  }
}
