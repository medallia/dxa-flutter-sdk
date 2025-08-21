//

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/v17385463.dart';
import 'package:medallia_dxa/src/xik50999285.dart';
import 'package:medallia_dxa/src/fp320375832.dart';

import 'package:medallia_dxa/src/re674085892.dart';
import 'package:medallia_dxa/src/e806889477.dart';
import 'package:medallia_dxa/src/e487303575.dart';
import 'package:medallia_dxa/src/mo534491989.dart';
import 'package:medallia_dxa/src/hk249196801.dart';
import 'package:medallia_dxa/src/br764152064.dart';

typedef Ic312793138 = List<X958539749>;
typedef Z845227338 = Ujb686664646 Function({
  required String bos459293265,
  required String fmx652311816,
  required List<DxaRouteWithModalReference> gns986357726,
  required List<X958539749> rw916463408,
});

//
class R520942825 {
  R520942825();
  late final Rhw859069701 bpv507880476 =
      Zmk583050637.u892083466.bpv507880476;
  late final Jnx394369204 _hdu381625961 = Zmk583050637.u892083466.gcv751988326;
  late final WidgetsBinding _bb657053392 =
      Zmk583050637.u892083466.xk759432989;
  late final Fs1047663401 _bgf750376472 = Zmk583050637.u892083466.aco653426626;
  final List<RouteObserver> _hko469627314 = [];
  final Map<TransitionRoute, AnimationStatus> _aku561103115 =
      <TransitionRoute, AnimationStatus>{};
  bool get f517108998 => _aku561103115.isNotEmpty;
  bool get nn375854608 => _ht245336129 != null;
  final String rvr80689428 = 'dxa_route_name_not_provided';
  final Map<String, String> _g1837355 = {};
  void z888190097(Map<String, String> p371075237) {
    _g1837355.addAll(p371075237);
  }

  //
  @visibleForTesting
  final Map<int, Ic312793138> i954760838 = {};
  String? yqn812908629;

  @visibleForTesting
  List<X958539749> ga949429070() {
    final List<X958539749> jw92384654 = [];

    i954760838
        .forEach((ax834844301, k193603192) {
      for (final mo1001734281 in k193603192) {
        jw92384654.add(mo1001734281);
      }
    });
    return jw92384654;
  }

  //_iw5177192
  void p483953913() {
    if (!bpv507880476.zdb740509243) return;
    final List<X958539749> rw916463408 = ga949429070();

    String? ls539115453;

    if (nn375854608) {
      ls539115453 = _n132372178!();
    }

    yqn812908629 = ls539115453;

    //
    //
    //
    //
    //
    //
    //
    final List<List<X958539749>> qyr719561095 = [];

    qyr719561095.addAll(
      _iw5177192(),
    );

    //
    //
    //
    //
    if (qyr719561095.isEmpty) {
      return;
    }
    final List<List<DxaRouteWithModalReference>>
        l151547573 = [];

    //
    //
    //
    //
    for (var d499530099 = 0; d499530099 < qyr719561095.length; d499530099++) {
      final f1052622310 = qyr719561095[d499530099];
      l151547573.add([]);
      for (var s309503707 = 0; s309503707 < f1052622310.length; s309503707++) {
        final DxaRouteWithModalReference? e286222061 =
            _jy403298829(f1052622310[s309503707]);
        if (e286222061 != null) {
          l151547573[d499530099]
              .add(e286222061);
        }
      }
    }

    final List<Ujb686664646> ff859565469 = [];
    for (final gns986357726 in l151547573) {
      if (gns986357726.isEmpty) continue;
      final X958539749 ryi442649472 = gns986357726.last;

      String? nb1012357858;
      nb1012357858 =
          io175916812(ryi442649472, ls539115453);

      nb1012357858 = _g1837355[nb1012357858] ??
          nb1012357858;

      _bgf750376472
          .bo38580562(
            bos459293265: gns986357726.hashCode.toString(),
            fmx652311816: nb1012357858 ?? rvr80689428,
            gns986357726: gns986357726,
            rw916463408: rw916463408,
          )
          .t265147862((ljy662083530) => ff859565469.add(ljy662083530));
    }
    _bgf750376472.rx64443626(ff859565469);
  }

