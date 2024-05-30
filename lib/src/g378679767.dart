import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/hfg943818023.dart';

import 'package:medallia_dxa/src/qp131648652.dart';
import 'package:medallia_dxa/src/l452802526.dart';
import 'package:medallia_dxa/src/e255041954.dart';

class V1042073646 extends E353259980 {
  V1042073646(this._jy1061096621, Bw520943532 f548597219)
      : super(
          f548597219,
        );

  final Kq394370033 _jy1061096621;

  bool get tjw740509054 => Wx583050952.opf892083791.uvm190649252.tjw740509054;

  @override
  void didPush(Route<dynamic> xz1001735116, Route<dynamic>? s632036809) {
    super.didPush(xz1001735116, s632036809);
    _jy1061096621.fbr141628852(Df355692179.d380883717,
        'didPush - ${xz1001735116.settings.name}- $xz1001735116 - $s632036809');

    if (xz1001735116 is TransitionRoute) {
      if (xz1001735116.animation != null) {
        xz1001735116.animation!.addStatusListener((vh638171450) {
          _ulc542190115(vh638171450, xz1001735116);
        });
        _ulc542190115(xz1001735116.animation!.status, xz1001735116);
      }
    }
    ffc349873589.urj984268067(xz1001735116, s632036809);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _jy1061096621.fbr141628852(Df355692179.d380883717,
        'didReplace - ${newRoute?.settings.name}- $newRoute - $oldRoute');

    if (newRoute is TransitionRoute) {
      if (newRoute.animation != null) {
        newRoute.animation!.addStatusListener((vh638171450) {
          _ulc542190115(vh638171450, newRoute);
        });
        _ulc542190115(newRoute.animation!.status, newRoute);
      }
    }
    ffc349873589.huy795734495(azj941757949: newRoute, h369501978: oldRoute);
  }

  @override
  void didPop(Route<dynamic> xz1001735116, Route<dynamic>? s632036809) {
    super.didPop(xz1001735116, s632036809);
    _jy1061096621.fbr141628852(Df355692179.d380883717,
        'didPop - ${xz1001735116.settings.name}- $xz1001735116 - $s632036809');

    ffc349873589.fd252061299(xz1001735116, s632036809);
  }

  @override
  void didRemove(Route xz1001735116, Route? s632036809) {
    super.didRemove(xz1001735116, s632036809);
    _jy1061096621.fbr141628852(Df355692179.d380883717,
        'didRemove - ${xz1001735116.settings.name}- $xz1001735116 - $s632036809');

    ffc349873589.qma620573604(xz1001735116, s632036809);
  }
}

abstract class E353259980
    extends RouteObserver<Route<dynamic>> {
  late final Piq1047662700 jy653425799 = Wx583050952.opf892083791.jy653425799;
  final Bw520943532 ffc349873589;
  E353259980(
    this.ffc349873589,
  );
  void _ulc542190115(AnimationStatus vh638171450, TransitionRoute xz1001735116) {
    _g322830543(xz1001735116, vh638171450);
    jy653425799.e565192055 = _ao224802057();
  }

  void _g322830543(TransitionRoute xz1001735116, AnimationStatus vh638171450) {
    if (vh638171450 == AnimationStatus.dismissed ||
        vh638171450 == AnimationStatus.completed) {
      ffc349873589.ice977722236.remove(xz1001735116);
    } else {
      //
      if (xz1001735116.controller != null &&
          //
          xz1001735116.controller!.toStringDetails().contains('silenced')) {
        return;
      }
      ffc349873589.ice977722236.update(
        xz1001735116,
        (zak510789642) => vh638171450,
        ifAbsent: () => vh638171450,
      );
    }
  }

  bool _ao224802057() {
    return ffc349873589.ice977722236.isNotEmpty;
  }
}
