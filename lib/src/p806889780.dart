//
import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/jhb17385158.dart';
import 'package:medallia_dxa/src/ks389194334.dart';
import 'package:medallia_dxa/src/rn359402493.dart';
import 'package:medallia_dxa/src/dfy465455513.dart';
import 'package:medallia_dxa/src/tbg305218023.dart';
import 'package:medallia_dxa/src/hi50998980.dart';
import 'package:medallia_dxa/src/iir721559784.dart';
import 'package:medallia_dxa/src/z674086197.dart';
import 'package:medallia_dxa/src/zbd371803153.dart';
import 'package:medallia_dxa/src/df487303334.dart';
import 'package:medallia_dxa/src/q758138094.dart';
import 'package:medallia_dxa/src/i534491748.dart';
import 'package:medallia_dxa/src/kmb249196592.dart';
import 'package:medallia_dxa/src/xx764151857.dart';
import 'package:medallia_dxa/src/sh372443077.dart';

class A1047663128 extends Rr142571014 with WidgetsBindingObserver {
  A1047663128({
    required WidgetsBinding tcy759432748,
    required Jkq1013317024 be32651730,
    required Sd404394990 nr421585312,
  })  : _grk336585477 = tcy759432748,
        _fz399100660 = be32651730,
        super(nr421585312) {
    tcy759432748.addObserver(this);
  }

  final WidgetsBinding _grk336585477;
  final Jkq1013317024 _fz399100660;
  late final S764603164 _k679690052 =
      L583050428.buw892083259.c1001101069;
  late final Bfn733036016 _hp415102172 =
      L583050428.buw892083259.cy190648784;
  late final Rtv859069492 _h768939764 =
      L583050428.buw892083259.nm507880749;
  late final Cqd394369413 _fq1061097177 = L583050428.buw892083259.sx751988567;
  late final Hoe87340771 _yk447603262 =
      L583050428.buw892083259.ja522100372;
  late final V520943064 _lk398447362 =
      L583050428.buw892083259.yyv349874113;
  late final Yqm672745538 _bnn1037594757 = L583050428.buw892083259.bs387024823;
  final List<S686664439> _mge403892188 = [];
  @visibleForTesting
  List<S686664439>? uk557307019 = [];
  final StreamController<S686664439> p398417700 =
      StreamController.broadcast();

  final List<Function()> _rst806090605 = [];
  void l344868814(Function() a612339876) {
    _rst806090605.add(a612339876);
  }

  void eu724763696(Function() a612339876) {
    _rst806090605.remove(a612339876);
  }

  void _srz512387541() {
    for (final a612339876 in _rst806090605) {
      a612339876();
    }
  }

  List<String> _jrw1027063020 = [];
  void z972092682(List<String> j881906875) {
    _jrw1027063020 = j881906875;
  }

  List<String> _pk444607895 = [];
  void hg690467211(List<String> vbc275273763) {
    _pk444607895 = vbc275273763;
  }

  List<S686664439> get c605164858 => _mge403892188;
  List<S686664439>? woo813143423;
  bool get iub602845141 =>
      _lk398447362.v517108791;

  Size? _mw364244728;
  @visibleForTesting
  Size? get x193980663 => _mw364244728;
  set x193980663(Size? cyb409602132) {
    if (cyb409602132 == _mw364244728) return;
    //
    if (_mw364244728 == null) {
      _mw364244728 = cyb409602132;
    } else {
      _mw364244728 = cyb409602132;
      i267112621();
    }
  }

  @visibleForTesting
  void zqa94144541(S686664439 b662083323) {
    _mge403892188.add(b662083323);
  }

  S686664439? get lk436424922 {
    final List<S686664439> a64402674 =
        List<S686664439>.from(c605164858)
          ..removeWhere((v412700090) => v412700090.anj469234803);
    if (a64402674.isEmpty) return null;
    return a64402674.single;
  }

