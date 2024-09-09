//
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/lai151963827.dart';
import 'package:medallia_dxa/src/plq104011878.dart';
import 'package:medallia_dxa/src/k1026614435.dart';
import 'package:medallia_dxa/src/gix290553184.dart';
import 'package:medallia_dxa/src/mbl848256026.dart';
import 'package:medallia_dxa/src/mz491041014.dart' as enums;
import 'package:medallia_dxa/src/mz491041014.dart';
import 'package:medallia_dxa/src/ws974258329.dart';
import 'package:medallia_dxa/src/ns879958122.dart';
import 'package:medallia_dxa/src/gj337065160.dart';
import 'package:medallia_dxa/src/cpv263697996.dart';
import 'package:medallia_dxa/src/qbt857697228.dart';
import 'package:medallia_dxa/src/skx598169270.dart';
import 'package:medallia_dxa/src/wq360100765.dart';
import 'package:medallia_dxa/src/su230686358.dart';
import 'package:medallia_dxa/src/ulo252672895.dart';
import 'package:medallia_dxa/src/z943818254.dart';
import 'package:medallia_dxa/src/cpo131649445.dart';
import 'package:medallia_dxa/src/x681534985.dart';
import 'package:medallia_dxa/src/f832304791.dart';
import 'package:medallia_dxa/src/o173740055.dart';
import 'package:medallia_dxa/src/v452801783.dart';
import 'package:medallia_dxa/src/xd304042551.dart';
import 'package:medallia_dxa/src/ej955933007.dart';
import 'package:medallia_dxa/src/yyq255042187.dart';
import 'package:medallia_dxa/src/en966267104.dart';

class H859069801 {
  factory H859069801() {
    return _vux495137226;
  }
  H859069801._instanceConstructor() {
    j592221181 = Ay602044835(x639230925: this);
  }

  static final H859069801 _vux495137226 = H859069801._instanceConstructor();
  H859069801.testing(
    Ay602044835 xee221952678,
  ) : j592221181 = xee221952678;
  late final Ay602044835 j592221181;
  bool l282129753 = false;
  bool _pc27023312 = false;
  bool get jpt740509271 => l282129753 && !ner378495100;
  bool get ner378495100 => _pc27023312;
  bool get s993778742 => j592221181.s993778742;

  late final DxaConfig pnx182436068;
  late final Ntp733035693 in491198421 =
      Wyf583050721.wf892083558.k190648461;
  late final Sdw808718236 lr594444590 = Wyf583050721.wf892083558.lr594444590;
  late final Cg87340990 aex522100681 =
      Wyf583050721.wf892083558.aex522100681;
  late final Pf1047663429 o653426606 = Wyf583050721.wf892083558.o653426606;
  late final Fog554625963 _sb709710772 =
      Fog554625963();
  Oqx391383670 get geg505118629 {
    return jpt740509271
        ? in491198421.geg505118629
        : _sb709710772;
  }

  Future<void> gfl416742933({
    required DxaConfig pnx182436068,
  }) async {
    if (l282129753) {
      j592221181.i238918462.ieh141629085(
        Cu355691962.dy994359324,
        'MedalliaDXA is already initialized',
      );
      return;
    }
    j592221181.ee122744453();
    this.pnx182436068 = pnx182436068;

    final ge910985399 = Wc266530175(
      vx907552451: pnx182436068.account,
      xpn666692607: pnx182436068.property,
      lnx983811562: pnx182436068.consents.e273667545(),
      brl683834435: Fzz608124748.brl683834435,
      ay872188776: pnx182436068.crashReporterEnabled,
      zll33181254: pnx182436068.mobileDataEnabled,
      ywq928857981: pnx182436068.enhancedLogsEnabled,
    );
    try {
      j592221181.i238918462
          .ad949359733(vsy285554753: pnx182436068.enhancedLogsEnabled);
      final Lh657505166 rdm170017370 =
          await j592221181.r387024618.gfl416742933(ge910985399);
      l282129753 = true;
      j592221181.i238918462
          .ieh141629085(Cu355691962.dy994359324, 'MedalliaDXA initalized');
      //
      await j592221181.to583257317.kut32651407
          .waf893242009(rdm170017370);
      if (j592221181
          .to583257317.kut32651407.q709782181) {
        return;
      }
      if (j592221181
          .to583257317.kut32651407.au324839366) {
        return;
      }
      j592221181.bsv739089341(pnx182436068);

      //
      //
      await in491198421.cz294199315(pnx182436068.consents);
      j592221181.i238918462.ieh141629085(
        Cu355691962.sv959100171,
        'Automatic masking configuration: ${lr594444590.n970050381}',
      );
    } catch (e) {
      j592221181.i238918462
          .ieh141629085(Cu355691962.dy994359324, 'MedalliaDXA failed to initialize');
      rethrow;
    }
  }

