//
import 'dart:async';

import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/h369047381.dart';
import 'package:medallia_dxa/src/c595988869.dart';
import 'package:medallia_dxa/src/nug279239976.dart';
import 'package:medallia_dxa/src/imk223424164.dart';
import 'package:medallia_dxa/src/oms389194607.dart';
import 'package:medallia_dxa/src/bg441315940.dart';
import 'package:medallia_dxa/src/z736529323.dart' as enums;
import 'package:medallia_dxa/src/z736529323.dart';
import 'package:medallia_dxa/src/hpu800796081.dart';
import 'package:medallia_dxa/src/ydm69983162.dart';
import 'package:medallia_dxa/src/e487303575.dart';
import 'package:medallia_dxa/src/jt758138335.dart';
import 'package:medallia_dxa/src/br764152064.dart';

class Rhw859069701 {
  factory Rhw859069701() {
    return _pl495137190;
  }
  Rhw859069701._instanceConstructor() {
    me592221073 = D602044879(ehu639230881: this);
  }

  static final Rhw859069701 _pl495137190 = Rhw859069701._instanceConstructor();
  Rhw859069701.testing(
    D602044879 nn221952714,
  ) : me592221073 = nn221952714;
  late final D602044879 me592221073;
  bool u282129717 = false;
  bool _r27023292 = false;
  bool get zdb740509243 => u282129717 && !p378494992;
  bool get p378494992 => _r27023292;
  bool get u993778778 => me592221073.u993778778;

  late final DxaConfig n182435976;
  late final In733035713 rs491198393 =
      Zmk583050637.u892083466.can190648545;
  late final Lau808718320 bcp594444610 = Zmk583050637.u892083466.bcp594444610;

  late final X404394719 _c385113669 =
      Zmk583050637.u892083466.xxk430006139;
  late final J554625991 _jbx709710808 =
      J554625991();
  Tm391383578 get xk505118665 {
    return zdb740509243
        ? rs491198393.xk505118665
        : _jbx709710808;
  }

  Future<void> c416743033({
    required DxaConfig n182435976,
  }) async {
    if (u282129717) {
      me592221073.us238918482.w141629169(
        F355691990.plv994359408,
        'MedalliaDXA is already initialized',
      );
      return;
    }
    me592221073.k122744553();
    this.n182435976 = n182435976;

    try {
      me592221073.us238918482
          .fww949359641(qeq285554733: n182435976.enhancedLogsEnabled);
      final V730200298 w694524007 =
          await me592221073.mt387024518.c416743033(
        j907552431: n182435976.account,
        h666692499: n182435976.property,
        mke983811462: n182435976.consents.p273667509(),
        naw683834415: Wf608124704.naw683834415,
        wrt872188676: n182435976.crashReporterEnabled,
        wv33181226: n182435976.mobileDataEnabled,
        a928857873: n182435976.enhancedLogsEnabled,
      );
      u282129717 = true;
      me592221073.us238918482
          .w141629169(F355691990.plv994359408, 'MedalliaDXA initalized');
      //
      await me592221073.k583257225.fe32651491
          .od893242101(w694524007);
      if (me592221073
          .k583257225.fe32651491.yd709782217) {
        return;
      }
      if (me592221073
          .k583257225.fe32651491.c324839338) {
        return;
      }
      me592221073.mm739089361(n182435976);

      //
      //
      await rs491198393.vq294199423(n182435976.consents);
      me592221073.us238918482.w141629169(
        F355691990.z959100263,
        'Automatic masking configuration: ${bcp594444610.xke970050337}',
      );
    } catch (e) {
      me592221073.us238918482
          .w141629169(F355691990.plv994359408, 'MedalliaDXA failed to initialize');
      rethrow;
    }
  }

  Future<void> fte231535635() async {
    if (_r27023292) return;
    _r27023292 = true;
    me592221073.us238918482.c566766259();
    if (!me592221073.u993778778) return;
    await rs491198393.r460196468(false);
    _c385113669.b326102491();
  }
}
