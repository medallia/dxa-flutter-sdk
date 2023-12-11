//
import 'dart:async';

import 'package:flutter/material.dart';

import 'package:medallia_dxa/src/c131648829.dart';
import 'package:medallia_dxa/src/xwa452802159.dart';

class Wx764602585 {
  late final T1047663069 c653425974 = V583051129.h892084222.c653425974;

  Future<void> ih749777641(
    Future<void> Function() vm415672650,
  ) async {
    final List<Completer<dynamic>> izm408559461 =
        List.from(c653425974.thb554015508);

    final Completer e511945527 = Completer();
    c653425974.thb554015508.add(e511945527);
    await Future.wait(
      izm408559461.map((fwj286663416) {
        return fwj286663416.future;
      }),
    );
    c653425974.thb554015508
        .removeWhere((e511945527) => e511945527.isCompleted);
    await vm415672650.call();
    e511945527.complete();
  }

  Future<void> v756758847(
    Future<void> Function(Completer) vm415672650,
    Completer i468299307,
  ) async {
    c653425974.thb554015508
        .removeWhere((e511945527) => e511945527.isCompleted);
    for (final startScreenCompleter
        in c653425974.thb554015508) {
      startScreenCompleter.complete();
    }
    c653425974.thb554015508.clear();

    c653425974.thb554015508.add(i468299307);
    //
    await Future.value();
    if (i468299307.isCompleted ||
        !c653425974.thb554015508.contains(i468299307)) {
      return;
    }

    await vm415672650.call(i468299307);
    if (!i468299307.isCompleted) {
      i468299307.complete();
    }
  }

  Future<void> s612389540() async {
    if (!V583051129.h892084222.rk759432681.hasScheduledFrame) {
      return;
    }
    return r333851872();
  }

  Future<void> r333851872() async {
    final Completer e511945527 = Completer();

    V583051129.h892084222.rk759432681
        .addPostFrameCallback((zto217291789) {
      e511945527.complete();
    });
    await e511945527.future;
  }

  Completer o696465902() {
    final Completer v31360424 = Completer();
    c653425974.hwo695813944.add(v31360424);
    return v31360424;
  }

  Future<void> og551885303() async {
    await Future.wait(
      c653425974.hwo695813944.map((fwj286663416) {
        return fwj286663416.future;
      }),
    );
    c653425974.hwo695813944.clear();
  }

  //
  Future<T> j729888322<T>({
    required Future<T> Function() fj822066018,
    bool vp491323903 = false,
  }) async {
    final Completer e511945527 = Completer();
    c653425974.pa742410283.add(
      Dy785065309(
        e511945527: e511945527,
        vp491323903: vp491323903,
      ),
    );
    final T i73567212 = await fj822066018.call();
    e511945527.complete();
    return i73567212;
  }

  //
  Future<void> iy619207934() async {
    await Future.wait(
      c653425974.pa742410283.map((fwj286663416) {
        return fwj286663416.e511945527.future;
      }),
    );

    c653425974.pa742410283.clear();
  }

  int get d146327725 {
    return c653425974.pa742410283
        .where(
          (jnk412700287) =>
              jnk412700287.e511945527.isCompleted == false &&
              jnk412700287.vp491323903,
        )
        .length;
  }

  bool get ww878559340 {
    for (final completer in c653425974.thb554015508) {
      if (!completer.isCompleted) {
        return true;
      }
    }
    return false;
  }

  FutureOr<void> pw571918074() async {
    if (c653425974.h436425503 == null) {
      //
      //
      if (c653425974.hwo695813944.isEmpty) {
        await c653425974.mm398417121.stream
            .asBroadcastStream()
            .first;
        return;
      }

      await c653425974.mm398417121.stream
          .asBroadcastStream()
          .first;
      return;
    } else {
      return;
    }
  }

  void zhu30232504(BuildContext cxq381227140) {
    assert(
      !(cxq381227140 as Element).debugIsDefunct,
      "This method shouldn't be called after the widget has been disposed",
    );
  }

  bool tt1070764176(BuildContext cxq381227140) {
    //
    if (cxq381227140 is StatefulElement) {
      return cxq381227140.state.mounted;
    }
    return true;
  }
}

class B141979851 {
  final Map<int, Future> g937383473 = {};

  //
  Future<T> bfl376891846<T>(
    int hl856558603,
    Future<T> Function() vm415672650,
  ) async {
    final Future<T> i73567212 = vm415672650.call();
    g937383473.addAll(<int, Future>{hl856558603: i73567212});

    return i73567212;
  }

  //
  Future<void> b686691339(int hl856558603) async {
    final Future? exz598710435 = g937383473[hl856558603];
    await exz598710435;
    //
    g937383473.remove(hl856558603);
  }
}

class Dy785065309 {
  final Completer e511945527;
  final bool vp491323903;
  Dy785065309({
    required this.e511945527,
    required this.vp491323903,
  });
}
