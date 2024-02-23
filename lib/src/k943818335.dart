//

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/ls290553137.dart';
import 'package:medallia_dxa/src/lq1031390144.dart';
import 'package:medallia_dxa/src/yn378679983.dart';

import 'package:medallia_dxa/src/ic209816274.dart';
import 'package:medallia_dxa/src/rxm439716018.dart';
import 'package:medallia_dxa/src/kb304042598.dart';
import 'package:medallia_dxa/src/fsv255042266.dart';

typedef Npg312793103 = List<Iag958539736>;
typedef Nf845227383 = Szr686664699 Function({
  required String i459293292,
  required String dxl652311861,
  required List<DxaRouteWithModalRederence> dm986357731,
  required List<Iag958539736> ic916463373,
});

//
class De520942804 {
  De520942804({
    required P733035772 q190648540,
    required WidgetsBinding j277876379,
    required Future<void> Function(List<Szr686664699>, {bool n136056105})
        gta64443607,
    required Nf845227383 y38580591,
    required A394369161 nem238918511,
  })  : _nn722427939 = q190648540,
        _rrt657053421 = j277876379,
        _jfh87282563 = gta64443607,
        _fn625829158 = y38580591,
        _wlh381625940 = nem238918511;
  final P733035772 _nn722427939;
  final A394369161 _wlh381625940;
  final WidgetsBinding _rrt657053421;
  final Future<void> Function(List<Szr686664699>, {bool n136056105})
      _jfh87282563;
  final Nf845227383 _fn625829158;
  final List<RouteObserver> _hx469627279 = [];
  final Map<TransitionRoute, AnimationStatus> dmz977721348 =
      <TransitionRoute, AnimationStatus>{};
  bool get i375854637 => _o245336188 != null;
  final String wx80689449 = 'dxa_route_name_not_provided';

  //
  final Map<int, Npg312793103> _gl283161065 = {};
  String? mjl812908648;

  List<Iag958539736> _xe613122428() {
    final List<Iag958539736> r92384691 = [];

    _gl283161065
        .forEach((lx834844336, s193603141) {
      for (final o1001734324 in s193603141) {
        r92384691.add(o1001734324);
      }
    });
    return r92384691;
  }

  //_e5177173
  void o483953860() {
    if (!_nn722427939.zg740509190) return;
    final List<Iag958539736> ic916463373 = _xe613122428();

    String? i539115392;

    if (i375854637) {
      i539115392 = _q132372207!();
    }

    mjl812908648 = i539115392;

    //
    //
    //
    //
    //
    //
    //
    final List<List<Iag958539736>> jd719561146 = [];

    jd719561146.addAll(
      _e5177173(),
    );
    final List<List<DxaRouteWithModalRederence>>
        y151547528 = [];

    //
    //
    //
    //
    for (var uz499530062 = 0; uz499530062 < jd719561146.length; uz499530062++) {
      final uyu1052622299 = jd719561146[uz499530062];
      y151547528.add([]);
      for (var n309503718 = 0; n309503718 < uyu1052622299.length; n309503718++) {
        final DxaRouteWithModalRederence? r286222032 =
            _xvj403298864(uyu1052622299[n309503718]);
        if (r286222032 != null) {
          y151547528[uz499530062]
              .add(r286222032);
        }
      }
    }

    final List<Szr686664699> ha859565472 = [];
    for (final dm986357731 in y151547528) {
      if (dm986357731.isEmpty) continue;
      final Iag958539736 yt442649533 = dm986357731.last;
      String? mpw1012357855 = i539115392 ??
          yt442649533.dxl652311861.mr265147883((dxl652311861) {
            return dxl652311861 == '/' ? yuw238078151 : dxl652311861;
          });
      if (mpw1012357855 == null && yt442649533.eay14447657) {
        mpw1012357855 = _p940814631(yt442649533);
      }
      _fn625829158(
        i459293292: dm986357731.hashCode.toString(),
        dxl652311861: mpw1012357855 ?? wx80689449,
        dm986357731: dm986357731,
        ic916463373: ic916463373,
      ).mr265147883((fxm662083575) => ha859565472.add(fxm662083575));
    }
    _jfh87282563(ha859565472);
  }

  RouterDelegate? _o245336188;
  void lc315756886(RouterDelegate iw262923285) {
    if (_o245336188 != null) return;
    _o245336188 = iw262923285;
    _o245336188!.addListener(() {
      //
      //
      //
      _rrt657053421.addPostFrameCallback((fss217292484) {
        if (mjl812908648 != _q132372207!()) {
          o483953860();
        }
      });
    });
  }

  String Function()? _q132372207;
  void bz55451528(
    String Function() xp628753715,
  ) {
    if (_q132372207 != null) return;
    _q132372207 = xp628753715;
  }

