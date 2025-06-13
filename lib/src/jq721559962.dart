//

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/wsu17385396.dart';
import 'package:medallia_dxa/src/atk50999222.dart';
import 'package:medallia_dxa/src/h320375899.dart';

import 'package:medallia_dxa/src/ke674085959.dart';
import 'package:medallia_dxa/src/m806889542.dart';
import 'package:medallia_dxa/src/s487303636.dart';
import 'package:medallia_dxa/src/duk534491926.dart';
import 'package:medallia_dxa/src/de249196866.dart';
import 'package:medallia_dxa/src/mry764152131.dart';

typedef Bd312793201 = List<Z958539686>;
typedef Whh845227273 = X686664581 Function({
  required String kjb459293202,
  required String iwu652311883,
  required List<DxaRouteWithModalReference> eq986357661,
  required List<Z958539686> o916463475,
});

//
class Hoh520942762 {
  Hoh520942762();
  late final V859069766 j507880543 =
      Fn583050702.gj892083529.j507880543;
  late final Vqj394369271 _o381625898 = Fn583050702.gj892083529.z751988261;
  late final WidgetsBinding _kog657053331 =
      Fn583050702.gj892083529.qb759433054;
  late final W1047663466 _otj750376539 = Fn583050702.gj892083529.vk653426561;
  final List<RouteObserver> _zp469627377 = [];
  final Map<TransitionRoute, AnimationStatus> _qg561103176 =
      <TransitionRoute, AnimationStatus>{};
  bool get vdg517109061 => _qg561103176.isNotEmpty;
  bool get w375854675 => _j245336066 != null;
  final String wjl80689495 = 'dxa_route_name_not_provided';
  final Map<String, String> _ayz1837416 = {};
  void e888190162(Map<String, String> z371075302) {
    _ayz1837416.addAll(z371075302);
  }

  //
  @visibleForTesting
  final Map<int, Bd312793201> ful954760901 = {};
  String? r812908566;

  @visibleForTesting
  List<Z958539686> zz949429005() {
    final List<Z958539686> gs92384717 = [];

    ful954760901
        .forEach((sq834844366, sl193603131) {
      for (final dfy1001734346 in sl193603131) {
        gs92384717.add(dfy1001734346);
      }
    });
    return gs92384717;
  }

  //_eo5177131
  void v483953850() {
    if (!j507880543.iv740509304) return;
    final List<Z958539686> o916463475 = zz949429005();

    String? kj539115518;

    if (w375854675) {
      kj539115518 = _hh132372113!();
    }

    r812908566 = kj539115518;

    //
    //
    //
    //
    //
    //
    //
    final List<List<Z958539686>> fm719561156 = [];

    fm719561156.addAll(
      _eo5177131(),
    );
    final List<List<DxaRouteWithModalReference>>
        te151547638 = [];

    //
    //
    //
    //
    for (var d499530032 = 0; d499530032 < fm719561156.length; d499530032++) {
      final lti1052622245 = fm719561156[d499530032];
      te151547638.add([]);
      for (var mt309503640 = 0; mt309503640 < lti1052622245.length; mt309503640++) {
        final DxaRouteWithModalReference? a286221998 =
            _w403298894(lti1052622245[mt309503640]);
        if (a286221998 != null) {
          te151547638[d499530032]
              .add(a286221998);
        }
      }
    }

    final List<X686664581> hv859565534 = [];
    for (final eq986357661 in te151547638) {
      if (eq986357661.isEmpty) continue;
      final Z958539686 ubv442649539 = eq986357661.last;

      String? wzl1012357793;
      wzl1012357793 =
          cnl175916879(ubv442649539, kj539115518);

      wzl1012357793 = _ayz1837416[wzl1012357793] ??
          wzl1012357793;

      _otj750376539
          .aby38580497(
            kjb459293202: eq986357661.hashCode.toString(),
            iwu652311883: wzl1012357793 ?? wjl80689495,
            eq986357661: eq986357661,
            o916463475: o916463475,
          )
          .rct265147797((tu662083465) => hv859565534.add(tu662083465));
    }
    _otj750376539.wil64443561(hv859565534);
  }

