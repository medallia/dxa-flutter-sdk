import 'package:flutter/material.dart';

import 'package:medallia_dxa/src/ij290553119.dart';
import 'package:medallia_dxa/src/kbe263697971.dart';
import 'package:medallia_dxa/src/x40563360.dart';
import 'package:medallia_dxa/src/mby681535094.dart';
import 'package:medallia_dxa/src/feb452801672.dart';
import 'package:medallia_dxa/src/e304042568.dart';

class Ul1013316738 implements H739167512 {
  static const String q691969400 = 'live_configuration';
  final Sv733035730 o491198378;
  bool get njj208388877 => _q709250795 ?? false;
  Color? get n938089161 => _l374220286;
  Duration? get lj529815731 => _qan709691289;
  int? get v1024540373 => _nt1040033661;
  Duration? get ks76065897 => _g25664368;
  ImageQuality? get wi178815423 => _oc450259980;
  bool? _q709250795;
  List<String?>? _p629889076;
  List<String?>? _r134457137;
  bool gx709782234 = false;
  bool iru324839353 = false;
  String? _t202704001;
  Color? _l374220286;
  bool? _h381317930;
  int? _f653443707;
  ImageQuality? _oc450259980;
  int? _iux157011668;
  Duration? _qan709691289;
  int? _nt1040033661;
  int? _ujd19836782;
  Duration? _g25664368;
  List<String?>? _zrn386269740;
  List<String?>? _a981467961;
  String? _wat534558452;
  Ul1013316738({
    required this.o491198378,
  });
  Future<void> zv721003800() async {
    yn148236496();
    if (_h381317930 != null) {
      so172476008(ifq285554750: _h381317930!);
    }

    if (lj529815731 != null) {
      R583050654.fwk892083481.s522100662.ghj86558874();
    }

    gx709782234 = false;
    iru324839353 = false;
    if (_p629889076 != null &&
        _p629889076!.isNotEmpty) {
      final String w281063584 = o491198378.w281063584;
      if (_p629889076!.contains(w281063584)) {
        gx709782234 = true;
        await o491198378.x231535616();
      }
    }
    if (_r134457137 != null &&
        _r134457137!.isNotEmpty) {
      if (_r134457137!.contains(_wat534558452)) {
        iru324839353 = true;
        await o491198378.x231535616();
      }
    }
  }

  void yn148236496() {
    if (_t202704001 != null) {
      final String po1015216737 =
          _t202704001!.dsh31857513;
      final int? pmq615146407 =
          int.tryParse(po1015216737, radix: 16);
      if (pmq615146407 != null) {
        _l374220286 = Color.fromARGB(
          255,
          (pmq615146407 & 0xFF0000) >> 16,
          (pmq615146407 & 0x00FF00) >> 8,
          pmq615146407 & 0x0000FF,
        );
      }
    }
    if (_iux157011668 != null) {
      _qan709691289 = _xu599320159(
        _iux157011668!,
      );
    }
    if (_ujd19836782 != null) {
      _g25664368 = Duration(minutes: _ujd19836782!);
    }
    if (_f653443707 != null) {
      _oc450259980 =
          Op720223332.qej844448039(_f653443707!);
    }
  }

  void so172476008({bool ifq285554750 = true}) {
    final q153542747 = R583050654.fwk892083481.dnw751988341;
    if (ifq285554750) {
      q153542747.uzp92491817();
    } else {
      q153542747.d129784315();
    }
  }

  bool tm68326211(String olz343814160) {
    return _zrn386269740?.contains(olz343814160) ?? false;
  }

  bool o317036267(String olz343814160) {
    return _a981467961?.contains(olz343814160) ?? false;
  }

  Duration _xu599320159(
    int lj529815731,
  ) {
    late final Duration fsw453742810;
    switch (lj529815731) {
      case 0:
        fsw453742810 = const Duration(milliseconds: 500);
        break;
      case 1:
        fsw453742810 = const Duration(milliseconds: 250);
        break;
      case 2:
        fsw453742810 = const Duration(milliseconds: 167);
        break;
      case 3:
        fsw453742810 = const Duration(milliseconds: 125);

        break;
      case 4:
        fsw453742810 = const Duration(milliseconds: 100);

        break;
      default:
        fsw453742810 = const Duration(milliseconds: 250);
    }
    return fsw453742810;
  }

