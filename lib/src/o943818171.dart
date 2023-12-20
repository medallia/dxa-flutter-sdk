//

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/et290553557.dart';
import 'package:medallia_dxa/src/zn378679627.dart';

import 'package:medallia_dxa/src/ld209815862.dart';
import 'package:medallia_dxa/src/kua304042370.dart';
import 'package:medallia_dxa/src/w255041854.dart';

typedef Iwo312794091 = List<Th958538812>;
typedef Gq845227667 = Q686663711 Function({
  required String jtl459293064,
  required String o652312273,
  required List<Th958538812> l986356743,
  required List<Th958538812> vl916462825,
});

//
class Fnc520943408 {
  Fnc520943408({
    required Xh733036312 av190649144,
    required WidgetsBinding v277876095,
    required Future<void> Function(List<Q686663711>, {bool a136056525})
        yqp64444211,
    required Gq845227667 a38580875,
    required Z394369901 bv238917771,
  })  : _eyc722428871 = av190649144,
        _mn657052937 = v277876095,
        _a87281767 = yqp64444211,
        _rdp625829570 = a38580875,
        _owb381625776 = bv238917771;
  final Xh733036312 _eyc722428871;
  final Z394369901 _owb381625776;
  final WidgetsBinding _mn657052937;
  final Future<void> Function(List<Q686663711>, {bool a136056525})
      _a87281767;
  final Gq845227667 _rdp625829570;
  final List<RouteObserver> _q469627499 = [];
  final Map<TransitionRoute, AnimationStatus> fj977722336 =
      <TransitionRoute, AnimationStatus>{};
  bool get at375854537 => _jxl245336984 != null;
  final String eiy80689869 = 'dxa_route_name_not_provided';

  //
  final Map<int, Iwo312794091> _ks283161101 = {};
  String? qrr812909452;

  List<Th958538812> _rm613122712() {
    final List<Th958538812> nq92384855 = [];

    _ks283161101
        .forEach((vem834843988, sk193602977) {
      for (final route in sk193602977) {
        nq92384855.add(route);
      }
    });
    return nq92384855;
  }

  //_sb5176497
  void fmf483954464() {
    if (!_eyc722428871.oy740509154) return;
    final List<Th958538812> vl916462825 = _rm613122712();

    String? cm539114596;

    if (at375854537) {
      cm539114596 = _v132371723!();
    }

    qrr812909452 = cm539114596;

    //
    //
    //
    //
    //
    //
    //
    final List<List<Th958538812>> owz719561310 = [];

    owz719561310.addAll(
      _sb5176497(),
    );

    //
    //
    //
    for (final candidate in owz719561310) {
      if (!candidate.last.ud447819824 && candidate.last.vd1001734992.navigator != null) {
        Th958538812? aq1056545569;
        Th958538812 ym343486887 = candidate.last;
        for (;;) {
          aq1056545569 = _xr495239624(ym343486887);
          if (aq1056545569 == null) break;
          if (aq1056545569.ud447819824) break;
          ym343486887 = aq1056545569;
        }

        if (aq1056545569 == null) continue;
        final Enj176059985 d745768960 =
            candidate.last.d745768960(
          aq1056545569,
        );

        candidate.last = d745768960;
      }
    }

    final List<Q686663711> fg859565636 = [];
    for (final dxaRoutePath in owz719561310) {
      final Th958538812 gl442648665 = dxaRoutePath.last;
      String? di1012357435 = cm539114596 ??
          gl442648665.o652312273.n265147919((o652312273) {
            return o652312273 == '/' ? aso238078755 : o652312273;
          });
      if (di1012357435 == null && gl442648665.cdd14448589) {
        di1012357435 = _lyq940815043(gl442648665);
      }
      _rdp625829570(
        jtl459293064: dxaRoutePath.hashCode.toString(),
        o652312273: di1012357435 ?? eiy80689869,
        l986356743: dxaRoutePath,
        vl916462825: vl916462825,
      ).n265147919((f662082579) => fg859565636.add(f662082579));
    }
    _a87281767(fg859565636);
  }

  RouterDelegate? _jxl245336984;
  void rjf315757234(RouterDelegate ow262924273) {
    if (_jxl245336984 != null) return;
    _jxl245336984 = ow262924273;
    _jxl245336984!.addListener(() {
      //
      //
      //
      _mn657052937.addPostFrameCallback((xz217292064) {
        if (qrr812909452 != _v132371723!()) {
          fmf483954464();
        }
      });
    });
  }

  String Function()? _v132371723;
  void b55450732(
    String Function() yjv628754135,
  ) {
    if (_v132371723 != null) return;
    _v132371723 = yjv628754135;
  }

  String aso238078755 = 'Home';

  RouteObserver get _i557231373 {
    return D1042073778(
      _owb381625776,
      this,
    );
  }

