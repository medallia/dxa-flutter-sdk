//
import 'dart:async';

import 'package:medallia_dxa/src/df487303334.dart';

class S764603164 {
  S764603164();
  final List<Ml785065624> p742411246 =
      [];
  final List<Completer> p554014929 =
      List.empty(growable: true);
  final List<Completer> qdc695813373 =
      List.empty(growable: true);
  late final qb653426419 = L583050428.buw892083259.qb653426419;
  late final tcy759432748 = L583050428.buw892083259.tcy759432748;
  Future<void> k756759290(
    Future<void> Function(Completer) h415672975,
    Completer xe468299246,
  ) async {
    p554014929
        .removeWhere((o511944946) => o511944946.isCompleted);
    for (final of534047683 in p554014929) {
      of534047683.complete();
    }
    p554014929.clear();

    p554014929.add(xe468299246);
    //
    await Future.value();
    if (xe468299246.isCompleted ||
        !p554014929.contains(xe468299246)) {
      return;
    }

    await h415672975.call(xe468299246);
    if (!xe468299246.isCompleted) {
      xe468299246.complete();
    }
  }

  Future<void> ltj612389217() async {
    if (!tcy759432748.hasScheduledFrame) {
      return;
    }
    return zf333852453();
  }

  Future<void> zf333852453() async {
    final Completer o511944946 = Completer();

    tcy759432748.addPostFrameCallback((c217292744) {
      o511944946.complete();
    });
    await o511944946.future;
  }

  Completer pum696465963() {
    final Completer c31360621 = Completer();
    qdc695813373.add(c31360621);
    return c31360621;
  }

  Future<void> bo551885362() async {
    await Future.wait(
      qdc695813373.map((q286662973) {
        return q286662973.future;
      }),
    );
    qdc695813373.clear();
  }

  //
  Future<T> qh729888135<T>({
    required Future<T> Function() nrp822065319,
    bool wt491323962 = false,
  }) async {
    final Completer o511944946 = Completer();
    p742411246.add(
      Ml785065624(
        o511944946: o511944946,
        wt491323962: wt491323962,
      ),
    );
    final T w73566249 = await nrp822065319.call();
    o511944946.complete();
    return w73566249;
  }

  //
  Future<void> a619208507() async {
    await Future.wait(
      p742411246.map((q286662973) {
        return q286662973.o511944946.future;
      }),
    );

    p742411246.clear();
  }

  int get dgn146328424 {
    return p742411246
        .where(
          (v412700090) =>
              v412700090.o511944946.isCompleted == false &&
              v412700090.wt491323962,
        )
        .length;
  }

  bool get jp878560169 {
    for (final o511944946 in p554014929) {
      if (!o511944946.isCompleted) {
        return true;
      }
    }
    return false;
  }

  Future<void> pak307148893() async {
    await Future.wait(p554014929.map((q286662973) => q286662973.future));
  }

  FutureOr<void> fbg571917631() async {
    if (qb653426419.lk436424922 == null) {
      //
      //
      if (qdc695813373.isEmpty) {
        await qb653426419.p398417700.stream
            .asBroadcastStream()
            .first;
        return;
      }

      await qb653426419.p398417700.stream
          .asBroadcastStream()
          .first;
      return;
    } else {
      return;
    }
  }
}

//
class Ejf141980430 {
  final Set<Completer> n937383412 = {};

  //
  Future<void> wyo376891907<T>(
    Future<T> Function() h415672975,
  ) async {
    if (n937383412.any((o511944946) => !o511944946.isCompleted)) {
      await dao686692302();
    }
    n937383412.clear();
    final Completer o511944946 = Completer();
    final Future<T> w73566249 = h415672975.call();
    n937383412.add(o511944946);
    await w73566249;
    o511944946.complete();
    return;
  }

  Future<void> dao686692302() async {
    await Future.wait(
      n937383412.map((q286662973) {
        return q286662973.future;
      }),
    );
  }
}

class Ml785065624 {
  final Completer o511944946;
  final bool wt491323962;
  Ml785065624({
    required this.o511944946,
    required this.wt491323962,
  });
}
