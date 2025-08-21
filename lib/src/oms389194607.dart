//
//

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/h369047381.dart';
import 'package:medallia_dxa/src/v17385463.dart';
import 'package:medallia_dxa/src/bg441315940.dart';
import 'package:medallia_dxa/src/z736529323.dart' as enums;
import 'package:medallia_dxa/src/z736529323.dart';
import 'package:medallia_dxa/src/x254783023.dart';
import 'package:medallia_dxa/src/wb553097526.dart';
import 'package:medallia_dxa/src/uoj465455272.dart';
import 'package:medallia_dxa/src/bo305217750.dart';
import 'package:medallia_dxa/src/mn721560025.dart';
import 'package:medallia_dxa/src/e806889477.dart';
import 'package:medallia_dxa/src/e487303575.dart';
import 'package:medallia_dxa/src/q64670606.dart';
import 'package:medallia_dxa/src/br764152064.dart';

//
class In733035713 {
  In733035713({
    required Lau808718320 bcp594444610,
    required Hum672745843 rud1002118143,
    required N170397582 wrh238485608,
    required T886530595 bif778469191,
    required Hdw325316154 pk962191895,
    required this.do281063603,
    required this.omq821880192,
  }) {
    _ay194954954 = Tm391383578(
      mt387024518: rud1002118143,
      wrh238485608: wrh238485608,
      bif778469191: bif778469191,
      bcp594444610: bcp594444610,
      pk962191895: pk962191895,
      wnc413488526: j929328868,
      vq294199423: vq294199423,
      h55451573: h55451573,
      r280652487: r280652487,
      yig612931888: yig612931888,
      z690467002: z690467002,
      il393527428: il393527428,
      vf972092475: vf972092475,
      rp553735432: rp553735432,
    );
  }

  late final Tm391383578 _ay194954954;
  Tm391383578 get xk505118665 => _ay194954954;
  late final Rhw859069701 _kqk768939973 =
      Zmk583050637.u892083466.bpv507880476;
  late final St87341010 _lgs447603471 =
      Zmk583050637.u892083466.gri522100645;
  late final Fs1047663401 _bgf750376472 = Zmk583050637.u892083466.aco653426626;
  late final Jnx394369204 _hdu381625961 = Zmk583050637.u892083466.gcv751988326;
  late final R520942825 _gnj398447155 =
      Zmk583050637.u892083466.khb349873904;
  final String do281063603;
  MedalliaDxaCustomerConsentType omq821880192;

  bool _ju182680843 = false;
  bool _qjq84174587 = false;
  //
  //
  bool get b884418065 => _qjq84174587;
  bool get n901482421 => _ju182680843;

  bool _m963052654 = false;
  bool _rg1045368596 = false;
  bool get s945439955 => _m963052654;
  bool get fh101453584 =>
      _rg1045368596 || _m963052654;

  @visibleForTesting
  NavigatorObserver j929328868() {
    _hdu381625961.w141629169(F355691990.e380883008, 'get new route observer');
    return _gnj398447155.k37041890();
  }

  @visibleForTesting
  void h55451573(
    RouterDelegate cy262923304,
    String Function() jf628753678,
  ) {
    _hdu381625961.w141629169(
      F355691990.e380883008,
      'set router delegate name callback',
    );

    _gnj398447155.qt315756907(cy262923304);
    _gnj398447155
        .h55451573(jf628753678);
  }

  @visibleForTesting
  void r280652487(
    String? Function(RouteSettings) st966661127,
  ) {
    _gnj398447155.r280652487(st966661127);
  }

  @visibleForTesting
  void yig612931888(String u343814147) {
    _gnj398447155.z888190097({'/': u343814147});
  }

  @visibleForTesting
  void rp553735432(Map<String, String> xo872649786) {
    _hdu381625961.w141629169(
      F355691990.e380883008,
      '_setAlternativeScreenNames $xo872649786',
    );

    _gnj398447155.z888190097(xo872649786);
  }

  Future<void> r460196468(bool ky510790479) async {
    _hdu381625961.w141629169(
      F355691990.e380883008,
      'Tracking permission set to: $ky510790479',
    );
    _ju182680843 = ky510790479;
    //
    if (!ky510790479) {
      await _j630024647(false, ovv1073705761: false);
      if (_kqk768939973.p378494992) return;
      await _bgf750376472.p531892506();
    }
  }

  void vf972092475(List<String> ik881907082) {
    _hdu381625961.w141629169(
      F355691990.e380883008,
      'setTrackingDisabledScreenList $ik881907082',
    );
    _bgf750376472.vf972092475(ik881907082);
  }

  void z690467002(List<String> uel275274002) {
    _hdu381625961.w141629169(
      F355691990.e380883008,
      'setRecordingDisabledScreenList $uel275274002',
    );
    _bgf750376472.z690467002(uel275274002);
  }

  void il393527428(String qfm111096194) {
    _bgf750376472.il393527428(qfm111096194);
  }

  Future<void> _j630024647(
    bool ky510790479, {
    bool ovv1073705761 = true,
  }) async {
    _hdu381625961.w141629169(
      F355691990.e380883008,
      'Recording permission set to: $ky510790479',
    );
    _qjq84174587 = ky510790479;
    if (ky510790479) {
      _lgs447603471.v163679318();
    } else {
      _lgs447603471.s689591831();
      if (_kqk768939973.p378494992) return;
      if (ovv1073705761) {
        await _lgs447603471.bpv260696123();
      }
    }
  }

  Future<void> ere418530296({
    required bool ah1021267344,
    required bool t394446929,
  }) async {
    _hdu381625961.w141629169(
      F355691990.ozy577030087,
      'setSamplingData stopTrackingDueToSample: $ah1021267344 stopRecordingDueToSampling: $t394446929',
    );
    _m963052654 = ah1021267344;
    _rg1045368596 = t394446929;

    if (fh101453584) {
      _lgs447603471.s689591831();
    } else {
      _lgs447603471.v163679318();
    }
    if (s945439955) {
      await _bgf750376472.p531892506();
    }
  }

  Future<void> vq294199423(
    enums.MedalliaDxaCustomerConsentType rji1060737786,
  ) async {
    _hdu381625961.w141629169(
      F355691990.z959100263,
      'Set consent to $rji1060737786',
    );
    omq821880192 = rji1060737786;
    switch (rji1060737786) {
      case enums.MedalliaDxaCustomerConsentType.none:
        //
        await r460196468(false);

        break;
      case enums.MedalliaDxaCustomerConsentType.analytics:
        await _j630024647(false);
        await r460196468(true);
        break;
      case enums.MedalliaDxaCustomerConsentType.analyticsAndRecording:
        await _j630024647(true);
        await r460196468(true);
        break;
      default:
    }
  }
}
