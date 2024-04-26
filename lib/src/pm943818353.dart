//

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/ij290553119.dart';
import 'package:medallia_dxa/src/ie1031390190.dart';
import 'package:medallia_dxa/src/l378679937.dart';

import 'package:medallia_dxa/src/pk209816316.dart';
import 'package:medallia_dxa/src/ky439715996.dart';
import 'package:medallia_dxa/src/e304042568.dart';
import 'package:medallia_dxa/src/jn255042292.dart';

typedef Yv312793121 = List<Sio958539766>;
typedef P845227353 = P686664661 Function({
  required String o459293250,
  required String g652311835,
  required List<DxaRouteWithModalRederence> j986357709,
  required List<Sio958539766> b916463395,
});

//
class Wrq520942842 {
  Wrq520942842({
    required Sv733035730 roc190648562,
    required WidgetsBinding x277876405,
    required Future<void> Function(List<P686664661>, {bool g136056071})
        e64443641,
    required P845227353 evk38580545,
    required Gy394369191 qe238918465,
  })  : _uqb722427917 = roc190648562,
        _ee657053379 = x277876405,
        _lo87282605 = e64443641,
        _g625829128 = evk38580545,
        _d381625978 = qe238918465;
  final Sv733035730 _uqb722427917;
  final Gy394369191 _d381625978;
  final WidgetsBinding _ee657053379;
  final Future<void> Function(List<P686664661>, {bool g136056071})
      _lo87282605;
  final P845227353 _g625829128;
  final List<RouteObserver> _wd469627297 = [];
  final Map<TransitionRoute, AnimationStatus> b977721386 =
      <TransitionRoute, AnimationStatus>{};
  bool get qk375854595 => _dkj245336146 != null;
  final String b80689415 = 'dxa_route_name_not_provided';

  //
  final Map<int, Yv312793121> _b283161031 = {};
  String? n812908614;

  List<Sio958539766> _nvy613122386() {
    final List<Sio958539766> cty92384669 = [];

    _b283161031
        .forEach((py834844318, egv193603179) {
      for (final v1001734298 in egv193603179) {
        cty92384669.add(v1001734298);
      }
    });
    return cty92384669;
  }

  //_inl5177211
  void f483953898() {
    if (!_uqb722427917.mk740509224) return;
    final List<Sio958539766> b916463395 = _nvy613122386();

    String? lc539115438;

    if (qk375854595) {
      lc539115438 = _lfm132372161!();
    }

    n812908614 = lc539115438;

    //
    //
    //
    //
    //
    //
    //
    final List<List<Sio958539766>> zyo719561108 = [];

    zyo719561108.addAll(
      _inl5177211(),
    );
    final List<List<DxaRouteWithModalRederence>>
        g151547558 = [];

    //
    //
    //
    //
    for (var k499530080 = 0; k499530080 < zyo719561108.length; k499530080++) {
      final y1052622325 = zyo719561108[k499530080];
      g151547558.add([]);
      for (var i309503688 = 0; i309503688 < y1052622325.length; i309503688++) {
        final DxaRouteWithModalRederence? ft286222078 =
            _p403298846(y1052622325[i309503688]);
        if (ft286222078 != null) {
          g151547558[k499530080]
              .add(ft286222078);
        }
      }
    }

    final List<P686664661> rf859565454 = [];
    for (final j986357709 in g151547558) {
      if (j986357709.isEmpty) continue;
      final Sio958539766 gxq442649491 = j986357709.last;
      String? zmd1012357873 = lc539115438 ??
          gxq442649491.g652311835.jyg265147845((g652311835) {
            return g652311835 == '/' ? mt238078185 : g652311835;
          });
      if (zmd1012357873 == null && gxq442649491.g14447623) {
        zmd1012357873 = _bn940814601(gxq442649491);
      }
      _g625829128(
        o459293250: j986357709.hashCode.toString(),
        g652311835: zmd1012357873 ?? b80689415,
        j986357709: j986357709,
        b916463395: b916463395,
      ).jyg265147845((l662083545) => rf859565454.add(l662083545));
    }
    _lo87282605(rf859565454);
  }

  RouterDelegate? _dkj245336146;
  void am315756920(RouterDelegate e262923323) {
    if (_dkj245336146 != null) return;
    _dkj245336146 = e262923323;
    _dkj245336146!.addListener(() {
      //
      //
      //
      _ee657053379.addPostFrameCallback((il217292522) {
        if (n812908614 != _lfm132372161!()) {
          f483953898();
        }
      });
    });
  }

  String Function()? _lfm132372161;
  void r55451558(
    String Function() k628753693,
  ) {
    if (_lfm132372161 != null) return;
    _lfm132372161 = k628753693;
  }

