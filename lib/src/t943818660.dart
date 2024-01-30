//

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/pf290553034.dart';
import 'package:medallia_dxa/src/xc1031389755.dart';
import 'package:medallia_dxa/src/zvl378680148.dart';

import 'package:medallia_dxa/src/l209816361.dart';
import 'package:medallia_dxa/src/b439716169.dart';
import 'package:medallia_dxa/src/ng304042909.dart';
import 'package:medallia_dxa/src/lm255042337.dart';

typedef Pd312793588 = List<Kr958539299>;
typedef Ffg845227148 = Xbi686664192 Function({
  required String yt459293591,
  required String n652311758,
  required List<DxaRouteWithModalRederence> k986357272,
  required List<Kr958539299> tf916463350,
});

//
class P520942895 {
  P520942895({
    required Y733035783 tee190648615,
    required WidgetsBinding syo277876576,
    required Future<void> Function(List<Xbi686664192>, {bool o136056018})
        d64443692,
    required Ffg845227148 n38580372,
    required Tiy394369394 q238918292,
  })  : _vkc722428376 = tee190648615,
        _ear657053462 = syo277876576,
        _gxs87282296 = d64443692,
        _q625829085 = n38580372,
        _ouk381626287 = q238918292;
  final Y733035783 _vkc722428376;
  final Tiy394369394 _ouk381626287;
  final WidgetsBinding _ear657053462;
  final Future<void> Function(List<Xbi686664192>, {bool o136056018})
      _gxs87282296;
  final Ffg845227148 _q625829085;
  final List<RouteObserver> _c469626996 = [];
  final Map<TransitionRoute, AnimationStatus> ht977721855 =
      <TransitionRoute, AnimationStatus>{};
  bool get dy375855062 => _riu245336455 != null;
  final String y80689362 = 'dxa_route_name_not_provided';

  //
  final Map<int, Pd312793588> _a283160594 = {};
  String? mua812908947;

  List<Kr958539299> _wvm613122183() {
    final List<Kr958539299> q92384328 = [];

    _a283160594
        .forEach((ue834844491, a193603518) {
      for (final ag1001734479 in a193603518) {
        q92384328.add(ag1001734479);
      }
    });
    return q92384328;
  }

  //_vi5177006
  void n483953983() {
    if (!_vkc722428376.f740509693) return;
    final List<Kr958539299> tf916463350 = _wvm613122183();

    String? h539115131;

    if (dy375855062) {
      h539115131 = _a132372244!();
    }

    mua812908947 = h539115131;

    //
    //
    //
    //
    //
    //
    //
    final List<List<Kr958539299>> ryv719560769 = [];

    ryv719560769.addAll(
      _vi5177006(),
    );
    final List<List<DxaRouteWithModalRederence>>
        f151547763 = [];

    //
    //
    //
    //
    for (var gt499529909 = 0; gt499529909 < ryv719560769.length; gt499529909++) {
      final tys1052621856 = ryv719560769[gt499529909];
      f151547763.add([]);
      for (var aam309503773 = 0; aam309503773 < tys1052621856.length; aam309503773++) {
        final DxaRouteWithModalRederence? g286222123 =
            _ly403299275(tys1052621856[aam309503773]);
        if (g286222123 != null) {
          f151547763[gt499529909]
              .add(g286222123);
        }
      }
    }

    final List<Xbi686664192> zrf859565147 = [];
    for (final k986357272 in f151547763) {
      if (k986357272.isEmpty) continue;
      final Kr958539299 zj442649158 = k986357272.last;
      String? xdk1012357924 = h539115131 ??
          zj442649158.n652311758.qzo265147408((n652311758) {
            return n652311758 == '/' ? vf238078268 : n652311758;
          });
      if (xdk1012357924 == null && zj442649158.z14448082) {
        xdk1012357924 = _z940814556(zj442649158);
      }
      _q625829085(
        yt459293591: k986357272.hashCode.toString(),
        n652311758: xdk1012357924 ?? y80689362,
        k986357272: k986357272,
        tf916463350: tf916463350,
      ).qzo265147408((em662083084) => zrf859565147.add(em662083084));
    }
    _gxs87282296(zrf859565147);
  }

  RouterDelegate? _riu245336455;
  void fuu315756717(RouterDelegate p262923758) {
    if (_riu245336455 != null) return;
    _riu245336455 = p262923758;
    _riu245336455!.addListener(() {
      //
      //
      //
      _ear657053462.addPostFrameCallback((tf217292607) {
        if (mua812908947 != _a132372244!()) {
          n483953983();
        }
      });
    });
  }

  String Function()? _a132372244;
  void yzv55451251(
    String Function() ml628753608,
  ) {
    if (_a132372244 != null) return;
    _a132372244 = ml628753608;
  }

  String vf238078268 = 'Home';

