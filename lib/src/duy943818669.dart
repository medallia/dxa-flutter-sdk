//

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/znj290553027.dart';
import 'package:medallia_dxa/src/w1031389746.dart';
import 'package:medallia_dxa/src/wb378680157.dart';

import 'package:medallia_dxa/src/nvt209816352.dart';
import 'package:medallia_dxa/src/pa439716160.dart';
import 'package:medallia_dxa/src/sor304042900.dart';
import 'package:medallia_dxa/src/ny255042344.dart';

typedef Nac312793597 = List<Cwv958539306>;
typedef Sz845227141 = I686664201 Function({
  required String nvn459293598,
  required String r652311751,
  required List<DxaRouteWithModalRederence> th986357265,
  required List<Cwv958539306> a916463359,
});

//
class Vv520942886 {
  Vv520942886({
    required X733035790 v190648622,
    required WidgetsBinding gmr277876585,
    required Future<void> Function(List<I686664201>, {bool rje136056027})
        i64443685,
    required Sz845227141 udx38580381,
    required Par394369403 zab238918301,
  })  : _mj722428369 = v190648622,
        _l657053471 = gmr277876585,
        _zdk87282289 = i64443685,
        _md625829076 = udx38580381,
        _li381626278 = zab238918301;
  final X733035790 _mj722428369;
  final Par394369403 _li381626278;
  final WidgetsBinding _l657053471;
  final Future<void> Function(List<I686664201>, {bool rje136056027})
      _zdk87282289;
  final Sz845227141 _md625829076;
  final List<RouteObserver> _yxm469627005 = [];
  final Map<TransitionRoute, AnimationStatus> byj977721846 =
      <TransitionRoute, AnimationStatus>{};
  bool get vr375855071 => _rje245336462 != null;
  final String kt80689371 = 'dxa_route_name_not_provided';

  //
  final Map<int, Nac312793597> _mlc283160603 = {};
  String? wi812908954;

  List<Cwv958539306> _a613122190() {
    final List<Cwv958539306> bb92384321 = [];

    _mlc283160603
        .forEach((nop834844482, a193603511) {
      for (final efl1001734470 in a193603511) {
        bb92384321.add(efl1001734470);
      }
    });
    return bb92384321;
  }

  //_db5176999
  void pws483953974() {
    if (!_mj722428369.r740509684) return;
    final List<Cwv958539306> a916463359 = _a613122190();

    String? cw539115122;

    if (vr375855071) {
      cw539115122 = _apl132372253!();
    }

    wi812908954 = cw539115122;

    //
    //
    //
    //
    //
    //
    //
    final List<List<Cwv958539306>> k719560776 = [];

    k719560776.addAll(
      _db5176999(),
    );
    final List<List<DxaRouteWithModalRederence>>
        mtw151547770 = [];

    //
    //
    //
    //
    for (var df499529916 = 0; df499529916 < k719560776.length; df499529916++) {
      final sox1052621865 = k719560776[df499529916];
      mtw151547770.add([]);
      for (var tbp309503764 = 0; tbp309503764 < sox1052621865.length; tbp309503764++) {
        final DxaRouteWithModalRederence? l286222114 =
            _nko403299266(sox1052621865[tbp309503764]);
        if (l286222114 != null) {
          mtw151547770[df499529916]
              .add(l286222114);
        }
      }
    }

    final List<I686664201> a859565138 = [];
    for (final th986357265 in mtw151547770) {
      if (th986357265.isEmpty) continue;
      final Cwv958539306 b442649167 = th986357265.last;
      String? rx1012357933 = cw539115122 ??
          b442649167.r652311751.wrb265147417((r652311751) {
            return r652311751 == '/' ? dwm238078261 : r652311751;
          });
      if (rx1012357933 == null && b442649167.pee14448091) {
        rx1012357933 = _gxb940814549(b442649167);
      }
      _md625829076(
        nvn459293598: th986357265.hashCode.toString(),
        r652311751: rx1012357933 ?? kt80689371,
        th986357265: th986357265,
        a916463359: a916463359,
      ).wrb265147417((es662083077) => a859565138.add(es662083077));
    }
    _zdk87282289(a859565138);
  }

  RouterDelegate? _rje245336462;
  void lns315756708(RouterDelegate k262923751) {
    if (_rje245336462 != null) return;
    _rje245336462 = k262923751;
    _rje245336462!.addListener(() {
      //
      //
      //
      _l657053471.addPostFrameCallback((y217292598) {
        if (wi812908954 != _apl132372253!()) {
          pws483953974();
        }
      });
    });
  }

  String Function()? _apl132372253;
  void y55451258(
    String Function() f628753601,
  ) {
    if (_apl132372253 != null) return;
    _apl132372253 = f628753601;
  }

  String dwm238078261 = 'Home';

