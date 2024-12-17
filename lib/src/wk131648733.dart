//
import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/xgu7916898.dart';
import 'package:medallia_dxa/src/pk290553368.dart';
import 'package:medallia_dxa/src/ewh974259169.dart';
import 'package:medallia_dxa/src/ukp252672007.dart';
import 'package:medallia_dxa/src/uw1031389417.dart';
import 'package:medallia_dxa/src/zau943818102.dart';
import 'package:medallia_dxa/src/m209816059.dart';
import 'package:medallia_dxa/src/jfy681534833.dart';
import 'package:medallia_dxa/src/zy173740911.dart';
import 'package:medallia_dxa/src/q452802447.dart';
import 'package:medallia_dxa/src/uzh439716763.dart';
import 'package:medallia_dxa/src/o304042319.dart';
import 'package:medallia_dxa/src/fa255042035.dart';
import 'package:medallia_dxa/src/r336048674.dart';
import 'package:medallia_dxa/src/k966267800.dart';

class Ah1047662653 with WidgetsBindingObserver, DisposeListeners {
  Ah1047662653({
    required WidgetsBinding nb759432201,
    required Je1013317509 jmo32652279,
  })  : _r336584992 = nb759432201,
        _gq399100113 = jmo32652279 {
    nb759432201.addObserver(this);
  }

  final WidgetsBinding _r336584992;
  final Je1013317509 _gq399100113;
  late final Plp764602681 _dqj679689569 =
      Zz583050905.rq892083742.c1001100584;
  late final Wpk733036501 _b415102713 =
      Zz583050905.rq892083742.s190649333;
  late final Kbl859069969 _der768939217 =
      Zz583050905.rq892083742.oxm507881224;
  late final Sn394369952 _a1061096700 = Zz583050905.rq892083742.rzq751988082;
  late final Gnn87340230 _wz447602715 =
      Zz583050905.rq892083742.lz522099889;
  late final Rb520943613 _ypn398446887 =
      Zz583050905.rq892083742.nr349873636;
  late final S1038099224 _iz1037595296 =
      Zz583050905.rq892083742.jj387024274;
  final List<Yv686663890> _cdu403891705 = [];
  @visibleForTesting
  List<Yv686663890>? pkz557307566 = [];
  final StreamController<Yv686663890> u398417153 =
      StreamController.broadcast();

  List<String> _lp1027063497 = [];
  void w972093231(List<String> s881907358) {
    _lp1027063497 = s881907358;
  }

  List<String> _ayt444608434 = [];
  void x690467758(List<String> bc275274246) {
    _ayt444608434 = bc275274246;
  }

  List<Yv686663890> get y605165343 => _cdu403891705;
  List<Yv686663890>? x813143898;
  bool get j602844656 => p565191974;
  bool p565191974 = false;

  Size? _sgz364244189;
  @visibleForTesting
  Size? get o193981138 => _sgz364244189;
  set o193981138(Size? njv409602673) {
    if (njv409602673 == _sgz364244189) return;
    //
    if (_sgz364244189 == null) {
      _sgz364244189 = njv409602673;
    } else {
      _sgz364244189 = njv409602673;
      v267113096();
    }
  }

  @visibleForTesting
  void cox94145080(Yv686663890 cg662082782) {
    _cdu403891705.add(cg662082782);
  }

  Yv686663890? get s436425471 {
    final List<Yv686663890> t64403159 =
        List<Yv686663890>.from(y605165343)
          ..removeWhere((aty412700575) => aty412700575.mk469235286);
    if (t64403159.isEmpty) return null;
    return t64403159.single;
  }

  bool fjz134583363(Yv686663890 awy497095297) {
    if (pkz557307566 == null) return true;
    Yv686663890? cg662082782;
    try {
      cg662082782 = bx279492640(
        pkz557307566!,
      );
    } catch (e) {
      cio865956298();
      return true;
    }
    if (cg662082782 != awy497095297) {
      cio865956298();
      return true;
    }
    return false;
  }