  RouteObserver get _kpo557231890 {
    return Fj1042074285(
      _ouk381626287,
      this,
    );
  }

  RouteObserver nu37041956() {
    final RouteObserver xq630958926 = _kpo557231890;

    _c469626996.add(xq630958926);
    return xq630958926;
  }

  //ik984268704
  List<NavigatorState> _qhp139993529(NavigatorState zjd905960036) {
    final List<NavigatorState> lez730441043 = [];
    void s300919522(NavigatorState zjd905960036) {
      lez730441043.add(zjd905960036);

      final jl381227958 = zjd905960036.context;

      jl381227958.visitAncestorElements((ttm412699981) {
        final NavigatorState? p933776157 = Navigator.maybeOf(ttm412699981);
        if (p933776157 == null) return false;
        s300919522(p933776157);
        return false;
      });
    }

    s300919522(zjd905960036);
    return lez730441043.reversed.toList();
  }

  DxaRouteWithModalRederence? _ly403299275(
      Kr958539299 nao67975456) {
    if (nao67975456.ag1001734479.navigator == null) return null;
    if (nao67975456 is Eid666222951 && nao67975456.xly447820335) {
      return nao67975456;
    }
    Eid666222951? mto834820477;

    for (Kr958539299 hij674270719 = nao67975456;;) {
      final Kr958539299? j127420478 =
          _cf495240151(hij674270719);
      if (j127420478 == null) break;
      if (j127420478 is Eid666222951 &&
          j127420478.xly447820335) {
        mto834820477 = j127420478;
        break;
      }
      hij674270719 = j127420478;
    }

    if (mto834820477 == null) {
      //
      //
      if (nao67975456 is Eid666222951) {
        return nao67975456;
      }
      return null;
    }

    late final DxaRouteWithModalRederence wyj100371205;
    if (nao67975456 is Eid666222951) {
      wyj100371205 = nao67975456.mfj1033552753(
        mto834820477,
      );
    } else if (nao67975456 is Fs463560137) {
      wyj100371205 = nao67975456.eeb101644882(
        mto834820477,
      );
    } else {
      throw Fyi901570368('Unexpected DxaRoute class');
    }

    return wyj100371205;
  }

  NavigatorState? _rq520690883(BuildContext jl381227958) {
    return Navigator.maybeOf(jl381227958, rootNavigator: true);
  }

  Kr958539299? _cf495240151(Kr958539299 ti989899292) {
    final int? e86388453 = _a283160594[
            ti989899292.zor968880269]
        ?.indexOf(ti989899292);
    if (e86388453 == null || e86388453 < 1) return null;
    final Kr958539299? hx217660299 = _a283160594[
        ti989899292.zor968880269]?[e86388453 - 1];

    return hx217660299;
  }

  void _lk321042510() {
    _a283160594.removeWhere((o696279261, hy510790281) {
      hy510790281.removeWhere((ttm412699981) {
        return ttm412699981.ag1001734479.navigator == null;
      });
      if (hy510790281.isEmpty) return true;
      return false;
    });
  }

  //
  List<List<Kr958539299>> _vi5177006() {
    final List<List<Kr958539299>> ryv719560769 = [];
    final List<Kr958539299> gap23436096 = [];
    final List<Kr958539299> vi560023624 = [];

    //
    _a283160594.forEach((o696279261, hy510790281) {
      final Kr958539299 vk957081632 = hy510790281.last;

      vk957081632.qfe435387501.isEmpty.qzo265147408((rfh430881817) {
        if (rfh430881817) {
          gap23436096.add(vk957081632);
        }
      });
      final exm165402268 = hy510790281
          .where((nao67975456) => nao67975456.qfe435387501.isNotEmpty);
      vi560023624.addAll(exm165402268);
    });

    //
    for (final xyd528869841 in gap23436096) {
      final qlx860236391 = [xyd528869841];

      void mid1007520082(Kr958539299 ag1001734479) {
        final int x442419879 = ag1001734479.zor968880269;
        final int i290460387 = vi560023624.indexWhere(
          (ttm412699981) =>
              ttm412699981.qfe435387501.contains(x442419879),
        );
        if (i290460387 == -1) {
          ryv719560769.add(qlx860236391);
          return;
        }
        final Kr958539299? ak756605271 =
            vi560023624.firstWhereOrNull(
          (ttm412699981) =>
              ttm412699981.qfe435387501.contains(x442419879),
        );
        if (ak756605271 == null) {
          assert(() {
            debugPrint('DXA WARNING: parentDxaRoute not found');
            return true;
          }());
          return;
        }
        qlx860236391.insert(0, ak756605271);
        mid1007520082(ak756605271);
      }

      mid1007520082(xyd528869841);
    }
    return ryv719560769;
  }

