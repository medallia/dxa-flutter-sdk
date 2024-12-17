//

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/xgu7916898.dart';
import 'package:medallia_dxa/src/uw1031389417.dart';
import 'package:medallia_dxa/src/i378679686.dart';

import 'package:medallia_dxa/src/m209816059.dart';
import 'package:medallia_dxa/src/wk131648733.dart';
import 'package:medallia_dxa/src/q452802447.dart';
import 'package:medallia_dxa/src/uzh439716763.dart';
import 'package:medallia_dxa/src/o304042319.dart';
import 'package:medallia_dxa/src/fa255042035.dart';

typedef Pr312793894 = List<L958538993>;
typedef Vu845227614 = Yv686663890 Function({
  required String njo459292997,
  required String anc652312092,
  required List<DxaRouteWithModalRederence> ymn986356938,
  required List<L958538993> qx916462628,
});

//
class Rb520943613 {
  Rb520943613();
  late final Kbl859069969 oxm507881224 =
      Zz583050905.rq892083742.oxm507881224;
  late final Sn394369952 _ns381625725 = Zz583050905.rq892083742.rzq751988082;
  late final WidgetsBinding _qnv657053124 =
      Zz583050905.rq892083742.nb759432201;
  late final Ah1047662653 _a750376204 = Zz583050905.rq892083742.io653425878;
  final List<RouteObserver> _i469627558 = [];
  final Map<TransitionRoute, AnimationStatus> ssf977722157 =
      <TransitionRoute, AnimationStatus>{};
  bool get d375854340 => _mo245336917 != null;
  final String ohz80689664 = 'dxa_route_name_not_provided';
  final Map<String, String> _rz1837631 = {};
  void qc888190853(Map<String, String> ygd371076017) {
    _rz1837631.addAll(ygd371076017);
  }

  //
  @visibleForTesting
  final Map<int, Pr312793894> s954760594 = {};
  String? c812909377;

  @visibleForTesting
  List<L958538993> fp949428314() {
    final List<L958538993> tf92384922 = [];

    s954760594
        .forEach((cvl834844057, g193602924) {
      for (final ezj1001735069 in g193602924) {
        tf92384922.add(ezj1001735069);
      }
    });
    return tf92384922;
  }

  //_ga5176444
  void kej483954669() {
    if (!oxm507881224.kv740508975) return;
    final List<L958538993> qx916462628 = fp949428314();

    String? jo539114665;

    if (d375854340) {
      jo539114665 = _iap132371910!();
    }

    c812909377 = jo539114665;

    //
    //
    //
    //
    //
    //
    //
    final List<List<L958538993>> ul719561363 = [];

    ul719561363.addAll(
      _ga5176444(),
    );
    final List<List<DxaRouteWithModalRederence>>
        vq151547297 = [];

    //
    //
    //
    //
    for (var lb499530343 = 0; lb499530343 < ul719561363.length; lb499530343++) {
      final f1052622578 = ul719561363[lb499530343];
      vq151547297.add([]);
      for (var r309503439 = 0; r309503439 < f1052622578.length; r309503439++) {
        final DxaRouteWithModalRederence? if286221817 =
            _zty403298585(f1052622578[r309503439]);
        if (if286221817 != null) {
          vq151547297[lb499530343]
              .add(if286221817);
        }
      }
    }

    final List<Yv686663890> hd859565705 = [];
    for (final ymn986356938 in vq151547297) {
      if (ymn986356938.isEmpty) continue;
      final L958538993 toj442648724 = ymn986356938.last;
      String? r1012357622 = jo539114665 ??
          toj442648724.anc652312092.osu265148098((anc652312092) {
            return _rz1837631[anc652312092] ?? anc652312092;
          });
      if (r1012357622 == null && toj442648724.y14448384) {
        r1012357622 = esb754772426(toj442648724)?.anc652312092;
      }
      _a750376204
          .o38580806(
            njo459292997: ymn986356938.hashCode.toString(),
            anc652312092: r1012357622 ?? ohz80689664,
            ymn986356938: ymn986356938,
            qx916462628: qx916462628,
          )
          .osu265148098((cg662082782) => hd859565705.add(cg662082782));
    }
    _a750376204.e64444414(hd859565705);
  }

  RouterDelegate? _mo245336917;
  void mm315757183(RouterDelegate tx262924092) {
    if (_mo245336917 != null) return;
    _mo245336917 = tx262924092;
    _mo245336917!.addListener(() {
      //
      //
      //
      _qnv657053124.addPostFrameCallback((qy217292269) {
        if (c812909377 != _iap132371910!()) {
          kej483954669();
        }
      });
    });
  }

  String Function()? _iap132371910;
  void vn55450785(
    String Function() bhp628753946,
  ) {
    if (_iap132371910 != null) return;
    _iap132371910 = bhp628753946;
  }

