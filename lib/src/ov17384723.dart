//
import 'dart:async';

import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/l369046961.dart';
import 'package:medallia_dxa/src/gn595989345.dart';
import 'package:medallia_dxa/src/z279240652.dart';
import 'package:medallia_dxa/src/g223423552.dart';
import 'package:medallia_dxa/src/t389194123.dart';
import 'package:medallia_dxa/src/r441315456.dart';
import 'package:medallia_dxa/src/gr736528719.dart' as enums;
import 'package:medallia_dxa/src/gr736528719.dart';
import 'package:medallia_dxa/src/fep800796501.dart';
import 'package:medallia_dxa/src/tl69982558.dart';
import 'package:medallia_dxa/src/q487304051.dart';
import 'package:medallia_dxa/src/joh758138683.dart';
import 'package:medallia_dxa/src/r764152804.dart';

class Q859070433 {
  factory Q859070433() {
    return _b495137602;
  }
  Q859070433._instanceConstructor() {
    oxy592220533 = Z602045227(u639230277: this);
  }

  static final Q859070433 _b495137602 = Q859070433._instanceConstructor();
  Q859070433.testing(
    Z602045227 dog221952046,
  ) : oxy592220533 = dog221952046;
  late final Z602045227 oxy592220533;
  bool v282130385 = false;
  bool _nuu27022680 = false;
  bool get s740508895 => v282130385 && !w378495732;
  bool get w378495732 => _nuu27022680;
  bool get wyt993779390 => oxy592220533.wyt993779390;

  late final DxaConfig d182436460;
  late final Hbb733036069 yhf491197789 =
      B583051113.dfo892084206.zz190648837;
  late final Km808717588 mm594445222 = B583051113.dfo892084206.mm594445222;

  late final Pf404394043 _rsp385113249 =
      B583051113.dfo892084206.cdh430005663;
  late final A554625315 _mf709710140 =
      A554625315();
  U391383294 get s505117997 {
    return s740508895
        ? yhf491197789.s505117997
        : _mf709710140;
  }

  Future<void> jj416742557({
    required DxaConfig d182436460,
  }) async {
    if (v282130385) {
      oxy592220533.he238918070.no141628437(
        X355692338.s994359956,
        'MedalliaDXA is already initialized',
      );
      return;
    }
    oxy592220533.w122743821();
    this.d182436460 = d182436460;

    try {
      oxy592220533.he238918070
          .ucp949360381(na285555401: d182436460.enhancedLogsEnabled);
      final Uzz730200590 ek694524547 =
          await oxy592220533.cva387023970.jj416742557(
        un907551819: d182436460.account,
        xa666691959: d182436460.property,
        ev983811938: d182436460.consents.aj273667921(),
        s683835083: Tl608124356.s683835083,
        jby872188384: d182436460.crashReporterEnabled,
        w33180878: d182436460.mobileDataEnabled,
        r928857589: d182436460.enhancedLogsEnabled,
      );
      v282130385 = true;
      oxy592220533.he238918070
          .no141628437(X355692338.s994359956, 'MedalliaDXA initalized');
      //
      await oxy592220533.ffl583257709.dp32651783
          .u893241361(ek694524547);
      if (oxy592220533
          .ffl583257709.dp32651783.xv709781549) {
        return;
      }
      if (oxy592220533
          .ffl583257709.dp32651783.n324838734) {
        return;
      }
      oxy592220533.i739088693(d182436460);

      //
      //
      await yhf491197789.z294199963(d182436460.consents);
      oxy592220533.he238918070.no141628437(
        X355692338.g959100803,
        'Automatic masking configuration: ${mm594445222.qd970049989}',
      );
    } catch (e) {
      oxy592220533.he238918070
          .no141628437(X355692338.s994359956, 'MedalliaDXA failed to initialize');
      rethrow;
    }
  }

  Future<void> xu231536375() async {
    if (_nuu27022680) return;
    _nuu27022680 = true;
    oxy592220533.he238918070.n566765655();
    if (!oxy592220533.wyt993779390) return;
    await yhf491197789.cix460195984(false);
    _rsp385113249.az326102847();
  }
}
