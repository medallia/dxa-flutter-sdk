import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/o943818171.dart';

import 'package:medallia_dxa/src/yio131648528.dart';
import 'package:medallia_dxa/src/s452802370.dart';
import 'package:medallia_dxa/src/w255041854.dart';

class D1042073778 extends A353259856 {
  D1042073778(this._s1061096497, Fnc520943408 jsv548597119)
      : super(
          jsv548597119,
        );

  final Z394369901 _s1061096497;

  Logger get bc613848811 => _s1061096497.ep1022950057;
  bool get oy740509154 => Lgg583050836.dh892083923.av190649144.oy740509154;

  @override
  void didPush(Route<dynamic> vd1001734992, Route<dynamic>? im632036693) {
    super.didPush(vd1001734992, im632036693);
    bc613848811.d('didPush - ${vd1001734992.settings.name}- $vd1001734992 - $im632036693');

    if (vd1001734992 is TransitionRoute) {
      if (vd1001734992.animation != null) {
        vd1001734992.animation!.addStatusListener((ae638171558) {
          _jqu542190271(ae638171558, vd1001734992);
        });
        _jqu542190271(vd1001734992.animation!.status, vd1001734992);
      }
    }
    t349873449.v984268223(vd1001734992, im632036693);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    bc613848811.d('didReplace - ${newRoute?.settings.name}- $newRoute - $oldRoute');

    if (newRoute is TransitionRoute) {
      if (newRoute.animation != null) {
        newRoute.animation!.addStatusListener((ae638171558) {
          _jqu542190271(ae638171558, newRoute);
        });
        _jqu542190271(newRoute.animation!.status, newRoute);
      }
    }
    t349873449.mrn795734339(jow941757793: newRoute, w369502086: oldRoute);
  }

  @override
  void didPop(Route<dynamic> vd1001734992, Route<dynamic>? im632036693) {
    super.didPop(vd1001734992, im632036693);
    bc613848811.d('didPop - ${vd1001734992.settings.name}- $vd1001734992 - $im632036693');

    t349873449.zfz252061423(vd1001734992, im632036693);
  }

  @override
  void didRemove(Route vd1001734992, Route? im632036693) {
    super.didRemove(vd1001734992, im632036693);
    bc613848811.d('didRemove - ${vd1001734992.settings.name}- $vd1001734992 - $im632036693');

    t349873449.w620573496(vd1001734992, im632036693);
  }
}

abstract class A353259856
    extends RouteObserver<Route<dynamic>> {
  late final M1047662832 b653425691 = Lgg583050836.dh892083923.b653425691;
  final Fnc520943408 t349873449;
  A353259856(
    this.t349873449,
  );
  void _jqu542190271(AnimationStatus ae638171558, TransitionRoute vd1001734992) {
    _t322830419(vd1001734992, ae638171558);
    b653425691.yi565192171 = _xrq224802197();
  }

  void _t322830419(TransitionRoute vd1001734992, AnimationStatus ae638171558) {
    if (ae638171558 == AnimationStatus.dismissed ||
        ae638171558 == AnimationStatus.completed) {
      t349873449.fj977722336.remove(vd1001734992);
    } else {
      //
      if (vd1001734992.controller != null &&
          //
          vd1001734992.controller!.toStringDetails().contains('silenced')) {
        return;
      }
      t349873449.fj977722336.update(
        vd1001734992,
        (c510789782) => ae638171558,
        ifAbsent: () => ae638171558,
      );
    }
  }

  bool _xrq224802197() {
    return t349873449.fj977722336.isNotEmpty;
  }
}