  RouteObserver get _dgh557231552 {
    return S1042073727(
      _ns381625725,
      this,
    );
  }

  RouteObserver vq37041654() {
    final RouteObserver x630958492 = _dgh557231552;

    _i469627558.add(x630958492);
    return x630958492;
  }

  //yc984268146
  List<NavigatorState> _pb189607662(NavigatorState mb905959606) {
    final List<NavigatorState> b730441601 = [];
    void nb300918832(NavigatorState mb905959606) {
      b730441601.add(mb905959606);

      final b381227364 = mb905959606.context;

      b381227364.visitAncestorElements((aty412700575) {
        final NavigatorState? vb933775823 = Navigator.maybeOf(aty412700575);
        if (vb933775823 == null) return false;
        nb300918832(vb933775823);
        return false;
      });
    }

    nb300918832(mb905959606);
    return b730441601.reversed.toList();
  }

  DxaRouteWithModalRederence? _zty403298585(
      L958538993 t67976178) {
    if (t67976178.ezj1001735069.navigator == null) return null;
    if (t67976178 is Bmq666223541 && t67976178.t447820029) {
      return t67976178;
    }
    Bmq666223541? a834821039;

    for (L958538993 ohw674271021 = t67976178;;) {
      final L958538993? dc127421164 =
          esb754772426(ohw674271021);
      if (dc127421164 == null) break;
      if (dc127421164 is Bmq666223541 &&
          dc127421164.t447820029) {
        a834821039 = dc127421164;
        break;
      }
      ohw674271021 = dc127421164;
    }

    if (a834821039 == null) {
      //
      //
      if (t67976178 is Bmq666223541) {
        return t67976178;
      }
      return null;
    }

    late final DxaRouteWithModalRederence thq100370903;
    if (t67976178 is Bmq666223541) {
      thq100370903 = t67976178.o1033552291(
        a834821039,
      );
    } else if (t67976178 is Z463560475) {
      thq100370903 = t67976178.n101644416(
        a834821039,
      );
    } else {
      throw Ftf901569938('Unexpected DxaRoute class');
    }

    return thq100370903;
  }

  //
  @visibleForTesting
  L958538993? esb754772426(L958538993 zwr989898958) {
    final int? oh86387767 =
        s954760594[zwr989898958.pxh968880735]
            ?.indexOf(zwr989898958);
    if (oh86387767 == null || oh86387767 < 1) return null;
    final L958538993? bv217659737 =
        s954760594[zwr989898958.pxh968880735]
            ?[oh86387767 - 1];

    return bv217659737;
  }

  //
  @visibleForTesting
  void n202048803() {
    s954760594.removeWhere((zi696279567, dnn510789723) {
      dnn510789723.removeWhere((aty412700575) {
        return aty412700575.ezj1001735069.navigator == null;
      });
      if (dnn510789723.isEmpty) return true;
      return false;
    });
  }

  //
  List<List<L958538993>> _ga5176444() {
    final List<List<L958538993>> ul719561363 = [];
    final List<L958538993> am23435666 = [];
    final List<L958538993> hd560024218 = [];
    final List<int> rmg48045303 = [];
    //
    s954760594.forEach((zi696279567, dnn510789723) {
      //
      if (dnn510789723.first.ezj1001735069.navigator == null ||
          dnn510789723.first.ezj1001735069.navigator?.mounted == false) {
        return;
      }
      late final L958538993 npv957082354;

      //
      //
      //
      for (var lb499530343 = 0; lb499530343 < dnn510789723.length; lb499530343++) {
        if (lb499530343 != dnn510789723.length - 1) {
          rmg48045303
              .addAll(dnn510789723[lb499530343].pve435388095);
        } else {
          npv957082354 = dnn510789723[lb499530343];
        }
      }

      //
      //
      npv957082354.pve435388095.isEmpty.osu265148098((p430882507) {
        if (p430882507) {
          am23435666.add(npv957082354);
        }
      });

      //
      //
      final xa165401678 = dnn510789723
          .where((t67976178) => t67976178.pve435388095.isNotEmpty);
      hd560024218.addAll(xa165401678);
    });

    //
    //
    //
    am23435666.removeWhere((aty412700575) => rmg48045303
        .contains(aty412700575.pxh968880735));

    //
    for (final bn528870147 in am23435666) {
      final sf860235957 = [bn528870147];

      void e1007520640(L958538993 ezj1001735069) {
        final int bw442419317 = ezj1001735069.pxh968880735;
        final int tsy290459697 = hd560024218.indexWhere(
          (aty412700575) =>
              aty412700575.pve435388095.contains(bw442419317),
        );
        if (tsy290459697 == -1) {
          ul719561363.add(sf860235957);
          return;
        }
        final L958538993? du756605829 =
            hd560024218.firstWhereOrNull(
          (aty412700575) =>
              aty412700575.pve435388095.contains(bw442419317),
        );
        if (du756605829 == null) {
          assert(() {
            debugPrint('DXA WARNING: parentDxaRoute not found');
            return true;
          }());
          return;
        }
        sf860235957.insert(0, du756605829);
        e1007520640(du756605829);
      }

      e1007520640(bn528870147);
    }
    return ul719561363;
  }

