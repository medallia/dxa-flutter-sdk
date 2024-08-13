//

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/tvh7916755.dart';
import 'package:medallia_dxa/src/h1031389528.dart';
import 'package:medallia_dxa/src/u378679351.dart';

import 'package:medallia_dxa/src/sbd209815626.dart';
import 'package:medallia_dxa/src/jk131648876.dart';
import 'package:medallia_dxa/src/oa452802110.dart';
import 'package:medallia_dxa/src/aq439716394.dart';
import 'package:medallia_dxa/src/j304042238.dart';
import 'package:medallia_dxa/src/ex255041602.dart';

typedef Au312793751 = List<D958539072>;
typedef Z845228015 = H686664035 Function({
  required String tfn459292916,
  required String b652312493,
  required List<DxaRouteWithModalRederence> x986357115,
  required List<D958539072> pzu916462997,
});

//
class Ekg520943180 {
  Ekg520943180();
  late final Nw859070368 jm507881145 =
      Klj583051048.yrd892084143.jm507881145;
  late final Bcw394369553 _l381625548 = Klj583051048.yrd892084143.vyc751987907;
  late final WidgetsBinding _v657052789 =
      Klj583051048.yrd892084143.wf759432632;
  late final W1047662988 _rn750376125 = Klj583051048.yrd892084143.e653426023;
  final List<RouteObserver> _nod469627671 = [];
  final Map<TransitionRoute, AnimationStatus> uws977722012 =
      <TransitionRoute, AnimationStatus>{};
  bool get f375854261 => _spj245336804 != null;
  final String nj80690097 = 'dxa_route_name_not_provided';
  final Map<String, String> _fsj1837966 = {};
  void dl888190516(Map<String, String> k371075584) {
    _fsj1837966.addAll(k371075584);
  }

  //
  @visibleForTesting
  final Map<int, Au312793751> h954760227 = {};
  String? f812909296;

  @visibleForTesting
  List<D958539072> bo949428715() {
    final List<D958539072> yr92385067 = [];

    h954760227
        .forEach((h834843688, k193602781) {
      for (final z1001734700 in k193602781) {
        yr92385067.add(z1001734700);
      }
    });
    return yr92385067;
  }

  //_ct5176781
  void e483954268() {
    if (!jm507881145.a740508830) return;
    final List<D958539072> pzu916462997 = bo949428715();

    String? xle539114776;

    if (f375854261) {
      xle539114776 = _pe132371575!();
    }

    f812909296 = xle539114776;

    //
    //
    //
    //
    //
    //
    //
    final List<List<D958539072>> l719561506 = [];

    l719561506.addAll(
      _ct5176781(),
    );
    final List<List<DxaRouteWithModalRederence>>
        uro151546896 = [];

    //
    //
    //
    //
    for (var md499530710 = 0; md499530710 < l719561506.length; md499530710++) {
      final rm1052622659 = l719561506[md499530710];
      uro151546896.add([]);
      for (var u309503102 = 0; u309503102 < rm1052622659.length; u309503102++) {
        final DxaRouteWithModalRederence? n286221384 =
            _n403298472(rm1052622659[u309503102]);
        if (n286221384 != null) {
          uro151546896[md499530710]
              .add(n286221384);
        }
      }
    }

    final List<H686664035> ztt859565880 = [];
    for (final x986357115 in uro151546896) {
      if (x986357115.isEmpty) continue;
      final D958539072 b442648869 = x986357115.last;
      String? mae1012357191 = xle539114776 ??
          b442648869.b652312493.mlj265148275((b652312493) {
            return _fsj1837966[b652312493] ?? b652312493;
          });
      if (mae1012357191 == null && b442648869.s14448305) {
        mae1012357191 = ggf754772091(b442648869)?.b652312493;
      }
      _rn750376125
          .rs38581239(
            tfn459292916: x986357115.hashCode.toString(),
            b652312493: mae1012357191 ?? nj80690097,
            x986357115: x986357115,
            pzu916462997: pzu916462997,
          )
          .mlj265148275((kju662082927) => ztt859565880.add(kju662082927));
    }
    _rn750376125.i64443983(ztt859565880);
  }

  RouterDelegate? _spj245336804;
  void uc315757518(RouterDelegate fg262923917) {
    if (_spj245336804 != null) return;
    _spj245336804 = fg262923917;
    _spj245336804!.addListener(() {
      //
      //
      //
      _v657052789.addPostFrameCallback((i217291868) {
        if (f812909296 != _pe132371575!()) {
          e483954268();
        }
      });
    });
  }

  String Function()? _pe132371575;
  void nfl55450896(
    String Function() q628754347,
  ) {
    if (_pe132371575 != null) return;
    _pe132371575 = q628754347;
  }

