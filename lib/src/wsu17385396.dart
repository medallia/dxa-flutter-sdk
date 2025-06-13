//
import 'dart:async';

import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/uf369047318.dart';
import 'package:medallia_dxa/src/fbv595988934.dart';
import 'package:medallia_dxa/src/ldr279240043.dart';
import 'package:medallia_dxa/src/lx223424231.dart';
import 'package:medallia_dxa/src/ga389194540.dart';
import 'package:medallia_dxa/src/e441315879.dart';
import 'package:medallia_dxa/src/aj736529384.dart' as enums;
import 'package:medallia_dxa/src/aj736529384.dart';
import 'package:medallia_dxa/src/fx800796146.dart';
import 'package:medallia_dxa/src/fz69983225.dart';
import 'package:medallia_dxa/src/s487303636.dart';
import 'package:medallia_dxa/src/xe758138268.dart';
import 'package:medallia_dxa/src/mry764152131.dart';

class V859069766 {
  factory V859069766() {
    return _bmi495137253;
  }
  V859069766._instanceConstructor() {
    pws592221138 = B602044812(v639230946: this);
  }

  static final V859069766 _bmi495137253 = V859069766._instanceConstructor();
  V859069766.testing(
    B602044812 rrz221952649,
  ) : pws592221138 = rrz221952649;
  late final B602044812 pws592221138;
  bool q282129782 = false;
  bool _v27023359 = false;
  bool get iv740509304 => q282129782 && !xqb378495059;
  bool get xqb378495059 => _v27023359;
  bool get ak993778713 => pws592221138.ak993778713;

  late final DxaConfig fh182436043;
  late final G733035650 a491198458 =
      Fn583050702.gj892083529.t190648482;
  late final Egt808718259 w594444545 = Fn583050702.gj892083529.w594444545;

  late final D404394652 _awf385113606 =
      Fn583050702.gj892083529.za430006072;
  late final Qt554625924 _hgb709710747 =
      Qt554625924();
  Ia391383641 get l505118602 {
    return iv740509304
        ? a491198458.l505118602
        : _hgb709710747;
  }

  Future<void> a416742970({
    required DxaConfig fh182436043,
  }) async {
    if (q282129782) {
      pws592221138.vbq238918417.rw141629106(
        F355691925.si994359347,
        'MedalliaDXA is already initialized',
      );
      return;
    }
    pws592221138.xv122744490();
    this.fh182436043 = fh182436043;

    try {
      pws592221138.vbq238918417
          .g949359706(g285554798: fh182436043.enhancedLogsEnabled);
      final Ope730200233 i694523940 =
          await pws592221138.dgh387024581.a416742970(
        tw907552492: fh182436043.account,
        j666692560: fh182436043.property,
        mm983811525: fh182436043.consents.dd273667574(),
        t683834476: Oug608124771.t683834476,
        qvp872188743: fh182436043.crashReporterEnabled,
        ff33181289: fh182436043.mobileDataEnabled,
        vek928857938: fh182436043.enhancedLogsEnabled,
      );
      q282129782 = true;
      pws592221138.vbq238918417
          .rw141629106(F355691925.si994359347, 'MedalliaDXA initalized');
      //
      await pws592221138.lyo583257290.kdi32651424
          .po893242038(i694523940);
      if (pws592221138
          .lyo583257290.kdi32651424.otx709782154) {
        return;
      }
      if (pws592221138
          .lyo583257290.kdi32651424.kj324839401) {
        return;
      }
      pws592221138.ty739089298(fh182436043);

      //
      //
      await a491198458.l294199356(fh182436043.consents);
      pws592221138.vbq238918417.rw141629106(
        F355691925.xny959100196,
        'Automatic masking configuration: ${w594444545.b970050402}',
      );
    } catch (e) {
      pws592221138.vbq238918417
          .rw141629106(F355691925.si994359347, 'MedalliaDXA failed to initialize');
      rethrow;
    }
  }

  Future<void> ocn231535696() async {
    if (_v27023359) return;
    _v27023359 = true;
    pws592221138.vbq238918417.wv566766320();
    if (!pws592221138.ak993778713) return;
    await a491198458.tft460196407(false);
    _awf385113606.ul326102424();
  }
}
