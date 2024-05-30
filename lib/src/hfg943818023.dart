//

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/ofi290553417.dart';
import 'package:medallia_dxa/src/g1031389368.dart';
import 'package:medallia_dxa/src/g378679767.dart';

import 'package:medallia_dxa/src/auw209815978.dart';
import 'package:medallia_dxa/src/jn439716810.dart';
import 'package:medallia_dxa/src/u304042270.dart';
import 'package:medallia_dxa/src/e255041954.dart';

typedef Z312793975 = List<Q958538912>;
typedef N845227535 = Vo686663811 Function({
  required String ed459292948,
  required String du652312141,
  required List<DxaRouteWithModalRederence> rt986356891,
  required List<Q958538912> beo916462709,
});

//
class Bw520943532 {
  Bw520943532({
    required Bx733036420 uvm190649252,
    required WidgetsBinding fr277876195,
    required Future<void> Function(List<Vo686663811>, {bool g136056401})
        yky64444335,
    required N845227535 z38580759,
    required Kq394370033 pqt238917655,
  })  : _n722428763 = uvm190649252,
        _hn657053077 = fr277876195,
        _ok87281915 = yky64444335,
        _ddi625829470 = z38580759,
        _fb381625644 = pqt238917655;
  final Bx733036420 _n722428763;
  final Kq394370033 _fb381625644;
  final WidgetsBinding _hn657053077;
  final Future<void> Function(List<Vo686663811>, {bool g136056401})
      _ok87281915;
  final N845227535 _ddi625829470;
  final List<RouteObserver> _syc469627639 = [];
  final Map<TransitionRoute, AnimationStatus> ice977722236 =
      <TransitionRoute, AnimationStatus>{};
  bool get woh375854421 => _ccr245336836 != null;
  final String mm80689745 = 'dxa_route_name_not_provided';
  final Map<String, String> _uw1837678 = {};
  void wte888190932(Map<String, String> nvc371076064) {
    _uw1837678.addAll(nvc371076064);
  }

  //
  @visibleForTesting
  final Map<int, Z312793975> xu954760643 = {};
  String? i812909328;

  @visibleForTesting
  List<Q958538912> t949428235() {
    final List<Q958538912> oz92384971 = [];

    xu954760643
        .forEach((typ834844104, gdq193602877) {
      for (final xz1001735116 in gdq193602877) {
        oz92384971.add(xz1001735116);
      }
    });
    return oz92384971;
  }

  //_zsz5176365
  void kqb483954620() {
    if (!_n722428763.tjw740509054) return;
    final List<Q958538912> beo916462709 = t949428235();

    String? lmj539114744;

    if (woh375854421) {
      lmj539114744 = _we132371863!();
    }

    i812909328 = lmj539114744;

    //
    //
    //
    //
    //
    //
    //
    final List<List<Q958538912>> zbx719561410 = [];

    zbx719561410.addAll(
      _zsz5176365(),
    );
    final List<List<DxaRouteWithModalRederence>>
        kk151547376 = [];

    //
    //
    //
    //
    for (var usy499530294 = 0; usy499530294 < zbx719561410.length; usy499530294++) {
      final d1052622499 = zbx719561410[usy499530294];
      kk151547376.add([]);
      for (var faf309503390 = 0; faf309503390 < d1052622499.length; faf309503390++) {
        final DxaRouteWithModalRederence? a286221736 =
            _a403298632(d1052622499[faf309503390]);
        if (a286221736 != null) {
          kk151547376[usy499530294]
              .add(a286221736);
        }
      }
    }

    final List<Vo686663811> g859565784 = [];
    for (final rt986356891 in kk151547376) {
      if (rt986356891.isEmpty) continue;
      final Q958538912 is442648773 = rt986356891.last;
      String? q1012357543 = lmj539114744 ??
          is442648773.du652312141.rcm265148051((du652312141) {
            return _uw1837678[du652312141] ?? du652312141;
          });
      if (q1012357543 == null && is442648773.yoz14448465) {
        q1012357543 = vpf754772379(is442648773)?.du652312141;
      }
      _ddi625829470(
        ed459292948: rt986356891.hashCode.toString(),
        du652312141: q1012357543 ?? mm80689745,
        rt986356891: rt986356891,
        beo916462709: beo916462709,
      ).rcm265148051((wdv662082703) => g859565784.add(wdv662082703));
    }
    _ok87281915(g859565784);
  }

  RouterDelegate? _ccr245336836;
  void ud315757102(RouterDelegate s262924141) {
    if (_ccr245336836 != null) return;
    _ccr245336836 = s262924141;
    _ccr245336836!.addListener(() {
      //
      //
      //
      _hn657053077.addPostFrameCallback((s217292220) {
        if (i812909328 != _we132371863!()) {
          kqb483954620();
        }
      });
    });
  }

