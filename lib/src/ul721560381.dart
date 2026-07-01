//

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/ov17384723.dart';
import 'package:medallia_dxa/src/fpg50998545.dart';
import 'package:medallia_dxa/src/p320376572.dart';

import 'package:medallia_dxa/src/f674086624.dart';
import 'package:medallia_dxa/src/rm806890209.dart';
import 'package:medallia_dxa/src/q487304051.dart';
import 'package:medallia_dxa/src/e534491569.dart';
import 'package:medallia_dxa/src/c249197541.dart';
import 'package:medallia_dxa/src/r764152804.dart';

typedef E312793814 = List<Js958539009>;
typedef Jcc845227950 = R686663970 Function({
  required String gi459292853,
  required String ov652312556,
  required List<DxaRouteWithModalReference> mu986357050,
  required List<Js958539009> f916463060,
});

//
class Zbo520943117 {
  Zbo520943117();
  late final Q859070433 cdw507881208 =
      B583051113.dfo892084206.cdw507881208;
  late final Zwh394369616 _isi381625485 = B583051113.dfo892084206.fg751987842;
  late final WidgetsBinding _z657052724 =
      B583051113.dfo892084206.rhs759432697;
  late final Wec1047663053 _gxq750376188 = B583051113.dfo892084206.jot653425958;
  final List<RouteObserver> _h469627734 = [];
  final Map<TransitionRoute, AnimationStatus> _le561103855 =
      <TransitionRoute, AnimationStatus>{};
  bool get xqg517109730 => _le561103855.isNotEmpty;
  bool get kzn375854324 => _pe245336741 != null;
  final String x80690160 = 'dxa_route_name_not_provided';
  final Map<String, String> _ukz1838031 = {};
  void hh888190581(Map<String, String> tr371075649) {
    _ukz1838031.addAll(tr371075649);
  }

  //
  @visibleForTesting
  final Map<int, E312793814> wut954760290 = {};
  String? w812909233;

  @visibleForTesting
  List<Js958539009> xt949428650() {
    final List<Js958539009> stc92385130 = [];

    wut954760290
        .forEach((vjt834843753, lur193602716) {
      for (final sxx1001734765 in lur193602716) {
        stc92385130.add(sxx1001734765);
      }
    });
    return stc92385130;
  }

  //_tq5176716
  void b483954205() {
    if (!cdw507881208.s740508895) return;
    final List<Js958539009> f916463060 = xt949428650();

    String? n539114841;

    if (kzn375854324) {
      n539114841 = _wrx132371510!();
    }

    w812909233 = n539114841;

    //
    //
    //
    //
    //
    //
    //
    final List<List<Js958539009>> luq719561571 = [];

    luq719561571.addAll(
      _tq5176716(),
    );

    //
    //
    //
    //
    if (luq719561571.isEmpty) {
      return;
    }
    final List<List<DxaRouteWithModalReference>>
        o151546961 = [];

    //
    //
    //
    //
    for (var qcz499530647 = 0; qcz499530647 < luq719561571.length; qcz499530647++) {
      final tqg1052622594 = luq719561571[qcz499530647];
      o151546961.add([]);
      for (var i309503039 = 0; i309503039 < tqg1052622594.length; i309503039++) {
        final DxaRouteWithModalReference? pe286221321 =
            _v403298537(tqg1052622594[i309503039]);
        if (pe286221321 != null) {
          o151546961[qcz499530647]
              .add(pe286221321);
        }
      }
    }

    final List<R686663970> ha859565945 = [];
    for (final mu986357050 in o151546961) {
      if (mu986357050.isEmpty) continue;
      final Js958539009 b442648932 = mu986357050.last;

      String? vr1012357126;
      vr1012357126 =
          ey175916520(b442648932, n539114841);

      vr1012357126 = _ukz1838031[vr1012357126] ??
          vr1012357126;

      _gxq750376188
          .zcn38581174(
            gi459292853: mu986357050.hashCode.toString(),
            ov652312556: vr1012357126 ?? x80690160,
            mu986357050: mu986357050,
            f916463060: f916463060,
          )
          .mqx265148210((dl662082862) => ha859565945.add(dl662082862));
    }
    _gxq750376188.q64443918(ha859565945);
  }

