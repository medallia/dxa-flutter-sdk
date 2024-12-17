//
import 'dart:async';

import 'package:medallia_dxa/src/q452802447.dart';

class Plp764602681 {
  Plp764602681();
  final List<U785065149> ld742410699 =
      [];
  final List<Completer> v554015476 =
      List.empty(growable: true);
  final List<Completer> jp695813848 =
      List.empty(growable: true);
  late final io653425878 = Zz583050905.rq892083742.io653425878;
  late final nb759432201 = Zz583050905.rq892083742.nb759432201;
  Future<void> mrh756758751(
    Future<void> Function(Completer) lyj415672490,
    Completer fu468299723,
  ) async {
    v554015476
        .removeWhere((lv511945431) => lv511945431.isCompleted);
    for (final s534047206 in v554015476) {
      s534047206.complete();
    }
    v554015476.clear();

    v554015476.add(fu468299723);
    //
    await Future.value();
    if (fu468299723.isCompleted ||
        !v554015476.contains(fu468299723)) {
      return;
    }

    await lyj415672490.call(fu468299723);
    if (!fu468299723.isCompleted) {
      fu468299723.complete();
    }
  }

  Future<void> ayz612389700() async {
    if (!nb759432201.hasScheduledFrame) {
      return;
    }
    return q333851904();
  }

  Future<void> q333851904() async {
    final Completer lv511945431 = Completer();

    nb759432201.addPostFrameCallback((qy217292269) {
      lv511945431.complete();
    });
    await lv511945431.future;
  }

  Completer v696465422() {
    final Completer xdy31360072 = Completer();
    jp695813848.add(xdy31360072);
    return xdy31360072;
  }

  Future<void> k551884823() async {
    await Future.wait(
      jp695813848.map((ii286663448) {
        return ii286663448.future;
      }),
    );
    jp695813848.clear();
  }

  //
  Future<T> km729888674<T>({
    required Future<T> Function() h822065794,
    bool qp491323423 = false,
  }) async {
    final Completer lv511945431 = Completer();
    ld742410699.add(
      U785065149(
        lv511945431: lv511945431,
        qp491323423: qp491323423,
      ),
    );
    final T qhn73566732 = await h822065794.call();
    lv511945431.complete();
    return qhn73566732;
  }

  //
  Future<void> go619207966() async {
    await Future.wait(
      ld742410699.map((ii286663448) {
        return ii286663448.lv511945431.future;
      }),
    );

    ld742410699.clear();
  }

  int get o146327885 {
    return ld742410699
        .where(
          (aty412700575) =>
              aty412700575.lv511945431.isCompleted == false &&
              aty412700575.qp491323423,
        )
        .length;
  }

  bool get wd878559628 {
    for (final lv511945431 in v554015476) {
      if (!lv511945431.isCompleted) {
        return true;
      }
    }
    return false;
  }

  Future<void> c307149432() async {
    await Future.wait(v554015476.map((ii286663448) => ii286663448.future));
  }

  FutureOr<void> dm571918106() async {
    if (io653425878.s436425471 == null) {
      //
      //
      if (jp695813848.isEmpty) {
        await io653425878.u398417153.stream
            .asBroadcastStream()
            .first;
        return;
      }

      await io653425878.u398417153.stream
          .asBroadcastStream()
          .first;
      return;
    } else {
      return;
    }
  }
}

class Hd141979947 {
  final Map<int, Future> if937383889 = {};

  //
  Future<T> q376891430<T>(
    int rpb856559083,
    Future<T> Function() lyj415672490,
  ) async {
    final Future<T> qhn73566732 = lyj415672490.call();
    if937383889.addAll(<int, Future>{rpb856559083: qhn73566732});

    return qhn73566732;
  }

  //
  Future<void> p686691819(int rpb856559083) async {
    final Future? p598710595 = if937383889[rpb856559083];
    await p598710595;
    //
    if937383889.remove(rpb856559083);
  }
}

class U785065149 {
  final Completer lv511945431;
  final bool qp491323423;
  U785065149({
    required this.lv511945431,
    required this.qp491323423,
  });
}