  Future<void> req231535743() async {
    if (_pc27023312) return;
    _pc27023312 = true;
    j592221181.i238918462.l566766303();
    if (!j592221181.s993778742) return;
    await in491198421.s460196376(false);
    aex522100681.r326102455();
    j592221181.to583257317.r326102455();
    o653426606.r326102455();
  }
}

class Ay602044835 {
  Ay602044835({required this.x639230925});
  final H859069801 x639230925;
  bool s993778742 = false;
  late final Nfs394369240 i238918462;
  late final B427178535 to583257317;
  late final Dzw1038098528 r387024618;

  void ee122744453() {
    r387024618 = Dzw1038098528();
    i238918462 = Nfs394369240(
      r387024618: r387024618,
      jpt740509271: () {
        return x639230925.jpt740509271;
      },
    );
    final Egl344142330 j946289977 = Egl344142330();
    final V1013316861 kut32651407 = V1013316861(
      aaq507880560: x639230925,
      i238918462: i238918462,
    );
    final B153257085 wtl385126478 = B153257085();
    to583257317 = B427178535(
      j946289977: j946289977,
      kut32651407: kut32651407,
      wtl385126478: wtl385126478,
      aaq507880560: x639230925,
    );
  }

  void bsv739089341(DxaConfig pnx182436068) {
    s993778742 = true;
    final WidgetsBinding wid759433073 = Knv895188481.wf892083558!;
    final yi674120523 = Igd204009315(
      uj325213136: wid759433073.addPostFrameCallback,
    );
    final lr594444590 = Sdw808718236(i238918462: i238918462);
    final n962720073 = Jo629108920(
      xnn444311806: rootBundle,
      pq917290660: vg,
      bws338014071: svg,
    );
    final SchedulerBinding v656604757 =
        Dw1026640266.wf892083558!;

    final X746781185 tq364809754 = X746781185();
    final p238485508 = Ay170397666(
      tq364809754: tq364809754,
      kut32651407: to583257317.kut32651407,
    );

    final Jk764602945 ea1001100880 = Jk764602945();
    final Jxo187482300 s1052757248 = Jxo187482300();
    final aex522100681 = Cg87340990(
      s1052757248: s1052757248,
      yi674120523: yi674120523,
      p238485508: p238485508,
    );
    final o653426606 = Pf1047663429(
      wid759433073: wid759433073,
      kut32651407: to583257317.kut32651407,
    );
    final nwc349873820 = Gsm520942725();
    final p962191995 = Sub325316182();
    final ok778469163 = C886530639();

    final k190648461 = Ntp733035693(
      p238485508: p238485508,
      p962191995: p962191995,
      ok778469163: ok778469163,
      lr594444590: lr594444590,
      eyt1002118035: r387024618,
      qy281063647: Fzz608124748.brl683834435,
      a821880300: pnx182436068.consents,
    );

    Wyf583050721(
      k190648461: k190648461,
      aaq507880560: x639230925,
      lr594444590: lr594444590,
      yi674120523: yi674120523,
      b751988234: i238918462,
      r387024618: r387024618,
      n962720073: n962720073,
      o653426606: o653426606,
      aex522100681: aex522100681,
      to583257317: to583257317,
      p238485508: p238485508,
      nwc349873820: nwc349873820,
      wid759433073: wid759433073,
      ea1001100880: ea1001100880,
      t995494107: v656604757,
      j946289977: to583257317.j946289977,
      kut32651407: to583257317.kut32651407,
    );
  }
}