  RouterDelegate? _j245336066;
  void kob315756840(RouterDelegate kd262923371) {
    if (_j245336066 != null) return;
    _j245336066 = kd262923371;
    _j245336066!.addListener(() {
      //
      //
      //
      _kog657053331.addPostFrameCallback((rg217292474) {
        if (r812908566 != _hh132372113!()) {
          v483953850();
        }
      });
    });
  }

  @visibleForTesting
  String? cnl175916879(
    Z958539686 ubv442649539,
    String? kj539115518,
  ) {
    String? wzl1012357793;

    if (_ta398029891 != null) {
      wzl1012357793 = _ta398029891!(
        ubv442649539.dfy1001734346.settings,
      );
    }
    if (wzl1012357793 != null) return wzl1012357793;

    wzl1012357793 = kj539115518 ?? ubv442649539.iwu652311883;

    if (wzl1012357793 == null && ubv442649539.xk14447703) {
      wzl1012357793 = bn754772637(ubv442649539)?.iwu652311883;
    }
    return wzl1012357793;
  }

  String? Function(RouteSettings)? _ta398029891;
  void et280652420(
    String? Function(RouteSettings) bzs840017973,
  ) {
    if (_ta398029891 != null) return;
    _ta398029891 = bzs840017973;
  }

  String Function()? _hh132372113;
  void con55451638(
    String Function() ubp628753741,
  ) {
    if (_hh132372113 != null) return;
    _hh132372113 = ubp628753741;
  }

  RouteObserver get _l557231767 {
    return X1042074408(
      _o381625898,
      this,
    );
  }

  RouteObserver lel37041825() {
    final RouteObserver cu630958795 = _l557231767;

    _zp469627377.add(cu630958795);
    return cu630958795;
  }

  //aor984268325
  List<NavigatorState> _rfr189607353(NavigatorState va905960417) {
    final List<NavigatorState> h730440918 = [];
    void zf300919655(NavigatorState va905960417) {
      h730440918.add(va905960417);

      final ca381227571 = va905960417.context;

      ca381227571.visitAncestorElements((m412699848) {
        final NavigatorState? b933776024 = Navigator.maybeOf(m412699848);
        if (b933776024 == null) return false;
        zf300919655(b933776024);
        return false;
      });
    }

    zf300919655(va905960417);
    return h730440918.reversed.toList();
  }

  DxaRouteWithModalReference? _w403298894(
    Z958539686 hp67975333,
  ) {
    if (hp67975333.dfy1001734346.navigator == null) return null;
    if (hp67975333 is Gs666222818 && hp67975333.vm447820714) {
      return hp67975333;
    }
    Gs666222818? pya834820344;

    for (Z958539686 y674270330 = hp67975333;;) {
      final Z958539686? jbf127420859 =
          bn754772637(y674270330);
      if (jbf127420859 == null) break;
      if (jbf127420859 is Gs666222818 &&
          jbf127420859.vm447820714) {
        pya834820344 = jbf127420859;
        break;
      }
      y674270330 = jbf127420859;
    }

    if (pya834820344 == null) {
      //
      //
      if (hp67975333 is Gs666222818) {
        return hp67975333;
      }
      return null;
    }

    late final DxaRouteWithModalReference r100371072;
    if (hp67975333 is Gs666222818) {
      r100371072 = hp67975333.f1033552628(
        pya834820344,
      );
    } else if (hp67975333 is Oo463559756) {
      r100371072 = hp67975333.n101645271(
        pya834820344,
      );
    } else {
      throw G901570245('Unexpected DxaRoute class');
    }

    return r100371072;
  }