  String yuw238078151 = 'Home';

  RouteObserver get _oc557231849 {
    return L1042074454(
      _wlh381625940,
      this,
    );
  }

  RouteObserver k37041887() {
    final RouteObserver mv630958773 = _oc557231849;

    _hx469627279.add(mv630958773);
    return mv630958773;
  }

  //jx984268379
  List<NavigatorState> _pd139993154(NavigatorState dlj905960351) {
    final List<NavigatorState> ho730440872 = [];
    void q300919577(NavigatorState dlj905960351) {
      ho730440872.add(dlj905960351);

      final nw381227597 = dlj905960351.context;

      nw381227597.visitAncestorElements((yte412699830) {
        final NavigatorState? p933776102 = Navigator.maybeOf(yte412699830);
        if (p933776102 == null) return false;
        q300919577(p933776102);
        return false;
      });
    }

    q300919577(dlj905960351);
    return ho730440872.reversed.toList();
  }

  DxaRouteWithModalRederence? _xvj403298864(
      Iag958539736 arh67975387) {
    if (arh67975387.o1001734324.navigator == null) return null;
    if (arh67975387 is Ipv666222748 && arh67975387.r447820756) {
      return arh67975387;
    }
    Ipv666222748? r834820230;

    for (Iag958539736 lj674270212 = arh67975387;;) {
      final Iag958539736? bey127420869 =
          _t495239724(lj674270212);
      if (bey127420869 == null) break;
      if (bey127420869 is Ipv666222748 &&
          bey127420869.r447820756) {
        r834820230 = bey127420869;
        break;
      }
      lj674270212 = bey127420869;
    }

    if (r834820230 == null) {
      //
      //
      if (arh67975387 is Ipv666222748) {
        return arh67975387;
      }
      return null;
    }

    late final DxaRouteWithModalRederence vz100371198;
    if (arh67975387 is Ipv666222748) {
      vz100371198 = arh67975387.ypz1033552522(
        r834820230,
      );
    } else if (arh67975387 is Tk463559730) {
      vz100371198 = arh67975387.anz101645225(
        r834820230,
      );
    } else {
      throw Jlq901570235('Unexpected DxaRoute class');
    }

    return vz100371198;
  }

  NavigatorState? _obm520691000(BuildContext nw381227597) {
    return Navigator.maybeOf(nw381227597, rootNavigator: true);
  }

  Iag958539736? _t495239724(Iag958539736 tb989899751) {
    final int? blt86388510 = _gl283161065[
            tb989899751.g968880502]
        ?.indexOf(tb989899751);
    if (blt86388510 == null || blt86388510 < 1) return null;
    final Iag958539736? zuw217660016 = _gl283161065[
        tb989899751.g968880502]?[blt86388510 - 1];

    return zuw217660016;
  }

  void _bds321042869() {
    _gl283161065.removeWhere((sp696279334, iit510790514) {
      iit510790514.removeWhere((yte412699830) {
        return yte412699830.o1001734324.navigator == null;
      });
      if (iit510790514.isEmpty) return true;
      return false;
    });
  }

  //
  List<List<Iag958539736>> _e5177173() {
    final List<List<Iag958539736>> jd719561146 = [];
    final List<Iag958539736> gp23435963 = [];
    final List<Iag958539736> c560023987 = [];

    //
    _gl283161065.forEach((sp696279334, iit510790514) {
      final Iag958539736 xy957082075 = iit510790514.last;

      xy957082075.f435387798.isEmpty.mr265147883((wew430882274) {
        if (wew430882274) {
          gp23435963.add(xy957082075);
        }
      });
      final je165402471 = iit510790514
          .where((arh67975387) => arh67975387.f435387798.isNotEmpty);
      c560023987.addAll(je165402471);
    });

    //
    for (final kft528869418 in gp23435963) {
      final dq860236700 = [kft528869418];

      void sd1007519913(Iag958539736 o1001734324) {
        final int u442420060 = o1001734324.g968880502;
        final int f290460440 = c560023987.indexWhere(
          (yte412699830) =>
              yte412699830.f435387798.contains(u442420060),
        );
        if (f290460440 == -1) {
          jd719561146.add(dq860236700);
          return;
        }
        final Iag958539736? aqq756605100 =
            c560023987.firstWhereOrNull(
          (yte412699830) =>
              yte412699830.f435387798.contains(u442420060),
        );
        if (aqq756605100 == null) {
          assert(() {
            debugPrint('DXA WARNING: parentDxaRoute not found');
            return true;
          }());
          return;
        }
        dq860236700.insert(0, aqq756605100);
        sd1007519913(aqq756605100);
      }

      sd1007519913(kft528869418);
    }
    return jd719561146;
  }