  void cio865956298() {
    _ypn398446887.kej483954669();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState vb933775823) {
    if (!_der768939217.kv740508975) return;
    _a1061096700.eoq141628901(
        T355692226.z380883796, 'didChangeAppLifecycleState $vb933775823');

    super.didChangeAppLifecycleState(vb933775823);

    switch (vb933775823) {
      case AppLifecycleState.resumed:
        mc643686526();
        break;

      default:
        if (vb933775823 == AppLifecycleState.paused ||
            vb933775823 == AppLifecycleState.inactive) {
          l50791973();
        }
    }
  }

  @override
  void didChangeMetrics() {
    if (!_der768939217.kv740508975) return;
    _a1061096700.eoq141628901(T355692226.z380883796, 'didChangeMetrics');

    o193981138 = _r336584992.platformDispatcher.views.first.physicalSize;

    super.didChangeMetrics();
  }

  Yv686663890 o38580806({
    required String njo459292997,
    required String anc652312092,
    required List<DxaRouteWithModalRederence> ymn986356938,
    required List<L958538993> qx916462628,
  }) {
    Mf72708665? by876937415;
    late final bool rzr901481633;
    late final bool hai884417797;

    _lp1027063497.contains(anc652312092).osu265148098((cdx144550301) {
      rzr901481633 = !cdx144550301;
    });
    _ayt444608434.contains(anc652312092).osu265148098((cdx144550301) {
      hai884417797 = !cdx144550301;
    });

    bool orl51384471 = rzr901481633;
    bool zce61260331 = hai884417797;

    final String e1017888335 = anc652312092;

    //
    if (_gq399100113
        .jx68325444(e1017888335)) {
      orl51384471 = false;
    }

    //
    if (_gq399100113
        .i317036012(e1017888335)) {
      zce61260331 = false;
      by876937415 = Mf72708665.ihg335361392;
    }
    //
    if (!hai884417797) {
      by876937415 = Mf72708665.wk717760356;
    }

    final int ouk212009634 = DateTime.now().millisecondsSinceEpoch;

    final Yv686663890 cg662082782 = Yv686663890.standard(
      njo459292997: njo459292997,
      ymn986356938: ymn986356938,
      qx916462628: qx916462628,
      ouk212009634: ouk212009634,
      anc652312092: anc652312092,
      hai884417797: zce61260331,
      rzr901481633: orl51384471,
      by876937415: by876937415,
    );

    return cg662082782;
  }

  //
  Future<void> e64444414(
    List<Yv686663890> hd859565705, {
    bool f136056320 = false,
  }) async {
    final Completer fu468299723 = Completer();
    await _dqj679689569.mrh756758751(
      (fu468299723) => w528426596(
        hd859565705,
        fu468299723,
        f136056320: f136056320,
      ),
      fu468299723,
    );
  }

