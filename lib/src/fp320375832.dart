import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/mn721560025.dart';

import 'package:medallia_dxa/src/e806889477.dart';
import 'package:medallia_dxa/src/e487303575.dart';
import 'package:medallia_dxa/src/br764152064.dart';

class Js1042074475 extends Xkg353260169 {
  Js1042074475(
    this._e1061097448,
    R520942825 khb349873904,
  ) : super(
          khb349873904,
        );

  final Jnx394369204 _e1061097448;

  @override
  void didPush(Route<dynamic> mo1001734281, Route<dynamic>? j632037004) {
    super.didPush(mo1001734281, j632037004);
    _e1061097448.w141629169(
      F355691990.e380883008,
      'didPush - ${mo1001734281.settings.name} - $mo1001734281 - $j632037004',
    );

    if (mo1001734281 is TransitionRoute) {
      if (mo1001734281.animation != null) {
        mo1001734281.animation!.addStatusListener((w638171775) {
          vad987108579(w638171775, mo1001734281);
        });
        vad987108579(mo1001734281.animation!.status, mo1001734281);
      }
    }
    khb349873904.ao984268390(mo1001734281, j632037004);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _e1061097448.w141629169(
      F355691990.e380883008,
      'didReplace - ${newRoute?.settings.name}- $newRoute - $oldRoute',
    );

    if (newRoute is TransitionRoute) {
      if (newRoute.animation != null) {
        newRoute.animation!.addStatusListener((w638171775) {
          vad987108579(w638171775, newRoute);
        });
        vad987108579(newRoute.animation!.status, newRoute);
      }
    }
    khb349873904.h795734682(v941758136: newRoute, cqh369501279: oldRoute);
  }

  @override
  void didPop(Route<dynamic> mo1001734281, Route<dynamic>? j632037004) {
    super.didPop(mo1001734281, j632037004);
    _e1061097448.w141629169(
      F355691990.e380883008,
      'didPop - ${mo1001734281.settings.name}- $mo1001734281 - $j632037004',
    );

    khb349873904.qbx252060982(mo1001734281, j632037004);
  }

  @override
  void didRemove(Route mo1001734281, Route? j632037004) {
    super.didRemove(mo1001734281, j632037004);
    _e1061097448.w141629169(
      F355691990.e380883008,
      'didRemove - ${mo1001734281.settings.name}- $mo1001734281 - $j632037004',
    );

    khb349873904.nga620572897(mo1001734281, j632037004);
  }
}

abstract class Xkg353260169
    extends RouteObserver<Route<dynamic>> {
  late final Fs1047663401 aco653426626 = Zmk583050637.u892083466.aco653426626;
  final R520942825 khb349873904;
  Xkg353260169(
    this.khb349873904,
  );
  @visibleForTesting
  void vad987108579(AnimationStatus w638171775, TransitionRoute mo1001734281) {
    _cjk322831242(mo1001734281, w638171775);
  }

  void _cjk322831242(TransitionRoute mo1001734281, AnimationStatus w638171775) {
    if (w638171775 == AnimationStatus.dismissed ||
        w638171775 == AnimationStatus.completed) {
      khb349873904.wwj493996249(mo1001734281);
    } else {
      //
      if (mo1001734281.controller != null &&

          //
          //
          //
          //
          mo1001734281.controller!.toStringDetails().contains('silenced')) {
        return;
      }
      khb349873904.z323834155(
        mo1001734281,
        w638171775,
      );
    }
  }
}