  //
  @visibleForTesting
  Z958539686? bn754772637(Z958539686 o989899673) {
    final int? gq86388576 =
        ful954760901[o989899673.jl968880392]
            ?.indexOf(o989899673);
    if (gq86388576 == null || gq86388576 < 1) return null;
    final Z958539686? dw217659918 =
        ful954760901[o989899673.jl968880392]
            ?[gq86388576 - 1];

    return dw217659918;
  }

  //
  @visibleForTesting
  void qa202049140() {
    ful954760901.removeWhere((zuf696279384, fch510790412) {
      fch510790412.removeWhere((m412699848) {
        return m412699848.dfy1001734346.navigator == null;
      });
      if (fch510790412.isEmpty) return true;
      return false;
    });
  }

  //
  List<List<Z958539686>> _eo5177131() {
    final List<List<Z958539686>> fm719561156 = [];
    final List<Z958539686> pc23435973 = [];
    final List<Z958539686> vo560024013 = [];
    final List<int> we48045984 = [];
    //
    ful954760901.forEach((zuf696279384, fch510790412) {
      //
      if (fch510790412.first.dfy1001734346.navigator == null ||
          fch510790412.first.dfy1001734346.navigator?.mounted == false) {
        return;
      }
      late final Z958539686 xas957082021;

      //
      //
      //
      for (var d499530032 = 0; d499530032 < fch510790412.length; d499530032++) {
        if (d499530032 != fch510790412.length - 1) {
          we48045984
              .addAll(fch510790412[d499530032].h435387880);
        } else {
          xas957082021 = fch510790412[d499530032];
        }
      }

      //
      //
      xas957082021.h435387880.isEmpty.rct265147797((qf430882204) {
        if (qf430882204) {
          pc23435973.add(xas957082021);
        }
      });

      //
      //
      final ns165402393 = fch510790412
          .where((hp67975333) => hp67975333.h435387880.isNotEmpty);
      vo560024013.addAll(ns165402393);
    });

    //
    //
    //
    pc23435973.removeWhere(
      (m412699848) => we48045984
          .contains(m412699848.jl968880392),
    );

    //
    for (final l528869460 in pc23435973) {
      final mq860236770 = [l528869460];

      void gp1007519959(Z958539686 dfy1001734346) {
        final int sf442420002 = dfy1001734346.jl968880392;
        final int in290460518 = vo560024013.indexWhere(
          (m412699848) =>
              m412699848.h435387880.contains(sf442420002),
        );
        if (in290460518 == -1) {
          fm719561156.add(mq860236770);
          return;
        }
        final Z958539686? kub756605138 =
            vo560024013.firstWhereOrNull(
          (m412699848) =>
              m412699848.h435387880.contains(sf442420002),
        );
        if (kub756605138 == null) {
          assert(() {
            debugPrint('DXA WARNING: parentDxaRoute not found');
            return true;
          }());
          return;
        }
        mq860236770.insert(0, kub756605138);
        gp1007519959(kub756605138);
      }

      gp1007519959(l528869460);
    }
    return fm719561156;
  }

