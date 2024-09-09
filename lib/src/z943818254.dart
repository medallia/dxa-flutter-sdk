//

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/szs7917082.dart';
import 'package:medallia_dxa/src/ki1031390097.dart';
import 'package:medallia_dxa/src/o378680062.dart';

import 'package:medallia_dxa/src/yqb209816195.dart';
import 'package:medallia_dxa/src/cpo131649445.dart';
import 'package:medallia_dxa/src/v452801783.dart';
import 'package:medallia_dxa/src/t439716067.dart';
import 'package:medallia_dxa/src/xd304042551.dart';
import 'package:medallia_dxa/src/yyq255042187.dart';

typedef Y312793182 = List<Q958539657>;
typedef U845227302 = Cr686664618 Function({
  required String cqu459293245,
  required String m652311908,
  required List<DxaRouteWithModalRederence> qng986357682,
  required List<Q958539657> mz916463452,
});

//
class Gsm520942725 {
  Gsm520942725();
  late final H859069801 aaq507880560 =
      Wyf583050721.wf892083558.aaq507880560;
  late final Nfs394369240 _i381625861 = Wyf583050721.wf892083558.b751988234;
  late final WidgetsBinding _igb657053372 =
      Wyf583050721.wf892083558.wid759433073;
  late final Pf1047663429 _eh750376564 = Wyf583050721.wf892083558.o653426606;
  final List<RouteObserver> _ql469627358 = [];
  final Map<TransitionRoute, AnimationStatus> vty977721429 =
      <TransitionRoute, AnimationStatus>{};
  bool get cu375854716 => _j245336109 != null;
  final String p80689528 = 'dxa_route_name_not_provided';
  final Map<String, String> _b1837383 = {};
  void qzj888190205(Map<String, String> u371075273) {
    _b1837383.addAll(u371075273);
  }

  //
  @visibleForTesting
  final Map<int, Y312793182> wo954760938 = {};
  String? lwk812908601;

  @visibleForTesting
  List<Q958539657> o949429026() {
    final List<Q958539657> bl92384738 = [];

    wo954760938
        .forEach((ilt834844385, k193603092) {
      for (final kcq1001734373 in k193603092) {
        bl92384738.add(kcq1001734373);
      }
    });
    return bl92384738;
  }

  //_xtc5177092
  void bt483953813() {
    if (!aaq507880560.jpt740509271) return;
    final List<Q958539657> mz916463452 = o949429026();

    String? wrf539115473;

    if (cu375854716) {
      wrf539115473 = _nkg132372158!();
    }

    lwk812908601 = wrf539115473;

    //
    //
    //
    //
    //
    //
    //
    final List<List<Q958539657>> go719561195 = [];

    go719561195.addAll(
      _xtc5177092(),
    );
    final List<List<DxaRouteWithModalRederence>>
        tr151547609 = [];

    //
    //
    //
    //
    for (var z499530015 = 0; z499530015 < go719561195.length; z499530015++) {
      final zgn1052622218 = go719561195[z499530015];
      tr151547609.add([]);
      for (var ov309503671 = 0; ov309503671 < zgn1052622218.length; ov309503671++) {
        final DxaRouteWithModalRederence? xjw286221953 =
            _g403298913(zgn1052622218[ov309503671]);
        if (xjw286221953 != null) {
          tr151547609[z499530015]
              .add(xjw286221953);
        }
      }
    }

    final List<Cr686664618> e859565553 = [];
    for (final qng986357682 in tr151547609) {
      if (qng986357682.isEmpty) continue;
      final Q958539657 q442649580 = qng986357682.last;
      String? jm1012357774 = wrf539115473 ??
          q442649580.m652311908.vy265147834((m652311908) {
            return _b1837383[m652311908] ?? m652311908;
          });
      if (jm1012357774 == null && q442649580.dan14447736) {
        jm1012357774 = kdz754772658(q442649580)?.m652311908;
      }
      _eh750376564
          .e38580542(
            cqu459293245: qng986357682.hashCode.toString(),
            m652311908: jm1012357774 ?? p80689528,
            qng986357682: qng986357682,
            mz916463452: mz916463452,
          )
          .vy265147834((s662083494) => e859565553.add(s662083494));
    }
    _eh750376564.ex64443526(e859565553);
  }

  RouterDelegate? _j245336109;
  void cm315756807(RouterDelegate sxc262923332) {
    if (_j245336109 != null) return;
    _j245336109 = sxc262923332;
    _j245336109!.addListener(() {
      //
      //
      //
      _igb657053372.addPostFrameCallback((xxo217292437) {
        if (lwk812908601 != _nkg132372158!()) {
          bt483953813();
        }
      });
    });
  }

  String Function()? _nkg132372158;
  void iv55451609(
    String Function() wr628753762,
  ) {
    if (_nkg132372158 != null) return;
    _nkg132372158 = wr628753762;
  }

