import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/au721560410.dart';

import 'package:medallia_dxa/src/mbc806890118.dart';
import 'package:medallia_dxa/src/sb487303956.dart';
import 'package:medallia_dxa/src/vz764152707.dart';

class K1042074088 extends Jtk353259530 {
  K1042074088(
    this._ifl1061096811,
    O520943210 qgk349873267,
  ) : super(
          qgk349873267,
        );

  final A394369591 _ifl1061096811;

  @override
  void didPush(Route<dynamic> cu1001734666, Route<dynamic>? vdx632036367) {
    super.didPush(cu1001734666, vdx632036367);
    _ifl1061096811.tog141628530(
      Qqg355692373.yjj380883651,
      'didPush - ${cu1001734666.settings.name} - $cu1001734666 - $vdx632036367',
    );

    if (cu1001734666 is TransitionRoute) {
      if (cu1001734666.animation != null) {
        cu1001734666.animation!.addStatusListener((zp638171388) {
          ps987108960(zp638171388, cu1001734666);
        });
        ps987108960(cu1001734666.animation!.status, cu1001734666);
      }
    }
    qgk349873267.kjn984268005(cu1001734666, vdx632036367);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _ifl1061096811.tog141628530(
      Qqg355692373.yjj380883651,
      'didReplace - ${newRoute?.settings.name}- $newRoute - $oldRoute',
    );

    if (newRoute is TransitionRoute) {
      if (newRoute.animation != null) {
        newRoute.animation!.addStatusListener((zp638171388) {
          ps987108960(zp638171388, newRoute);
        });
        ps987108960(newRoute.animation!.status, newRoute);
      }
    }
    qgk349873267.jiv795734041(xnt941757499: newRoute, ne369501916: oldRoute);
  }

  @override
  void didPop(Route<dynamic> cu1001734666, Route<dynamic>? vdx632036367) {
    super.didPop(cu1001734666, vdx632036367);
    _ifl1061096811.tog141628530(
      Qqg355692373.yjj380883651,
      'didPop - ${cu1001734666.settings.name}- $cu1001734666 - $vdx632036367',
    );

    qgk349873267.eqp252061621(cu1001734666, vdx632036367);
  }

  @override
  void didRemove(Route cu1001734666, Route? vdx632036367) {
    super.didRemove(cu1001734666, vdx632036367);
    _ifl1061096811.tog141628530(
      Qqg355692373.yjj380883651,
      'didRemove - ${cu1001734666.settings.name}- $cu1001734666 - $vdx632036367',
    );

    qgk349873267.ij620573282(cu1001734666, vdx632036367);
  }
}

abstract class Jtk353259530
    extends RouteObserver<Route<dynamic>> {
  late final Xl1047663018 ltl653425985 = Z583051022.n892084105.ltl653425985;
  final O520943210 qgk349873267;
  Jtk353259530(
    this.qgk349873267,
  );
  @visibleForTesting
  void ps987108960(AnimationStatus zp638171388, TransitionRoute cu1001734666) {
    _xib322830601(cu1001734666, zp638171388);
  }

  void _xib322830601(TransitionRoute cu1001734666, AnimationStatus zp638171388) {
    if (zp638171388 == AnimationStatus.dismissed ||
        zp638171388 == AnimationStatus.completed) {
      qgk349873267.wlq493996634(cu1001734666);
    } else {
      //
      if (cu1001734666.controller != null &&

          //
          //
          //
          //
          cu1001734666.controller!.toStringDetails().contains('silenced')) {
        return;
      }
      qgk349873267.u323834792(
        cu1001734666,
        zp638171388,
      );
    }
  }
}
