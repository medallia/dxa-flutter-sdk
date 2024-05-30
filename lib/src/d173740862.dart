//
import 'dart:async';

import 'package:medallia_dxa/src/l452802526.dart';

class O764602728 {
  O764602728();
  final List<Lfk785065196> gtc742410650 =
      [];
  final List<Completer> do554015397 =
      List.empty(growable: true);
  final List<Completer> t695813769 =
      List.empty(growable: true);
  late final jy653425799 = Wx583050952.opf892083791.jy653425799;

  Future<void> po756758670(
    Future<void> Function(Completer) ucx415672571,
    Completer em468299674,
  ) async {
    do554015397
        .removeWhere((nx511945350) => nx511945350.isCompleted);
    for (final cx534047159 in do554015397) {
      cx534047159.complete();
    }
    do554015397.clear();

    do554015397.add(em468299674);
    //
    await Future.value();
    if (em468299674.isCompleted ||
        !do554015397.contains(em468299674)) {
      return;
    }

    await ucx415672571.call(em468299674);
    if (!em468299674.isCompleted) {
      em468299674.complete();
    }
  }

  Future<void> pzx612389653() async {
    if (!Wx583050952.opf892083791.o759432280.hasScheduledFrame) {
      return;
    }
    return gs333851985();
  }

  Future<void> gs333851985() async {
    final Completer nx511945350 = Completer();

    Wx583050952.opf892083791.o759432280
        .addPostFrameCallback((s217292220) {
      nx511945350.complete();
    });
    await nx511945350.future;
  }

  Completer a696465503() {
    final Completer l31360025 = Completer();
    t695813769.add(l31360025);
    return l31360025;
  }

  Future<void> og551884870() async {
    await Future.wait(
      t695813769.map((lv286663497) {
        return lv286663497.future;
      }),
    );
    t695813769.clear();
  }

  //
  Future<T> ghl729888755<T>({
    required Future<T> Function() qci822065875,
    bool nmf491323470 = false,
  }) async {
    final Completer nx511945350 = Completer();
    gtc742410650.add(
      Lfk785065196(
        nx511945350: nx511945350,
        nmf491323470: nmf491323470,
      ),
    );
    final T h73566813 = await qci822065875.call();
    nx511945350.complete();
    return h73566813;
  }

  //
  Future<void> o619208015() async {
    await Future.wait(
      gtc742410650.map((lv286663497) {
        return lv286663497.nx511945350.future;
      }),
    );

    gtc742410650.clear();
  }

  int get slj146327836 {
    return gtc742410650
        .where(
          (jl412700622) =>
              jl412700622.nx511945350.isCompleted == false &&
              jl412700622.nmf491323470,
        )
        .length;
  }

  bool get tc878559709 {
    for (final nx511945350 in do554015397) {
      if (!nx511945350.isCompleted) {
        return true;
      }
    }
    return false;
  }

  FutureOr<void> ole571918155() async {
    if (jy653425799.c436425390 == null) {
      //
      //
      if (t695813769.isEmpty) {
        await jy653425799.ojy398417232.stream
            .asBroadcastStream()
            .first;
        return;
      }

      await jy653425799.ojy398417232.stream
          .asBroadcastStream()
          .first;
      return;
    } else {
      return;
    }
  }
}

class O141980026 {
  final Map<int, Future> bzg937383808 = {};

  //
  Future<T> jm376891511<T>(
    int kr856559034,
    Future<T> Function() ucx415672571,
  ) async {
    final Future<T> h73566813 = ucx415672571.call();
    bzg937383808.addAll(<int, Future>{kr856559034: h73566813});

    return h73566813;
  }

  //
  Future<void> asb686691770(int kr856559034) async {
    final Future? c598710546 = bzg937383808[kr856559034];
    await c598710546;
    //
    bzg937383808.remove(kr856559034);
  }
}

class Lfk785065196 {
  final Completer nx511945350;
  final bool nmf491323470;
  Lfk785065196({
    required this.nx511945350,
    required this.nmf491323470,
  });
}