  RouteObserver get _kvk557231899 {
    return N1042074276(
      _li381626278,
      this,
    );
  }

  RouteObserver qhc37041965() {
    final RouteObserver ayc630958919 = _kvk557231899;

    _yxm469627005.add(ayc630958919);
    return ayc630958919;
  }

  //e984268713
  List<NavigatorState> _d139993520(NavigatorState jlx905960045) {
    final List<NavigatorState> ign730441050 = [];
    void pq300919531(NavigatorState jlx905960045) {
      ign730441050.add(jlx905960045);

      final v381227967 = jlx905960045.context;

      v381227967.visitAncestorElements((hpp412699972) {
        final NavigatorState? gst933776148 = Navigator.maybeOf(hpp412699972);
        if (gst933776148 == null) return false;
        pq300919531(gst933776148);
        return false;
      });
    }

    pq300919531(jlx905960045);
    return ign730441050.reversed.toList();
  }

  DxaRouteWithModalRederence? _nko403299266(
      Cwv958539306 rlq67975465) {
    if (rlq67975465.efl1001734470.navigator == null) return null;
    if (rlq67975465 is Pxr666222958 && rlq67975465.wb447820326) {
      return rlq67975465;
    }
    Pxr666222958? z834820468;

    for (Cwv958539306 rvr674270710 = rlq67975465;;) {
      final Cwv958539306? xu127420471 =
          _iyk495240158(rvr674270710);
      if (xu127420471 == null) break;
      if (xu127420471 is Pxr666222958 &&
          xu127420471.wb447820326) {
        z834820468 = xu127420471;
        break;
      }
      rvr674270710 = xu127420471;
    }

    if (z834820468 == null) {
      //
      //
      if (rlq67975465 is Pxr666222958) {
        return rlq67975465;
      }
      return null;
    }

    late final DxaRouteWithModalRederence u100371212;
    if (rlq67975465 is Pxr666222958) {
      u100371212 = rlq67975465.zil1033552760(
        z834820468,
      );
    } else if (rlq67975465 is Ewm463560128) {
      u100371212 = rlq67975465.qy101644891(
        z834820468,
      );
    } else {
      throw A901570377('Unexpected DxaRoute class');
    }

    return u100371212;
  }

  NavigatorState? _k520690890(BuildContext v381227967) {
    return Navigator.maybeOf(v381227967, rootNavigator: true);
  }

  Cwv958539306? _iyk495240158(Cwv958539306 jtj989899285) {
    final int? z86388460 = _mlc283160603[
            jtj989899285.p968880260]
        ?.indexOf(jtj989899285);
    if (z86388460 == null || z86388460 < 1) return null;
    final Cwv958539306? g217660290 = _mlc283160603[
        jtj989899285.p968880260]?[z86388460 - 1];

    return g217660290;
  }

  void _q321042503() {
    _mlc283160603.removeWhere((zoy696279252, rjc510790272) {
      rjc510790272.removeWhere((hpp412699972) {
        return hpp412699972.efl1001734470.navigator == null;
      });
      if (rjc510790272.isEmpty) return true;
      return false;
    });
  }

  //
  List<List<Cwv958539306>> _db5176999() {
    final List<List<Cwv958539306>> k719560776 = [];
    final List<Cwv958539306> yj23436105 = [];
    final List<Cwv958539306> tvf560023617 = [];

    //
    _mlc283160603.forEach((zoy696279252, rjc510790272) {
      final Cwv958539306 v957081641 = rjc510790272.last;

      v957081641.jv435387492.isEmpty.wrb265147417((uv430881808) {
        if (uv430881808) {
          yj23436105.add(v957081641);
        }
      });
      final iow165402261 = rjc510790272
          .where((rlq67975465) => rlq67975465.jv435387492.isNotEmpty);
      tvf560023617.addAll(iow165402261);
    });

    //
    for (final m528869848 in yj23436105) {
      final f860236398 = [m528869848];

      void m1007520091(Cwv958539306 efl1001734470) {
        final int rex442419886 = efl1001734470.p968880260;
        final int i290460394 = tvf560023617.indexWhere(
          (hpp412699972) =>
              hpp412699972.jv435387492.contains(rex442419886),
        );
        if (i290460394 == -1) {
          k719560776.add(f860236398);
          return;
        }
        final Cwv958539306? z756605278 =
            tvf560023617.firstWhereOrNull(
          (hpp412699972) =>
              hpp412699972.jv435387492.contains(rex442419886),
        );
        if (z756605278 == null) {
          assert(() {
            debugPrint('DXA WARNING: parentDxaRoute not found');
            return true;
          }());
          return;
        }
        f860236398.insert(0, z756605278);
        m1007520091(z756605278);
      }

      m1007520091(m528869848);
    }
    return k719560776;
  }

