import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/pm943818353.dart';

import 'package:medallia_dxa/src/yd131649498.dart';
import 'package:medallia_dxa/src/feb452801672.dart';
import 'package:medallia_dxa/src/jn255042292.dart';

class Lzi1042074488 extends V353260186 {
  Lzi1042074488(this._o1061097467, Wrq520942842 mna548597429)
      : super(
          mna548597429,
        );

  final Gy394369191 _o1061097467;

  Logger get l613848353 => _o1061097467.tqo1022949731;
  bool get mk740509224 => R583050654.fwk892083481.roc190648562.mk740509224;

  @override
  void didPush(Route<dynamic> v1001734298, Route<dynamic>? ua632037023) {
    super.didPush(v1001734298, ua632037023);
    l613848353.d('didPush - ${v1001734298.settings.name}- $v1001734298 - $ua632037023');

    if (v1001734298 is TransitionRoute) {
      if (v1001734298.animation != null) {
        v1001734298.animation!.addStatusListener((khc638171756) {
          _l542189941(khc638171756, v1001734298);
        });
        _l542189941(v1001734298.animation!.status, v1001734298);
      }
    }
    vcq349873891.x984268405(v1001734298, ua632037023);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    l613848353.d('didReplace - ${newRoute?.settings.name}- $newRoute - $oldRoute');

    if (newRoute is TransitionRoute) {
      if (newRoute.animation != null) {
        newRoute.animation!.addStatusListener((khc638171756) {
          _l542189941(khc638171756, newRoute);
        });
        _l542189941(newRoute.animation!.status, newRoute);
      }
    }
    vcq349873891.y795734665(jf941758123: newRoute, v369501260: oldRoute);
  }

  @override
  void didPop(Route<dynamic> v1001734298, Route<dynamic>? ua632037023) {
    super.didPop(v1001734298, ua632037023);
    l613848353.d('didPop - ${v1001734298.settings.name}- $v1001734298 - $ua632037023');

    vcq349873891.k252060965(v1001734298, ua632037023);
  }

  @override
  void didRemove(Route v1001734298, Route? ua632037023) {
    super.didRemove(v1001734298, ua632037023);
    l613848353.d('didRemove - ${v1001734298.settings.name}- $v1001734298 - $ua632037023');

    vcq349873891.x620572914(v1001734298, ua632037023);
  }
}

abstract class V353260186
    extends RouteObserver<Route<dynamic>> {
  late final Rsx1047663418 ucv653426641 = R583050654.fwk892083481.ucv653426641;
  final Wrq520942842 vcq349873891;
  V353260186(
    this.vcq349873891,
  );
  void _l542189941(AnimationStatus khc638171756, TransitionRoute v1001734298) {
    _ti322831257(v1001734298, khc638171756);
    ucv653426641.vpb565192225 = _ku224802399();
  }

  void _ti322831257(TransitionRoute v1001734298, AnimationStatus khc638171756) {
    if (khc638171756 == AnimationStatus.dismissed ||
        khc638171756 == AnimationStatus.completed) {
      vcq349873891.b977721386.remove(v1001734298);
    } else {
      //
      if (v1001734298.controller != null &&
          //
          v1001734298.controller!.toStringDetails().contains('silenced')) {
        return;
      }
      vcq349873891.b977721386.update(
        v1001734298,
        (e510790492) => khc638171756,
        ifAbsent: () => khc638171756,
      );
    }
  }

  bool _ku224802399() {
    return vcq349873891.b977721386.isNotEmpty;
  }
}