  RouteObserver nq37041467() {
    final RouteObserver dv630958417 = _i557231373;

    _q469627499.add(dv630958417);
    return dv630958417;
  }

  //v984268223
  List<NavigatorState> _bhi139994022(NavigatorState f905959547) {
    final List<NavigatorState> j730441548 = [];
    void p300919037(NavigatorState f905959547) {
      j730441548.add(f905959547);

      final m381227433 = f905959547.context;

      m381227433.visitAncestorElements((b412700498) {
        final NavigatorState? sq933775618 = Navigator.maybeOf(b412700498);
        if (sq933775618 == null) return false;
        p300919037(sq933775618);
        return false;
      });
    }

    p300919037(f905959547);
    return j730441548.reversed.toList();
  }

  NavigatorState? _zw520691420(BuildContext m381227433) {
    return Navigator.maybeOf(m381227433, rootNavigator: true);
  }

  Th958538812? _xr495239624(Th958538812 bm989898755) {
    final int? y86387962 = _ks283161101[
            bm989898755.c968880786]
        ?.indexOf(bm989898755);
    if (y86387962 == null || y86387962 < 1) return null;
    final Th958538812? uhl217659796 = _ks283161101[
        bm989898755.c968880786]?[y86387962 - 1];

    return uhl217659796;
  }

  void _gu321043025() {
    _ks283161101.removeWhere((uu696279746, c510789782) {
      c510789782.removeWhere((b412700498) {
        return b412700498.vd1001734992.navigator == null;
      });
      if (c510789782.isEmpty) return true;
      return false;
    });
  }

  //
  List<List<Th958538812>> _sb5176497() {
    final List<List<Th958538812>> owz719561310 = [];
    final List<Th958538812> ri23435615 = [];
    final List<Th958538812> q560024151 = [];

    //
    _ks283161101.forEach((uu696279746, c510789782) {
      final Th958538812 m957082175 = c510789782.last;

      m957082175.ib435388018.isEmpty.n265147919((uwg430882310) {
        if (uwg430882310) {
          ri23435615.add(m957082175);
        }
      });
      final qm165401731 = c510789782
          .where((tha67975999) => tha67975999.ib435388018.isNotEmpty);
      q560024151.addAll(qm165401731);
    });

    //
    for (final leafRoute in ri23435615) {
      final oh860235896 = [leafRoute];

      void e1007520589(Th958538812 vd1001734992) {
        final int vz442419384 = vd1001734992.c968880786;
        final int hx290459900 = q560024151.indexWhere(
          (b412700498) =>
              b412700498.ib435388018.contains(vz442419384),
        );
        if (hx290459900 == -1) {
          owz719561310.add(oh860235896);
          return;
        }
        final Th958538812? s756605768 =
            q560024151.firstWhereOrNull(
          (b412700498) =>
              b412700498.ib435388018.contains(vz442419384),
        );
        if (s756605768 == null) {
          assert(() {
            debugPrint('DXA WARNING: parentDxaRoute not found');
            return true;
          }());
          return;
        }
        oh860235896.insert(0, s756605768);
        e1007520589(s756605768);
      }

      e1007520589(leafRoute);
    }
    return owz719561310;
  }

  List<int> _h560588667(NavigatorState f905959547) {
    final List<NavigatorState> jl133636976 =
        _bhi139994022(f905959547);
    final List<int> cg192980376 =
        jl133636976.map((t286663637) => t286663637.hashCode).toList();
    return cg192980376;
  }

  //
  String? _lyq940815043(Th958538812 jfh641391253) {
    return _ks283161101[
            jfh641391253.c968880786]
        .n265147919<String?>((l986356743) {
      final int? hx290459900 = l986356743?.indexOf(jfh641391253);
      if (hx290459900 == null || hx290459900 < 1) return null;
      return l986356743?[hx290459900 - 1].o652312273;
    });
  }

  void v984268223(Route<dynamic> vd1001734992, Route<dynamic>? im632036693) {
    _gu321043025();

    final List<int> cg192980376 =
        _h560588667(vd1001734992.navigator!);
    final Th958538812 tha67975999 = Th958538812(
      vd1001734992: vd1001734992,
      ib435388018: [],
      qen77243966: cg192980376.length,
    );

    final int egg463088181 = vd1001734992.navigator!.hashCode;

    //
    final List<Th958538812> eym830547428 =
        _ks283161101[egg463088181] ??= [];

    if (im632036693 == null) {
      //
      //
      //
      //
      //
      assert(vd1001734992.isFirst);
      eym830547428.add(tha67975999);
      final hx290459900 = cg192980376.indexOf(egg463088181);
      //
      //
      if (cg192980376.length > 1 && hx290459900 > 0) {
        //
        final oc827755706 = cg192980376[hx290459900 - 1];
        //
        final List<Th958538812>? d612059796 =
            _ks283161101[oc827755706];
        if (d612059796 != null) {
          //
          //
          d612059796.last.ib435388018
              .add(egg463088181);
        }
      }
    } else {
      //
      //
      //
      //
      final g213452866 = eym830547428.indexWhere(
        (tha67975999) => tha67975999.hashCode == im632036693.hashCode,
      );

      if (g213452866 != -1) {
        eym830547428.insert(
          g213452866 + 1,
          tha67975999,
        );
      }
    }

    fmf483954464();
  }

