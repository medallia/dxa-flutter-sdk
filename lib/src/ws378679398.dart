import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/b943817878.dart';

import 'package:medallia_dxa/src/c131648829.dart';
import 'package:medallia_dxa/src/xwa452802159.dart';
import 'package:medallia_dxa/src/pa255041555.dart';

class J1042074015 extends Jsy353259645 {
  J1042074015(this._o1061096732, Mdb520943133 bya548596818)
      : super(
          bya548596818,
        );

  final N394369600 _o1061096732;

  Logger get n613849030 => _o1061096732.zw1022950276;
  bool get vvn740508879 => V583051129.h892084222.urf190648853.vvn740508879;

  @override
  void didPush(Route<dynamic> fir1001734781, Route<dynamic>? x632036472) {
    super.didPush(fir1001734781, x632036472);
    n613849030.d('didPush - ${fir1001734781.settings.name}- $fir1001734781 - $x632036472');

    if (fir1001734781 is TransitionRoute) {
      if (fir1001734781.animation != null) {
        fir1001734781.animation!.addStatusListener((ahk638171275) {
          _k542190482(ahk638171275, fir1001734781);
        });
        _k542190482(fir1001734781.animation!.status, fir1001734781);
      }
    }
    kj349873156.tp984267922(fir1001734781, x632036472);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    n613849030.d('didReplace - ${newRoute?.settings.name}- $newRoute - $oldRoute');

    if (newRoute is TransitionRoute) {
      if (newRoute.animation != null) {
        newRoute.animation!.addStatusListener((ahk638171275) {
          _k542190482(ahk638171275, newRoute);
        });
        _k542190482(newRoute.animation!.status, newRoute);
      }
    }
    kj349873156.rm795734126(m941757516: newRoute, fdk369501867: oldRoute);
  }

  @override
  void didPop(Route<dynamic> fir1001734781, Route<dynamic>? x632036472) {
    super.didPop(fir1001734781, x632036472);
    n613849030.d('didPop - ${fir1001734781.settings.name}- $fir1001734781 - $x632036472');

    kj349873156.s252061634(fir1001734781, x632036472);
  }

  @override
  void didRemove(Route fir1001734781, Route? x632036472) {
    super.didRemove(fir1001734781, x632036472);
    n613849030.d('didRemove - ${fir1001734781.settings.name}- $fir1001734781 - $x632036472');

    kj349873156.ntu620573205(fir1001734781, x632036472);
  }
}

abstract class Jsy353259645
    extends RouteObserver<Route<dynamic>> {
  late final T1047663069 c653425974 = V583051129.h892084222.c653425974;
  final Mdb520943133 kj349873156;
  Jsy353259645(
    this.kj349873156,
  );
  void _k542190482(AnimationStatus ahk638171275, TransitionRoute fir1001734781) {
    _ct322830718(fir1001734781, ahk638171275);
    c653425974.c565191878 = _rj224801976();
  }

  void _ct322830718(TransitionRoute fir1001734781, AnimationStatus ahk638171275) {
    if (ahk638171275 == AnimationStatus.dismissed ||
        ahk638171275 == AnimationStatus.completed) {
      kj349873156.jk977722061.remove(fir1001734781);
    } else {
      //
      if (fir1001734781.controller != null &&
          //
          fir1001734781.controller!.toStringDetails().contains('silenced')) {
        return;
      }
      kj349873156.jk977722061.update(
        fir1001734781,
        (u510790075) => ahk638171275,
        ifAbsent: () => ahk638171275,
      );
    }
  }

  bool _rj224801976() {
    return kj349873156.jk977722061.isNotEmpty;
  }
}
