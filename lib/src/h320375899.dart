import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/jq721559962.dart';

import 'package:medallia_dxa/src/m806889542.dart';
import 'package:medallia_dxa/src/s487303636.dart';
import 'package:medallia_dxa/src/mry764152131.dart';

class X1042074408 extends E353260234 {
  X1042074408(
    this._t1061097387,
    Hoh520942762 d349873843,
  ) : super(
          d349873843,
        );

  final Vqj394369271 _t1061097387;

  @override
  void didPush(Route<dynamic> dfy1001734346, Route<dynamic>? oqj632037071) {
    super.didPush(dfy1001734346, oqj632037071);
    _t1061097387.rw141629106(
      F355691925.llr380882947,
      'didPush - ${dfy1001734346.settings.name} - $dfy1001734346 - $oqj632037071',
    );

    if (dfy1001734346 is TransitionRoute) {
      if (dfy1001734346.animation != null) {
        dfy1001734346.animation!.addStatusListener((j638171708) {
          pyz987108512(j638171708, dfy1001734346);
        });
        pyz987108512(dfy1001734346.animation!.status, dfy1001734346);
      }
    }
    d349873843.aor984268325(dfy1001734346, oqj632037071);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _t1061097387.rw141629106(
      F355691925.llr380882947,
      'didReplace - ${newRoute?.settings.name}- $newRoute - $oldRoute',
    );

    if (newRoute is TransitionRoute) {
      if (newRoute.animation != null) {
        newRoute.animation!.addStatusListener((j638171708) {
          pyz987108512(j638171708, newRoute);
        });
        pyz987108512(newRoute.animation!.status, newRoute);
      }
    }
    d349873843.xge795734745(dbk941758203: newRoute, q369501212: oldRoute);
  }

  @override
  void didPop(Route<dynamic> dfy1001734346, Route<dynamic>? oqj632037071) {
    super.didPop(dfy1001734346, oqj632037071);
    _t1061097387.rw141629106(
      F355691925.llr380882947,
      'didPop - ${dfy1001734346.settings.name}- $dfy1001734346 - $oqj632037071',
    );

    d349873843.tmn252061045(dfy1001734346, oqj632037071);
  }

  @override
  void didRemove(Route dfy1001734346, Route? oqj632037071) {
    super.didRemove(dfy1001734346, oqj632037071);
    _t1061097387.rw141629106(
      F355691925.llr380882947,
      'didRemove - ${dfy1001734346.settings.name}- $dfy1001734346 - $oqj632037071',
    );

    d349873843.kfv620572834(dfy1001734346, oqj632037071);
  }
}

abstract class E353260234
    extends RouteObserver<Route<dynamic>> {
  late final W1047663466 vk653426561 = Fn583050702.gj892083529.vk653426561;
  final Hoh520942762 d349873843;
  E353260234(
    this.d349873843,
  );
  @visibleForTesting
  void pyz987108512(AnimationStatus j638171708, TransitionRoute dfy1001734346) {
    _yr322831305(dfy1001734346, j638171708);
  }

  void _yr322831305(TransitionRoute dfy1001734346, AnimationStatus j638171708) {
    if (j638171708 == AnimationStatus.dismissed ||
        j638171708 == AnimationStatus.completed) {
      d349873843.z493996186(dfy1001734346);
    } else {
      //
      if (dfy1001734346.controller != null &&

          //
          //
          //
          //
          dfy1001734346.controller!.toStringDetails().contains('silenced')) {
        return;
      }
      d349873843.s323834216(
        dfy1001734346,
        j638171708,
      );
    }
  }
}