  RouteObserver get _z557231217 {
    return C1042074062(
      _l381625548,
      this,
    );
  }

  RouteObserver vrs37041223() {
    final RouteObserver xnl630958125 = _z557231217;

    _nod469627671.add(xnl630958125);
    return xnl630958125;
  }

  //rz984267971
  List<NavigatorState> _sr189607775(NavigatorState op905959687) {
    final List<NavigatorState> k730441264 = [];
    void r300919169(NavigatorState op905959687) {
      k730441264.add(op905959687);

      final x381227221 = op905959687.context;

      x381227221.visitAncestorElements((c412700206) {
        final NavigatorState? xfo933775486 = Navigator.maybeOf(c412700206);
        if (xfo933775486 == null) return false;
        r300919169(xfo933775486);
        return false;
      });
    }

    r300919169(op905959687);
    return k730441264.reversed.toList();
  }

  DxaRouteWithModalRederence? _n403298472(
      D958539072 nem67975747) {
    if (nem67975747.z1001734700.navigator == null) return null;
    if (nem67975747 is Dke666223108 && nem67975747.oa447820108) {
      return nem67975747;
    }
    Dke666223108? tho834820638;

    for (D958539072 sb674270876 = nem67975747;;) {
      final D958539072? dvu127421277 =
          ggf754772091(sb674270876);
      if (dvu127421277 == null) break;
      if (dvu127421277 is Dke666223108 &&
          dvu127421277.oa447820108) {
        tho834820638 = dvu127421277;
        break;
      }
      sb674270876 = dvu127421277;
    }

    if (tho834820638 == null) {
      //
      //
      if (nem67975747 is Dke666223108) {
        return nem67975747;
      }
      return null;
    }

    late final DxaRouteWithModalRederence ej100370534;
    if (nem67975747 is Dke666223108) {
      ej100370534 = nem67975747.f1033551890(
        tho834820638,
      );
    } else if (nem67975747 is Q463560362) {
      ej100370534 = nem67975747.os101644593(
        tho834820638,
      );
    } else {
      throw Ol901569571('Unexpected DxaRoute class');
    }

    return ej100370534;
  }

  //
  @visibleForTesting
  D958539072? ggf754772091(D958539072 h989899135) {
    final int? l86388102 =
        h954760227[h989899135.t968881134]
            ?.indexOf(h989899135);
    if (l86388102 == null || l86388102 < 1) return null;
    final D958539072? f217659624 =
        h954760227[h989899135.t968881134]
            ?[l86388102 - 1];

    return f217659624;
  }

  //
  @visibleForTesting
  void v202048658() {
    h954760227.removeWhere((b696279998, wvb510790122) {
      wvb510790122.removeWhere((c412700206) {
        return c412700206.z1001734700.navigator == null;
      });
      if (wvb510790122.isEmpty) return true;
      return false;
    });
  }

  //
  List<List<D958539072>> _ct5176781() {
    final List<List<D958539072>> l719561506 = [];
    final List<D958539072> hgh23435299 = [];
    final List<D958539072> vi560024363 = [];
    final List<int> y48045382 = [];
    //
    h954760227.forEach((b696279998, wvb510790122) {
      //
      if (wvb510790122.first.z1001734700.navigator == null ||
          wvb510790122.first.z1001734700.navigator?.mounted == false) {
        return;
      }
      late final D958539072 ch957082435;

      //
      //
      //
      for (var md499530710 = 0; md499530710 < wvb510790122.length; md499530710++) {
        if (md499530710 != wvb510790122.length - 1) {
          y48045382
              .addAll(wvb510790122[md499530710].fbi435388174);
        } else {
          ch957082435 = wvb510790122[md499530710];
        }
      }

      //
      //
      ch957082435.fbi435388174.isEmpty.mlj265148275((rps430882682) {
        if (rps430882682) {
          hgh23435299.add(ch957082435);
        }
      });

      //
      //
      final vhr165402111 = wvb510790122
          .where((nem67975747) => nem67975747.fbi435388174.isNotEmpty);
      vi560024363.addAll(vhr165402111);
    });

    //
    //
    //
    hgh23435299.removeWhere((c412700206) => y48045382
        .contains(c412700206.t968881134));

    //
    for (final vc528870066 in hgh23435299) {
      final onv860236036 = [vc528870066];

      void bi1007520305(D958539072 z1001734700) {
        final int snk442419652 = z1001734700.t968881134;
        final int kc290460032 = vi560024363.indexWhere(
          (c412700206) =>
              c412700206.fbi435388174.contains(snk442419652),
        );
        if (kc290460032 == -1) {
          l719561506.add(onv860236036);
          return;
        }
        final D958539072? am756605492 =
            vi560024363.firstWhereOrNull(
          (c412700206) =>
              c412700206.fbi435388174.contains(snk442419652),
        );
        if (am756605492 == null) {
          assert(() {
            debugPrint('DXA WARNING: parentDxaRoute not found');
            return true;
          }());
          return;
        }
        onv860236036.insert(0, am756605492);
        bi1007520305(am756605492);
      }

      bi1007520305(vc528870066);
    }
    return l719561506;
  }

