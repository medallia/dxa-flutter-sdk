import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/ul721560381.dart';

import 'package:medallia_dxa/src/rm806890209.dart';
import 'package:medallia_dxa/src/q487304051.dart';
import 'package:medallia_dxa/src/r764152804.dart';

class R1042073999 extends Yh353259629 {
  R1042073999(
    this._opx1061096716,
    Zbo520943117 ls349873172,
  ) : super(
          ls349873172,
        );

  final Zwh394369616 _opx1061096716;

  @override
  void didPush(Route<dynamic> sxx1001734765, Route<dynamic>? xem632036456) {
    super.didPush(sxx1001734765, xem632036456);
    _opx1061096716.no141628437(
      X355692338.qb380883620,
      'didPush - ${sxx1001734765.settings.name} - $sxx1001734765 - $xem632036456',
    );

    if (sxx1001734765 is TransitionRoute) {
      if (sxx1001734765.animation != null) {
        sxx1001734765.animation!.addStatusListener((g638171291) {
          c987108871(g638171291, sxx1001734765);
        });
        c987108871(sxx1001734765.animation!.status, sxx1001734765);
      }
    }
    ls349873172.ofe984267906(sxx1001734765, xem632036456);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _opx1061096716.no141628437(
      X355692338.qb380883620,
      'didReplace - ${newRoute?.settings.name}- $newRoute - $oldRoute',
    );

    if (newRoute is TransitionRoute) {
      if (newRoute.animation != null) {
        newRoute.animation!.addStatusListener((g638171291) {
          c987108871(g638171291, newRoute);
        });
        c987108871(newRoute.animation!.status, newRoute);
      }
    }
    ls349873172.oub795734142(s941757532: newRoute, m369501883: oldRoute);
  }

  @override
  void didPop(Route<dynamic> sxx1001734765, Route<dynamic>? xem632036456) {
    super.didPop(sxx1001734765, xem632036456);
    _opx1061096716.no141628437(
      X355692338.qb380883620,
      'didPop - ${sxx1001734765.settings.name}- $sxx1001734765 - $xem632036456',
    );

    ls349873172.um252061650(sxx1001734765, xem632036456);
  }

  @override
  void didRemove(Route sxx1001734765, Route? xem632036456) {
    super.didRemove(sxx1001734765, xem632036456);
    _opx1061096716.no141628437(
      X355692338.qb380883620,
      'didRemove - ${sxx1001734765.settings.name}- $sxx1001734765 - $xem632036456',
    );

    ls349873172.hmg620573189(sxx1001734765, xem632036456);
  }
}

abstract class Yh353259629
    extends RouteObserver<Route<dynamic>> {
  late final Wec1047663053 jot653425958 = B583051113.dfo892084206.jot653425958;
  final Zbo520943117 ls349873172;
  Yh353259629(
    this.ls349873172,
  );
  @visibleForTesting
  void c987108871(AnimationStatus g638171291, TransitionRoute sxx1001734765) {
    _elt322830702(sxx1001734765, g638171291);
  }

  void _elt322830702(TransitionRoute sxx1001734765, AnimationStatus g638171291) {
    if (g638171291 == AnimationStatus.dismissed ||
        g638171291 == AnimationStatus.completed) {
      ls349873172.s493996605(sxx1001734765);
    } else {
      //
      if (sxx1001734765.controller != null &&

          //
          //
          //
          //
          sxx1001734765.controller!.toStringDetails().contains('silenced')) {
        return;
      }
      ls349873172.kr323834831(
        sxx1001734765,
        g638171291,
      );
    }
  }
}