  RouterDelegate? _ht245336129;
  void qt315756907(RouterDelegate cy262923304) {
    if (_ht245336129 != null) return;
    _ht245336129 = cy262923304;
    _ht245336129!.addListener(() {
      //
      //
      //
      _bb657053392.addPostFrameCallback((pyh217292537) {
        if (yqn812908629 != _n132372178!()) {
          p483953913();
        }
      });
    });
  }

  @visibleForTesting
  String? io175916812(
    X958539749 ryi442649472,
    String? ls539115453,
  ) {
    String? nb1012357858;

    if (_pf398029824 != null) {
      nb1012357858 = _pf398029824!(
        ryi442649472.mo1001734281.settings,
      );
    }
    if (nb1012357858 != null) return nb1012357858;

    nb1012357858 = ls539115453 ?? ryi442649472.fmx652311816;

    if (nb1012357858 == null && ryi442649472.np14447636) {
      nb1012357858 = h754772702(ryi442649472)?.fmx652311816;
    }
    return nb1012357858;
  }

  String? Function(RouteSettings)? _pf398029824;
  void r280652487(
    String? Function(RouteSettings) dy840018038,
  ) {
    if (_pf398029824 != null) return;
    _pf398029824 = dy840018038;
  }

  String Function()? _n132372178;
  void h55451573(
    String Function() jf628753678,
  ) {
    if (_n132372178 != null) return;
    _n132372178 = jf628753678;
  }

  RouteObserver get _wc557231828 {
    return Js1042074475(
      _hdu381625961,
      this,
    );
  }

  RouteObserver k37041890() {
    final RouteObserver llt630958728 = _wc557231828;

    _hko469627314.add(llt630958728);
    return llt630958728;
  }

  //ao984268390
  List<NavigatorState> _bhv189607418(NavigatorState i905960354) {
    final List<NavigatorState> y730440853 = [];
    void q300919588(NavigatorState i905960354) {
      y730440853.add(i905960354);

      final kuz381227632 = i905960354.context;

      kuz381227632.visitAncestorElements((kdw412699787) {
        final NavigatorState? wvg933776091 = Navigator.maybeOf(kdw412699787);
        if (wvg933776091 == null) return false;
        q300919588(wvg933776091);
        return false;
      });
    }

    q300919588(i905960354);
    return y730440853.reversed.toList();
  }

  DxaRouteWithModalReference? _jy403298829(
    X958539749 sr67975398,
  ) {
    if (sr67975398.mo1001734281.navigator == null) return null;
    if (sr67975398 is Tpn666222753 && sr67975398.vxj447820777) {
      return sr67975398;
    }
    Tpn666222753? u834820283;

    for (X958539749 zzh674270265 = sr67975398;;) {
      final X958539749? kxc127420920 =
          h754772702(zzh674270265);
      if (kxc127420920 == null) break;
      if (kxc127420920 is Tpn666222753 &&
          kxc127420920.vxj447820777) {
        u834820283 = kxc127420920;
        break;
      }
      zzh674270265 = kxc127420920;
    }

    if (u834820283 == null) {
      //
      //
      if (sr67975398 is Tpn666222753) {
        return sr67975398;
      }
      return null;
    }

    late final DxaRouteWithModalReference ut100371139;
    if (sr67975398 is Tpn666222753) {
      ut100371139 = sr67975398.c1033552567(
        u834820283,
      );
    } else if (sr67975398 is B463559695) {
      ut100371139 = sr67975398.kn101645204(
        u834820283,
      );
    } else {
      throw Z901570182('Unexpected DxaRoute class');
    }

    return ut100371139;
  }

