//

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/bka7916544.dart';
import 'package:medallia_dxa/src/u1031389579.dart';
import 'package:medallia_dxa/src/j378679524.dart';

import 'package:medallia_dxa/src/j209815705.dart';
import 'package:medallia_dxa/src/g131648959.dart';
import 'package:medallia_dxa/src/d452802285.dart';
import 'package:medallia_dxa/src/q439716601.dart';
import 'package:medallia_dxa/src/llc304042029.dart';
import 'package:medallia_dxa/src/rn255041681.dart';

typedef Dia312793668 = List<Zs958539155>;
typedef Lve845227836 = T686664112 Function({
  required String ptf459292711,
  required String m652312446,
  required List<DxaRouteWithModalReference> fxk986357160,
  required List<Zs958539155> xrm916462918,
});

//
class Mgs520943263 {
  Mgs520943263();
  late final Ri859070323 f507881066 =
      K583051259.y892084092.f507881066;
  late final S394369730 _umg381625375 = K583051259.y892084092.uqz751987728;
  late final WidgetsBinding _ffl657052838 =
      K583051259.y892084092.fx759432555;
  late final Pf1047662943 _na750376046 = K583051259.y892084092.zal653426100;
  final List<RouteObserver> _ke469627844 = [];
  final Map<TransitionRoute, AnimationStatus> _bim561103741 =
      <TransitionRoute, AnimationStatus>{};
  bool get v517109616 => _bim561103741.isNotEmpty;
  bool get fwq375854182 => _ij245336631 != null;
  final String hn80690018 = 'dxa_route_name_not_provided';
  final Map<String, String> _hk1837917 = {};
  void ieq888190695(Map<String, String> qj371075795) {
    _hk1837917.addAll(qj371075795);
  }

  //
  @visibleForTesting
  final Map<int, Dia312793668> x954760432 = {};
  String? re812909091;

  @visibleForTesting
  List<Zs958539155> vge949428536() {
    final List<Zs958539155> fjn92385272 = [];

    x954760432
        .forEach((wyc834843899, wd193602574) {
      for (final ahj1001734911 in wd193602574) {
        fjn92385272.add(ahj1001734911);
      }
    });
    return fjn92385272;
  }

  //_y5176606
  void n483954319() {
    if (!f507881066.brv740508749) return;
    final List<Zs958539155> xrm916462918 = vge949428536();

    String? rz539114955;

    if (fwq375854182) {
      rz539114955 = _xup132371620!();
    }

    re812909091 = rz539114955;

    //
    //
    //
    //
    //
    //
    //
    final List<List<Zs958539155>> ff719561713 = [];

    ff719561713.addAll(
      _y5176606(),
    );
    final List<List<DxaRouteWithModalReference>>
        pj151547075 = [];

    //
    //
    //
    //
    for (var ee499530501 = 0; ee499530501 < ff719561713.length; ee499530501++) {
      final mw1052622736 = ff719561713[ee499530501];
      pj151547075.add([]);
      for (var mxj309503149 = 0; mxj309503149 < mw1052622736.length; mxj309503149++) {
        final DxaRouteWithModalReference? hvj286221467 =
            _gyh403298427(mw1052622736[mxj309503149]);
        if (hvj286221467 != null) {
          pj151547075[ee499530501]
              .add(hvj286221467);
        }
      }
    }

    final List<T686664112> vfa859566059 = [];
    for (final fxk986357160 in pj151547075) {
      if (fxk986357160.isEmpty) continue;
      final Zs958539155 b442649078 = fxk986357160.last;

      String? lli1012357268;
      lli1012357268 =
          fa175916410(b442649078, rz539114955);

      lli1012357268 = _hk1837917[lli1012357268] ??
          lli1012357268;

      _na750376046
          .myv38581028(
            ptf459292711: fxk986357160.hashCode.toString(),
            m652312446: lli1012357268 ?? hn80690018,
            fxk986357160: fxk986357160,
            xrm916462918: xrm916462918,
          )
          .hoy265148320((jt662083004) => vfa859566059.add(jt662083004));
    }
    _na750376046.pj64444060(vfa859566059);
  }