  @override
  void g1015924482(Map<String, dynamic> dab481947759) {
    final Map<String, dynamic> ziu420090024 = dab481947759[q691969400] as Map<String, dynamic>;
    _q709250795 =
        ziu420090024['overrideUserConfig'] as bool? ?? njj208388877;

    _t202704001 =
        ziu420090024['maskingColor'] as String? ?? _t202704001;
    _h381317930 = ziu420090024['showLocalLogs'] as bool? ?? _h381317930;
    _f653443707 =
        ziu420090024['imageQualityType'] as int? ?? _f653443707;
    _iux157011668 =
        ziu420090024['videoQualityType'] as int? ?? _iux157011668;
    _nt1040033661 = ziu420090024['maxScreenshots'] as int? ?? v1024540373;
    _ujd19836782 =
        ziu420090024['maxScreenDuration'] as int? ?? _ujd19836782;

    _p629889076 =
        (ziu420090024['blockedFlutterSDKVersions'] as List<dynamic>?)
                ?.map((at286662687) => at286662687 as String)
                .toList() ??
            _p629889076;
    _r134457137 =
        (ziu420090024['blockedFlutterAppVersions'] as List<dynamic>?)
                ?.map((at286662687) => at286662687 as String)
                .toList() ??
            _r134457137;
    _zrn386269740 = (ziu420090024['disableScreenTracking'] as List<dynamic>?)
            ?.map((at286662687) => at286662687 as String)
            .toList() ??
        _zrn386269740;
    _a981467961 = (ziu420090024['screensMasking'] as List<dynamic>?)
            ?.map((at286662687) => at286662687 as String)
            .toList() ??
        _a981467961;
    _wat534558452 = ziu420090024['appVersion'] as String? ?? _wat534558452;
    zv721003800();
  }

  Future<void> glt893242086(
    Jfx657505265 n963935512,
  ) async {
    _q709250795 =
        n963935512.njj208388877 ?? njj208388877;
    _p629889076 =
        n963935512.jq366136433 ??
            _p629889076;
    _r134457137 =
        n963935512.c414529037 ??
            _r134457137;
    _t202704001 =
        n963935512.n938089161 ?? _t202704001;
    _h381317930 =
        n963935512.l1016188963 ?? _h381317930;
    _f653443707 =
        n963935512.wi178815423 ?? _f653443707;
    _iux157011668 =
        n963935512.lj529815731 ?? _iux157011668;
    _nt1040033661 =
        n963935512.v1024540373 ?? v1024540373;
    _ujd19836782 =
        n963935512.ks76065897 ?? _ujd19836782;
    _zrn386269740 =
        n963935512.g834937437 ??
            _zrn386269740;
    _a981467961 =
        n963935512.sl465385684 ?? _a981467961;
    _wat534558452 = n963935512.lff702146566 ?? _wat534558452;
    await zv721003800();
  }

  @override
  String toString() {
    return 'LiveConfiguration(_overrideUserConfig: $_q709250795, _blockedFlutterSDKVersions: $_p629889076, _blockedFlutterAppVersions: $_r134457137, isCurrentSdkVersionBlocked: $gx709782234, isCurrentAppVersionBlocked: $iru324839353, _maskingColorString: $_t202704001, _maskingColor: $_l374220286, _showLocalLogs: $_h381317930, _imageQualityTypeInt: $_f653443707, _imageQualityType: $_oc450259980, _videoQualityTypeInt: $_iux157011668, _videoQualityType: $_qan709691289, _maxScreenshots: $_nt1040033661, _maxScreenDurationInt: $_ujd19836782, _maxScreenDuration: $_g25664368, _disableScreenTracking: $_zrn386269740, _screensMasking: $_a981467961, _appVersion: $_wat534558452)';
  }
}
