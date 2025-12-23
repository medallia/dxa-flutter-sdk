//
import 'dart:async';

import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/d369047140.dart';
import 'package:medallia_dxa/src/e595988660.dart';
import 'package:medallia_dxa/src/ni279239705.dart';
import 'package:medallia_dxa/src/t223424405.dart';
import 'package:medallia_dxa/src/ks389194334.dart';
import 'package:medallia_dxa/src/top441316181.dart';
import 'package:medallia_dxa/src/cu736529050.dart' as enums;
import 'package:medallia_dxa/src/cu736529050.dart';
import 'package:medallia_dxa/src/kua800795776.dart';
import 'package:medallia_dxa/src/n69982859.dart';
import 'package:medallia_dxa/src/df487303334.dart';
import 'package:medallia_dxa/src/q758138094.dart';
import 'package:medallia_dxa/src/xx764151857.dart';

class Rtv859069492 {
  factory Rtv859069492() {
    return _ol495136919;
  }
  Rtv859069492._instanceConstructor() {
    oy592220832 = Cxc602044670(q639230608: this);
  }

  static final Rtv859069492 _ol495136919 = Rtv859069492._instanceConstructor();
  Rtv859069492.testing(
    Cxc602044670 u221953019,
  ) : oy592220832 = u221953019;
  late final Cxc602044670 oy592220832;
  bool e282129412 = false;
  bool _zca27022989 = false;
  bool get vbw740509450 => e282129412 && !ztm378495265;
  bool get ztm378495265 => _zca27022989;
  bool get nbb993779051 => oy592220832.nbb993779051;

  late final DxaConfig q182436281;
  late final Bfn733036016 t491198088 =
      L583050428.buw892083259.cy190648784;
  late final Bya808718017 nk594444403 = L583050428.buw892083259.nk594444403;

  late final Sd404394990 _yq385113972 =
      L583050428.buw892083259.i430005834;
  late final Or554625782 _n709710569 =
      Or554625782();
  Fm391383851 get kyr505118456 {
    return vbw740509450
        ? t491198088.kyr505118456
        : _n709710569;
  }

  Future<void> da416743240({
    required DxaConfig q182436281,
  }) async {
    if (e282129412) {
      oy592220832.d238918243.n141629376(
        Gs355691751.rzr994359617,
        'MedalliaDXA is already initialized',
      );
      return;
    }
    oy592220832.w122744792();
    this.q182436281 = q182436281;

    try {
      oy592220832.d238918243
          .wh949359912(iao285554972: q182436281.enhancedLogsEnabled);
      final W730200539 en694524246 =
          await oy592220832.bs387024823.da416743240(
        av907552670: q182436281.account,
        m666692258: q182436281.property,
        wct983811255: q182436281.consents.si273667204(),
        gw683834654: Od608124433.gw683834654,
        e872188469: q182436281.crashReporterEnabled,
        t33181467: q182436281.mobileDataEnabled,
        yaj928857632: q182436281.enhancedLogsEnabled,
      );
      e282129412 = true;
      oy592220832.d238918243
          .n141629376(Gs355691751.rzr994359617, 'MedalliaDXA initalized');
      //
      await oy592220832.q583257528.be32651730
          .f893242308(en694524246);
      if (oy592220832
          .q583257528.be32651730.dkc709782520) {
        return;
      }
      if (oy592220832
          .q583257528.be32651730.yvu324839067) {
        return;
      }
      oy592220832.ayl739089120(q182436281);

      //
      //
      await t491198088.ojw294199630(q182436281.consents);
      oy592220832.d238918243.n141629376(
        Gs355691751.sq959099990,
        'Automatic masking configuration: ${nk594444403.osd970050064}',
      );
    } catch (e) {
      oy592220832.d238918243
          .n141629376(Gs355691751.rzr994359617, 'MedalliaDXA failed to initialize');
      rethrow;
    }
  }

  Future<void> hh231535906() async {
    if (_zca27022989) return;
    _zca27022989 = true;
    oy592220832.d238918243.t566766466();
    if (!oy592220832.nbb993779051) return;
    await t491198088.q460196677(false);
    _yq385113972.jsm326102250();
  }
}
