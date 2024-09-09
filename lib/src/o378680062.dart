import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/szs7917082.dart';
import 'package:medallia_dxa/src/z943818254.dart';

import 'package:medallia_dxa/src/cpo131649445.dart';
import 'package:medallia_dxa/src/v452801783.dart';
import 'package:medallia_dxa/src/yyq255042187.dart';

class K1042074375 extends Vi353260261 {
  K1042074375(this._gi1061097348, Gsm520942725 mmj548597450)
      : super(
          mmj548597450,
        );

  final Nfs394369240 _gi1061097348;
  late final H859069801 _thh768939945 =
      Wyf583050721.wf892083558.aaq507880560;
  bool get jpt740509271 => _thh768939945.jpt740509271;

  @override
  void didPush(Route<dynamic> kcq1001734373, Route<dynamic>? uu632037088) {
    super.didPush(kcq1001734373, uu632037088);
    _gi1061097348.ieh141629085(Cu355691962.qt380882988,
        'didPush - ${kcq1001734373.settings.name}- $kcq1001734373 - $uu632037088');

    if (kcq1001734373 is TransitionRoute) {
      if (kcq1001734373.animation != null) {
        kcq1001734373.animation!.addStatusListener((x638171667) {
          _mb542189834(x638171667, kcq1001734373);
        });
        _mb542189834(kcq1001734373.animation!.status, kcq1001734373);
      }
    }
    nwc349873820.uwg984268298(kcq1001734373, uu632037088);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _gi1061097348.ieh141629085(Cu355691962.qt380882988,
        'didReplace - ${newRoute?.settings.name}- $newRoute - $oldRoute');

    if (newRoute is TransitionRoute) {
      if (newRoute.animation != null) {
        newRoute.animation!.addStatusListener((x638171667) {
          _mb542189834(x638171667, newRoute);
        });
        _mb542189834(newRoute.animation!.status, newRoute);
      }
    }
    nwc349873820.ie795734774(ho941758164: newRoute, rna369501235: oldRoute);
  }

  @override
  void didPop(Route<dynamic> kcq1001734373, Route<dynamic>? uu632037088) {
    super.didPop(kcq1001734373, uu632037088);
    _gi1061097348.ieh141629085(Cu355691962.qt380882988,
        'didPop - ${kcq1001734373.settings.name}- $kcq1001734373 - $uu632037088');

    nwc349873820.n252061018(kcq1001734373, uu632037088);
  }

  @override
  void didRemove(Route kcq1001734373, Route? uu632037088) {
    super.didRemove(kcq1001734373, uu632037088);
    _gi1061097348.ieh141629085(Cu355691962.qt380882988,
        'didRemove - ${kcq1001734373.settings.name}- $kcq1001734373 - $uu632037088');

    nwc349873820.wlt620572813(kcq1001734373, uu632037088);
  }
}

abstract class Vi353260261
    extends RouteObserver<Route<dynamic>> {
  late final Pf1047663429 o653426606 = Wyf583050721.wf892083558.o653426606;
  final Gsm520942725 nwc349873820;
  Vi353260261(
    this.nwc349873820,
  );
  void _mb542189834(AnimationStatus x638171667, TransitionRoute kcq1001734373) {
    _s322831334(kcq1001734373, x638171667);
    o653426606.sh565192286 = _qs224802336();
  }

  void _s322831334(TransitionRoute kcq1001734373, AnimationStatus x638171667) {
    if (x638171667 == AnimationStatus.dismissed ||
        x638171667 == AnimationStatus.completed) {
      nwc349873820.vty977721429.remove(kcq1001734373);
    } else {
      //
      if (kcq1001734373.controller != null &&
          //
          kcq1001734373.controller!.toStringDetails().contains('silenced')) {
        return;
      }
      nwc349873820.vty977721429.update(
        kcq1001734373,
        (u510790435) => x638171667,
        ifAbsent: () => x638171667,
      );
    }
  }

  bool _qs224802336() {
    return nwc349873820.vty977721429.isNotEmpty;
  }
}
