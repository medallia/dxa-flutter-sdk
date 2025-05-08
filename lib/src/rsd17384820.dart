//
import 'dart:async';

import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/hm369046998.dart';
import 'package:medallia_dxa/src/gex595989254.dart';
import 'package:medallia_dxa/src/kcr279240619.dart';
import 'package:medallia_dxa/src/f223423527.dart';
import 'package:medallia_dxa/src/kf389194220.dart';
import 'package:medallia_dxa/src/diw441315559.dart';
import 'package:medallia_dxa/src/r736528680.dart' as enums;
import 'package:medallia_dxa/src/r736528680.dart';
import 'package:medallia_dxa/src/btg800796466.dart';
import 'package:medallia_dxa/src/h69982521.dart';
import 'package:medallia_dxa/src/sb487303956.dart';
import 'package:medallia_dxa/src/do758138716.dart';
import 'package:medallia_dxa/src/vz764152707.dart';

class R859070342 {
  factory R859070342() {
    return _ni495137573;
  }
  R859070342._instanceConstructor() {
    n592220434 = Q602045260(r639230242: this);
  }

  static final R859070342 _ni495137573 = R859070342._instanceConstructor();
  R859070342.testing(
    Q602045260 e221952073,
  ) : n592220434 = e221952073;
  late final Q602045260 n592220434;
  bool fl282130358 = false;
  bool _j27022655 = false;
  bool get gb740508856 => fl282130358 && !p378495635;
  bool get p378495635 => _j27022655;
  bool get e993779417 => n592220434.e993779417;

  late final DxaConfig kk182436363;
  late final Md733036098 wk491197754 =
      Z583051022.n892084105.vd190648930;
  late final Ea808717683 yt594445249 = Z583051022.n892084105.yt594445249;

  late final V404394076 _ocw385113286 =
      Z583051022.n892084105.dcd430005752;
  late final Y554625348 _tzo709710171 =
      Y554625348();
  S391383193 get khf505118026 {
    return gb740508856
        ? wk491197754.khf505118026
        : _tzo709710171;
  }

  Future<void> smp416742650({
    required DxaConfig kk182436363,
  }) async {
    if (fl282130358) {
      n592220434.lf238918097.tog141628530(
        Qqg355692373.g994360051,
        'MedalliaDXA is already initialized',
      );
      return;
    }
    n592220434.sn122743914();
    this.kk182436363 = kk182436363;

    try {
      n592220434.lf238918097
          .txx949360282(uy285555374: kk182436363.enhancedLogsEnabled);
      final X730200681 pr694524644 =
          await n592220434.sjf387023877.smp416742650(
        qs907551788: kk182436363.account,
        p666691856: kk182436363.property,
        tx983811845: kk182436363.consents.vfy273667894(),
        iyx683835052: Yf608124323.iyx683835052,
        h872188295: kk182436363.crashReporterEnabled,
        xt33180841: kk182436363.mobileDataEnabled,
        kz928857490: kk182436363.enhancedLogsEnabled,
      );
      fl282130358 = true;
      n592220434.lf238918097
          .tog141628530(Qqg355692373.g994360051, 'MedalliaDXA initalized');
      //
      await n592220434.s583257610.k32651872
          .w893241462(pr694524644);
      if (n592220434
          .s583257610.k32651872.ulx709781578) {
        return;
      }
      if (n592220434
          .s583257610.k32651872.kxg324838697) {
        return;
      }
      n592220434.qtk739088722(kk182436363);

      //
      //
      await wk491197754.mlb294200060(kk182436363.consents);
      n592220434.lf238918097.tog141628530(
        Qqg355692373.ad959100900,
        'Automatic masking configuration: ${yt594445249.jg970049954}',
      );
    } catch (e) {
      n592220434.lf238918097
          .tog141628530(Qqg355692373.g994360051, 'MedalliaDXA failed to initialize');
      rethrow;
    }
  }

  Future<void> a231536272() async {
    if (_j27022655) return;
    _j27022655 = true;
    n592220434.lf238918097.th566765616();
    if (!n592220434.e993779417) return;
    await wk491197754.r460196087(false);
    _ocw385113286.vt326102872();
  }
}
