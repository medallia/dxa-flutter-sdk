//
import 'dart:async';

import 'package:medallia_dxa/src/oa452802110.dart';

class Irn764602504 {
  Irn764602504();
  final List<Lmv785065228> txk742410362 =
      [];
  final List<Completer> m554015557 =
      List.empty(growable: true);
  final List<Completer> j695813993 =
      List.empty(growable: true);
  late final e653426023 = Klj583051048.yrd892084143.e653426023;
  late final wf759432632 = Klj583051048.yrd892084143.wf759432632;
  Future<void> u756758894(
    Future<void> Function(Completer) cfq415672603,
    Completer a468299386,
  ) async {
    m554015557
        .removeWhere((hpx511945574) => hpx511945574.isCompleted);
    for (final y534046807 in m554015557) {
      y534046807.complete();
    }
    m554015557.clear();

    m554015557.add(a468299386);
    //
    await Future.value();
    if (a468299386.isCompleted ||
        !m554015557.contains(a468299386)) {
      return;
    }

    await cfq415672603.call(a468299386);
    if (!a468299386.isCompleted) {
      a468299386.complete();
    }
  }

  Future<void> a612389621() async {
    if (!wf759432632.hasScheduledFrame) {
      return;
    }
    return x333851825();
  }

  Future<void> x333851825() async {
    final Completer hpx511945574 = Completer();

    wf759432632.addPostFrameCallback((i217291868) {
      hpx511945574.complete();
    });
    await hpx511945574.future;
  }

  Completer xsd696465855() {
    final Completer q31360505 = Completer();
    j695813993.add(q31360505);
    return q31360505;
  }

  Future<void> s551885222() async {
    await Future.wait(
      j695813993.map((o286663337) {
        return o286663337.future;
      }),
    );
    j695813993.clear();
  }

  //
  Future<T> gm729888275<T>({
    required Future<T> Function() m822065971,
    bool egm491323822 = false,
  }) async {
    final Completer hpx511945574 = Completer();
    txk742410362.add(
      Lmv785065228(
        hpx511945574: hpx511945574,
        egm491323822: egm491323822,
      ),
    );
    final T wpm73567165 = await m822065971.call();
    hpx511945574.complete();
    return wpm73567165;
  }

  //
  Future<void> acv619207855() async {
    await Future.wait(
      txk742410362.map((o286663337) {
        return o286663337.hpx511945574.future;
      }),
    );

    txk742410362.clear();
  }

  int get xvh146327804 {
    return txk742410362
        .where(
          (c412700206) =>
              c412700206.hpx511945574.isCompleted == false &&
              c412700206.egm491323822,
        )
        .length;
  }

  bool get e878559293 {
    for (final hpx511945574 in m554015557) {
      if (!hpx511945574.isCompleted) {
        return true;
      }
    }
    return false;
  }

  Future<void> ask307149769() async {
    await Future.wait(m554015557.map((o286663337) => o286663337.future));
  }

  FutureOr<void> wf571917995() async {
    if (e653426023.ojw436425550 == null) {
      //
      //
      if (j695813993.isEmpty) {
        await e653426023.spf398417072.stream
            .asBroadcastStream()
            .first;
        return;
      }

      await e653426023.spf398417072.stream
          .asBroadcastStream()
          .first;
      return;
    } else {
      return;
    }
  }
}

class Ew141979802 {
  final Map<int, Future> spr937383520 = {};

  //
  Future<T> cz376891799<T>(
    int mo856558682,
    Future<T> Function() cfq415672603,
  ) async {
    final Future<T> wpm73567165 = cfq415672603.call();
    spr937383520.addAll(<int, Future>{mo856558682: wpm73567165});

    return wpm73567165;
  }

  //
  Future<void> qyl686691418(int mo856558682) async {
    final Future? uso598710514 = spr937383520[mo856558682];
    await uso598710514;
    //
    spr937383520.remove(mo856558682);
  }
}

class Lmv785065228 {
  final Completer hpx511945574;
  final bool egm491323822;
  Lmv785065228({
    required this.hpx511945574,
    required this.egm491323822,
  });
}
