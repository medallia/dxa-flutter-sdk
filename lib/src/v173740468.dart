//
import 'dart:async';

import 'package:flutter/material.dart';

import 'package:medallia_dxa/src/kzh131649030.dart';
import 'package:medallia_dxa/src/cwx452801876.dart';

class Cog764603362 {
  late final Mvl1047663334 dq653426189 = Yt583050306.ss892083397.dq653426189;

  Future<void> lez749777362(
    Future<void> Function() zp415672945,
  ) async {
    final List<Completer<dynamic>> jn408558686 =
        List.from(dq653426189.awv554014767);

    final Completer h511944716 = Completer();
    dq653426189.awv554014767.add(h511944716);
    await Future.wait(
      jn408558686.map((wl286663107) {
        return wl286663107.future;
      }),
    );
    dq653426189.awv554014767
        .removeWhere((h511944716) => h511944716.isCompleted);
    await zp415672945.call();
    h511944716.complete();
  }

  Future<void> c756759044(
    Future<void> Function(Completer) zp415672945,
    Completer a468299024,
  ) async {
    dq653426189.awv554014767
        .removeWhere((h511944716) => h511944716.isCompleted);
    for (final ulk534047549
        in dq653426189.awv554014767) {
      ulk534047549.complete();
    }
    dq653426189.awv554014767.clear();

    dq653426189.awv554014767.add(a468299024);
    //
    await Future.value();
    if (a468299024.isCompleted ||
        !dq653426189.awv554014767.contains(a468299024)) {
      return;
    }

    await zp415672945.call(a468299024);
    if (!a468299024.isCompleted) {
      a468299024.complete();
    }
  }

  Future<void> ah612389279() async {
    if (!Yt583050306.ss892083397.bl759432914.hasScheduledFrame) {
      return;
    }
    return ixw333852635();
  }

  Future<void> ixw333852635() async {
    final Completer h511944716 = Completer();

    Yt583050306.ss892083397.bl759432914
        .addPostFrameCallback((y217292598) {
      h511944716.complete();
    });
    await h511944716.future;
  }

  Completer gx696466133() {
    final Completer sir31360659 = Completer();
    dq653426189.p695813123.add(sir31360659);
    return sir31360659;
  }

  Future<void> rd551885516() async {
    await Future.wait(
      dq653426189.p695813123.map((wl286663107) {
        return wl286663107.future;
      }),
    );
    dq653426189.p695813123.clear();
  }

  //
  Future<T> p729888121<T>({
    required Future<T> Function() pu822065241,
    bool dz491324100 = false,
  }) async {
    final Completer h511944716 = Completer();
    dq653426189.b742411024.add(
      S785065574(
        h511944716: h511944716,
        dz491324100: dz491324100,
      ),
    );
    final T ixr73566423 = await pu822065241.call();
    h511944716.complete();
    return ixr73566423;
  }

  //
  Future<void> mj619208645() async {
    await Future.wait(
      dq653426189.b742411024.map((wl286663107) {
        return wl286663107.h511944716.future;
      }),
    );

    dq653426189.b742411024.clear();
  }

  int get k146328470 {
    return dq653426189.b742411024
        .where(
          (hpp412699972) =>
              hpp412699972.h511944716.isCompleted == false &&
              hpp412699972.dz491324100,
        )
        .length;
  }

  bool get dz878560087 {
    for (final h511944716 in dq653426189.awv554014767) {
      if (!h511944716.isCompleted) {
        return true;
      }
    }
    return false;
  }

  FutureOr<void> lsg571917761() async {
    if (dq653426189.oru436424740 == null) {
      //
      //
      if (dq653426189.p695813123.isEmpty) {
        await dq653426189.fas398417882.stream
            .asBroadcastStream()
            .first;
        return;
      }

      await dq653426189.fas398417882.stream
          .asBroadcastStream()
          .first;
      return;
    } else {
      return;
    }
  }

  void ul30231683(BuildContext v381227967) {
    assert(
      !(v381227967 as Element).debugIsDefunct,
      "This method shouldn't be called after the widget has been disposed",
    );
  }

  bool pqi1070764971(BuildContext v381227967) {
    //
    if (v381227967 is StatefulElement) {
      return v381227967.state.mounted;
    }
    return true;
  }
}

class Mt141980656 {
  final Map<int, Future> d937383178 = {};

  //
  Future<T> e376892157<T>(
    int xz856559408,
    Future<T> Function() zp415672945,
  ) async {
    final Future<T> ixr73566423 = zp415672945.call();
    d937383178.addAll(<int, Future>{xz856559408: ixr73566423});

    return ixr73566423;
  }

  //
  Future<void> s686692144(int xz856559408) async {
    final Future? y598711192 = d937383178[xz856559408];
    await y598711192;
    //
    d937383178.remove(xz856559408);
  }
}

class S785065574 {
  final Completer h511944716;
  final bool dz491324100;
  S785065574({
    required this.h511944716,
    required this.dz491324100,
  });
}