  RouteObserver get _ug557231800 {
    return K1042074375(
      _i381625861,
      this,
    );
  }

  RouteObserver inw37041806() {
    final RouteObserver ie630958820 = _ug557231800;

    _ql469627358.add(ie630958820);
    return ie630958820;
  }

  //uwg984268298
  List<NavigatorState> _ww189607318(NavigatorState pf905960398) {
    final List<NavigatorState> u730440953 = [];
    void t300919624(NavigatorState pf905960398) {
      u730440953.add(pf905960398);

      final xu381227548 = pf905960398.context;

      xu381227548.visitAncestorElements((uw412699879) {
        final NavigatorState? opm933776055 = Navigator.maybeOf(uw412699879);
        if (opm933776055 == null) return false;
        t300919624(opm933776055);
        return false;
      });
    }

    t300919624(pf905960398);
    return u730440953.reversed.toList();
  }

  DxaRouteWithModalRederence? _g403298913(
      Q958539657 fnm67975306) {
    if (fnm67975306.kcq1001734373.navigator == null) return null;
    if (fnm67975306 is L666222797 && fnm67975306.i447820677) {
      return fnm67975306;
    }
    L666222797? zu834820311;

    for (Q958539657 hny674270293 = fnm67975306;;) {
      final Q958539657? ska127420820 =
          kdz754772658(hny674270293);
      if (ska127420820 == null) break;
      if (ska127420820 is L666222797 &&
          ska127420820.i447820677) {
        zu834820311 = ska127420820;
        break;
      }
      hny674270293 = ska127420820;
    }

    if (zu834820311 == null) {
      //
      //
      if (fnm67975306 is L666222797) {
        return fnm67975306;
      }
      return null;
    }

    late final DxaRouteWithModalRederence p100371119;
    if (fnm67975306 is L666222797) {
      p100371119 = fnm67975306.xrr1033552603(
        zu834820311,
      );
    } else if (fnm67975306 is Fh463559779) {
      p100371119 = fnm67975306.wc101645304(
        zu834820311,
      );
    } else {
      throw Sif901570282('Unexpected DxaRoute class');
    }

    return p100371119;
  }

  //
  @visibleForTesting
  Q958539657? kdz754772658(Q958539657 kyf989899702) {
    final int? x86388559 =
        wo954760938[kyf989899702.fz968880423]
            ?.indexOf(kyf989899702);
    if (x86388559 == null || x86388559 < 1) return null;
    final Q958539657? qz217659937 =
        wo954760938[kyf989899702.fz968880423]
            ?[x86388559 - 1];

    return qz217659937;
  }

  //
  @visibleForTesting
  void qf202049115() {
    wo954760938.removeWhere((cd696279415, u510790435) {
      u510790435.removeWhere((uw412699879) {
        return uw412699879.kcq1001734373.navigator == null;
      });
      if (u510790435.isEmpty) return true;
      return false;
    });
  }

  //
  List<List<Q958539657>> _xtc5177092() {
    final List<List<Q958539657>> go719561195 = [];
    final List<Q958539657> qtq23436010 = [];
    final List<Q958539657> zo560024034 = [];
    final List<int> sw48045967 = [];
    //
    wo954760938.forEach((cd696279415, u510790435) {
      //
      if (u510790435.first.kcq1001734373.navigator == null ||
          u510790435.first.kcq1001734373.navigator?.mounted == false) {
        return;
      }
      late final Q958539657 wir957081994;

      //
      //
      //
      for (var z499530015 = 0; z499530015 < u510790435.length; z499530015++) {
        if (z499530015 != u510790435.length - 1) {
          sw48045967
              .addAll(u510790435[z499530015].j435387847);
        } else {
          wir957081994 = u510790435[z499530015];
        }
      }

      //
      //
      wir957081994.j435387847.isEmpty.vy265147834((lnu430882227) {
        if (lnu430882227) {
          qtq23436010.add(wir957081994);
        }
      });

      //
      //
      final d165402422 = u510790435
          .where((fnm67975306) => fnm67975306.j435387847.isNotEmpty);
      zo560024034.addAll(d165402422);
    });

    //
    //
    //
    qtq23436010.removeWhere((uw412699879) => sw48045967
        .contains(uw412699879.fz968880423));

    //
    for (final jpg528869499 in qtq23436010) {
      final xw860236749 = [jpg528869499];

      void t1007519992(Q958539657 kcq1001734373) {
        final int r442419981 = kcq1001734373.fz968880423;
        final int f290460489 = zo560024034.indexWhere(
          (uw412699879) =>
              uw412699879.j435387847.contains(r442419981),
        );
        if (f290460489 == -1) {
          go719561195.add(xw860236749);
          return;
        }
        final Q958539657? aes756605181 =
            zo560024034.firstWhereOrNull(
          (uw412699879) =>
              uw412699879.j435387847.contains(r442419981),
        );
        if (aes756605181 == null) {
          assert(() {
            debugPrint('DXA WARNING: parentDxaRoute not found');
            return true;
          }());
          return;
        }
        xw860236749.insert(0, aes756605181);
        t1007519992(aes756605181);
      }

      t1007519992(jpg528869499);
    }
    return go719561195;
  }