  void yc984268146(Route<dynamic> ezj1001735069, Route<dynamic>? x632036760) {
    n202048803();
    if (ezj1001735069.navigator == null) return;
    final List<int> eu539198684 =
        _pb189607662(ezj1001735069.navigator!)
            .map((ii286663448) => ii286663448.hashCode)
            .toList();

    late L958538993 t67976178;
    if (ezj1001735069 is ModalRoute) {
      t67976178 = L958538993.modal(
        q454515577: ezj1001735069,
        pve435388095: [],
        aj77244147: eu539198684.length,
        l42732281: ezj1001735069.navigator!,
      );
    } else {
      t67976178 = L958538993.nonModal(
        ezj1001735069: ezj1001735069,
        pve435388095: [],
        aj77244147: eu539198684.length,
        l42732281: ezj1001735069.navigator!,
      );
    }

    final int nav463088376 = ezj1001735069.navigator!.hashCode;

    //
    final List<L958538993> x830547241 =
        s954760594[nav463088376] ??= [];

    if (x632036760 == null) {
      //
      //
      //
      //
      //
      assert(ezj1001735069.isFirst);
      x830547241.add(t67976178);
      final tsy290459697 = eu539198684.indexOf(nav463088376);
      //
      //
      if (eu539198684.length > 1 && tsy290459697 > 0) {
        //
        final nuq827755639 =
            eu539198684[tsy290459697 - 1];
        //
        final List<L958538993>? t612059737 =
            s954760594[nuq827755639];
        if (t612059737 != null) {
          //
          //
          t612059737.last.pve435388095
              .add(nav463088376);
        }
      }
    } else {
      //
      //
      //
      //
      final a213452943 = x830547241.indexWhere(
        (t67976178) => t67976178.hashCode == x632036760.hashCode,
      );

      if (a213452943 != -1) {
        x830547241.insert(
          a213452943 + 1,
          t67976178,
        );
      }
    }

    kej483954669();
  }

  void fyp795734414({Route<dynamic>? ks941757868, Route<dynamic>? xur369502027}) {
    n202048803();

    if (ks941757868 == null) return;
    if (ks941757868.navigator == null) return;
    final int nav463088376 = ks941757868.navigator!.hashCode;
    final List<L958538993> x830547241 =
        s954760594[nav463088376] ??= [];
    int s32791848 = x830547241.length;

    if (xur369502027 != null) {
      s32791848 = x830547241
          .indexWhere((aty412700575) => aty412700575.hashCode == xur369502027.hashCode);
      if (s32791848 != -1) {
        x830547241.removeAt(s32791848);
      }
    }
    final List<int> eu539198684 =
        _pb189607662(ks941757868.navigator!)
            .map((ii286663448) => ii286663448.hashCode)
            .toList();
    late L958538993 ew802350202;
    if (ks941757868 is ModalRoute) {
      ew802350202 = L958538993.modal(
        q454515577: ks941757868,
        pve435388095: [],
        aj77244147: eu539198684.length,
        l42732281: ks941757868.navigator!,
      );
    } else {
      ew802350202 = L958538993.nonModal(
        ezj1001735069: ks941757868,
        pve435388095: [],
        aj77244147: eu539198684.length,
        l42732281: ks941757868.navigator!,
      );
    }
    x830547241.insert(s32791848, ew802350202);
    if (s32791848 == 0) {
      assert(ew802350202.ezj1001735069.isFirst);
    }

    kej483954669();
  }

  void kcz252061218(Route<dynamic> ezj1001735069, Route<dynamic>? x632036760) {
    n202048803();

    final int nav463088376 = ezj1001735069.navigator!.hashCode;
    final List<L958538993>? x830547241 =
        s954760594[nav463088376];

    x830547241
        ?.removeWhere((aty412700575) => aty412700575.hashCode == ezj1001735069.hashCode);

    kej483954669();
  }

  void fhm620573685(Route ezj1001735069, Route? x632036760) {
    n202048803();

    final int nav463088376 = ezj1001735069.navigator!.hashCode;
    final List<L958538993>? x830547241 =
        s954760594[nav463088376];
    //
    x830547241
        ?.removeWhere((aty412700575) => aty412700575.hashCode == ezj1001735069.hashCode);

    kej483954669();
  }
}