  RouterDelegate? _ij245336631;
  void we315757341(RouterDelegate mxw262923870) {
    if (_ij245336631 != null) return;
    _ij245336631 = mxw262923870;
    _ij245336631!.addListener(() {
      //
      //
      //
      _ffl657052838.addPostFrameCallback((e217291919) {
        if (re812909091 != _xup132371620!()) {
          n483954319();
        }
      });
    });
  }

  @visibleForTesting
  String? fa175916410(
    Zs958539155 b442649078,
    String? rz539114955,
  ) {
    String? lli1012357268;

    if (_prz398030454 != null) {
      lli1012357268 = _prz398030454!(
        b442649078.ahj1001734911.settings,
      );
    }
    if (lli1012357268 != null) return lli1012357268;

    lli1012357268 = rz539114955 ?? b442649078.m652312446;

    if (lli1012357268 == null && b442649078.yts14448226) {
      lli1012357268 = onv754772136(b442649078)?.m652312446;
    }
    return lli1012357268;
  }

  String? Function(RouteSettings)? _prz398030454;
  void bmt280651953(
    String? Function(RouteSettings) a840018432,
  ) {
    if (_prz398030454 != null) return;
    _prz398030454 = a840018432;
  }

  String Function()? _xup132371620;
  void sg55451075(
    String Function() xj628754296,
  ) {
    if (_xup132371620 != null) return;
    _xup132371620 = xj628754296;
  }

  RouteObserver get _d557231266 {
    return Qs1042073885(
      _umg381625375,
      this,
    );
  }

  RouteObserver zc37041300() {
    final RouteObserver hoz630958334 = _d557231266;

    _ke469627844.add(hoz630958334);
    return hoz630958334;
  }

  //q984267792
  List<NavigatorState> _c189607820(NavigatorState o905959892) {
    final List<NavigatorState> ms730441443 = [];
    void gw300919122(NavigatorState o905959892) {
      ms730441443.add(o905959892);

      final lue381227014 = o905959892.context;

      lue381227014.visitAncestorElements((w412700413) {
        final NavigatorState? g933775533 = Navigator.maybeOf(w412700413);
        if (g933775533 == null) return false;
        gw300919122(g933775533);
        return false;
      });
    }

    gw300919122(o905959892);
    return ms730441443.reversed.toList();
  }

  DxaRouteWithModalReference? _gyh403298427(
    Zs958539155 ehk67975824,
  ) {
    if (ehk67975824.ahj1001734911.navigator == null) return null;
    if (ehk67975824 is Y666223319 && ehk67975824.w447820191) {
      return ehk67975824;
    }
    Y666223319? zs834820813;

    for (Zs958539155 fwl674270799 = ehk67975824;;) {
      final Zs958539155? s127421326 =
          onv754772136(fwl674270799);
      if (s127421326 == null) break;
      if (s127421326 is Y666223319 &&
          s127421326.w447820191) {
        zs834820813 = s127421326;
        break;
      }
      fwl674270799 = s127421326;
    }

    if (zs834820813 == null) {
      //
      //
      if (ehk67975824 is Y666223319) {
        return ehk67975824;
      }
      return null;
    }

    late final DxaRouteWithModalReference jl100370613;
    if (ehk67975824 is Y666223319) {
      jl100370613 = ehk67975824.m1033552065(
        zs834820813,
      );
    } else if (ehk67975824 is C463560313) {
      jl100370613 = ehk67975824.dh101644770(
        zs834820813,
      );
    } else {
      throw Fc901569776('Unexpected DxaRoute class');
    }

    return jl100370613;
  }