  String mt238078185 = 'Home';

  RouteObserver get _eti557231815 {
    return Lzi1042074488(
      _d381625978,
      this,
    );
  }

  RouteObserver kjw37041905() {
    final RouteObserver azv630958747 = _eti557231815;

    _wd469627297.add(azv630958747);
    return azv630958747;
  }

  //x984268405
  List<NavigatorState> _yfi139993196(NavigatorState fsx905960369) {
    final List<NavigatorState> kd730440838 = [];
    void y300919607(NavigatorState fsx905960369) {
      kd730440838.add(fsx905960369);

      final w381227619 = fsx905960369.context;

      w381227619.visitAncestorElements((r412699800) {
        final NavigatorState? fz933776072 = Navigator.maybeOf(r412699800);
        if (fz933776072 == null) return false;
        y300919607(fz933776072);
        return false;
      });
    }

    y300919607(fsx905960369);
    return kd730440838.reversed.toList();
  }

  DxaRouteWithModalRederence? _p403298846(
      Sio958539766 qo67975413) {
    if (qo67975413.v1001734298.navigator == null) return null;
    if (qo67975413 is Oa666222770 && qo67975413.oi447820794) {
      return qo67975413;
    }
    Oa666222770? ils834820264;

    for (Sio958539766 nof674270250 = qo67975413;;) {
      final Sio958539766? wlz127420907 =
          _i495239682(nof674270250);
      if (wlz127420907 == null) break;
      if (wlz127420907 is Oa666222770 &&
          wlz127420907.oi447820794) {
        ils834820264 = wlz127420907;
        break;
      }
      nof674270250 = wlz127420907;
    }

    if (ils834820264 == null) {
      //
      //
      if (qo67975413 is Oa666222770) {
        return qo67975413;
      }
      return null;
    }

    late final DxaRouteWithModalRederence iib100371152;
    if (qo67975413 is Oa666222770) {
      iib100371152 = qo67975413.g1033552548(
        ils834820264,
      );
    } else if (qo67975413 is X463559708) {
      iib100371152 = qo67975413.foj101645191(
        ils834820264,
      );
    } else {
      throw Oy901570197('Unexpected DxaRoute class');
    }

    return iib100371152;
  }

  NavigatorState? _s520690966(BuildContext w381227619) {
    return Navigator.maybeOf(w381227619, rootNavigator: true);
  }

  Sio958539766? _i495239682(Sio958539766 de989899721) {
    final int? or86388528 = _b283161031[
            de989899721.b968880472]
        ?.indexOf(de989899721);
    if (or86388528 == null || or86388528 < 1) return null;
    final Sio958539766? g217659998 = _b283161031[
        de989899721.b968880472]?[or86388528 - 1];

    return g217659998;
  }

  void _t321042843() {
    _b283161031.removeWhere((boj696279304, e510790492) {
      e510790492.removeWhere((r412699800) {
        return r412699800.v1001734298.navigator == null;
      });
      if (e510790492.isEmpty) return true;
      return false;
    });
  }

  //
  List<List<Sio958539766>> _inl5177211() {
    final List<List<Sio958539766>> zyo719561108 = [];
    final List<Sio958539766> au23435925 = [];
    final List<Sio958539766> n560023965 = [];

    //
    _b283161031.forEach((boj696279304, e510790492) {
      final Sio958539766 j957082101 = e510790492.last;

      j957082101.w435387832.isEmpty.jyg265147845((qyi430882252) {
        if (qyi430882252) {
          au23435925.add(j957082101);
        }
      });
      final sbk165402441 = e510790492
          .where((qo67975413) => qo67975413.w435387832.isNotEmpty);
      n560023965.addAll(sbk165402441);
    });

    //
    for (final fo528869380 in au23435925) {
      final ddv860236722 = [fo528869380];

      void phb1007519879(Sio958539766 v1001734298) {
        final int t442420082 = v1001734298.b968880472;
        final int g290460470 = n560023965.indexWhere(
          (r412699800) =>
              r412699800.w435387832.contains(t442420082),
        );
        if (g290460470 == -1) {
          zyo719561108.add(ddv860236722);
          return;
        }
        final Sio958539766? r756605058 =
            n560023965.firstWhereOrNull(
          (r412699800) =>
              r412699800.w435387832.contains(t442420082),
        );
        if (r756605058 == null) {
          assert(() {
            debugPrint('DXA WARNING: parentDxaRoute not found');
            return true;
          }());
          return;
        }
        ddv860236722.insert(0, r756605058);
        phb1007519879(r756605058);
      }

      phb1007519879(fo528869380);
    }
    return zyo719561108;
  }