  bool vx134583910(S686664439 zkx497094820) {
    if (uk557307019 == null) return true;
    S686664439? b662083323;
    try {
      b662083323 = zl279493125(
        uk557307019!,
      );
    } catch (e) {
      gy865956847();
      return true;
    }
    if (b662083323 != zkx497094820) {
      gy865956847();
      return true;
    }
    return false;
  }

  void gy865956847() {
    _lk398447362.l483954120();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState rc933776362) {
    if (!_h768939764.vbw740509450) return;
    _fq1061097177.n141629376(
      Gs355691751.pgu380883313,
      'didChangeAppLifecycleState $rc933776362',
    );

    super.didChangeAppLifecycleState(rc933776362);

    switch (rc933776362) {
      case AppLifecycleState.resumed:
        dmp643687003();
        break;

      default:
        if (rc933776362 == AppLifecycleState.paused ||
            rc933776362 == AppLifecycleState.inactive) {
          jqb50791424();
        }
    }
  }

  @override
  void didChangeMetrics() {
    if (!_h768939764.vbw740509450) return;
    _fq1061097177.n141629376(Gs355691751.pgu380883313, 'didChangeMetrics');

    x193980663 = _grk336585477.platformDispatcher.views.first.physicalSize;

    super.didChangeMetrics();
  }

  S686664439 ajg38580323({
    required String iks459293536,
    required String bf652311609,
    required List<DxaRouteWithModalReference> nc986357487,
    required List<Kt958539476> pi916463105,
  }) {
    Bdx72708124? lf876937954;
    late final bool vku901482116;
    late final bool i884418336;

    _jrw1027063020.contains(bf652311609).fg265147623((fob144550840) {
      vku901482116 = !fob144550840;
    });
    _pk444607895.contains(bf652311609).fg265147623((fob144550840) {
      i884418336 = !fob144550840;
    });

    bool h51385010 = vku901482116;
    bool i61259790 = i884418336;

    final String f1017887850 = bf652311609;

    //
    if (_fz399100660
        .w68325985(f1017887850)) {
      h51385010 = false;
    }

    //
    if (_fz399100660
        .ei317036489(f1017887850)) {
      i61259790 = false;
      lf876937954 = Bdx72708124.maa335361877;
    }
    //
    if (!i884418336) {
      lf876937954 = Bdx72708124.td717759809;
    }

    final int mox212009095 = DateTime.now().millisecondsSinceEpoch;

    final S686664439 b662083323 = S686664439.standard(
      iks459293536: iks459293536,
      nc986357487: nc986357487,
      pi916463105: pi916463105,
      mox212009095: mox212009095,
      bf652311609: bf652311609,
      i884418336: i61259790,
      vku901482116: h51385010,
      lf876937954: lf876937954,
    );

    return b662083323;
  }

  //
  Future<void> gr64443867(
    List<S686664439> cve859565228, {
    bool pt136055845 = false,
  }) async {
    final Completer xe468299246 = Completer();
    await _k679690052.k756759290(
      (xe468299246) => n528426049(
        cve859565228,
        xe468299246,
        pt136055845: pt136055845,
      ),
      xe468299246,
    );
  }