  //
  @visibleForTesting
  X958539749? h754772702(X958539749 oc989899738) {
    final int? qc86388515 =
        i954760838[oc989899738.s968880459]
            ?.indexOf(oc989899738);
    if (qc86388515 == null || qc86388515 < 1) return null;
    final X958539749? mr217659981 =
        i954760838[oc989899738.s968880459]
            ?[qc86388515 - 1];

    return mr217659981;
  }

  //
  @visibleForTesting
  void xp202049079() {
    i954760838.removeWhere((lh696279323, ky510790479) {
      ky510790479.removeWhere((kdw412699787) {
        return kdw412699787.mo1001734281.navigator == null;
      });
      if (ky510790479.isEmpty) return true;
      return false;
    });
  }

  //
  List<List<X958539749>> _iw5177192() {
    final List<List<X958539749>> qyr719561095 = [];
    final List<X958539749> x23435910 = [];
    final List<X958539749> nkv560023950 = [];
    final List<int> nml48046051 = [];
    //
    i954760838.forEach((lh696279323, ky510790479) {
      //
      //
      if (ky510790479.isEmpty ||
          //
          ky510790479.first.mo1001734281.navigator == null ||
          ky510790479.first.mo1001734281.navigator?.mounted == false) {
        return;
      }
      late final X958539749 z957082086;

      //
      //
      //
      for (var d499530099 = 0; d499530099 < ky510790479.length; d499530099++) {
        if (d499530099 != ky510790479.length - 1) {
          nml48046051
              .addAll(ky510790479[d499530099].wo435387819);
        } else {
          z957082086 = ky510790479[d499530099];
        }
      }

      //
      //
      z957082086.wo435387819.isEmpty.t265147862((y430882271) {
        if (y430882271) {
          x23435910.add(z957082086);
        }
      });

      //
      //
      final ai165402458 = ky510790479
          .where((sr67975398) => sr67975398.wo435387819.isNotEmpty);
      nkv560023950.addAll(ai165402458);
    });

    //
    //
    //
    x23435910.removeWhere(
      (kdw412699787) => nml48046051
          .contains(kdw412699787.s968880459),
    );

    //
    for (final z528869399 in x23435910) {
      final fti860236705 = [z528869399];

      void d1007519892(X958539749 mo1001734281) {
        final int x442420065 = mo1001734281.s968880459;
        final int k290460453 = nkv560023950.indexWhere(
          (kdw412699787) =>
              kdw412699787.wo435387819.contains(x442420065),
        );
        if (k290460453 == -1) {
          qyr719561095.add(fti860236705);
          return;
        }
        final X958539749? n756605073 =
            nkv560023950.firstWhereOrNull(
          (kdw412699787) =>
              kdw412699787.wo435387819.contains(x442420065),
        );
        if (n756605073 == null) {
          assert(() {
            debugPrint('DXA WARNING: parentDxaRoute not found');
            return true;
          }());
          return;
        }
        fti860236705.insert(0, n756605073);
        d1007519892(n756605073);
      }

      d1007519892(z528869399);
    }
    return qyr719561095;
  }