  String Function()? _we132371863;
  void mp55450864(
    String Function() c628753995,
  ) {
    if (_we132371863 != null) return;
    _we132371863 = c628753995;
  }

  RouteObserver get _p557231505 {
    return V1042073646(
      _fb381625644,
      this,
    );
  }

  RouteObserver qf37041575() {
    final RouteObserver tw630958541 = _p557231505;

    _syc469627639.add(tw630958541);
    return tw630958541;
  }

  //urj984268067
  List<NavigatorState> _q189607615(NavigatorState vnw905959655) {
    final List<NavigatorState> a730441680 = [];
    void g300918881(NavigatorState vnw905959655) {
      a730441680.add(vnw905959655);

      final y381227317 = vnw905959655.context;

      y381227317.visitAncestorElements((jl412700622) {
        final NavigatorState? ki933775774 = Navigator.maybeOf(jl412700622);
        if (ki933775774 == null) return false;
        g300918881(ki933775774);
        return false;
      });
    }

    g300918881(vnw905959655);
    return a730441680.reversed.toList();
  }

  DxaRouteWithModalRederence? _a403298632(
      Q958538912 nlp67976099) {
    if (nlp67976099.xz1001735116.navigator == null) return null;
    if (nlp67976099 is Pgw666223588 && nlp67976099.bki447819948) {
      return nlp67976099;
    }
    Pgw666223588? x834821118;

    for (Q958538912 c674271100 = nlp67976099;;) {
      final Q958538912? ry127421117 =
          vpf754772379(c674271100);
      if (ry127421117 == null) break;
      if (ry127421117 is Pgw666223588 &&
          ry127421117.bki447819948) {
        x834821118 = ry127421117;
        break;
      }
      c674271100 = ry127421117;
    }

    if (x834821118 == null) {
      //
      //
      if (nlp67976099 is Pgw666223588) {
        return nlp67976099;
      }
      return null;
    }

    late final DxaRouteWithModalRederence k100370822;
    if (nlp67976099 is Pgw666223588) {
      k100370822 = nlp67976099.ah1033552370(
        x834821118,
      );
    } else if (nlp67976099 is Eh463560522) {
      k100370822 = nlp67976099.hmf101644497(
        x834821118,
      );
    } else {
      throw Z901569987('Unexpected DxaRoute class');
    }

    return k100370822;
  }

  //
  @visibleForTesting
  Q958538912? vpf754772379(Q958538912 xn989898911) {
    final int? vnq86387814 =
        xu954760643[xn989898911.mm968880654]
            ?.indexOf(xn989898911);
    if (vnq86387814 == null || vnq86387814 < 1) return null;
    final Q958538912? e217659656 =
        xu954760643[xn989898911.mm968880654]
            ?[vnq86387814 - 1];

    return e217659656;
  }

  //
  @visibleForTesting
  void gv202048882() {
    xu954760643.removeWhere((m696279646, zak510789642) {
      zak510789642.removeWhere((jl412700622) {
        return jl412700622.xz1001735116.navigator == null;
      });
      if (zak510789642.isEmpty) return true;
      return false;
    });
  }

  //
  List<List<Q958538912>> _zsz5176365() {
    final List<List<Q958538912>> zbx719561410 = [];
    final List<Q958538912> ifg23435715 = [];
    final List<Q958538912> id560024267 = [];
    final List<int> l48045222 = [];
    //
    xu954760643.forEach((m696279646, zak510789642) {
      //
      if (zak510789642.first.xz1001735116.navigator == null ||
          zak510789642.first.xz1001735116.navigator?.mounted == false) {
        return;
      }
      late final Q958538912 l957082275;

      //
      //
      //
      for (var usy499530294 = 0; usy499530294 < zak510789642.length; usy499530294++) {
        if (usy499530294 != zak510789642.length - 1) {
          l48045222
              .addAll(zak510789642[usy499530294].wp435388142);
        } else {
          l957082275 = zak510789642[usy499530294];
        }
      }

      //
      //
      l957082275.wp435388142.isEmpty.rcm265148051((d430882458) {
        if (d430882458) {
          ifg23435715.add(l957082275);
        }
      });

      //
      //
      final ljk165401631 = zak510789642
          .where((nlp67976099) => nlp67976099.wp435388142.isNotEmpty);
      id560024267.addAll(ljk165401631);
    });

    //
    //
    //
    ifg23435715.removeWhere((jl412700622) => l48045222
        .contains(jl412700622.mm968880654));

    //
    for (final cqm528870226 in ifg23435715) {
      final p860236004 = [cqm528870226];

      void ogz1007520721(Q958538912 xz1001735116) {
        final int yv442419236 = xz1001735116.mm968880654;
        final int o290459744 = id560024267.indexWhere(
          (jl412700622) =>
              jl412700622.wp435388142.contains(yv442419236),
        );
        if (o290459744 == -1) {
          zbx719561410.add(p860236004);
          return;
        }
        final Q958538912? dc756605908 =
            id560024267.firstWhereOrNull(
          (jl412700622) =>
              jl412700622.wp435388142.contains(yv442419236),
        );
        if (dc756605908 == null) {
          assert(() {
            debugPrint('DXA WARNING: parentDxaRoute not found');
            return true;
          }());
          return;
        }
        p860236004.insert(0, dc756605908);
        ogz1007520721(dc756605908);
      }

      ogz1007520721(cqm528870226);
    }
    return zbx719561410;
  }