  RouterDelegate? _pe245336741;
  void fx315757455(RouterDelegate sxt262923980) {
    if (_pe245336741 != null) return;
    _pe245336741 = sxt262923980;
    _pe245336741!.addListener(() {
      //
      //
      //
      _z657052724.addPostFrameCallback((b217291805) {
        if (w812909233 != _wrx132371510!()) {
          b483954205();
        }
      });
    });
  }

  @visibleForTesting
  String? ey175916520(
    Js958539009 b442648932,
    String? n539114841,
  ) {
    String? vr1012357126;

    if (_tr398030564 != null) {
      vr1012357126 = _tr398030564!(
        b442648932.sxx1001734765.settings,
      );
    }
    if (vr1012357126 != null) return vr1012357126;

    vr1012357126 = n539114841 ?? b442648932.ov652312556;

    if (vr1012357126 == null && b442648932.an14448368) {
      vr1012357126 = ekc754772026(b442648932)?.ov652312556;
    }
    return vr1012357126;
  }

  String? Function(RouteSettings)? _tr398030564;
  void en280651811(
    String? Function(RouteSettings) p840018578,
  ) {
    if (_tr398030564 != null) return;
    _tr398030564 = p840018578;
  }

  String Function()? _wrx132371510;
  void t55450961(
    String Function() i628754410,
  ) {
    if (_wrx132371510 != null) return;
    _wrx132371510 = i628754410;
  }

  RouteObserver get _w557231152 {
    return R1042073999(
      _isi381625485,
      this,
    );
  }

  RouteObserver k37041158() {
    final RouteObserver yfi630958188 = _w557231152;

    _h469627734.add(yfi630958188);
    return yfi630958188;
  }

  //ofe984267906
  List<NavigatorState> _qi189607710(NavigatorState gay905959750) {
    final List<NavigatorState> j730441329 = [];
    void kxo300919232(NavigatorState gay905959750) {
      j730441329.add(gay905959750);

      final v381227156 = gay905959750.context;

      v381227156.visitAncestorElements((mbm412700271) {
        final NavigatorState? d933775423 = Navigator.maybeOf(mbm412700271);
        if (d933775423 == null) return false;
        kxo300919232(d933775423);
        return false;
      });
    }

    kxo300919232(gay905959750);
    return j730441329.reversed.toList();
  }

  DxaRouteWithModalReference? _v403298537(
    Js958539009 kl67975682,
  ) {
    if (kl67975682.sxx1001734765.navigator == null) return null;
    if (kl67975682 is Pgj666223173 && kl67975682.bh447820045) {
      return kl67975682;
    }
    Pgj666223173? azz834820703;

    for (Js958539009 kvd674270941 = kl67975682;;) {
      final Js958539009? g127421212 =
          ekc754772026(kvd674270941);
      if (g127421212 == null) break;
      if (g127421212 is Pgj666223173 &&
          g127421212.bh447820045) {
        azz834820703 = g127421212;
        break;
      }
      kvd674270941 = g127421212;
    }

    if (azz834820703 == null) {
      //
      //
      if (kl67975682 is Pgj666223173) {
        return kl67975682;
      }
      return null;
    }

    late final DxaRouteWithModalReference lpz100370471;
    if (kl67975682 is Pgj666223173) {
      lpz100370471 = kl67975682.w1033551955(
        azz834820703,
      );
    } else if (kl67975682 is Ein463560427) {
      lpz100370471 = kl67975682.l101644656(
        azz834820703,
      );
    } else {
      throw J901569634('Unexpected DxaRoute class');
    }

    return lpz100370471;
  }