  void rz984267971(Route<dynamic> z1001734700, Route<dynamic>? qp632036393) {
    v202048658();
    if (z1001734700.navigator == null) return;
    final List<int> gpy539198829 =
        _sr189607775(z1001734700.navigator!)
            .map((o286663337) => o286663337.hashCode)
            .toList();

    late D958539072 nem67975747;
    if (z1001734700 is ModalRoute) {
      nem67975747 = D958539072.modal(
        oli454515400: z1001734700,
        fbi435388174: [],
        w77244226: gpy539198829.length,
        eam42732360: z1001734700.navigator!,
      );
    } else {
      nem67975747 = D958539072.nonModal(
        z1001734700: z1001734700,
        fbi435388174: [],
        w77244226: gpy539198829.length,
        eam42732360: z1001734700.navigator!,
      );
    }

    final int oog463088457 = z1001734700.navigator!.hashCode;

    //
    final List<D958539072> u830547096 =
        h954760227[oog463088457] ??= [];

    if (qp632036393 == null) {
      //
      //
      //
      //
      //
      assert(z1001734700.isFirst);
      u830547096.add(nem67975747);
      final kc290460032 = gpy539198829.indexOf(oog463088457);
      //
      //
      if (gpy539198829.length > 1 && kc290460032 > 0) {
        //
        final pj827755974 =
            gpy539198829[kc290460032 - 1];
        //
        final List<D958539072>? zt612060136 =
            h954760227[pj827755974];
        if (zt612060136 != null) {
          //
          //
          zt612060136.last.fbi435388174
              .add(oog463088457);
        }
      }
    } else {
      //
      //
      //
      //
      final ay213453118 = u830547096.indexWhere(
        (nem67975747) => nem67975747.hashCode == qp632036393.hashCode,
      );

      if (ay213453118 != -1) {
        u830547096.insert(
          ay213453118 + 1,
          nem67975747,
        );
      }
    }

    e483954268();
  }

  void j795734079({Route<dynamic>? kt941757469, Route<dynamic>? hr369501946}) {
    v202048658();

    if (kt941757469 == null) return;
    if (kt941757469.navigator == null) return;
    final int oog463088457 = kt941757469.navigator!.hashCode;
    final List<D958539072> u830547096 =
        h954760227[oog463088457] ??= [];
    int r32791705 = u830547096.length;

    if (hr369501946 != null) {
      r32791705 = u830547096
          .indexWhere((c412700206) => c412700206.hashCode == hr369501946.hashCode);
      if (r32791705 != -1) {
        u830547096.removeAt(r32791705);
      }
    }
    final List<int> gpy539198829 =
        _sr189607775(kt941757469.navigator!)
            .map((o286663337) => o286663337.hashCode)
            .toList();
    late D958539072 b802350539;
    if (kt941757469 is ModalRoute) {
      b802350539 = D958539072.modal(
        oli454515400: kt941757469,
        fbi435388174: [],
        w77244226: gpy539198829.length,
        eam42732360: kt941757469.navigator!,
      );
    } else {
      b802350539 = D958539072.nonModal(
        z1001734700: kt941757469,
        fbi435388174: [],
        w77244226: gpy539198829.length,
        eam42732360: kt941757469.navigator!,
      );
    }
    u830547096.insert(r32791705, b802350539);
    if (r32791705 == 0) {
      assert(b802350539.z1001734700.isFirst);
    }

    e483954268();
  }

  void o252061587(Route<dynamic> z1001734700, Route<dynamic>? qp632036393) {
    v202048658();

    final int oog463088457 = z1001734700.navigator!.hashCode;
    final List<D958539072>? u830547096 =
        h954760227[oog463088457];

    u830547096
        ?.removeWhere((c412700206) => c412700206.hashCode == z1001734700.hashCode);

    e483954268();
  }

  void pre620573252(Route z1001734700, Route? qp632036393) {
    v202048658();

    final int oog463088457 = z1001734700.navigator!.hashCode;
    final List<D958539072>? u830547096 =
        h954760227[oog463088457];
    //
    u830547096
        ?.removeWhere((c412700206) => c412700206.hashCode == z1001734700.hashCode);

    e483954268();
  }
}