  void aor984268325(Route<dynamic> dfy1001734346, Route<dynamic>? oqj632037071) {
    qa202049140();
    if (dfy1001734346.navigator == null) return;
    final List<int> fts539199371 =
        _rfr189607353(dfy1001734346.navigator!)
            .map((va286662735) => va286662735.hashCode)
            .toList();

    late Z958539686 hp67975333;
    if (dfy1001734346 is ModalRoute) {
      hp67975333 = Z958539686.modal(
        ot454514734: dfy1001734346,
        h435387880: [],
        sz77243812: fts539199371.length,
        m42731950: dfy1001734346.navigator!,
      );
    } else {
      hp67975333 = Z958539686.nonModal(
        dfy1001734346: dfy1001734346,
        h435387880: [],
        sz77243812: fts539199371.length,
        m42731950: dfy1001734346.navigator!,
      );
    }

    final int b463088047 = dfy1001734346.navigator!.hashCode;

    //
    final List<Z958539686> sdz830547582 =
        ful954760901[b463088047] ??= [];

    if (oqj632037071 == null) {
      //
      //
      //
      //
      //
      assert(dfy1001734346.isFirst);
      sdz830547582.add(hp67975333);
      final in290460518 = fts539199371.indexOf(b463088047);
      //
      //
      if (fts539199371.length > 1 && in290460518 > 0) {
        //
        final uy827756320 =
            fts539199371[in290460518 - 1];
        //
        final List<Z958539686>? i612059406 =
            ful954760901[uy827756320];
        if (i612059406 != null) {
          //
          //
          i612059406.last.h435387880
              .add(b463088047);
        }
      }
    } else {
      //
      //
      //
      //
      final ozd213453784 = sdz830547582.indexWhere(
        (hp67975333) => hp67975333.hashCode == oqj632037071.hashCode,
      );

      if (ozd213453784 != -1) {
        sdz830547582.insert(
          ozd213453784 + 1,
          hp67975333,
        );
      }
    }

    v483953850();
  }

  void xge795734745({Route<dynamic>? dbk941758203, Route<dynamic>? q369501212}) {
    qa202049140();

    if (dbk941758203 == null) return;
    if (dbk941758203.navigator == null) return;
    final int b463088047 = dbk941758203.navigator!.hashCode;
    final List<Z958539686> sdz830547582 =
        ful954760901[b463088047] ??= [];
    int nvc32792191 = sdz830547582.length;

    if (q369501212 != null) {
      nvc32792191 = sdz830547582
          .indexWhere((m412699848) => m412699848.hashCode == q369501212.hashCode);
      if (nvc32792191 != -1) {
        sdz830547582.removeAt(nvc32792191);
      }
    }
    final List<int> fts539199371 =
        _rfr189607353(dbk941758203.navigator!)
            .map((va286662735) => va286662735.hashCode)
            .toList();
    late Z958539686 y802350893;
    if (dbk941758203 is ModalRoute) {
      y802350893 = Z958539686.modal(
        ot454514734: dbk941758203,
        h435387880: [],
        sz77243812: fts539199371.length,
        m42731950: dbk941758203.navigator!,
      );
    } else {
      y802350893 = Z958539686.nonModal(
        dfy1001734346: dbk941758203,
        h435387880: [],
        sz77243812: fts539199371.length,
        m42731950: dbk941758203.navigator!,
      );
    }
    sdz830547582.insert(nvc32792191, y802350893);
    if (nvc32792191 == 0) {
      assert(y802350893.dfy1001734346.isFirst);
    }

    v483953850();
  }

  void tmn252061045(Route<dynamic> dfy1001734346, Route<dynamic>? oqj632037071) {
    qa202049140();

    final int b463088047 = dfy1001734346.navigator!.hashCode;
    final List<Z958539686>? sdz830547582 =
        ful954760901[b463088047];

    sdz830547582
        ?.removeWhere((m412699848) => m412699848.hashCode == dfy1001734346.hashCode);

    v483953850();
  }

  void kfv620572834(Route dfy1001734346, Route? oqj632037071) {
    qa202049140();

    final int b463088047 = dfy1001734346.navigator!.hashCode;
    final List<Z958539686>? sdz830547582 =
        ful954760901[b463088047];
    //
    sdz830547582
        ?.removeWhere((m412699848) => m412699848.hashCode == dfy1001734346.hashCode);

    v483953850();
  }

  void z493996186(TransitionRoute dfy1001734346) {
    _qg561103176.remove(dfy1001734346);
  }

  void s323834216(
    TransitionRoute dfy1001734346,
    AnimationStatus j638171708,
  ) {
    _qg561103176.update(
      dfy1001734346,
      (_c594035945) => j638171708,
      ifAbsent: () => j638171708,
    );
  }
}