  List<int> _iie560588141(NavigatorState jlx905960045) {
    final List<NavigatorState> taa133636454 =
        _d139993520(jlx905960045);
    final List<int> tss192980878 =
        taa133636454.map((wl286663107) => wl286663107.hashCode).toList();
    return tss192980878;
  }

  //
  String? _gxb940814549(Cwv958539306 b641390723) {
    return _mlc283160603[
            b641390723.p968880260]
        .wrb265147417<String?>((th986357265) {
      final int? i290460394 = th986357265?.indexOf(b641390723);
      if (i290460394 == null || i290460394 < 1) return null;
      return th986357265?[i290460394 - 1].r652311751;
    });
  }

  void e984268713(Route<dynamic> efl1001734470, Route<dynamic>? ew632037187) {
    _q321042503();
    if (efl1001734470.navigator == null) return;
    final List<int> tss192980878 =
        _iie560588141(efl1001734470.navigator!);
    late Cwv958539306 rlq67975465;
    if (efl1001734470 is ModalRoute) {
      rlq67975465 = Cwv958539306.modal(
        wm454515106: efl1001734470,
        jv435387492: [],
        gt77243432: tss192980878.length,
        jt42731554: efl1001734470.navigator!,
      );
    } else {
      rlq67975465 = Cwv958539306.nonModal(
        efl1001734470: efl1001734470,
        jv435387492: [],
        gt77243432: tss192980878.length,
        jt42731554: efl1001734470.navigator!,
      );
    }

    final int ls463087651 = efl1001734470.navigator!.hashCode;

    //
    final List<Cwv958539306> rn830547954 =
        _mlc283160603[ls463087651] ??= [];

    if (ew632037187 == null) {
      //
      //
      //
      //
      //
      assert(efl1001734470.isFirst);
      rn830547954.add(rlq67975465);
      final i290460394 = tss192980878.indexOf(ls463087651);
      //
      //
      if (tss192980878.length > 1 && i290460394 > 0) {
        //
        final ju827756204 = tss192980878[i290460394 - 1];
        //
        final List<Cwv958539306>? axf612059266 =
            _mlc283160603[ju827756204];
        if (axf612059266 != null) {
          //
          //
          axf612059266.last.jv435387492
              .add(ls463087651);
        }
      }
    } else {
      //
      //
      //
      //
      final i213453396 = rn830547954.indexWhere(
        (rlq67975465) => rlq67975465.hashCode == ew632037187.hashCode,
      );

      if (i213453396 != -1) {
        rn830547954.insert(
          i213453396 + 1,
          rlq67975465,
        );
      }
    }

    pws483953974();
  }

  void uh795734869({Route<dynamic>? bu941758327, Route<dynamic>? ss369501584}) {
    _q321042503();

    if (bu941758327 == null) return;
    if (bu941758327.navigator == null) return;
    final int ls463087651 = bu941758327.navigator!.hashCode;
    final List<Cwv958539306> rn830547954 =
        _mlc283160603[ls463087651] ??= [];
    int j32792563 = rn830547954.length;

    if (ss369501584 != null) {
      j32792563 = rn830547954
          .indexWhere((hpp412699972) => hpp412699972.hashCode == ss369501584.hashCode);
      if (j32792563 != -1) {
        rn830547954.removeAt(j32792563);
      }
    }
    final List<int> tss192980878 =
        _iie560588141(bu941758327.navigator!);
    late Cwv958539306 cp802350753;
    if (bu941758327 is ModalRoute) {
      cp802350753 = Cwv958539306.modal(
        wm454515106: bu941758327,
        jv435387492: [],
        gt77243432: tss192980878.length,
        jt42731554: bu941758327.navigator!,
      );
    } else {
      cp802350753 = Cwv958539306.nonModal(
        efl1001734470: bu941758327,
        jv435387492: [],
        gt77243432: tss192980878.length,
        jt42731554: bu941758327.navigator!,
      );
    }
    rn830547954.insert(j32792563, cp802350753);
    if (j32792563 == 0) {
      assert(cp802350753.efl1001734470.isFirst);
    }

    pws483953974();
  }

  void cu252060921(Route<dynamic> efl1001734470, Route<dynamic>? ew632037187) {
    _q321042503();

    final int ls463087651 = efl1001734470.navigator!.hashCode;
    final List<Cwv958539306>? rn830547954 =
        _mlc283160603[ls463087651];

    rn830547954
        ?.removeWhere((hpp412699972) => hpp412699972.hashCode == efl1001734470.hashCode);

    pws483953974();
  }

  void xnj620572974(Route efl1001734470, Route? ew632037187) {
    _q321042503();

    final int ls463087651 = efl1001734470.navigator!.hashCode;
    final List<Cwv958539306>? rn830547954 =
        _mlc283160603[ls463087651];
    //
    rn830547954
        ?.removeWhere((hpp412699972) => hpp412699972.hashCode == efl1001734470.hashCode);

    pws483953974();
  }
}
