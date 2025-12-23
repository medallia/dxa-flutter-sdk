import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/iir721559784.dart';

import 'package:medallia_dxa/src/p806889780.dart';
import 'package:medallia_dxa/src/df487303334.dart';
import 'package:medallia_dxa/src/xx764151857.dart';

class Nx1042074202 extends Qf353260472 {
  Nx1042074202(
    this._fq1061097177,
    V520943064 yyv349874113,
  ) : super(
          yyv349874113,
        );

  final Cqd394369413 _fq1061097177;

  @override
  void didPush(Route<dynamic> n1001734584, Route<dynamic>? r632037309) {
    super.didPush(n1001734584, r632037309);
    _fq1061097177.n141629376(
      Gs355691751.pgu380883313,
      'didPush - ${n1001734584.settings.name} - $n1001734584 - $r632037309',
    );

    if (n1001734584 is TransitionRoute) {
      if (n1001734584.animation != null) {
        n1001734584.animation!.addStatusListener((ptr638171982) {
          dog987108818(ptr638171982, n1001734584);
        });
        dog987108818(n1001734584.animation!.status, n1001734584);
      }
    }
    yyv349874113.i984268631(n1001734584, r632037309);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _fq1061097177.n141629376(
      Gs355691751.pgu380883313,
      'didReplace - ${newRoute?.settings.name}- $newRoute - $oldRoute',
    );

    if (newRoute is TransitionRoute) {
      if (newRoute.animation != null) {
        newRoute.animation!.addStatusListener((ptr638171982) {
          dog987108818(ptr638171982, newRoute);
        });
        dog987108818(newRoute.animation!.status, newRoute);
      }
    }
    yyv349874113.ijl795734955(jo941758345: newRoute, wbs369501550: oldRoute);
  }

  @override
  void didPop(Route<dynamic> n1001734584, Route<dynamic>? r632037309) {
    super.didPop(n1001734584, r632037309);
    _fq1061097177.n141629376(
      Gs355691751.pgu380883313,
      'didPop - ${n1001734584.settings.name}- $n1001734584 - $r632037309',
    );

    yyv349874113.ziu252060679(n1001734584, r632037309);
  }

  @override
  void didRemove(Route n1001734584, Route? r632037309) {
    super.didRemove(n1001734584, r632037309);
    _fq1061097177.n141629376(
      Gs355691751.pgu380883313,
      'didRemove - ${n1001734584.settings.name}- $n1001734584 - $r632037309',
    );

    yyv349874113.ne620573136(n1001734584, r632037309);
  }
}

abstract class Qf353260472
    extends RouteObserver<Route<dynamic>> {
  late final A1047663128 qb653426419 = L583050428.buw892083259.qb653426419;
  final V520943064 yyv349874113;
  Qf353260472(
    this.yyv349874113,
  );
  @visibleForTesting
  void dog987108818(AnimationStatus ptr638171982, TransitionRoute n1001734584) {
    _t322831035(n1001734584, ptr638171982);
  }

  void _t322831035(TransitionRoute n1001734584, AnimationStatus ptr638171982) {
    if (ptr638171982 == AnimationStatus.dismissed ||
        ptr638171982 == AnimationStatus.completed) {
      yyv349874113.dnc493996520(n1001734584);
    } else {
      //
      if (n1001734584.controller != null &&

          //
          //
          //
          //
          n1001734584.controller!.toStringDetails().contains('silenced')) {
        return;
      }
      yyv349874113.u323833882(
        n1001734584,
        ptr638171982,
      );
    }
  }
}
