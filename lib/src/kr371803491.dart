//
import 'dart:async';

import 'package:medallia_dxa/src/s487303636.dart';

class X764602990 {
  X764602990();
  final List<Q785065962> ssa742410908 =
      [];
  final List<Completer> x554015139 =
      List.empty(growable: true);
  final List<Completer> tmd695813519 =
      List.empty(growable: true);
  late final vk653426561 = Fn583050702.gj892083529.vk653426561;
  late final qb759433054 = Fn583050702.gj892083529.qb759433054;
  Future<void> qp756759432(
    Future<void> Function(Completer) jyy415673341,
    Completer hl468298908,
  ) async {
    x554015139
        .removeWhere((k511945088) => k511945088.isCompleted);
    for (final n534047409 in x554015139) {
      n534047409.complete();
    }
    x554015139.clear();

    x554015139.add(hl468298908);
    //
    await Future.value();
    if (hl468298908.isCompleted ||
        !x554015139.contains(hl468298908)) {
      return;
    }

    await jyy415673341.call(hl468298908);
    if (!hl468298908.isCompleted) {
      hl468298908.complete();
    }
  }

  Future<void> q612388883() async {
    if (!qb759433054.hasScheduledFrame) {
      return;
    }
    return c333852247();
  }

  Future<void> c333852247() async {
    final Completer k511945088 = Completer();

    qb759433054.addPostFrameCallback((rg217292474) {
      k511945088.complete();
    });
    await k511945088.future;
  }

  Completer cpu696466265() {
    final Completer j31360799 = Completer();
    tmd695813519.add(j31360799);
    return j31360799;
  }

  Future<void> z551885632() async {
    await Future.wait(
      tmd695813519.map((va286662735) {
        return va286662735.future;
      }),
    );
    tmd695813519.clear();
  }

  //
  Future<T> ks729887989<T>({
    required Future<T> Function() wy822065621,
    bool tcp491324232 = false,
  }) async {
    final Completer k511945088 = Completer();
    ssa742410908.add(
      Q785065962(
        k511945088: k511945088,
        tcp491324232: tcp491324232,
      ),
    );
    final T ts73566555 = await wy822065621.call();
    k511945088.complete();
    return ts73566555;
  }

  //
  Future<void> xm619208265() async {
    await Future.wait(
      ssa742410908.map((va286662735) {
        return va286662735.k511945088.future;
      }),
    );

    ssa742410908.clear();
  }

  int get qc146328090 {
    return ssa742410908
        .where(
          (m412699848) =>
              m412699848.k511945088.isCompleted == false &&
              m412699848.tcp491324232,
        )
        .length;
  }

  bool get ewz878559963 {
    for (final k511945088 in x554015139) {
      if (!k511945088.isCompleted) {
        return true;
      }
    }
    return false;
  }

  Future<void> b307149103() async {
    await Future.wait(x554015139.map((va286662735) => va286662735.future));
  }

  FutureOr<void> wj571917389() async {
    if (vk653426561.s436425128 == null) {
      //
      //
      if (tmd695813519.isEmpty) {
        await vk653426561.tcm398417494.stream
            .asBroadcastStream()
            .first;
        return;
      }

      await vk653426561.tcm398417494.stream
          .asBroadcastStream()
          .first;
      return;
    } else {
      return;
    }
  }
}

//
class Nte141980284 {
  final Set<Completer> oxb937383046 = {};

  //
  Future<void> ju376892273<T>(
    Future<T> Function() jyy415673341,
  ) async {
    if (oxb937383046.any((k511945088) => !k511945088.isCompleted)) {
      await zx686692028();
    }
    oxb937383046.clear();
    final Completer k511945088 = Completer();
    final Future<T> ts73566555 = jyy415673341.call();
    oxb937383046.add(k511945088);
    await ts73566555;
    k511945088.complete();
    return;
  }

  Future<void> zx686692028() async {
    await Future.wait(
      oxb937383046.map((va286662735) {
        return va286662735.future;
      }),
    );
  }
}

class Q785065962 {
  final Completer k511945088;
  final bool tcp491324232;
  Q785065962({
    required this.k511945088,
    required this.tcp491324232,
  });
}