  void mrn795734339({Route<dynamic>? jow941757793, Route<dynamic>? w369502086}) {
    _gu321043025();

    if (jow941757793 == null) return;
    //

    final int egg463088181 = jow941757793.navigator!.hashCode;
    final List<Th958538812> eym830547428 =
        _ks283161101[egg463088181] ??= [];
    int j32792037 = eym830547428.length;

    if (w369502086 != null) {
      j32792037 = eym830547428
          .indexWhere((b412700498) => b412700498.hashCode == w369502086.hashCode);
      if (j32792037 != -1) {
        eym830547428.removeAt(j32792037);
      }
    }
    final List<int> cg192980376 =
        _h560588667(jow941757793.navigator!);
    final Th958538812 tin802350263 = Th958538812(
      vd1001734992: jow941757793,
      ib435388018: [],
      qen77243966: cg192980376.length,
    );
    eym830547428.insert(j32792037, tin802350263);
    if (j32792037 == 0) {
      assert(tin802350263.vd1001734992.isFirst);
    }

    fmf483954464();
  }

  void zfz252061423(Route<dynamic> vd1001734992, Route<dynamic>? im632036693) {
    _gu321043025();

    final int egg463088181 = vd1001734992.navigator!.hashCode;
    final List<Th958538812>? eym830547428 =
        _ks283161101[egg463088181];

    eym830547428
        ?.removeWhere((b412700498) => b412700498.hashCode == vd1001734992.hashCode);

    fmf483954464();
  }

  void w620573496(Route vd1001734992, Route? im632036693) {
    _gu321043025();

    final int egg463088181 = vd1001734992.navigator!.hashCode;
    final List<Th958538812>? eym830547428 =
        _ks283161101[egg463088181];
    //
    eym830547428
        ?.removeWhere((b412700498) => b412700498.hashCode == vd1001734992.hashCode);

    fmf483954464();
  }
}

class Th958538812 {
  final Route vd1001734992;
  final String? o652312273;
  String? vu533636939;
  final Map<String, String> ayo153545816;
  final List<int> ib435388018;
  final int c968880786;
  final int qen77243966;
  final BuildContext nm1006262920;

  Th958538812({
    required this.vd1001734992,
    required this.ib435388018,
    required this.qen77243966,
  })  : o652312273 = vd1001734992.settings.name,
        ayo153545816 = vd1001734992.settings.arguments is Map<String, String>
            ? vd1001734992.settings.arguments! as Map<String, String>
            : {},
        c968880786 = vd1001734992.navigator!.hashCode,
        nm1006262920 = vd1001734992.navigator!.context;

  BuildContext? get uw304973376 => (vd1001734992 as ModalRoute).subtreeContext;
  bool get e89098675 => vd1001734992 is ModalRoute;
  bool get cdd14448589 => vd1001734992 is PopupRoute;
  bool get ud447819824 => vd1001734992 is ModalRoute && (vd1001734992 as ModalRoute).opaque;
  bool get r501560975 => (nm1006262920 as Element).dirty;

  RenderObject? get kx363205359 {
    return uw304973376?.findRenderObject();
  }

  bool get v4311451 {
    final RenderObject? ft643259908 = kx363205359;
    if (ft643259908 == null) return false;
    if (!kx363205359!.g778819339) {
      return false;
    }

    return ft643259908.mvd753636421;
  }

  Enj176059985 d745768960(Th958538812 im632036693) =>
      Enj176059985(
        vd1001734992: vd1001734992,
        ib435388018: ib435388018,
        qen77243966: qen77243966,
        eq219402613: im632036693,
      );

  @override
  bool operator ==(covariant Th958538812 cgv304491294) {
    if (identical(this, cgv304491294)) return true;

    return cgv304491294.vd1001734992 == vd1001734992 &&
        cgv304491294.o652312273 == o652312273 &&
        cgv304491294.ib435388018 == ib435388018;
  }

  @override
  int get hashCode => vd1001734992.hashCode;

  @override
  String toString() {
    return 'DxaRoute(route: $vd1001734992, name: $o652312273, arguments: $ayo153545816, nestedNavigatorsHashcode: $ib435388018)';
  }
}

class Enj176059985 extends Th958538812 {
  final Th958538812 eq219402613;
  Enj176059985({
    required Route vd1001734992,
    required List<int> ib435388018,
    required int qen77243966,
    required this.eq219402613,
  }) : super(
          vd1001734992: vd1001734992,
          ib435388018: ib435388018,
          qen77243966: qen77243966,
        );
}
