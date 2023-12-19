import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/v943817757.dart';

import 'package:medallia_dxa/src/lw131648950.dart';
import 'package:medallia_dxa/src/xtn452802276.dart';
import 'package:medallia_dxa/src/cr255041688.dart';

class P1042073876 extends M353259766 {
  P1042073876(this._v1061096855, Irv520943254 mk548596953)
      : super(
          mk548596953,
        );

  final R394369739 _v1061096855;

  Logger get m613848909 => _v1061096855.em1022950159;
  bool get v740508740 => Ka583051250.fc892084085.j190648990.v740508740;

  @override
  void didPush(Route<dynamic> pvd1001734902, Route<dynamic>? z632036595) {
    super.didPush(pvd1001734902, z632036595);
    m613848909.d('didPush - ${pvd1001734902.settings.name}- $pvd1001734902 - $z632036595');

    if (pvd1001734902 is TransitionRoute) {
      if (pvd1001734902.animation != null) {
        pvd1001734902.animation!.addStatusListener((w638171136) {
          _c542190361(w638171136, pvd1001734902);
        });
        _c542190361(pvd1001734902.animation!.status, pvd1001734902);
      }
    }
    g349873295.omv984267801(pvd1001734902, z632036595);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    m613848909.d('didReplace - ${newRoute?.settings.name}- $newRoute - $oldRoute');

    if (newRoute is TransitionRoute) {
      if (newRoute.animation != null) {
        newRoute.animation!.addStatusListener((w638171136) {
          _c542190361(w638171136, newRoute);
        });
        _c542190361(newRoute.animation!.status, newRoute);
      }
    }
    g349873295.f795734245(fqd941757639: newRoute, p369501728: oldRoute);
  }

  @override
  void didPop(Route<dynamic> pvd1001734902, Route<dynamic>? z632036595) {
    super.didPop(pvd1001734902, z632036595);
    m613848909.d('didPop - ${pvd1001734902.settings.name}- $pvd1001734902 - $z632036595');

    g349873295.wp252061513(pvd1001734902, z632036595);
  }

  @override
  void didRemove(Route pvd1001734902, Route? z632036595) {
    super.didRemove(pvd1001734902, z632036595);
    m613848909.d('didRemove - ${pvd1001734902.settings.name}- $pvd1001734902 - $z632036595');

    g349873295.i620573342(pvd1001734902, z632036595);
  }
}

abstract class M353259766
    extends RouteObserver<Route<dynamic>> {
  late final M1047662934 svj653426109 = Ka583051250.fc892084085.svj653426109;
  final Irv520943254 g349873295;
  M353259766(
    this.g349873295,
  );
  void _c542190361(AnimationStatus w638171136, TransitionRoute pvd1001734902) {
    _v322830837(pvd1001734902, w638171136);
    svj653426109.yr565191757 = _q224801843();
  }

  void _v322830837(TransitionRoute pvd1001734902, AnimationStatus w638171136) {
    if (w638171136 == AnimationStatus.dismissed ||
        w638171136 == AnimationStatus.completed) {
      g349873295.zj977721926.remove(pvd1001734902);
    } else {
      //
      if (pvd1001734902.controller != null &&
          //
          pvd1001734902.controller!.toStringDetails().contains('silenced')) {
        return;
      }
      g349873295.zj977721926.update(
        pvd1001734902,
        (mor510789936) => w638171136,
        ifAbsent: () => w638171136,
      );
    }
  }

  bool _q224801843() {
    return g349873295.zj977721926.isNotEmpty;
  }
}
