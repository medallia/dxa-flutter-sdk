//
import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/ov17384723.dart';
import 'package:medallia_dxa/src/t389194123.dart';
import 'package:medallia_dxa/src/v359401512.dart';
import 'package:medallia_dxa/src/d465455692.dart';
import 'package:medallia_dxa/src/dx305218098.dart';
import 'package:medallia_dxa/src/fpg50998545.dart';
import 'package:medallia_dxa/src/ul721560381.dart';
import 'package:medallia_dxa/src/f674086624.dart';
import 'package:medallia_dxa/src/mp371804100.dart';
import 'package:medallia_dxa/src/q487304051.dart';
import 'package:medallia_dxa/src/joh758138683.dart';
import 'package:medallia_dxa/src/e534491569.dart';
import 'package:medallia_dxa/src/c249197541.dart';
import 'package:medallia_dxa/src/r764152804.dart';
import 'package:medallia_dxa/src/pu372442128.dart';

class Wec1047663053 extends Hn142570963 with WidgetsBindingObserver {
  Wec1047663053({
    required WidgetsBinding rhs759432697,
    required Uyh1013317237 dp32651783,
    required Pf404394043 xql421585525,
  })  : _eg336584912 = rhs759432697,
        _nh399100193 = dp32651783,
        super(xql421585525) {
    rhs759432697.addObserver(this);
  }

  final WidgetsBinding _eg336584912;
  final Uyh1013317237 _nh399100193;
  late final Duo764602569 _i679689361 =
      B583051113.dfo892084206.m1001100504;
  late final Hbb733036069 _szj415102729 =
      B583051113.dfo892084206.zz190648837;
  late final Q859070433 _u768939297 =
      B583051113.dfo892084206.cdw507881208;
  late final Zwh394369616 _opx1061096716 = B583051113.dfo892084206.fg751987842;
  late final Tzo87340342 _id447603179 =
      B583051113.dfo892084206.wv522100033;
  late final Zbo520943117 _wl398446807 =
      B583051113.dfo892084206.ls349873172;
  late final I672746391 _a1037595472 = B583051113.dfo892084206.cva387023970;
  final List<R686663970> _rm403891209 = [];
  @visibleForTesting
  List<R686663970>? t557307742 = [];
  final StreamController<R686663970> e398417137 =
      StreamController.broadcast();

  final List<Function()> _mw806089912 = [];
  void qe344867867(Function() tm612340593) {
    _mw806089912.add(tm612340593);
  }

  void kwh724764645(Function() tm612340593) {
    _mw806089912.remove(tm612340593);
  }

  void _plj512387584() {
    for (final tm612340593 in _mw806089912) {
      tm612340593();
    }
  }

  List<String> _i1027063609 = [];
  void pn972093151(List<String> zaf881907566) {
    _i1027063609 = zaf881907566;
  }

  List<String> _rm444608066 = [];
  void c690467422(List<String> vc275274742) {
    _rm444608066 = vc275274742;
  }

  List<R686663970> get m605165295 => _rm403891209;
  List<R686663970>? z813143722;
  bool get mdc602844160 =>
      _wl398446807.xqg517109730;

  Size? _qxi364244269;
  @visibleForTesting
  Size? get rsk193981218 => _qxi364244269;
  set rsk193981218(Size? pm409602945) {
    if (pm409602945 == _qxi364244269) return;
    //
    if (_qxi364244269 == null) {
      _qxi364244269 = pm409602945;
    } else {
      _qxi364244269 = pm409602945;
      zda267113336();
    }
  }

  @visibleForTesting
  void ky94145480(R686663970 dl662082862) {
    _rm403891209.add(dl662082862);
  }

  R686663970? get od436425487 {
    final List<R686663970> bju64403239 =
        List<R686663970>.from(m605165295)
          ..removeWhere((mbm412700271) => mbm412700271.evw469235622);
    if (bju64403239.isEmpty) return null;
    return bju64403239.single;
  }