  //
  @visibleForTesting
  Js958539009? ekc754772026(Js958539009 en989899070) {
    final int? bi86388167 =
        wut954760290[en989899070.cjy968881071]
            ?.indexOf(en989899070);
    if (bi86388167 == null || bi86388167 < 1) return null;
    final Js958539009? qcx217659561 =
        wut954760290[en989899070.cjy968881071]
            ?[bi86388167 - 1];

    return qcx217659561;
  }

  //
  @visibleForTesting
  void s202048723() {
    wut954760290.removeWhere((i696280063, lgn510790059) {
      lgn510790059.removeWhere((mbm412700271) {
        return mbm412700271.sxx1001734765.navigator == null;
      });
      if (lgn510790059.isEmpty) return true;
      return false;
    });
  }

  //
  List<List<Js958539009>> _tq5176716() {
    final List<List<Js958539009>> luq719561571 = [];
    final List<Js958539009> og23435362 = [];
    final List<Js958539009> sc560024426 = [];
    final List<int> utt48045319 = [];
    //
    wut954760290.forEach((i696280063, lgn510790059) {
      //
      //
      if (lgn510790059.isEmpty ||
          //
          lgn510790059.first.sxx1001734765.navigator == null ||
          lgn510790059.first.sxx1001734765.navigator?.mounted == false) {
        return;
      }
      late final Js958539009 ha957082370;

      //
      //
      //
      for (var qcz499530647 = 0; qcz499530647 < lgn510790059.length; qcz499530647++) {
        if (qcz499530647 != lgn510790059.length - 1) {
          utt48045319
              .addAll(lgn510790059[qcz499530647].dss435388239);
        } else {
          ha957082370 = lgn510790059[qcz499530647];
        }
      }

      //
      //
      ha957082370.dss435388239.isEmpty.mqx265148210((s430882619) {
        if (s430882619) {
          og23435362.add(ha957082370);
        }
      });

      //
      //
      final v165402046 = lgn510790059
          .where((kl67975682) => kl67975682.dss435388239.isNotEmpty);
      sc560024426.addAll(v165402046);
    });

    //
    //
    //
    og23435362.removeWhere(
      (mbm412700271) => utt48045319
          .contains(mbm412700271.cjy968881071),
    );

    //
    for (final kbd528870131 in og23435362) {
      final n860236101 = [kbd528870131];

      void fko1007520368(Js958539009 sxx1001734765) {
        final int x442419589 = sxx1001734765.cjy968881071;
        final int oph290460097 = sc560024426.indexWhere(
          (mbm412700271) =>
              mbm412700271.dss435388239.contains(x442419589),
        );
        if (oph290460097 == -1) {
          luq719561571.add(n860236101);
          return;
        }
        final Js958539009? az756605557 =
            sc560024426.firstWhereOrNull(
          (mbm412700271) =>
              mbm412700271.dss435388239.contains(x442419589),
        );
        if (az756605557 == null) {
          assert(() {
            debugPrint('DXA WARNING: parentDxaRoute not found');
            return true;
          }());
          return;
        }
        n860236101.insert(0, az756605557);
        fko1007520368(az756605557);
      }

      fko1007520368(kbd528870131);
    }
    return luq719561571;
  }

