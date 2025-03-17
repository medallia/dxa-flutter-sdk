import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/a943817748.dart';

import 'package:medallia_dxa/src/g131648959.dart';
import 'package:medallia_dxa/src/d452802285.dart';
import 'package:medallia_dxa/src/rn255041681.dart';

class Qs1042073885 extends Np353259775 {
  Qs1042073885(
    this._mc1061096862,
    Mgs520943263 m349873286,
  ) : super(
          m349873286,
        );

  final S394369730 _mc1061096862;

  @override
  void didPush(Route<dynamic> ahj1001734911, Route<dynamic>? ve632036602) {
    super.didPush(ahj1001734911, ve632036602);
    _mc1061096862.uhj141628551(
      Rh355692448.pm380883510,
      'didPush - ${ahj1001734911.settings.name} - $ahj1001734911 - $ve632036602',
    );

    if (ahj1001734911 is TransitionRoute) {
      if (ahj1001734911.animation != null) {
        ahj1001734911.animation!.addStatusListener((gf638171145) {
          wp987109013(gf638171145, ahj1001734911);
        });
        wp987109013(ahj1001734911.animation!.status, ahj1001734911);
      }
    }
    m349873286.q984267792(ahj1001734911, ve632036602);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _mc1061096862.uhj141628551(
      Rh355692448.pm380883510,
      'didReplace - ${newRoute?.settings.name}- $newRoute - $oldRoute',
    );

    if (newRoute is TransitionRoute) {
      if (newRoute.animation != null) {
        newRoute.animation!.addStatusListener((gf638171145) {
          wp987109013(gf638171145, newRoute);
        });
        wp987109013(newRoute.animation!.status, newRoute);
      }
    }
    m349873286.gwz795734252(g941757646: newRoute, q369501737: oldRoute);
  }

  @override
  void didPop(Route<dynamic> ahj1001734911, Route<dynamic>? ve632036602) {
    super.didPop(ahj1001734911, ve632036602);
    _mc1061096862.uhj141628551(
      Rh355692448.pm380883510,
      'didPop - ${ahj1001734911.settings.name}- $ahj1001734911 - $ve632036602',
    );

    m349873286.tz252061504(ahj1001734911, ve632036602);
  }

  @override
  void didRemove(Route ahj1001734911, Route? ve632036602) {
    super.didRemove(ahj1001734911, ve632036602);
    _mc1061096862.uhj141628551(
      Rh355692448.pm380883510,
      'didRemove - ${ahj1001734911.settings.name}- $ahj1001734911 - $ve632036602',
    );

    m349873286.jga620573335(ahj1001734911, ve632036602);
  }
}

abstract class Np353259775
    extends RouteObserver<Route<dynamic>> {
  late final Pf1047662943 zal653426100 = K583051259.y892084092.zal653426100;
  final Mgs520943263 m349873286;
  Np353259775(
    this.m349873286,
  );
  @visibleForTesting
  void wp987109013(AnimationStatus gf638171145, TransitionRoute ahj1001734911) {
    _t322830844(ahj1001734911, gf638171145);
  }

  void _t322830844(TransitionRoute ahj1001734911, AnimationStatus gf638171145) {
    if (gf638171145 == AnimationStatus.dismissed ||
        gf638171145 == AnimationStatus.completed) {
      m349873286.ki493996719(ahj1001734911);
    } else {
      //
      if (ahj1001734911.controller != null &&

          //
          //
          //
          //
          ahj1001734911.controller!.toStringDetails().contains('silenced')) {
        return;
      }
      m349873286.f323834717(
        ahj1001734911,
        gf638171145,
      );
    }
  }
}
