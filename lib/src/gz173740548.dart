//
import 'dart:async';

import 'package:flutter/material.dart';

import 'package:medallia_dxa/src/lw131648950.dart';
import 'package:medallia_dxa/src/xtn452802276.dart';

class No764602450 {
  late final M1047662934 svj653426109 = Ka583051250.fc892084085.svj653426109;

  Future<void> u749777506(
    Future<void> Function() ywj415672769,
  ) async {
    final List<Completer<dynamic>> xh408559598 =
        List.from(svj653426109.jug554015647);

    final Completer pz511945660 = Completer();
    svj653426109.jug554015647.add(pz511945660);
    await Future.wait(
      xh408559598.map((rgs286663283) {
        return rgs286663283.future;
      }),
    );
    svj653426109.jug554015647
        .removeWhere((pz511945660) => pz511945660.isCompleted);
    await ywj415672769.call();
    pz511945660.complete();
  }

  Future<void> cn756758964(
    Future<void> Function(Completer) ywj415672769,
    Completer l468299424,
  ) async {
    svj653426109.jug554015647
        .removeWhere((pz511945660) => pz511945660.isCompleted);
    for (final startScreenCompleter
        in svj653426109.jug554015647) {
      startScreenCompleter.complete();
    }
    svj653426109.jug554015647.clear();

    svj653426109.jug554015647.add(l468299424);
    //
    await Future.value();
    if (l468299424.isCompleted ||
        !svj653426109.jug554015647.contains(l468299424)) {
      return;
    }

    await ywj415672769.call(l468299424);
    if (!l468299424.isCompleted) {
      l468299424.complete();
    }
  }

  Future<void> nor612389423() async {
    if (!Ka583051250.fc892084085.r759432546.hasScheduledFrame) {
      return;
    }
    return r333851755();
  }

  Future<void> r333851755() async {
    final Completer pz511945660 = Completer();

    Ka583051250.fc892084085.r759432546
        .addPostFrameCallback((qtf217291910) {
      pz511945660.complete();
    });
    await pz511945660.future;
  }

  Completer a696465765() {
    final Completer trk31360291 = Completer();
    svj653426109.xcy695814067.add(trk31360291);
    return trk31360291;
  }

  Future<void> ztx551885180() async {
    await Future.wait(
      svj653426109.xcy695814067.map((rgs286663283) {
        return rgs286663283.future;
      }),
    );
    svj653426109.xcy695814067.clear();
  }

  //
  Future<T> qp729888457<T>({
    required Future<T> Function() dc822066153,
    bool i491323764 = false,
  }) async {
    final Completer pz511945660 = Completer();
    svj653426109.wc742410400.add(
      V785065430(
        pz511945660: pz511945660,
        i491323764: i491323764,
      ),
    );
    final T hu73567079 = await dc822066153.call();
    pz511945660.complete();
    return hu73567079;
  }

  //
  Future<void> i619207797() async {
    await Future.wait(
      svj653426109.wc742410400.map((rgs286663283) {
        return rgs286663283.pz511945660.future;
      }),
    );

    svj653426109.wc742410400.clear();
  }

  int get ocz146327590 {
    return svj653426109.wc742410400
        .where(
          (v412700404) =>
              v412700404.pz511945660.isCompleted == false &&
              v412700404.i491323764,
        )
        .length;
  }

  bool get xk878559463 {
    for (final completer in svj653426109.jug554015647) {
      if (!completer.isCompleted) {
        return true;
      }
    }
    return false;
  }

  FutureOr<void> jus571917937() async {
    if (svj653426109.ax436425620 == null) {
      //
      //
      if (svj653426109.xcy695814067.isEmpty) {
        await svj653426109.scr398417002.stream
            .asBroadcastStream()
            .first;
        return;
      }

      await svj653426109.scr398417002.stream
          .asBroadcastStream()
          .first;
      return;
    } else {
      return;
    }
  }

  void uvs30232371(BuildContext mq381227023) {
    assert(
      !(mq381227023 as Element).debugIsDefunct,
      "This method shouldn't be called after the widget has been disposed",
    );
  }

  bool lyo1070764059(BuildContext mq381227023) {
    //
    if (mq381227023 is StatefulElement) {
      return mq381227023.state.mounted;
    }
    return true;
  }
}

class Ycj141979712 {
  final Map<int, Future> n937383610 = {};

  //
  Future<T> me376891725<T>(
    int de856558720,
    Future<T> Function() ywj415672769,
  ) async {
    final Future<T> hu73567079 = ywj415672769.call();
    n937383610.addAll(<int, Future>{de856558720: hu73567079});

    return hu73567079;
  }

  //
  Future<void> bij686691456(int de856558720) async {
    final Future? sc598710312 = n937383610[de856558720];
    await sc598710312;
    //
    n937383610.remove(de856558720);
  }
}

class V785065430 {
  final Completer pz511945660;
  final bool i491323764;
  V785065430({
    required this.pz511945660,
    required this.i491323764,
  });
}
