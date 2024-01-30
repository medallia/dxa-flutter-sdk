import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/t943818660.dart';

import 'package:medallia_dxa/src/epi131649039.dart';
import 'package:medallia_dxa/src/yh452801885.dart';
import 'package:medallia_dxa/src/lm255042337.dart';

class Fj1042074285 extends Ewq353260367 {
  Fj1042074285(this._suc1061097006, P520942895 stw548597600)
      : super(
          stw548597600,
        );

  final Tiy394369394 _suc1061097006;

  Logger get b613848308 => _suc1061097006.lp1022949558;
  bool get f740509693 => Bc583050315.i892083404.tee190648615.f740509693;

  @override
  void didPush(Route<dynamic> ag1001734479, Route<dynamic>? eke632037194) {
    super.didPush(ag1001734479, eke632037194);
    b613848308.d('didPush - ${ag1001734479.settings.name}- $ag1001734479 - $eke632037194');

    if (ag1001734479 is TransitionRoute) {
      if (ag1001734479.animation != null) {
        ag1001734479.animation!.addStatusListener((dfp638172089) {
          _e542189728(dfp638172089, ag1001734479);
        });
        _e542189728(ag1001734479.animation!.status, ag1001734479);
      }
    }
    ge349873974.ik984268704(ag1001734479, eke632037194);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    b613848308.d('didReplace - ${newRoute?.settings.name}- $newRoute - $oldRoute');

    if (newRoute is TransitionRoute) {
      if (newRoute.animation != null) {
        newRoute.animation!.addStatusListener((dfp638172089) {
          _e542189728(dfp638172089, newRoute);
        });
        _e542189728(newRoute.animation!.status, newRoute);
      }
    }
    ge349873974.ee795734876(wzf941758334: newRoute, c369501593: oldRoute);
  }

  @override
  void didPop(Route<dynamic> ag1001734479, Route<dynamic>? eke632037194) {
    super.didPop(ag1001734479, eke632037194);
    b613848308.d('didPop - ${ag1001734479.settings.name}- $ag1001734479 - $eke632037194');

    ge349873974.esj252060912(ag1001734479, eke632037194);
  }

  @override
  void didRemove(Route ag1001734479, Route? eke632037194) {
    super.didRemove(ag1001734479, eke632037194);
    b613848308.d('didRemove - ${ag1001734479.settings.name}- $ag1001734479 - $eke632037194');

    ge349873974.gj620572967(ag1001734479, eke632037194);
  }
}

abstract class Ewq353260367
    extends RouteObserver<Route<dynamic>> {
  late final In1047663343 sp653426180 = Bc583050315.i892083404.sp653426180;
  final P520942895 ge349873974;
  Ewq353260367(
    this.ge349873974,
  );
  void _e542189728(AnimationStatus dfp638172089, TransitionRoute ag1001734479) {
    _cov322830924(ag1001734479, dfp638172089);
    sp653426180.zv565192692 = _wr224802698();
  }

  void _cov322830924(TransitionRoute ag1001734479, AnimationStatus dfp638172089) {
    if (dfp638172089 == AnimationStatus.dismissed ||
        dfp638172089 == AnimationStatus.completed) {
      ge349873974.ht977721855.remove(ag1001734479);
    } else {
      //
      if (ag1001734479.controller != null &&
          //
          ag1001734479.controller!.toStringDetails().contains('silenced')) {
        return;
      }
      ge349873974.ht977721855.update(
        ag1001734479,
        (hy510790281) => dfp638172089,
        ifAbsent: () => dfp638172089,
      );
    }
  }

  bool _wr224802698() {
    return ge349873974.ht977721855.isNotEmpty;
  }
}
