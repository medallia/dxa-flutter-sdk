//
import 'dart:async';

import 'package:flutter/material.dart';

import 'package:medallia_dxa/src/epi131649039.dart';
import 'package:medallia_dxa/src/yh452801885.dart';

class O764603371 {
  late final In1047663343 sp653426180 = Bc583050315.i892083404.sp653426180;

  Future<void> h749777371(
    Future<void> Function() gu415672952,
  ) async {
    final List<Completer<dynamic>> dq408558679 =
        List.from(sp653426180.lus554014758);

    final Completer ts511944709 = Completer();
    sp653426180.lus554014758.add(ts511944709);
    await Future.wait(
      dq408558679.map((e286663114) {
        return e286663114.future;
      }),
    );
    sp653426180.lus554014758
        .removeWhere((ts511944709) => ts511944709.isCompleted);
    await gu415672952.call();
    ts511944709.complete();
  }

  Future<void> ki756759053(
    Future<void> Function(Completer) gu415672952,
    Completer vk468299033,
  ) async {
    sp653426180.lus554014758
        .removeWhere((ts511944709) => ts511944709.isCompleted);
    for (final si534047540
        in sp653426180.lus554014758) {
      si534047540.complete();
    }
    sp653426180.lus554014758.clear();

    sp653426180.lus554014758.add(vk468299033);
    //
    await Future.value();
    if (vk468299033.isCompleted ||
        !sp653426180.lus554014758.contains(vk468299033)) {
      return;
    }

    await gu415672952.call(vk468299033);
    if (!vk468299033.isCompleted) {
      vk468299033.complete();
    }
  }

  Future<void> xe612389270() async {
    if (!Bc583050315.i892083404.diu759432923.hasScheduledFrame) {
      return;
    }
    return blm333852626();
  }

  Future<void> blm333852626() async {
    final Completer ts511944709 = Completer();

    Bc583050315.i892083404.diu759432923
        .addPostFrameCallback((tf217292607) {
      ts511944709.complete();
    });
    await ts511944709.future;
  }

  Completer m696466140() {
    final Completer iy31360666 = Completer();
    sp653426180.wvv695813130.add(iy31360666);
    return iy31360666;
  }

  Future<void> y551885509() async {
    await Future.wait(
      sp653426180.wvv695813130.map((e286663114) {
        return e286663114.future;
      }),
    );
    sp653426180.wvv695813130.clear();
  }

  //
  Future<T> pt729888112<T>({
    required Future<T> Function() tmi822065232,
    bool tx491324109 = false,
  }) async {
    final Completer ts511944709 = Completer();
    sp653426180.ejc742411033.add(
      Vio785065583(
        ts511944709: ts511944709,
        tx491324109: tx491324109,
      ),
    );
    final T q73566430 = await tmi822065232.call();
    ts511944709.complete();
    return q73566430;
  }

  //
  Future<void> utk619208652() async {
    await Future.wait(
      sp653426180.ejc742411033.map((e286663114) {
        return e286663114.ts511944709.future;
      }),
    );

    sp653426180.ejc742411033.clear();
  }

  int get w146328479 {
    return sp653426180.ejc742411033
        .where(
          (ttm412699981) =>
              ttm412699981.ts511944709.isCompleted == false &&
              ttm412699981.tx491324109,
        )
        .length;
  }

  bool get vau878560094 {
    for (final ts511944709 in sp653426180.lus554014758) {
      if (!ts511944709.isCompleted) {
        return true;
      }
    }
    return false;
  }

  FutureOr<void> lul571917768() async {
    if (sp653426180.jv436424749 == null) {
      //
      //
      if (sp653426180.wvv695813130.isEmpty) {
        await sp653426180.k398417875.stream
            .asBroadcastStream()
            .first;
        return;
      }

      await sp653426180.k398417875.stream
          .asBroadcastStream()
          .first;
      return;
    } else {
      return;
    }
  }

  void sg30231690(BuildContext jl381227958) {
    assert(
      !(jl381227958 as Element).debugIsDefunct,
      "This method shouldn't be called after the widget has been disposed",
    );
  }

  bool z1070764962(BuildContext jl381227958) {
    //
    if (jl381227958 is StatefulElement) {
      return jl381227958.state.mounted;
    }
    return true;
  }
}

class Yuq141980665 {
  final Map<int, Future> zpc937383171 = {};

  //
  Future<T> z376892148<T>(
    int ag856559417,
    Future<T> Function() gu415672952,
  ) async {
    final Future<T> q73566430 = gu415672952.call();
    zpc937383171.addAll(<int, Future>{ag856559417: q73566430});

    return q73566430;
  }

  //
  Future<void> b686692153(int ag856559417) async {
    final Future? h598711185 = zpc937383171[ag856559417];
    await h598711185;
    //
    zpc937383171.remove(ag856559417);
  }
}

class Vio785065583 {
  final Completer ts511944709;
  final bool tx491324109;
  Vio785065583({
    required this.ts511944709,
    required this.tx491324109,
  });
}