  bool dk134583731(R686663970 y497095537) {
    if (t557307742 == null) return true;
    R686663970? dl662082862;
    try {
      dl662082862 = el279493072(
        t557307742!,
      );
    } catch (e) {
      dkk865955898();
      return true;
    }
    if (dl662082862 != y497095537) {
      dkk865955898();
      return true;
    }
    return false;
  }

  void dkk865955898() {
    _wl398446807.b483954205();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState d933775423) {
    if (!_u768939297.s740508895) return;
    _opx1061096716.no141628437(
      X355692338.qb380883620,
      'didChangeAppLifecycleState $d933775423',
    );

    super.didChangeAppLifecycleState(d933775423);

    switch (d933775423) {
      case AppLifecycleState.resumed:
        bq643686798();
        break;

      default:
        if (d933775423 == AppLifecycleState.paused ||
            d933775423 == AppLifecycleState.inactive) {
          g50792405();
        }
    }
  }

  @override
  void didChangeMetrics() {
    if (!_u768939297.s740508895) return;
    _opx1061096716.no141628437(X355692338.qb380883620, 'didChangeMetrics');

    rsk193981218 = _eg336584912.platformDispatcher.views.first.physicalSize;

    super.didChangeMetrics();
  }

  R686663970 zcn38581174({
    required String gi459292853,
    required String ov652312556,
    required List<DxaRouteWithModalReference> mu986357050,
    required List<Js958539009> f916463060,
  }) {
    Rvb72709065? rj876937527;
    late final bool jq901481809;
    late final bool awr884417781;

    _i1027063609.contains(ov652312556).mqx265148210((lr144549997) {
      jq901481809 = !lr144549997;
    });
    _rm444608066.contains(ov652312556).mqx265148210((lr144549997) {
      awr884417781 = !lr144549997;
    });

    bool yd51384679 = jq901481809;
    bool dh61260763 = awr884417781;

    final String pm1017888703 = ov652312556;

    //
    if (_nh399100193
        .j68325812(pm1017888703)) {
      yd51384679 = false;
    }

    //
    if (_nh399100193
        .gwr317035548(pm1017888703)) {
      dh61260763 = false;
      rj876937527 = Rvb72709065.w335361152;
    }
    //
    if (!awr884417781) {
      rj876937527 = Rvb72709065.vi717760148;
    }

    final int kmj212009810 = DateTime.now().millisecondsSinceEpoch;

    final R686663970 dl662082862 = R686663970.standard(
      gi459292853: gi459292853,
      mu986357050: mu986357050,
      f916463060: f916463060,
      kmj212009810: kmj212009810,
      ov652312556: ov652312556,
      awr884417781: dh61260763,
      jq901481809: yd51384679,
      rj876937527: rj876937527,
    );

    return dl662082862;
  }

  //
  Future<void> q64443918(
    List<R686663970> ha859565945, {
    bool dhr136056816 = false,
  }) async {
    final Completer j468299323 = Completer();
    await _i679689361.zb756758831(
      (j468299323) => hu528426900(
        ha859565945,
        j468299323,
        dhr136056816: dhr136056816,
      ),
      j468299323,
    );
  }

