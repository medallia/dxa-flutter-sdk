//
import 'dart:async';

import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/bdg151964329.dart';
import 'package:medallia_dxa/src/cr104012412.dart';
import 'package:medallia_dxa/src/ihm385929489.dart';
import 'package:medallia_dxa/src/s1026614969.dart';
import 'package:medallia_dxa/src/d290553722.dart';
import 'package:medallia_dxa/src/ao848256512.dart';
import 'package:medallia_dxa/src/vbn491041516.dart' as enums;
import 'package:medallia_dxa/src/vbn491041516.dart';
import 'package:medallia_dxa/src/naa221155615.dart';
import 'package:medallia_dxa/src/zx832304269.dart';
import 'package:medallia_dxa/src/d452802285.dart';
import 'package:medallia_dxa/src/x248600066.dart';
import 'package:medallia_dxa/src/rn255041681.dart';

class Ri859070323 {
  factory Ri859070323() {
    return _p495137744;
  }
  Ri859070323._instanceConstructor() {
    gy592220647 = P602045369(tu639230423: this);
  }

  static final Ri859070323 _p495137744 = Ri859070323._instanceConstructor();
  Ri859070323.testing(
    P602045369 p221952188,
  ) : gy592220647 = p221952188;
  late final P602045369 gy592220647;
  bool sl282130243 = false;
  bool _pd27022794 = false;
  bool get brv740508749 => sl282130243 && !ab378495590;
  bool get ab378495590 => _pd27022794;
  bool get b993779244 => gy592220647.b993779244;

  late final DxaConfig fnb182436606;
  late final Dgg733036215 bid491197903 =
      K583051259.y892084092.rtm190648983;
  late final G808717702 gd594445108 = K583051259.y892084092.gd594445108;

  late final Xhs404394153 _jg385113139 =
      K583051259.y892084092.skg430005517;
  late final Jep554625457 _f709710254 =
      Jep554625457();
  Cp391383148 get cmt505118143 {
    return brv740508749
        ? bid491197903.cmt505118143
        : _f709710254;
  }

  Future<void> xc416742415({
    required DxaConfig fnb182436606,
  }) async {
    if (sl282130243) {
      gy592220647.th238917924.uhj141628551(
        Rh355692448.jc994359814,
        'MedalliaDXA is already initialized',
      );
      return;
    }
    gy592220647.coc122743967();
    this.fnb182436606 = fnb182436606;

    try {
      gy592220647.th238917924
          .br949360239(iv285555291: fnb182436606.enhancedLogsEnabled);
      final O730200732 he694524433 =
          await gy592220647.v387024112.xc416742415(
        hu907551961: fnb182436606.account,
        w666692069: fnb182436606.property,
        x983812080: fnb182436606.consents.g273668035(),
        u683834969: Ypx608124246.u683834969,
        pcm872188274: fnb182436606.crashReporterEnabled,
        fwd33180764: fnb182436606.mobileDataEnabled,
        tj928857447: fnb182436606.enhancedLogsEnabled,
      );
      sl282130243 = true;
      gy592220647.th238917924
          .uhj141628551(Rh355692448.jc994359814, 'MedalliaDXA initalized');
      //
      await gy592220647.z583257855.nyy32651925
          .ulf893241475(he694524433);
      if (gy592220647
          .z583257855.nyy32651925.ycb709781695) {
        return;
      }
      if (gy592220647
          .z583257855.nyy32651925.im324838876) {
        return;
      }
      gy592220647.tu739088807(fnb182436606);

      //
      //
      await bid491197903.g294199817(fnb182436606.consents);
      gy592220647.th238917924.uhj141628551(
        Rh355692448.vv959100689,
        'Automatic masking configuration: ${gd594445108.w970049879}',
      );
    } catch (e) {
      gy592220647.th238917924
          .uhj141628551(Rh355692448.jc994359814, 'MedalliaDXA failed to initialize');
      rethrow;
    }
  }

  Future<void> y231536229() async {
    if (_pd27022794) return;
    _pd27022794 = true;
    gy592220647.th238917924.ph566765765();
    if (!gy592220647.b993779244) return;
    await bid491197903.rv460195842(false);
    _jg385113139.e326102957();
  }
}
