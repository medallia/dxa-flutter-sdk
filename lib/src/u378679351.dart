import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/tvh7916755.dart';
import 'package:medallia_dxa/src/yx943817927.dart';

import 'package:medallia_dxa/src/jk131648876.dart';
import 'package:medallia_dxa/src/oa452802110.dart';
import 'package:medallia_dxa/src/ex255041602.dart';

class C1042074062 extends W353259564 {
  C1042074062(this._q1061096781, Ekg520943180 g548596739)
      : super(
          g548596739,
        );

  final Bcw394369553 _q1061096781;
  late final Nw859070368 _wtt768939360 =
      Klj583051048.yrd892084143.jm507881145;
  bool get a740508830 => _wtt768939360.a740508830;

  @override
  void didPush(Route<dynamic> z1001734700, Route<dynamic>? qp632036393) {
    super.didPush(z1001734700, qp632036393);
    _q1061096781.r141628500(Ym355692403.kg380883685,
        'didPush - ${z1001734700.settings.name}- $z1001734700 - $qp632036393');

    if (z1001734700 is TransitionRoute) {
      if (z1001734700.animation != null) {
        z1001734700.animation!.addStatusListener((fxb638171354) {
          _dbj542190531(fxb638171354, z1001734700);
        });
        _dbj542190531(z1001734700.animation!.status, z1001734700);
      }
    }
    zql349873237.rz984267971(z1001734700, qp632036393);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _q1061096781.r141628500(Ym355692403.kg380883685,
        'didReplace - ${newRoute?.settings.name}- $newRoute - $oldRoute');

    if (newRoute is TransitionRoute) {
      if (newRoute.animation != null) {
        newRoute.animation!.addStatusListener((fxb638171354) {
          _dbj542190531(fxb638171354, newRoute);
        });
        _dbj542190531(newRoute.animation!.status, newRoute);
      }
    }
    zql349873237.j795734079(kt941757469: newRoute, hr369501946: oldRoute);
  }

  @override
  void didPop(Route<dynamic> z1001734700, Route<dynamic>? qp632036393) {
    super.didPop(z1001734700, qp632036393);
    _q1061096781.r141628500(Ym355692403.kg380883685,
        'didPop - ${z1001734700.settings.name}- $z1001734700 - $qp632036393');

    zql349873237.o252061587(z1001734700, qp632036393);
  }

  @override
  void didRemove(Route z1001734700, Route? qp632036393) {
    super.didRemove(z1001734700, qp632036393);
    _q1061096781.r141628500(Ym355692403.kg380883685,
        'didRemove - ${z1001734700.settings.name}- $z1001734700 - $qp632036393');

    zql349873237.pre620573252(z1001734700, qp632036393);
  }
}

abstract class W353259564
    extends RouteObserver<Route<dynamic>> {
  late final W1047662988 e653426023 = Klj583051048.yrd892084143.e653426023;
  final Ekg520943180 zql349873237;
  W353259564(
    this.zql349873237,
  );
  void _dbj542190531(AnimationStatus fxb638171354, TransitionRoute z1001734700) {
    _vkg322830639(z1001734700, fxb638171354);
    e653426023.agr565191831 = _c224802025();
  }

  void _vkg322830639(TransitionRoute z1001734700, AnimationStatus fxb638171354) {
    if (fxb638171354 == AnimationStatus.dismissed ||
        fxb638171354 == AnimationStatus.completed) {
      zql349873237.uws977722012.remove(z1001734700);
    } else {
      //
      if (z1001734700.controller != null &&
          //
          z1001734700.controller!.toStringDetails().contains('silenced')) {
        return;
      }
      zql349873237.uws977722012.update(
        z1001734700,
        (wvb510790122) => fxb638171354,
        ifAbsent: () => fxb638171354,
      );
    }
  }

  bool _c224802025() {
    return zql349873237.uws977722012.isNotEmpty;
  }
}