  List<int> _sr560588132(NavigatorState zjd905960036) {
    final List<NavigatorState> uhb133636463 =
        _qhp139993529(zjd905960036);
    final List<int> jc192980871 =
        uhb133636463.map((e286663114) => e286663114.hashCode).toList();
    return jc192980871;
  }

  //
  String? _z940814556(Kr958539299 xqc641390730) {
    return _a283160594[
            xqc641390730.zor968880269]
        .qzo265147408<String?>((k986357272) {
      final int? i290460387 = k986357272?.indexOf(xqc641390730);
      if (i290460387 == null || i290460387 < 1) return null;
      return k986357272?[i290460387 - 1].n652311758;
    });
  }

  void ik984268704(Route<dynamic> ag1001734479, Route<dynamic>? eke632037194) {
    _lk321042510();
    if (ag1001734479.navigator == null) return;
    final List<int> jc192980871 =
        _sr560588132(ag1001734479.navigator!);
    late Kr958539299 nao67975456;
    if (ag1001734479 is ModalRoute) {
      nao67975456 = Kr958539299.modal(
        t454515115: ag1001734479,
        qfe435387501: [],
        w77243425: jc192980871.length,
        apj42731563: ag1001734479.navigator!,
      );
    } else {
      nao67975456 = Kr958539299.nonModal(
        ag1001734479: ag1001734479,
        qfe435387501: [],
        w77243425: jc192980871.length,
        apj42731563: ag1001734479.navigator!,
      );
    }

    final int n463087658 = ag1001734479.navigator!.hashCode;

    //
    final List<Kr958539299> paq830547963 =
        _a283160594[n463087658] ??= [];

    if (eke632037194 == null) {
      //
      //
      //
      //
      //
      assert(ag1001734479.isFirst);
      paq830547963.add(nao67975456);
      final i290460387 = jc192980871.indexOf(n463087658);
      //
      //
      if (jc192980871.length > 1 && i290460387 > 0) {
        //
        final vrz827756197 = jc192980871[i290460387 - 1];
        //
        final List<Kr958539299>? ejj612059275 =
            _a283160594[vrz827756197];
        if (ejj612059275 != null) {
          //
          //
          ejj612059275.last.qfe435387501
              .add(n463087658);
        }
      }
    } else {
      //
      //
      //
      //
      final bhh213453405 = paq830547963.indexWhere(
        (nao67975456) => nao67975456.hashCode == eke632037194.hashCode,
      );

      if (bhh213453405 != -1) {
        paq830547963.insert(
          bhh213453405 + 1,
          nao67975456,
        );
      }
    }

    n483953983();
  }

  void ee795734876({Route<dynamic>? wzf941758334, Route<dynamic>? c369501593}) {
    _lk321042510();

    if (wzf941758334 == null) return;
    if (wzf941758334.navigator == null) return;
    final int n463087658 = wzf941758334.navigator!.hashCode;
    final List<Kr958539299> paq830547963 =
        _a283160594[n463087658] ??= [];
    int f32792570 = paq830547963.length;

    if (c369501593 != null) {
      f32792570 = paq830547963
          .indexWhere((ttm412699981) => ttm412699981.hashCode == c369501593.hashCode);
      if (f32792570 != -1) {
        paq830547963.removeAt(f32792570);
      }
    }
    final List<int> jc192980871 =
        _sr560588132(wzf941758334.navigator!);
    late Kr958539299 fxl802350760;
    if (wzf941758334 is ModalRoute) {
      fxl802350760 = Kr958539299.modal(
        t454515115: wzf941758334,
        qfe435387501: [],
        w77243425: jc192980871.length,
        apj42731563: wzf941758334.navigator!,
      );
    } else {
      fxl802350760 = Kr958539299.nonModal(
        ag1001734479: wzf941758334,
        qfe435387501: [],
        w77243425: jc192980871.length,
        apj42731563: wzf941758334.navigator!,
      );
    }
    paq830547963.insert(f32792570, fxl802350760);
    if (f32792570 == 0) {
      assert(fxl802350760.ag1001734479.isFirst);
    }

    n483953983();
  }

  void esj252060912(Route<dynamic> ag1001734479, Route<dynamic>? eke632037194) {
    _lk321042510();

    final int n463087658 = ag1001734479.navigator!.hashCode;
    final List<Kr958539299>? paq830547963 =
        _a283160594[n463087658];

    paq830547963
        ?.removeWhere((ttm412699981) => ttm412699981.hashCode == ag1001734479.hashCode);

    n483953983();
  }

  void gj620572967(Route ag1001734479, Route? eke632037194) {
    _lk321042510();

    final int n463087658 = ag1001734479.navigator!.hashCode;
    final List<Kr958539299>? paq830547963 =
        _a283160594[n463087658];
    //
    paq830547963
        ?.removeWhere((ttm412699981) => ttm412699981.hashCode == ag1001734479.hashCode);

    n483953983();
  }
}