  //
  @visibleForTesting
  R686663970 el279493072(
    List<R686663970> ha859565945,
  ) {
    final List<R686663970> zyf1054695914 = [];
    final List<R686663970> j455359899 = [];
    for (final tqg1052622594 in ha859565945) {
      if (tqg1052622594.yuw243852351) continue;
      if (tqg1052622594.ti368020738) continue;
      if (tqg1052622594.rg833759248.c4311206) {
        zyf1054695914.add(tqg1052622594);
        if (tqg1052622594.mu986357050.last is Nx890753128 ||
            tqg1052622594.mu986357050.last is Ux564237392) {
          j455359899.add(tqg1052622594);
        }
      }
    }
    if (zyf1054695914.length == 1) return zyf1054695914.first;

    //
    //
    //
    //
    //
    //
    //
    //
    //
    if (zyf1054695914.length > 1) {
      late R686663970? n888252550;

      //
      n888252550 = zyf1054695914.singleWhereOrNull(
        (mbm412700271) => mbm412700271.mu986357050
            .any((mbm412700271) => (mbm412700271 is Pgj666223173) && mbm412700271.bh447820045),
      );
      if (n888252550 == null) {
        throw J901569634('No opaque candidate or more than one found.');
      }

      //
      //
      j455359899.sort(
        (t170824890, ms14385507) => t170824890.mu986357050.last.qeh77244163
            .compareTo(ms14385507.mu986357050.last.qeh77244163),
      );

      //
      for (var qcz499530647 = 0; qcz499530647 < j455359899.length - 1; qcz499530647++) {
        final eal451901734 = j455359899[qcz499530647]
            .mu986357050
            .last as Nx890753128;

        final bool o137001890 =
            eal451901734
                    .fm219402312.cjy968881071 ==
                j455359899[qcz499530647 + 1]
                    .mu986357050
                    .first
                    .cjy968881071;
        final bool zl112499786 =
            eal451901734
                .fm219402312.dss435388239
                .contains(
          j455359899[qcz499530647 + 1]
              .mu986357050
              .first
              .cjy968881071,
        );

        if (!o137001890 &&
            !zl112499786) {
          throw J901569634('non opaque route is not a valid nestedRoute');
        }
      }

      //
      //
      if ((j455359899.first.mu986357050.last
                  as Nx890753128)
              .fm219402312 ==
          n888252550.mu986357050.first) {
        return j455359899.first;
      }

      //
      //
      if ((j455359899.first.mu986357050.last
                  as Nx890753128)
              .cjy968881071 ==
          n888252550.mu986357050.first.cjy968881071) {
        return j455359899.first;
      }

      //
      //
      if ((j455359899.first.mu986357050.last
              as Nx890753128)
          .fm219402312
          .dss435388239
          .contains(
            n888252550.mu986357050.first.cjy968881071,
          )) {
        return j455359899.first;
      }

      //
      //
      if (n888252550.mu986357050
              .lastWhereOrNull(
                (mbm412700271) => (mbm412700271 is Pgj666223173) && mbm412700271.bh447820045,
              )
              ?.dss435388239
              .contains(
                j455359899
                    .last.mu986357050.last.cjy968881071,
              ) ==
          true) {
        return j455359899.first;
      }
      throw J901569634(
        'opaque route candidate shouldnt be painted under non opaque candidate 2',
      );
    }
    throw J901569634('No candidate found');
  }

  //q64443918_getScreenVisitedFromPotentialCandidates_getScreenVisitedFromPotentialCandidates
  Future<void> hu528426900(
    List<R686663970> ha859565945,
    Completer j468299323, {
    bool dhr136056816 = false,
  }) async {
    //
    await _i679689361.rw612389556();

    if (j468299323.isCompleted) return;

    if (!_szj415102729.jq901481809) return;
    if (_szj415102729.p945440311) return;
    late bool n978332374;
    //
    //
    //
    //
    //
    //
    if (z813143722 != null) {
      n978332374 = true;
      z813143722 = null;
    } else {
      n978332374 = dhr136056816;
    }
    if (od436425487 != null) {
      await io867603900(od436425487!.gi459292853);
    }
    await _i679689361.ojt551885287();
    if (j468299323.isCompleted) return;
    //
    while (mdc602844160) {
      await _i679689361.pmj333851888();
      if (j468299323.isCompleted) return;
    }

    //
    R686663970? dl662082862;
    while (dl662082862 == null) {
      try {
        dl662082862 =
            el279493072(ha859565945);
      } catch (e) {
        await _i679689361.pmj333851888();
        if (j468299323.isCompleted) return;
      }
    }
    if (j468299323.isCompleted) return;
    if (!dl662082862.jq901481809) {
      return;
    }
    ky94145480(
      dl662082862,
    );
    t557307742 = ha859565945;
    _opx1061096716.no141628437(
      X355692338.g959100803,
      'Start Screen - name: ${dl662082862.ov652312556} - id: ${dl662082862.go161819411} - startTime ${dl662082862.kmj212009810}',
      txc248384276: '🔵',
    );
    await _a1037595472.q64443918(
      y343814887: dl662082862.ov652312556,
      zlx228738484: dl662082862.go161819411,
      vf312326005: dl662082862.kmj212009810,
      dhr136056816: n978332374,
    );
    //
    if (e398417137.isClosed) return;
    e398417137.add(dl662082862);
    await _id447603179.v306345399();
  }

