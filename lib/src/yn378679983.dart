import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/k943818335.dart';

import 'package:medallia_dxa/src/mao131649524.dart';
import 'package:medallia_dxa/src/e452801702.dart';
import 'package:medallia_dxa/src/fsv255042266.dart';

class L1042074454 extends Tyo353260212 {
  L1042074454(this._zah1061097429, De520942804 nai548597403)
      : super(
          nai548597403,
        );

  final A394369161 _zah1061097429;

  Logger get qa613848335 => _zah1061097429.eby1022949709;
  bool get zg740509190 => Pg583050672.vpo892083511.q190648540.zg740509190;

  @override
  void didPush(Route<dynamic> o1001734324, Route<dynamic>? zo632037041) {
    super.didPush(o1001734324, zo632037041);
    qa613848335.d('didPush - ${o1001734324.settings.name}- $o1001734324 - $zo632037041');

    if (o1001734324 is TransitionRoute) {
      if (o1001734324.animation != null) {
        o1001734324.animation!.addStatusListener((v638171714) {
          _ds542189915(v638171714, o1001734324);
        });
        _ds542189915(o1001734324.animation!.status, o1001734324);
      }
    }
    amb349873869.jx984268379(o1001734324, zo632037041);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    qa613848335.d('didReplace - ${newRoute?.settings.name}- $newRoute - $oldRoute');

    if (newRoute is TransitionRoute) {
      if (newRoute.animation != null) {
        newRoute.animation!.addStatusListener((v638171714) {
          _ds542189915(v638171714, newRoute);
        });
        _ds542189915(newRoute.animation!.status, newRoute);
      }
    }
    amb349873869.z795734695(g941758085: newRoute, e369501282: oldRoute);
  }

  @override
  void didPop(Route<dynamic> o1001734324, Route<dynamic>? zo632037041) {
    super.didPop(o1001734324, zo632037041);
    qa613848335.d('didPop - ${o1001734324.settings.name}- $o1001734324 - $zo632037041');

    amb349873869.ulj252060939(o1001734324, zo632037041);
  }

  @override
  void didRemove(Route o1001734324, Route? zo632037041) {
    super.didRemove(o1001734324, zo632037041);
    qa613848335.d('didRemove - ${o1001734324.settings.name}- $o1001734324 - $zo632037041');

    amb349873869.d620572892(o1001734324, zo632037041);
  }
}

abstract class Tyo353260212
    extends RouteObserver<Route<dynamic>> {
  late final S1047663380 vn653426687 = Pg583050672.vpo892083511.vn653426687;
  final De520942804 amb349873869;
  Tyo353260212(
    this.amb349873869,
  );
  void _ds542189915(AnimationStatus v638171714, TransitionRoute o1001734324) {
    _zgn322831287(o1001734324, v638171714);
    vn653426687.x565192207 = _lh224802417();
  }

  void _zgn322831287(TransitionRoute o1001734324, AnimationStatus v638171714) {
    if (v638171714 == AnimationStatus.dismissed ||
        v638171714 == AnimationStatus.completed) {
      amb349873869.dmz977721348.remove(o1001734324);
    } else {
      //
      if (o1001734324.controller != null &&
          //
          o1001734324.controller!.toStringDetails().contains('silenced')) {
        return;
      }
      amb349873869.dmz977721348.update(
        o1001734324,
        (iit510790514) => v638171714,
        ifAbsent: () => v638171714,
      );
    }
  }

  bool _lh224802417() {
    return amb349873869.dmz977721348.isNotEmpty;
  }
}