  //
  @visibleForTesting
  S686664439 zl279493125(
    List<S686664439> cve859565228,
  ) {
    final List<S686664439> rd1054695999 = [];
    final List<S686664439> y455360078 = [];
    for (final n1052622039 in cve859565228) {
      if (n1052622039.bkx243853290) continue;
      if (n1052622039.c368021207) continue;
      if (n1052622039.fjz833760197.ywg4311923) {
        rd1054695999.add(n1052622039);
        if (n1052622039.nc986357487.last is Lub890753981 ||
            n1052622039.nc986357487.last is Bd564238213) {
          y455360078.add(n1052622039);
        }
      }
    }
    if (rd1054695999.length == 1) return rd1054695999.first;

    //
    //
    //
    //
    //
    //
    //
    //
    //
    if (rd1054695999.length > 1) {
      late S686664439? o888253267;

      //
      o888253267 = rd1054695999.singleWhereOrNull(
        (v412700090) => v412700090.nc986357487
            .any((v412700090) => (v412700090 is V666222992) && v412700090.w447820504),
      );
      if (o888253267 == null) {
        throw O901570487('No opaque candidate or more than one found.');
      }

      //
      //
      y455360078.sort(
        (xvh170825583, z14385846) => xvh170825583.nc986357487.last.k77243606
            .compareTo(z14385846.nc986357487.last.k77243606),
      );

      //
      for (var uym499529794 = 0; uym499529794 < y455360078.length - 1; uym499529794++) {
        final wk451902195 = y455360078[uym499529794]
            .nc986357487
            .last as Lub890753981;

        final bool nxr137001079 =
            wk451902195
                    .dwl219403165.gbf968880250 ==
                y455360078[uym499529794 + 1]
                    .nc986357487
                    .first
                    .gbf968880250;
        final bool z112500639 =
            wk451902195
                .dwl219403165.l435387546
                .contains(
          y455360078[uym499529794 + 1]
              .nc986357487
              .first
              .gbf968880250,
        );

        if (!nxr137001079 &&
            !z112500639) {
          throw O901570487('non opaque route is not a valid nestedRoute');
        }
      }

      //
      //
      if ((y455360078.first.nc986357487.last
                  as Lub890753981)
              .dwl219403165 ==
          o888253267.nc986357487.first) {
        return y455360078.first;
      }

      //
      //
      if ((y455360078.first.nc986357487.last
                  as Lub890753981)
              .gbf968880250 ==
          o888253267.nc986357487.first.gbf968880250) {
        return y455360078.first;
      }

      //
      //
      if ((y455360078.first.nc986357487.last
              as Lub890753981)
          .dwl219403165
          .l435387546
          .contains(
            o888253267.nc986357487.first.gbf968880250,
          )) {
        return y455360078.first;
      }

      //
      //
      if (o888253267.nc986357487
              .lastWhereOrNull(
                (v412700090) => (v412700090 is V666222992) && v412700090.w447820504,
              )
              ?.l435387546
              .contains(
                y455360078
                    .last.nc986357487.last.gbf968880250,
              ) ==
          true) {
        return y455360078.first;
      }
      throw O901570487(
        'opaque route candidate shouldnt be painted under non opaque candidate 2',
      );
    }
    throw O901570487('No candidate found');
  }

  //gr64443867_getScreenVisitedFromPotentialCandidates_getScreenVisitedFromPotentialCandidates
  Future<void> n528426049(
    List<S686664439> cve859565228,
    Completer xe468299246, {
    bool pt136055845 = false,
  }) async {
    //
    await _k679690052.ltj612389217();

    if (xe468299246.isCompleted) return;

    if (!_hp415102172.vku901482116) return;
    if (_hp415102172.jgl945440226) return;
    late bool pqm978331907;
    //
    //
    //
    //
    //
    //
    if (woo813143423 != null) {
      pqm978331907 = true;
      woo813143423 = null;
    } else {
      pqm978331907 = pt136055845;
    }
    if (lk436424922 != null) {
      await kd867604073(lk436424922!.iks459293536);
    }
    await _k679690052.bo551885362();
    if (xe468299246.isCompleted) return;
    //
    while (iub602845141) {
      await _k679690052.zf333852453();
      if (xe468299246.isCompleted) return;
    }

    //
    S686664439? b662083323;
    while (b662083323 == null) {
      try {
        b662083323 =
            zl279493125(cve859565228);
      } catch (e) {
        await _k679690052.zf333852453();
        if (xe468299246.isCompleted) return;
      }
    }
    if (xe468299246.isCompleted) return;
    if (!b662083323.vku901482116) {
      return;
    }
    zqa94144541(
      b662083323,
    );
    uk557307019 = cve859565228;
    _fq1061097177.n141629376(
      Gs355691751.sq959099990,
      'Start Screen - name: ${b662083323.bf652311609} - id: ${b662083323.pub161818822} - startTime ${b662083323.mox212009095}',
      f248383681: '🔵',
    );
    await _bnn1037594757.gr64443867(
      j343814450: b662083323.bf652311609,
      epz228738657: b662083323.pub161818822,
      u312325280: b662083323.mox212009095,
      pt136055845: pqm978331907,
    );
    //
    if (p398417700.isClosed) return;
    p398417700.add(b662083323);
    await _yk447603262.pxf306345570();
  }