  void uwg984268298(Route<dynamic> kcq1001734373, Route<dynamic>? uu632037088) {
    qf202049115();
    if (kcq1001734373.navigator == null) return;
    final List<int> d539199396 =
        _ww189607318(kcq1001734373.navigator!)
            .map((moj286662752) => moj286662752.hashCode)
            .toList();

    late Q958539657 fnm67975306;
    if (kcq1001734373 is ModalRoute) {
      fnm67975306 = Q958539657.modal(
        vg454514689: kcq1001734373,
        j435387847: [],
        det77243787: d539199396.length,
        s42731905: kcq1001734373.navigator!,
      );
    } else {
      fnm67975306 = Q958539657.nonModal(
        kcq1001734373: kcq1001734373,
        j435387847: [],
        det77243787: d539199396.length,
        s42731905: kcq1001734373.navigator!,
      );
    }

    final int gat463088000 = kcq1001734373.navigator!.hashCode;

    //
    final List<Q958539657> vd830547537 =
        wo954760938[gat463088000] ??= [];

    if (uu632037088 == null) {
      //
      //
      //
      //
      //
      assert(kcq1001734373.isFirst);
      vd830547537.add(fnm67975306);
      final f290460489 = d539199396.indexOf(gat463088000);
      //
      //
      if (d539199396.length > 1 && f290460489 > 0) {
        //
        final a827756303 =
            d539199396[f290460489 - 1];
        //
        final List<Q958539657>? qta612059425 =
            wo954760938[a827756303];
        if (qta612059425 != null) {
          //
          //
          qta612059425.last.j435387847
              .add(gat463088000);
        }
      }
    } else {
      //
      //
      //
      //
      final wca213453815 = vd830547537.indexWhere(
        (fnm67975306) => fnm67975306.hashCode == uu632037088.hashCode,
      );

      if (wca213453815 != -1) {
        vd830547537.insert(
          wca213453815 + 1,
          fnm67975306,
        );
      }
    }

    bt483953813();
  }

  void ie795734774({Route<dynamic>? ho941758164, Route<dynamic>? rna369501235}) {
    qf202049115();

    if (ho941758164 == null) return;
    if (ho941758164.navigator == null) return;
    final int gat463088000 = ho941758164.navigator!.hashCode;
    final List<Q958539657> vd830547537 =
        wo954760938[gat463088000] ??= [];
    int am32792144 = vd830547537.length;

    if (rna369501235 != null) {
      am32792144 = vd830547537
          .indexWhere((uw412699879) => uw412699879.hashCode == rna369501235.hashCode);
      if (am32792144 != -1) {
        vd830547537.removeAt(am32792144);
      }
    }
    final List<int> d539199396 =
        _ww189607318(ho941758164.navigator!)
            .map((moj286662752) => moj286662752.hashCode)
            .toList();
    late Q958539657 p802350850;
    if (ho941758164 is ModalRoute) {
      p802350850 = Q958539657.modal(
        vg454514689: ho941758164,
        j435387847: [],
        det77243787: d539199396.length,
        s42731905: ho941758164.navigator!,
      );
    } else {
      p802350850 = Q958539657.nonModal(
        kcq1001734373: ho941758164,
        j435387847: [],
        det77243787: d539199396.length,
        s42731905: ho941758164.navigator!,
      );
    }
    vd830547537.insert(am32792144, p802350850);
    if (am32792144 == 0) {
      assert(p802350850.kcq1001734373.isFirst);
    }

    bt483953813();
  }

  void n252061018(Route<dynamic> kcq1001734373, Route<dynamic>? uu632037088) {
    qf202049115();

    final int gat463088000 = kcq1001734373.navigator!.hashCode;
    final List<Q958539657>? vd830547537 =
        wo954760938[gat463088000];

    vd830547537
        ?.removeWhere((uw412699879) => uw412699879.hashCode == kcq1001734373.hashCode);

    bt483953813();
  }

  void wlt620572813(Route kcq1001734373, Route? uu632037088) {
    qf202049115();

    final int gat463088000 = kcq1001734373.navigator!.hashCode;
    final List<Q958539657>? vd830547537 =
        wo954760938[gat463088000];
    //
    vd830547537
        ?.removeWhere((uw412699879) => uw412699879.hashCode == kcq1001734373.hashCode);

    bt483953813();
  }
}
