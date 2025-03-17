//
//

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/bdg151964329.dart';
import 'package:medallia_dxa/src/bka7916544.dart';
import 'package:medallia_dxa/src/ao848256512.dart';
import 'package:medallia_dxa/src/vbn491041516.dart' as enums;
import 'package:medallia_dxa/src/vbn491041516.dart';
import 'package:medallia_dxa/src/zmp598168748.dart';
import 'package:medallia_dxa/src/cs360100231.dart';
import 'package:medallia_dxa/src/jpf451565684.dart';
import 'package:medallia_dxa/src/qij252672357.dart';
import 'package:medallia_dxa/src/a943817748.dart';
import 'package:medallia_dxa/src/g131648959.dart';
import 'package:medallia_dxa/src/d452802285.dart';
import 'package:medallia_dxa/src/qyl955933525.dart';
import 'package:medallia_dxa/src/rn255041681.dart';

//
class Dgg733036215 {
  Dgg733036215({
    required G808717702 gd594445108,
    required E672746245 ppj1002117513,
    required C170397176 er238486046,
    required M886530133 rtx778468657,
    required B325315660 mvn962191457,
    required this.f281064133,
    required this.qjj821880822,
  }) {
    _mdy194954428 = Cp391383148(
      v387024112: ppj1002117513,
      er238486046: er238486046,
      rtx778468657: rtx778468657,
      gd594445108: gd594445108,
      mvn962191457: mvn962191457,
      jm413489144: uhb929328274,
      g294199817: g294199817,
      sg55451075: sg55451075,
      bmt280651953: bmt280651953,
      ifg612932422: ifg612932422,
      ci690467532: ci690467532,
      h393528050: h393528050,
      vzy972093005: vzy972093005,
      ohu553736062: ohu553736062,
    );
  }

  late final Cp391383148 _mdy194954428;
  Cp391383148 get cmt505118143 => _mdy194954428;
  late final Ri859070323 _ple768939443 =
      K583051259.y892084092.f507881066;
  late final Am87340452 _qhz447603065 =
      K583051259.y892084092.n522100179;
  late final Pf1047662943 _na750376046 = K583051259.y892084092.zal653426100;
  late final S394369730 _umg381625375 = K583051259.y892084092.uqz751987728;
  late final Mgs520943263 _h398446661 =
      K583051259.y892084092.m349873286;
  final String f281064133;
  MedalliaDxaCustomerConsentType qjj821880822;

  bool _ibc182681469 = false;
  bool _v84173965 = false;
  //
  //
  bool get or884417639 => _v84173965;
  bool get y901481923 => _ibc182681469;

  bool _rpp963053080 = false;
  bool _k1045368162 = false;
  bool get v945440421 => _rpp963053080;
  bool get ee101453158 =>
      _k1045368162 || _rpp963053080;

  @visibleForTesting
  NavigatorObserver uhb929328274() {
    _umg381625375.uhj141628551(Rh355692448.pm380883510, 'get new route observer');
    return _h398446661.zc37041300();
  }

  @visibleForTesting
  void sg55451075(
    RouterDelegate mxw262923870,
    String Function() xj628754296,
  ) {
    _umg381625375.uhj141628551(
      Rh355692448.pm380883510,
      'set router delegate name callback',
    );

    _h398446661.we315757341(mxw262923870);
    _h398446661
        .sg55451075(xj628754296);
  }

  @visibleForTesting
  void bmt280651953(
    String? Function(RouteSettings) htp966661745,
  ) {
    _h398446661.bmt280651953(htp966661745);
  }

  @visibleForTesting
  void ifg612932422(String iwp343814773) {
    _h398446661.ieq888190695({'/': iwp343814773});
  }

  @visibleForTesting
  void ohu553736062(Map<String, String> p872650316) {
    _umg381625375.uhj141628551(
      Rh355692448.pm380883510,
      '_setAlternativeScreenNames $p872650316',
    );

    _h398446661.ieq888190695(p872650316);
  }

  Future<void> rv460195842(bool baz510789945) async {
    _umg381625375.uhj141628551(
      Rh355692448.pm380883510,
      'Tracking permission set to: $baz510789945',
    );
    _ibc182681469 = baz510789945;
    //
    if (!baz510789945) {
      await _i630025137(false, gii1073705303: false);
      if (_ple768939443.ab378495590) return;
      await _na750376046.c531893100();
    }
  }

  void vzy972093005(List<String> ti881907708) {
    _umg381625375.uhj141628551(
      Rh355692448.pm380883510,
      'setTrackingDisabledScreenList $ti881907708',
    );
    _na750376046.vzy972093005(ti881907708);
  }

  void ci690467532(List<String> zwp275274596) {
    _umg381625375.uhj141628551(
      Rh355692448.pm380883510,
      'setRecordingDisabledScreenList $zwp275274596',
    );
    _na750376046.ci690467532(zwp275274596);
  }

  void h393528050(String kg111096820) {
    _na750376046.h393528050(kg111096820);
  }

  Future<void> _i630025137(
    bool baz510789945, {
    bool gii1073705303 = true,
  }) async {
    _umg381625375.uhj141628551(
      Rh355692448.pm380883510,
      'Recording permission set to: $baz510789945',
    );
    _v84173965 = baz510789945;
    if (baz510789945) {
      _qhz447603065.wa163679776();
    } else {
      _qhz447603065.xo689591393();
      if (_ple768939443.ab378495590) return;
      if (gii1073705303) {
        await _qhz447603065.l260696653();
      }
    }
  }

  Future<void> qkr418529678({
    required bool rh1021267942,
    required bool umv394447399,
  }) async {
    _umg381625375.uhj141628551(
      Rh355692448.o577029553,
      'setSamplingData stopTrackingDueToSample: $rh1021267942 stopRecordingDueToSampling: $umv394447399',
    );
    _rpp963053080 = rh1021267942;
    _k1045368162 = umv394447399;

    if (ee101453158) {
      _qhz447603065.xo689591393();
    } else {
      _qhz447603065.wa163679776();
    }
    if (v945440421) {
      await _na750376046.c531893100();
    }
  }

  Future<void> g294199817(
    enums.MedalliaDxaCustomerConsentType fj1060737164,
  ) async {
    _umg381625375.uhj141628551(
      Rh355692448.vv959100689,
      'Set consent to $fj1060737164',
    );
    qjj821880822 = fj1060737164;
    switch (fj1060737164) {
      case enums.MedalliaDxaCustomerConsentType.none:
        //
        await rv460195842(false);

        break;
      case enums.MedalliaDxaCustomerConsentType.analytics:
        await _i630025137(false);
        await rv460195842(true);
        break;
      case enums.MedalliaDxaCustomerConsentType.analyticsAndRecording:
        await _i630025137(true);
        await rv460195842(true);
        break;
      default:
    }
  }
}