  Future<void> io867603900(
    String zlx228738484, {
    bool dhr136056816 = false,
  }) async {
    if (!_u768939297.s740508895) return;
    late R686663970 dl662082862;
    late R686663970? c497434578;

    if (od436425487?.gi459292853 == zlx228738484) {
      c497434578 = od436425487;
    } else {
      c497434578 = null;
    }

    //
    //
    if (c497434578 == null) return;
    _id447603179.ye145213980();
    final Completer a31360440 =
        _i679689361.jar696465918();
    dl662082862 = c497434578;
    //
    //
    final int oph290460097 = m605165295.indexOf(dl662082862);
    final int yny594633281 = DateTime.now().millisecondsSinceEpoch;
    final Hb270264355 pn578647166 =
        dl662082862.zcg712080299(yny594633281);
    m605165295[oph290460097] = pn578647166;
    t557307742 = null;
    final String uan777338340 = pn578647166.ov652312556;
    final int p236312124 = pn578647166.go161819411;
    final int dw101383588 = pn578647166.tg1032418022;

    _plj512387584();
    await _i679689361.hh619207918();
    final int sd884440233 = dw101383588;

    _opx1061096716.no141628437(
      X355692338.g959100803,
      'End Screen - name: $uan777338340 - id: $p236312124 - endTime $dw101383588 - recordingEndTime $sd884440233',
      txc248384276: '🟡',
    );
    await _a1037595472.io867603900(
      y343814887: uan777338340,
      zlx228738484: p236312124,
      a724616947: dw101383588,
      er355705362: sd884440233,
      dhr136056816: dhr136056816,
    );
    a31360440.complete();
  }

  Future<void> bk531893246() async {
    if (od436425487 == null) return;
    await io867603900(
      od436425487!.gi459292853,
    );
  }

  @visibleForTesting
  Future<void> g50792405() async {
    _opx1061096716.no141628437(
      X355692338.k577029411,
      'App did enter background',
    );
    //
    //
    //
    if (z813143722 != null) return;
    //
    if (od436425487 == null) return;
    z813143722 =
        t557307742;
    await io867603900(
      od436425487!.gi459292853,
      dhr136056816: true,
    );
  }

  @visibleForTesting
  Future<void> bq643686798() async {
    _opx1061096716.no141628437(
      X355692338.k577029411,
      'App did become active',
    );
    //
    if (z813143722 == null) return;

    final List<R686663970> c944302040 =
        z813143722!
            .map(
              (y286663400) => y286663400.d623466170(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();

    z813143722 = null;
    await q64443918(
      c944302040,
      dhr136056816: true,
    );
  }

  Future<void> zda267113336() async {
    if (od436425487 == null) return;
    if (t557307742 == null) return;
    final ty64552807 =
        t557307742;
    await io867603900(od436425487!.gi459292853);
    final List<R686663970> c286015790 =
        ty64552807!
            .map(
              (y286663400) => y286663400.d623466170(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();
    await q64443918(c286015790);
  }

  Future<void> g393527904(String nz131698641) async {
    if (od436425487 == null) return;
    if (t557307742 == null) return;
    final nvd971782222 =
        od436425487!.c801147285(nz131698641);
    final int oph290460097 = t557307742!
        .indexWhere((mbm412700271) => mbm412700271.gi459292853 == od436425487!.gi459292853);
    if (oph290460097 == -1) return;
    t557307742![oph290460097] = nvd971782222;
    await zda267113336();
  }

  @override
  void az326102847() {
    _eg336584912.removeObserver(this);
    e398417137.close();
  }
}