  void ao984268390(Route<dynamic> mo1001734281, Route<dynamic>? j632037004) {
    xp202049079();
    if (mo1001734281.navigator == null) return;
    final List<int> pa539199432 =
        _bhv189607418(mo1001734281.navigator!)
            .map((p286662668) => p286662668.hashCode)
            .toList();

    late X958539749 sr67975398;
    if (mo1001734281 is ModalRoute) {
      sr67975398 = X958539749.modal(
        uo454514797: mo1001734281,
        wo435387819: [],
        jnp77243879: pa539199432.length,
        m42732013: mo1001734281.navigator!,
      );
    } else {
      sr67975398 = X958539749.nonModal(
        mo1001734281: mo1001734281,
        wo435387819: [],
        jnp77243879: pa539199432.length,
        m42732013: mo1001734281.navigator!,
      );
    }

    final int gv463088108 = mo1001734281.navigator!.hashCode;

    //
    final List<X958539749> nx830547517 =
        i954760838[gv463088108] ??= [];

    if (j632037004 == null) {
      //
      //
      //
      //
      //
      assert(mo1001734281.isFirst);
      nx830547517.add(sr67975398);
      final k290460453 = pa539199432.indexOf(gv463088108);
      //
      //
      if (pa539199432.length > 1 && k290460453 > 0) {
        //
        final a827756387 =
            pa539199432[k290460453 - 1];
        //
        final List<X958539749>? s612059469 =
            i954760838[a827756387];
        if (s612059469 != null) {
          //
          //
          s612059469.last.wo435387819
              .add(gv463088108);
        }
      }
    } else {
      //
      //
      //
      //
      final ax213453723 = nx830547517.indexWhere(
        (sr67975398) => sr67975398.hashCode == j632037004.hashCode,
      );

      if (ax213453723 != -1) {
        nx830547517.insert(
          ax213453723 + 1,
          sr67975398,
        );
      }
    }

    p483953913();
  }

  void h795734682({Route<dynamic>? v941758136, Route<dynamic>? cqh369501279}) {
    xp202049079();

    if (v941758136 == null) return;
    if (v941758136.navigator == null) return;
    final int gv463088108 = v941758136.navigator!.hashCode;
    final List<X958539749> nx830547517 =
        i954760838[gv463088108] ??= [];
    int r32792124 = nx830547517.length;

    if (cqh369501279 != null) {
      r32792124 = nx830547517
          .indexWhere((kdw412699787) => kdw412699787.hashCode == cqh369501279.hashCode);
      if (r32792124 != -1) {
        nx830547517.removeAt(r32792124);
      }
    }
    final List<int> pa539199432 =
        _bhv189607418(v941758136.navigator!)
            .map((p286662668) => p286662668.hashCode)
            .toList();
    late X958539749 l802350958;
    if (v941758136 is ModalRoute) {
      l802350958 = X958539749.modal(
        uo454514797: v941758136,
        wo435387819: [],
        jnp77243879: pa539199432.length,
        m42732013: v941758136.navigator!,
      );
    } else {
      l802350958 = X958539749.nonModal(
        mo1001734281: v941758136,
        wo435387819: [],
        jnp77243879: pa539199432.length,
        m42732013: v941758136.navigator!,
      );
    }
    nx830547517.insert(r32792124, l802350958);
    if (r32792124 == 0) {
      assert(l802350958.mo1001734281.isFirst);
    }

    p483953913();
  }

  void qbx252060982(Route<dynamic> mo1001734281, Route<dynamic>? j632037004) {
    xp202049079();

    final int gv463088108 = mo1001734281.navigator!.hashCode;
    final List<X958539749>? nx830547517 =
        i954760838[gv463088108];

    nx830547517
        ?.removeWhere((kdw412699787) => kdw412699787.hashCode == mo1001734281.hashCode);

    p483953913();
  }

  void nga620572897(Route mo1001734281, Route? j632037004) {
    xp202049079();

    final int gv463088108 = mo1001734281.navigator!.hashCode;
    final List<X958539749>? nx830547517 =
        i954760838[gv463088108];
    //
    nx830547517
        ?.removeWhere((kdw412699787) => kdw412699787.hashCode == mo1001734281.hashCode);

    p483953913();
  }

  void wwj493996249(TransitionRoute mo1001734281) {
    _aku561103115.remove(mo1001734281);
  }

  void z323834155(
    TransitionRoute mo1001734281,
    AnimationStatus w638171775,
  ) {
    _aku561103115.update(
      mo1001734281,
      (_d594035882) => w638171775,
      ifAbsent: () => w638171775,
    );
  }
}
