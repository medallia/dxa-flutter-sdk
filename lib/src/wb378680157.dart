import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/duy943818669.dart';

import 'package:medallia_dxa/src/kzh131649030.dart';
import 'package:medallia_dxa/src/cwx452801876.dart';
import 'package:medallia_dxa/src/ny255042344.dart';

class N1042074276 extends Di353260358 {
  N1042074276(this._v1061096999, Vv520942886 dbs548597609)
      : super(
          dbs548597609,
        );

  final Par394369403 _v1061096999;

  Logger get w613848317 => _v1061096999.v1022949567;
  bool get r740509684 => Yt583050306.ss892083397.v190648622.r740509684;

  @override
  void didPush(Route<dynamic> efl1001734470, Route<dynamic>? ew632037187) {
    super.didPush(efl1001734470, ew632037187);
    w613848317.d('didPush - ${efl1001734470.settings.name}- $efl1001734470 - $ew632037187');

    if (efl1001734470 is TransitionRoute) {
      if (efl1001734470.animation != null) {
        efl1001734470.animation!.addStatusListener((g638172080) {
          _iq542189737(g638172080, efl1001734470);
        });
        _iq542189737(efl1001734470.animation!.status, efl1001734470);
      }
    }
    f349873983.e984268713(efl1001734470, ew632037187);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    w613848317.d('didReplace - ${newRoute?.settings.name}- $newRoute - $oldRoute');

    if (newRoute is TransitionRoute) {
      if (newRoute.animation != null) {
        newRoute.animation!.addStatusListener((g638172080) {
          _iq542189737(g638172080, newRoute);
        });
        _iq542189737(newRoute.animation!.status, newRoute);
      }
    }
    f349873983.uh795734869(bu941758327: newRoute, ss369501584: oldRoute);
  }

  @override
  void didPop(Route<dynamic> efl1001734470, Route<dynamic>? ew632037187) {
    super.didPop(efl1001734470, ew632037187);
    w613848317.d('didPop - ${efl1001734470.settings.name}- $efl1001734470 - $ew632037187');

    f349873983.cu252060921(efl1001734470, ew632037187);
  }

  @override
  void didRemove(Route efl1001734470, Route? ew632037187) {
    super.didRemove(efl1001734470, ew632037187);
    w613848317.d('didRemove - ${efl1001734470.settings.name}- $efl1001734470 - $ew632037187');

    f349873983.xnj620572974(efl1001734470, ew632037187);
  }
}

abstract class Di353260358
    extends RouteObserver<Route<dynamic>> {
  late final Mvl1047663334 dq653426189 = Yt583050306.ss892083397.dq653426189;
  final Vv520942886 f349873983;
  Di353260358(
    this.f349873983,
  );
  void _iq542189737(AnimationStatus g638172080, TransitionRoute efl1001734470) {
    _nxs322830917(efl1001734470, g638172080);
    dq653426189.zdd565192701 = _nzk224802691();
  }

  void _nxs322830917(TransitionRoute efl1001734470, AnimationStatus g638172080) {
    if (g638172080 == AnimationStatus.dismissed ||
        g638172080 == AnimationStatus.completed) {
      f349873983.byj977721846.remove(efl1001734470);
    } else {
      //
      if (efl1001734470.controller != null &&
          //
          efl1001734470.controller!.toStringDetails().contains('silenced')) {
        return;
      }
      f349873983.byj977721846.update(
        efl1001734470,
        (rjc510790272) => g638172080,
        ifAbsent: () => g638172080,
      );
    }
  }

  bool _nzk224802691() {
    return f349873983.byj977721846.isNotEmpty;
  }
}