  void ofe984267906(Route<dynamic> sxx1001734765, Route<dynamic>? xem632036456) {
    s202048723();
    if (sxx1001734765.navigator == null) return;
    final List<int> amo539198764 =
        _qi189607710(sxx1001734765.navigator!)
            .map((y286663400) => y286663400.hashCode)
            .toList();

    late Js958539009 kl67975682;
    if (sxx1001734765 is ModalRoute) {
      kl67975682 = Js958539009.modal(
        cq454515337: sxx1001734765,
        dss435388239: [],
        qeh77244163: amo539198764.length,
        g42732297: sxx1001734765.navigator!,
      );
    } else {
      kl67975682 = Js958539009.nonModal(
        sxx1001734765: sxx1001734765,
        dss435388239: [],
        qeh77244163: amo539198764.length,
        g42732297: sxx1001734765.navigator!,
      );
    }

    final int k463088392 = sxx1001734765.navigator!.hashCode;

    //
    final List<Js958539009> tta830547161 =
        wut954760290[k463088392] ??= [];

    if (xem632036456 == null) {
      //
      //
      //
      //
      //
      assert(sxx1001734765.isFirst);
      tta830547161.add(kl67975682);
      final oph290460097 = amo539198764.indexOf(k463088392);
      //
      //
      if (amo539198764.length > 1 && oph290460097 > 0) {
        //
        final t827755911 =
            amo539198764[oph290460097 - 1];
        //
        final List<Js958539009>? dt612060073 =
            wut954760290[t827755911];
        if (dt612060073 != null) {
          //
          //
          dt612060073.last.dss435388239
              .add(k463088392);
        }
      }
    } else {
      //
      //
      //
      //
      final t213453183 = tta830547161.indexWhere(
        (kl67975682) => kl67975682.hashCode == xem632036456.hashCode,
      );

      if (t213453183 != -1) {
        tta830547161.insert(
          t213453183 + 1,
          kl67975682,
        );
      }
    }

    b483954205();
  }

  void oub795734142({Route<dynamic>? s941757532, Route<dynamic>? m369501883}) {
    s202048723();

    if (s941757532 == null) return;
    if (s941757532.navigator == null) return;
    final int k463088392 = s941757532.navigator!.hashCode;
    final List<Js958539009> tta830547161 =
        wut954760290[k463088392] ??= [];
    int z32791768 = tta830547161.length;

    if (m369501883 != null) {
      z32791768 = tta830547161
          .indexWhere((mbm412700271) => mbm412700271.hashCode == m369501883.hashCode);
      if (z32791768 != -1) {
        tta830547161.removeAt(z32791768);
      }
    }
    final List<int> amo539198764 =
        _qi189607710(s941757532.navigator!)
            .map((y286663400) => y286663400.hashCode)
            .toList();
    late Js958539009 xw802350474;
    if (s941757532 is ModalRoute) {
      xw802350474 = Js958539009.modal(
        cq454515337: s941757532,
        dss435388239: [],
        qeh77244163: amo539198764.length,
        g42732297: s941757532.navigator!,
      );
    } else {
      xw802350474 = Js958539009.nonModal(
        sxx1001734765: s941757532,
        dss435388239: [],
        qeh77244163: amo539198764.length,
        g42732297: s941757532.navigator!,
      );
    }
    tta830547161.insert(z32791768, xw802350474);
    if (z32791768 == 0) {
      assert(xw802350474.sxx1001734765.isFirst);
    }

    b483954205();
  }

  void um252061650(Route<dynamic> sxx1001734765, Route<dynamic>? xem632036456) {
    s202048723();

    final int k463088392 = sxx1001734765.navigator!.hashCode;
    final List<Js958539009>? tta830547161 =
        wut954760290[k463088392];

    tta830547161
        ?.removeWhere((mbm412700271) => mbm412700271.hashCode == sxx1001734765.hashCode);

    b483954205();
  }

  void hmg620573189(Route sxx1001734765, Route? xem632036456) {
    s202048723();

    final int k463088392 = sxx1001734765.navigator!.hashCode;
    final List<Js958539009>? tta830547161 =
        wut954760290[k463088392];
    //
    tta830547161
        ?.removeWhere((mbm412700271) => mbm412700271.hashCode == sxx1001734765.hashCode);

    b483954205();
  }

  void s493996605(TransitionRoute sxx1001734765) {
    _le561103855.remove(sxx1001734765);
  }

  void kr323834831(
    TransitionRoute sxx1001734765,
    AnimationStatus g638171291,
  ) {
    _le561103855.update(
      sxx1001734765,
      (_gjh594036302) => g638171291,
      ifAbsent: () => g638171291,
    );
  }
}