  List<int> _u560587935(NavigatorState dlj905960351) {
    final List<NavigatorState> o133636244 =
        _pd139993154(dlj905960351);
    final List<int> ki192980604 =
        o133636244.map((tls286662705) => tls286662705.hashCode).toList();
    return ki192980604;
  }

  //
  String? _p940814631(Iag958539736 l641390961) {
    return _gl283161065[
            l641390961.g968880502]
        .mr265147883<String?>((dm986357731) {
      final int? f290460440 = dm986357731?.indexOf(l641390961);
      if (f290460440 == null || f290460440 < 1) return null;
      return dm986357731?[f290460440 - 1].dxl652311861;
    });
  }

  void jx984268379(Route<dynamic> o1001734324, Route<dynamic>? zo632037041) {
    _bds321042869();
    if (o1001734324.navigator == null) return;
    final List<int> ki192980604 =
        _u560587935(o1001734324.navigator!);
    late Iag958539736 arh67975387;
    if (o1001734324 is ModalRoute) {
      arh67975387 = Iag958539736.modal(
        dpb454514768: o1001734324,
        f435387798: [],
        i77243866: ki192980604.length,
        qnu42731984: o1001734324.navigator!,
      );
    } else {
      arh67975387 = Iag958539736.nonModal(
        o1001734324: o1001734324,
        f435387798: [],
        i77243866: ki192980604.length,
        qnu42731984: o1001734324.navigator!,
      );
    }

    final int ya463088081 = o1001734324.navigator!.hashCode;

    //
    final List<Iag958539736> qt830547456 =
        _gl283161065[ya463088081] ??= [];

    if (zo632037041 == null) {
      //
      //
      //
      //
      //
      assert(o1001734324.isFirst);
      qt830547456.add(arh67975387);
      final f290460440 = ki192980604.indexOf(ya463088081);
      //
      //
      if (ki192980604.length > 1 && f290460440 > 0) {
        //
        final bvu827756382 = ki192980604[f290460440 - 1];
        //
        final List<Iag958539736>? ty612059504 =
            _gl283161065[bvu827756382];
        if (ty612059504 != null) {
          //
          //
          ty612059504.last.f435387798
              .add(ya463088081);
        }
      }
    } else {
      //
      //
      //
      //
      final ep213453734 = qt830547456.indexWhere(
        (arh67975387) => arh67975387.hashCode == zo632037041.hashCode,
      );

      if (ep213453734 != -1) {
        qt830547456.insert(
          ep213453734 + 1,
          arh67975387,
        );
      }
    }

    o483953860();
  }

  void z795734695({Route<dynamic>? g941758085, Route<dynamic>? e369501282}) {
    _bds321042869();

    if (g941758085 == null) return;
    if (g941758085.navigator == null) return;
    final int ya463088081 = g941758085.navigator!.hashCode;
    final List<Iag958539736> qt830547456 =
        _gl283161065[ya463088081] ??= [];
    int y32792065 = qt830547456.length;

    if (e369501282 != null) {
      y32792065 = qt830547456
          .indexWhere((yte412699830) => yte412699830.hashCode == e369501282.hashCode);
      if (y32792065 != -1) {
        qt830547456.removeAt(y32792065);
      }
    }
    final List<int> ki192980604 =
        _u560587935(g941758085.navigator!);
    late Iag958539736 ic802350931;
    if (g941758085 is ModalRoute) {
      ic802350931 = Iag958539736.modal(
        dpb454514768: g941758085,
        f435387798: [],
        i77243866: ki192980604.length,
        qnu42731984: g941758085.navigator!,
      );
    } else {
      ic802350931 = Iag958539736.nonModal(
        o1001734324: g941758085,
        f435387798: [],
        i77243866: ki192980604.length,
        qnu42731984: g941758085.navigator!,
      );
    }
    qt830547456.insert(y32792065, ic802350931);
    if (y32792065 == 0) {
      assert(ic802350931.o1001734324.isFirst);
    }

    o483953860();
  }

  void ulj252060939(Route<dynamic> o1001734324, Route<dynamic>? zo632037041) {
    _bds321042869();

    final int ya463088081 = o1001734324.navigator!.hashCode;
    final List<Iag958539736>? qt830547456 =
        _gl283161065[ya463088081];

    qt830547456
        ?.removeWhere((yte412699830) => yte412699830.hashCode == o1001734324.hashCode);

    o483953860();
  }

  void d620572892(Route o1001734324, Route? zo632037041) {
    _bds321042869();

    final int ya463088081 = o1001734324.navigator!.hashCode;
    final List<Iag958539736>? qt830547456 =
        _gl283161065[ya463088081];
    //
    qt830547456
        ?.removeWhere((yte412699830) => yte412699830.hashCode == o1001734324.hashCode);

    o483953860();
  }
}
