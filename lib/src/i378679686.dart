import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/xgu7916898.dart';
import 'package:medallia_dxa/src/zau943818102.dart';

import 'package:medallia_dxa/src/wk131648733.dart';
import 'package:medallia_dxa/src/q452802447.dart';
import 'package:medallia_dxa/src/fa255042035.dart';

class S1042073727 extends U353259933 {
  S1042073727(this._a1061096700, Rb520943613 qde548597170)
      : super(
          qde548597170,
        );

  final Sn394369952 _a1061096700;
  late final Kbl859069969 _der768939217 =
      Zz583050905.rq892083742.oxm507881224;
  bool get kv740508975 => _der768939217.kv740508975;

  @override
  void didPush(Route<dynamic> ezj1001735069, Route<dynamic>? x632036760) {
    super.didPush(ezj1001735069, x632036760);
    _a1061096700.eoq141628901(T355692226.z380883796,
        'didPush - ${ezj1001735069.settings.name}- $ezj1001735069 - $x632036760');

    if (ezj1001735069 is TransitionRoute) {
      if (ezj1001735069.animation != null) {
        ezj1001735069.animation!.addStatusListener((u638171499) {
          _a542190194(u638171499, ezj1001735069);
        });
        _a542190194(ezj1001735069.animation!.status, ezj1001735069);
      }
    }
    nr349873636.yc984268146(ezj1001735069, x632036760);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _a1061096700.eoq141628901(T355692226.z380883796,
        'didReplace - ${newRoute?.settings.name}- $newRoute - $oldRoute');

    if (newRoute is TransitionRoute) {
      if (newRoute.animation != null) {
        newRoute.animation!.addStatusListener((u638171499) {
          _a542190194(u638171499, newRoute);
        });
        _a542190194(newRoute.animation!.status, newRoute);
      }
    }
    nr349873636.fyp795734414(ks941757868: newRoute, xur369502027: oldRoute);
  }

  @override
  void didPop(Route<dynamic> ezj1001735069, Route<dynamic>? x632036760) {
    super.didPop(ezj1001735069, x632036760);
    _a1061096700.eoq141628901(T355692226.z380883796,
        'didPop - ${ezj1001735069.settings.name}- $ezj1001735069 - $x632036760');

    nr349873636.kcz252061218(ezj1001735069, x632036760);
  }

  @override
  void didRemove(Route ezj1001735069, Route? x632036760) {
    super.didRemove(ezj1001735069, x632036760);
    _a1061096700.eoq141628901(T355692226.z380883796,
        'didRemove - ${ezj1001735069.settings.name}- $ezj1001735069 - $x632036760');

    nr349873636.fhm620573685(ezj1001735069, x632036760);
  }
}

abstract class U353259933
    extends RouteObserver<Route<dynamic>> {
  late final Ah1047662653 io653425878 = Zz583050905.rq892083742.io653425878;
  final Rb520943613 nr349873636;
  U353259933(
    this.nr349873636,
  );
  void _a542190194(AnimationStatus u638171499, TransitionRoute ezj1001735069) {
    _v322830494(ezj1001735069, u638171499);
    io653425878.p565191974 = _lk224802136();
  }

  void _v322830494(TransitionRoute ezj1001735069, AnimationStatus u638171499) {
    if (u638171499 == AnimationStatus.dismissed ||
        u638171499 == AnimationStatus.completed) {
      nr349873636.ssf977722157.remove(ezj1001735069);
    } else {
      //
      if (ezj1001735069.controller != null &&
          //
          ezj1001735069.controller!.toStringDetails().contains('silenced')) {
        return;
      }
      nr349873636.ssf977722157.update(
        ezj1001735069,
        (dnn510789723) => u638171499,
        ifAbsent: () => u638171499,
      );
    }
  }

  bool _lk224802136() {
    return nr349873636.ssf977722157.isNotEmpty;
  }
}