  //
  @visibleForTesting
  Yv686663890 bx279492640(
    List<Yv686663890> hd859565705,
  ) {
    final List<Yv686663890> je1054695450 = [];
    final List<Yv686663890> sr455359595 = [];
    for (final f1052622578 in hd859565705) {
      if (f1052622578.e243852751) continue;
      if (f1052622578.u368020722) continue;
      if (f1052622578.na833759712.q4311382) {
        je1054695450.add(f1052622578);
        if (f1052622578.ymn986356938.last is J890753432 ||
            f1052622578.ymn986356938.last is T564237728) {
          sr455359595.add(f1052622578);
        }
      }
    }
    if (je1054695450.length == 1) return je1054695450.first;

    //
    //
    //
    //
    //
    //
    //
    //
    //
    if (je1054695450.length > 1) {
      late Yv686663890? n888252790;

      //
      n888252790 = je1054695450.singleWhereOrNull(
        (aty412700575) => aty412700575.ymn986356938
            .any((aty412700575) => (aty412700575 is Bmq666223541) && aty412700575.t447820029),
      );
      if (n888252790 == null) {
        throw Ftf901569938('No opaque candidate or more than one found.');
      }

      //
      //
      sr455359595.sort(
        (adq170825034, e14385299) => adq170825034.ymn986356938.last.aj77244147
            .compareTo(e14385299.ymn986356938.last.aj77244147),
      );

      //
      for (var lb499530343 = 0; lb499530343 < sr455359595.length - 1; lb499530343++) {
        final gb451901654 = sr455359595[lb499530343]
            .ymn986356938
            .last as J890753432;

        final bool nal137001554 =
            gb451901654
                    .uen219402680.pxh968880735 ==
                sr455359595[lb499530343 + 1]
                    .ymn986356938
                    .first
                    .pxh968880735;
        final bool uo112500154 =
            gb451901654
                .uen219402680.pve435388095
                .contains(
          sr455359595[lb499530343 + 1]
              .ymn986356938
              .first
              .pxh968880735,
        );

        if (!nal137001554 &&
            !uo112500154) {
          throw Ftf901569938('non opaque route is not a valid nestedRoute');
        }
      }

      //
      //
      if ((sr455359595.first.ymn986356938.last
                  as J890753432)
              .uen219402680 ==
          n888252790.ymn986356938.first) {
        return sr455359595.first;
      }

      //
      //
      if ((sr455359595.first.ymn986356938.last
                  as J890753432)
              .pxh968880735 ==
          n888252790.ymn986356938.first.pxh968880735) {
        return sr455359595.first;
      }

      //
      //
      if ((sr455359595.first.ymn986356938.last
              as J890753432)
          .uen219402680
          .pve435388095
          .contains(
            n888252790.ymn986356938.first.pxh968880735,
          )) {
        return sr455359595.first;
      }

      //
      //
      if (n888252790.ymn986356938
              .lastWhereOrNull(
                  (aty412700575) => (aty412700575 is Bmq666223541) && aty412700575.t447820029)
              ?.pve435388095
              .contains(
                sr455359595
                    .last.ymn986356938.last.pxh968880735,
              ) ==
          true) {
        return sr455359595.first;
      }
      throw Ftf901569938(
        'opaque route candidate shouldnt be painted under non opaque candidate 2',
      );
    }
    throw Ftf901569938('No candidate found');
  }

  //e64444414_getScreenVisitedFromPotentialCandidates_getScreenVisitedFromPotentialCandidates
  Future<void> w528426596(
    List<Yv686663890> hd859565705,
    Completer fu468299723, {
    bool f136056320 = false,
  }) async {
    //
    await _dqj679689569.ayz612389700();

    if (fu468299723.isCompleted) return;

    if (!_b415102713.rzr901481633) return;
    if (_b415102713.bf945440711) return;
    late bool y978332454;
    //
    //
    //
    //
    //
    //
    if (x813143898 != null) {
      y978332454 = true;
      x813143898 = null;
    } else {
      y978332454 = f136056320;
    }
    if (s436425471 != null) {
      await eic867603532(s436425471!.njo459292997);
    }
    await _dqj679689569.k551884823();
    if (fu468299723.isCompleted) return;
    //
    while (j602844656) {
      await _dqj679689569.q333851904();
      if (fu468299723.isCompleted) return;
    }

    //
    Yv686663890? cg662082782;
    while (cg662082782 == null) {
      try {
        cg662082782 =
            bx279492640(hd859565705);
      } catch (e) {
        await _dqj679689569.q333851904();
        if (fu468299723.isCompleted) return;
      }
    }
    if (fu468299723.isCompleted) return;
    if (!cg662082782.rzr901481633) {
      return;
    }
    cox94145080(
      cg662082782,
    );
    pkz557307566 = hd859565705;
    _a1061096700.eoq141628901(
      T355692226.ft959100531,
      'Start Screen - name: ${cg662082782.anc652312092} - id: ${cg662082782.nwy161819363}',
      gsa248384228: '🔵',
    );
    await _iz1037595296.e64444414(
      E186122989(
        nrs343814935: cg662082782.anc652312092,
        fss228738116: cg662082782.nwy161819363,
        kd312325765: cg662082782.ouk212009634,
        f136056320: y978332454,
      ),
    );
    //
    if (u398417153.isClosed) return;
    u398417153.add(cg662082782);
    await _wz447602715.d306345031();
  }

