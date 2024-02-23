//
import 'dart:async';

import 'package:flutter/material.dart';

import 'package:medallia_dxa/src/mao131649524.dart';
import 'package:medallia_dxa/src/e452801702.dart';

class His764602896 {
  late final S1047663380 vn653426687 = Pg583050672.vpo892083511.vn653426687;

  Future<void> ig749776928(
    Future<void> Function() ahs415673219,
  ) async {
    final List<Completer<dynamic>> ca408559020 =
        List.from(vn653426687.lmh554015197);

    final Completer sfy511945214 = Completer();
    vn653426687.lmh554015197.add(sfy511945214);
    await Future.wait(
      ca408559020.map((tls286662705) {
        return tls286662705.future;
      }),
    );
    vn653426687.lmh554015197
        .removeWhere((sfy511945214) => sfy511945214.isCompleted);
    await ahs415673219.call();
    sfy511945214.complete();
  }

  Future<void> eub756759542(
    Future<void> Function(Completer) ahs415673219,
    Completer f468298978,
  ) async {
    vn653426687.lmh554015197
        .removeWhere((sfy511945214) => sfy511945214.isCompleted);
    for (final c534047439
        in vn653426687.lmh554015197) {
      c534047439.complete();
    }
    vn653426687.lmh554015197.clear();

    vn653426687.lmh554015197.add(f468298978);
    //
    await Future.value();
    if (f468298978.isCompleted ||
        !vn653426687.lmh554015197.contains(f468298978)) {
      return;
    }

    await ahs415673219.call(f468298978);
    if (!f468298978.isCompleted) {
      f468298978.complete();
    }
  }

  Future<void> q612388973() async {
    if (!Pg583050672.vpo892083511.ee759432992.hasScheduledFrame) {
      return;
    }
    return qu333852201();
  }

  Future<void> qu333852201() async {
    final Completer sfy511945214 = Completer();

    Pg583050672.vpo892083511.ee759432992
        .addPostFrameCallback((fss217292484) {
      sfy511945214.complete();
    });
    await sfy511945214.future;
  }

  Completer dxm696466215() {
    final Completer uks31360865 = Completer();
    vn653426687.kbs695813617.add(uks31360865);
    return uks31360865;
  }

  Future<void> tr551885630() async {
    await Future.wait(
      vn653426687.kbs695813617.map((tls286662705) {
        return tls286662705.future;
      }),
    );
    vn653426687.kbs695813617.clear();
  }

  //
  Future<T> k729887883<T>({
    required Future<T> Function() r822065579,
    bool jo491324214 = false,
  }) async {
    final Completer sfy511945214 = Completer();
    vn653426687.tp742410978.add(
      Q785065876(
        sfy511945214: sfy511945214,
        jo491324214: jo491324214,
      ),
    );
    final T s73566501 = await r822065579.call();
    sfy511945214.complete();
    return s73566501;
  }

  //
  Future<void> wel619208247() async {
    await Future.wait(
      vn653426687.tp742410978.map((tls286662705) {
        return tls286662705.sfy511945214.future;
      }),
    );

    vn653426687.tp742410978.clear();
  }

  int get w146328164 {
    return vn653426687.tp742410978
        .where(
          (yte412699830) =>
              yte412699830.sfy511945214.isCompleted == false &&
              yte412699830.jo491324214,
        )
        .length;
  }

  bool get o878559909 {
    for (final sfy511945214 in vn653426687.lmh554015197) {
      if (!sfy511945214.isCompleted) {
        return true;
      }
    }
    return false;
  }

  FutureOr<void> ndg571917363() async {
    if (vn653426687.ir436425174 == null) {
      //
      //
      if (vn653426687.kbs695813617.isEmpty) {
        await vn653426687.ef398417448.stream
            .asBroadcastStream()
            .first;
        return;
      }

      await vn653426687.ef398417448.stream
          .asBroadcastStream()
          .first;
      return;
    } else {
      return;
    }
  }

  void l30231921(BuildContext nw381227597) {
    assert(
      !(nw381227597 as Element).debugIsDefunct,
      "This method shouldn't be called after the widget has been disposed",
    );
  }

  bool dm1070764633(BuildContext nw381227597) {
    //
    if (nw381227597 is StatefulElement) {
      return nw381227597.state.mounted;
    }
    return true;
  }
}

class Cax141980162 {
  final Map<int, Future> d937383160 = {};

  //
  Future<T> okv376892175<T>(
    int c856559298,
    Future<T> Function() ahs415673219,
  ) async {
    final Future<T> s73566501 = ahs415673219.call();
    d937383160.addAll(<int, Future>{c856559298: s73566501});

    return s73566501;
  }

  //
  Future<void> q686692034(int c856559298) async {
    final Future? me598710890 = d937383160[c856559298];
    await me598710890;
    //
    d937383160.remove(c856559298);
  }
}

class Q785065876 {
  final Completer sfy511945214;
  final bool jo491324214;
  Q785065876({
    required this.sfy511945214,
    required this.jo491324214,
  });
}