  //
  @visibleForTesting
  Zs958539155? onv754772136(Zs958539155 yqy989899180) {
    final int? wiy86388053 =
        x954760432[yqy989899180.ch968880957]
            ?.indexOf(yqy989899180);
    if (wiy86388053 == null || wiy86388053 < 1) return null;
    final Zs958539155? ayz217659451 =
        x954760432[yqy989899180.ch968880957]
            ?[wiy86388053 - 1];

    return ayz217659451;
  }

  //
  @visibleForTesting
  void zp202048577() {
    x954760432.removeWhere((n696279917, baz510789945) {
      baz510789945.removeWhere((w412700413) {
        return w412700413.ahj1001734911.navigator == null;
      });
      if (baz510789945.isEmpty) return true;
      return false;
    });
  }

  //
  List<List<Zs958539155>> _y5176606() {
    final List<List<Zs958539155>> ff719561713 = [];
    final List<Zs958539155> m23435504 = [];
    final List<Zs958539155> om560024568 = [];
    final List<int> id48045461 = [];
    //
    x954760432.forEach((n696279917, baz510789945) {
      //
      if (baz510789945.first.ahj1001734911.navigator == null ||
          baz510789945.first.ahj1001734911.navigator?.mounted == false) {
        return;
      }
      late final Zs958539155 eu957082512;

      //
      //
      //
      for (var ee499530501 = 0; ee499530501 < baz510789945.length; ee499530501++) {
        if (ee499530501 != baz510789945.length - 1) {
          id48045461
              .addAll(baz510789945[ee499530501].rws435388381);
        } else {
          eu957082512 = baz510789945[ee499530501];
        }
      }

      //
      //
      eu957082512.rws435388381.isEmpty.hoy265148320((qn430882729) {
        if (qn430882729) {
          m23435504.add(eu957082512);
        }
      });

      //
      //
      final tqu165401900 = baz510789945
          .where((ehk67975824) => ehk67975824.rws435388381.isNotEmpty);
      om560024568.addAll(tqu165401900);
    });

    //
    //
    //
    m23435504.removeWhere(
      (w412700413) => id48045461
          .contains(w412700413.ch968880957),
    );

    //
    for (final upf528869985 in m23435504) {
      final ffa860236247 = [upf528869985];

      void py1007520482(Zs958539155 ahj1001734911) {
        final int kj442419479 = ahj1001734911.ch968880957;
        final int v290459987 = om560024568.indexWhere(
          (w412700413) =>
              w412700413.rws435388381.contains(kj442419479),
        );
        if (v290459987 == -1) {
          ff719561713.add(ffa860236247);
          return;
        }
        final Zs958539155? i756605671 =
            om560024568.firstWhereOrNull(
          (w412700413) =>
              w412700413.rws435388381.contains(kj442419479),
        );
        if (i756605671 == null) {
          assert(() {
            debugPrint('DXA WARNING: parentDxaRoute not found');
            return true;
          }());
          return;
        }
        ffa860236247.insert(0, i756605671);
        py1007520482(i756605671);
      }

      py1007520482(upf528869985);
    }
    return ff719561713;
  }