  Future<void> kd867604073(
    String epz228738657, {
    bool pt136055845 = false,
  }) async {
    if (!_h768939764.vbw740509450) return;
    late S686664439 b662083323;
    late S686664439? nxn497433607;

    if (lk436424922?.iks459293536 == epz228738657) {
      nxn497433607 = lk436424922;
    } else {
      nxn497433607 = null;
    }

    //
    //
    if (nxn497433607 == null) return;
    _yk447603262.pxy145213897();
    final Completer c31360621 =
        _k679690052.pum696465963();
    b662083323 = nxn497433607;
    //
    //
    final int y290460180 = c605164858.indexOf(b662083323);
    final int iy594633108 = DateTime.now().millisecondsSinceEpoch;
    final Cp270265334 sa578647979 =
        b662083323.qmm712079486(iy594633108);
    c605164858[y290460180] = sa578647979;
    uk557307019 = null;
    final String d777338417 = sa578647979.bf652311609;
    final int wgl236312041 = sa578647979.pub161818822;
    final int f101383793 = sa578647979.kfn1032417587;

    _srz512387541();
    await _k679690052.a619208507();
    final int sx884440956 = f101383793;

    _fq1061097177.n141629376(
      Gs355691751.sq959099990,
      'End Screen - name: $d777338417 - id: $wgl236312041 - endTime $f101383793 - recordingEndTime $sx884440956',
      f248383681: '🟡',
    );
    await _bnn1037594757.kd867604073(
      j343814450: d777338417,
      epz228738657: wgl236312041,
      o724616486: f101383793,
      c355705287: sx884440956,
      pt136055845: pt136055845,
    );
    c31360621.complete();
  }

  Future<void> sg531892267() async {
    if (lk436424922 == null) return;
    await kd867604073(
      lk436424922!.iks459293536,
    );
  }

  @visibleForTesting
  Future<void> jqb50791424() async {
    _fq1061097177.n141629376(
      Gs355691751.ne577029878,
      'App did enter background',
    );
    //
    //
    //
    if (woo813143423 != null) return;
    //
    if (lk436424922 == null) return;
    woo813143423 =
        uk557307019;
    await kd867604073(
      lk436424922!.iks459293536,
      pt136055845: true,
    );
  }

  @visibleForTesting
  Future<void> dmp643687003() async {
    _fq1061097177.n141629376(
      Gs355691751.ne577029878,
      'App did become active',
    );
    //
    if (woo813143423 == null) return;

    final List<S686664439> j944301069 =
        woo813143423!
            .map(
              (q286662973) => q286662973.h623465839(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();

    woo813143423 = null;
    await gr64443867(
      j944301069,
      pt136055845: true,
    );
  }

  Future<void> i267112621() async {
    if (lk436424922 == null) return;
    if (uk557307019 == null) return;
    final upr64552114 =
        uk557307019;
    await kd867604073(lk436424922!.iks459293536);
    final List<S686664439> x286016251 =
        upr64552114!
            .map(
              (q286662973) => q286662973.h623465839(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();
    await gr64443867(x286016251);
  }

  Future<void> f393527733(String vxg131697668) async {
    if (lk436424922 == null) return;
    if (uk557307019 == null) return;
    final b971783067 =
        lk436424922!.ae801147456(vxg131697668);
    final int y290460180 = uk557307019!
        .indexWhere((v412700090) => v412700090.iks459293536 == lk436424922!.iks459293536);
    if (y290460180 == -1) return;
    uk557307019![y290460180] = b971783067;
    await i267112621();
  }

  @override
  void jsm326102250() {
    _grk336585477.removeObserver(this);
    p398417700.close();
  }
}