  List<int> _yjl560587953(NavigatorState fsx905960369) {
    final List<NavigatorState> jxm133636282 =
        _yfi139993196(fsx905960369);
    final List<int> xdv192980562 =
        jxm133636282.map((at286662687) => at286662687.hashCode).toList();
    return xdv192980562;
  }

  //
  String? _bn940814601(Sio958539766 vwv641390943) {
    return _b283161031[
            vwv641390943.b968880472]
        .jyg265147845<String?>((j986357709) {
      final int? g290460470 = j986357709?.indexOf(vwv641390943);
      if (g290460470 == null || g290460470 < 1) return null;
      return j986357709?[g290460470 - 1].g652311835;
    });
  }

  void x984268405(Route<dynamic> v1001734298, Route<dynamic>? ua632037023) {
    _t321042843();
    if (v1001734298.navigator == null) return;
    final List<int> xdv192980562 =
        _yjl560587953(v1001734298.navigator!);
    late Sio958539766 qo67975413;
    if (v1001734298 is ModalRoute) {
      qo67975413 = Sio958539766.modal(
        atx454514814: v1001734298,
        w435387832: [],
        iu77243892: xdv192980562.length,
        by42732030: v1001734298.navigator!,
      );
    } else {
      qo67975413 = Sio958539766.nonModal(
        v1001734298: v1001734298,
        w435387832: [],
        iu77243892: xdv192980562.length,
        by42732030: v1001734298.navigator!,
      );
    }

    final int as463088127 = v1001734298.navigator!.hashCode;

    //
    final List<Sio958539766> zwj830547502 =
        _b283161031[as463088127] ??= [];

    if (ua632037023 == null) {
      //
      //
      //
      //
      //
      assert(v1001734298.isFirst);
      zwj830547502.add(qo67975413);
      final g290460470 = xdv192980562.indexOf(as463088127);
      //
      //
      if (xdv192980562.length > 1 && g290460470 > 0) {
        //
        final hrn827756400 = xdv192980562[g290460470 - 1];
        //
        final List<Sio958539766>? pk612059486 =
            _b283161031[hrn827756400];
        if (pk612059486 != null) {
          //
          //
          pk612059486.last.w435387832
              .add(as463088127);
        }
      }
    } else {
      //
      //
      //
      //
      final xso213453704 = zwj830547502.indexWhere(
        (qo67975413) => qo67975413.hashCode == ua632037023.hashCode,
      );

      if (xso213453704 != -1) {
        zwj830547502.insert(
          xso213453704 + 1,
          qo67975413,
        );
      }
    }

    f483953898();
  }

  void y795734665({Route<dynamic>? jf941758123, Route<dynamic>? v369501260}) {
    _t321042843();

    if (jf941758123 == null) return;
    if (jf941758123.navigator == null) return;
    final int as463088127 = jf941758123.navigator!.hashCode;
    final List<Sio958539766> zwj830547502 =
        _b283161031[as463088127] ??= [];
    int jmc32792111 = zwj830547502.length;

    if (v369501260 != null) {
      jmc32792111 = zwj830547502
          .indexWhere((r412699800) => r412699800.hashCode == v369501260.hashCode);
      if (jmc32792111 != -1) {
        zwj830547502.removeAt(jmc32792111);
      }
    }
    final List<int> xdv192980562 =
        _yjl560587953(jf941758123.navigator!);
    late Sio958539766 m802350973;
    if (jf941758123 is ModalRoute) {
      m802350973 = Sio958539766.modal(
        atx454514814: jf941758123,
        w435387832: [],
        iu77243892: xdv192980562.length,
        by42732030: jf941758123.navigator!,
      );
    } else {
      m802350973 = Sio958539766.nonModal(
        v1001734298: jf941758123,
        w435387832: [],
        iu77243892: xdv192980562.length,
        by42732030: jf941758123.navigator!,
      );
    }
    zwj830547502.insert(jmc32792111, m802350973);
    if (jmc32792111 == 0) {
      assert(m802350973.v1001734298.isFirst);
    }

    f483953898();
  }

  void k252060965(Route<dynamic> v1001734298, Route<dynamic>? ua632037023) {
    _t321042843();

    final int as463088127 = v1001734298.navigator!.hashCode;
    final List<Sio958539766>? zwj830547502 =
        _b283161031[as463088127];

    zwj830547502
        ?.removeWhere((r412699800) => r412699800.hashCode == v1001734298.hashCode);

    f483953898();
  }

  void x620572914(Route v1001734298, Route? ua632037023) {
    _t321042843();

    final int as463088127 = v1001734298.navigator!.hashCode;
    final List<Sio958539766>? zwj830547502 =
        _b283161031[as463088127];
    //
    zwj830547502
        ?.removeWhere((r412699800) => r412699800.hashCode == v1001734298.hashCode);

    f483953898();
  }
}