  void q984267792(Route<dynamic> ahj1001734911, Route<dynamic>? ve632036602) {
    zp202048577();
    if (ahj1001734911.navigator == null) return;
    final List<int> toc539198910 =
        _c189607820(ahj1001734911.navigator!)
            .map((bma286663290) => bma286663290.hashCode)
            .toList();

    late Zs958539155 ehk67975824;
    if (ahj1001734911 is ModalRoute) {
      ehk67975824 = Zs958539155.modal(
        mmu454515227: ahj1001734911,
        rws435388381: [],
        ax77244305: toc539198910.length,
        dd42732443: ahj1001734911.navigator!,
      );
    } else {
      ehk67975824 = Zs958539155.nonModal(
        ahj1001734911: ahj1001734911,
        rws435388381: [],
        ax77244305: toc539198910.length,
        dd42732443: ahj1001734911.navigator!,
      );
    }

    final int vnj463088538 = ahj1001734911.navigator!.hashCode;

    //
    final List<Zs958539155> gaj830547019 =
        x954760432[vnj463088538] ??= [];

    if (ve632036602 == null) {
      //
      //
      //
      //
      //
      assert(ahj1001734911.isFirst);
      gaj830547019.add(ehk67975824);
      final v290459987 = toc539198910.indexOf(vnj463088538);
      //
      //
      if (toc539198910.length > 1 && v290459987 > 0) {
        //
        final uvy827755797 =
            toc539198910[v290459987 - 1];
        //
        final List<Zs958539155>? gk612059963 =
            x954760432[uvy827755797];
        if (gk612059963 != null) {
          //
          //
          gk612059963.last.rws435388381
              .add(vnj463088538);
        }
      }
    } else {
      //
      //
      //
      //
      final w213453293 = gaj830547019.indexWhere(
        (ehk67975824) => ehk67975824.hashCode == ve632036602.hashCode,
      );

      if (w213453293 != -1) {
        gaj830547019.insert(
          w213453293 + 1,
          ehk67975824,
        );
      }
    }

    n483954319();
  }

  void gwz795734252({Route<dynamic>? g941757646, Route<dynamic>? q369501737}) {
    zp202048577();

    if (g941757646 == null) return;
    if (g941757646.navigator == null) return;
    final int vnj463088538 = g941757646.navigator!.hashCode;
    final List<Zs958539155> gaj830547019 =
        x954760432[vnj463088538] ??= [];
    int rf32791626 = gaj830547019.length;

    if (q369501737 != null) {
      rf32791626 = gaj830547019
          .indexWhere((w412700413) => w412700413.hashCode == q369501737.hashCode);
      if (rf32791626 != -1) {
        gaj830547019.removeAt(rf32791626);
      }
    }
    final List<int> toc539198910 =
        _c189607820(g941757646.navigator!)
            .map((bma286663290) => bma286663290.hashCode)
            .toList();
    late Zs958539155 j802350360;
    if (g941757646 is ModalRoute) {
      j802350360 = Zs958539155.modal(
        mmu454515227: g941757646,
        rws435388381: [],
        ax77244305: toc539198910.length,
        dd42732443: g941757646.navigator!,
      );
    } else {
      j802350360 = Zs958539155.nonModal(
        ahj1001734911: g941757646,
        rws435388381: [],
        ax77244305: toc539198910.length,
        dd42732443: g941757646.navigator!,
      );
    }
    gaj830547019.insert(rf32791626, j802350360);
    if (rf32791626 == 0) {
      assert(j802350360.ahj1001734911.isFirst);
    }

    n483954319();
  }

  void tz252061504(Route<dynamic> ahj1001734911, Route<dynamic>? ve632036602) {
    zp202048577();

    final int vnj463088538 = ahj1001734911.navigator!.hashCode;
    final List<Zs958539155>? gaj830547019 =
        x954760432[vnj463088538];

    gaj830547019
        ?.removeWhere((w412700413) => w412700413.hashCode == ahj1001734911.hashCode);

    n483954319();
  }

  void jga620573335(Route ahj1001734911, Route? ve632036602) {
    zp202048577();

    final int vnj463088538 = ahj1001734911.navigator!.hashCode;
    final List<Zs958539155>? gaj830547019 =
        x954760432[vnj463088538];
    //
    gaj830547019
        ?.removeWhere((w412700413) => w412700413.hashCode == ahj1001734911.hashCode);

    n483954319();
  }

  void ki493996719(TransitionRoute ahj1001734911) {
    _bim561103741.remove(ahj1001734911);
  }

  void f323834717(
    TransitionRoute ahj1001734911,
    AnimationStatus gf638171145,
  ) {
    _bim561103741.update(
      ahj1001734911,
      (_rwo594036444) => gf638171145,
      ifAbsent: () => gf638171145,
    );
  }
}