  Future<void> eic867603532(
    String fss228738116, {
    bool f136056320 = false,
  }) async {
    if (!_der768939217.kv740508975) return;
    late Yv686663890 cg662082782;
    late Yv686663890? skd497434146;

    if (s436425471?.njo459292997 == fss228738116) {
      skd497434146 = s436425471;
    } else {
      skd497434146 = null;
    }

    //
    //
    if (skd497434146 == null) return;
    _wz447602715.d145214444();
    final Completer xdy31360072 =
        _dqj679689569.v696465422();
    cg662082782 = skd497434146;
    //
    //
    final int tsy290459697 = y605165343.indexOf(cg662082782);
    final int gr594633649 = DateTime.now().millisecondsSinceEpoch;
    final Zwg270264787 p578647438 =
        cg662082782.wj712079963(gr594633649);
    y605165343[tsy290459697] = p578647438;
    pkz557307566 = null;
    final String lf777337876 = p578647438.anc652312092;
    final int xqf236312524 = p578647438.nwy161819363;
    final int h101383252 = p578647438.hc1032418070;

    await _dqj679689569.go619207966();

    final int yqo884440409 = h101383252;

    final Zzb882558323 dt350794694 = Zzb882558323(
      nrs343814935: lf777337876,
      fss228738116: xqf236312524,
      jod724616963: h101383252,
      a355705826: yqo884440409,
      f136056320: f136056320,
    );
    _a1061096700.eoq141628901(
      T355692226.ft959100531,
      'End Screen - name: ${dt350794694.nrs343814935} - id: ${dt350794694.fss228738116} - endTime ${dt350794694.jod724616963} - recordingEndTime ${dt350794694.a355705826}',
      gsa248384228: '🟡',
    );
    await _iz1037595296.eic867603532(dt350794694);
    xdy31360072.complete();
  }

  Future<void> j531892750() async {
    if (s436425471 == null) return;
    await eic867603532(
      s436425471!.njo459292997,
    );
  }

  @visibleForTesting
  Future<void> l50791973() async {
    _a1061096700.eoq141628901(
      T355692226.o577029331,
      'App did enter background',
    );
    //
    //
    //
    if (x813143898 != null) return;
    //
    if (s436425471 == null) return;
    x813143898 =
        pkz557307566;
    await eic867603532(
      s436425471!.njo459292997,
      f136056320: true,
    );
  }

  @visibleForTesting
  Future<void> mc643686526() async {
    _a1061096700.eoq141628901(
      T355692226.o577029331,
      'App did become active',
    );
    //
    if (x813143898 == null) return;

    final List<Yv686663890> pvm944301608 =
        x813143898!
            .map(
              (ii286663448) => ii286663448.yuq623466314(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();

    x813143898 = null;
    await e64444414(
      pvm944301608,
      f136056320: true,
    );
  }

  Future<void> v267113096() async {
    if (s436425471 == null) return;
    if (pkz557307566 == null) return;
    final rvd64552599 =
        pkz557307566;
    await eic867603532(s436425471!.njo459292997);
    final List<Yv686663890> nhs286015710 =
        rvd64552599!
            .map(
              (ii286663448) => ii286663448.yuq623466314(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();
    await e64444414(nhs286015710);
  }

  @override
  void osx326102735() {
    _r336584992.removeObserver(this);
    u398417153.close();
  }
}