  void urj984268067(Route<dynamic> xz1001735116, Route<dynamic>? s632036809) {
    gv202048882();
    if (xz1001735116.navigator == null) return;
    final List<int> e539198605 =
        _q189607615(xz1001735116.navigator!)
            .map((lv286663497) => lv286663497.hashCode)
            .toList();

    late Q958538912 nlp67976099;
    if (xz1001735116 is ModalRoute) {
      nlp67976099 = Q958538912.modal(
        mm454515496: xz1001735116,
        wp435388142: [],
        b77244066: e539198605.length,
        dg42732200: xz1001735116.navigator!,
      );
    } else {
      nlp67976099 = Q958538912.nonModal(
        xz1001735116: xz1001735116,
        wp435388142: [],
        b77244066: e539198605.length,
        dg42732200: xz1001735116.navigator!,
      );
    }

    final int po463088297 = xz1001735116.navigator!.hashCode;

    //
    final List<Q958538912> uc830547320 =
        xu954760643[po463088297] ??= [];

    if (s632036809 == null) {
      //
      //
      //
      //
      //
      assert(xz1001735116.isFirst);
      uc830547320.add(nlp67976099);
      final o290459744 = e539198605.indexOf(po463088297);
      //
      //
      if (e539198605.length > 1 && o290459744 > 0) {
        //
        final hp827755558 =
            e539198605[o290459744 - 1];
        //
        final List<Q958538912>? ur612059656 =
            xu954760643[hp827755558];
        if (ur612059656 != null) {
          //
          //
          ur612059656.last.wp435388142
              .add(po463088297);
        }
      }
    } else {
      //
      //
      //
      //
      final haz213453022 = uc830547320.indexWhere(
        (nlp67976099) => nlp67976099.hashCode == s632036809.hashCode,
      );

      if (haz213453022 != -1) {
        uc830547320.insert(
          haz213453022 + 1,
          nlp67976099,
        );
      }
    }

    kqb483954620();
  }

  void huy795734495({Route<dynamic>? azj941757949, Route<dynamic>? h369501978}) {
    gv202048882();

    if (azj941757949 == null) return;
    if (azj941757949.navigator == null) return;
    final int po463088297 = azj941757949.navigator!.hashCode;
    final List<Q958538912> uc830547320 =
        xu954760643[po463088297] ??= [];
    int xh32791929 = uc830547320.length;

    if (h369501978 != null) {
      xh32791929 = uc830547320
          .indexWhere((jl412700622) => jl412700622.hashCode == h369501978.hashCode);
      if (xh32791929 != -1) {
        uc830547320.removeAt(xh32791929);
      }
    }
    final List<int> e539198605 =
        _q189607615(azj941757949.navigator!)
            .map((lv286663497) => lv286663497.hashCode)
            .toList();
    late Q958538912 sh802350123;
    if (azj941757949 is ModalRoute) {
      sh802350123 = Q958538912.modal(
        mm454515496: azj941757949,
        wp435388142: [],
        b77244066: e539198605.length,
        dg42732200: azj941757949.navigator!,
      );
    } else {
      sh802350123 = Q958538912.nonModal(
        xz1001735116: azj941757949,
        wp435388142: [],
        b77244066: e539198605.length,
        dg42732200: azj941757949.navigator!,
      );
    }
    uc830547320.insert(xh32791929, sh802350123);
    if (xh32791929 == 0) {
      assert(sh802350123.xz1001735116.isFirst);
    }

    kqb483954620();
  }

  void fd252061299(Route<dynamic> xz1001735116, Route<dynamic>? s632036809) {
    gv202048882();

    final int po463088297 = xz1001735116.navigator!.hashCode;
    final List<Q958538912>? uc830547320 =
        xu954760643[po463088297];

    uc830547320
        ?.removeWhere((jl412700622) => jl412700622.hashCode == xz1001735116.hashCode);

    kqb483954620();
  }

  void qma620573604(Route xz1001735116, Route? s632036809) {
    gv202048882();

    final int po463088297 = xz1001735116.navigator!.hashCode;
    final List<Q958538912>? uc830547320 =
        xu954760643[po463088297];
    //
    uc830547320
        ?.removeWhere((jl412700622) => jl412700622.hashCode == xz1001735116.hashCode);

    kqb483954620();
  }
}
