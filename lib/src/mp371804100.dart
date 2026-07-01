//
import 'dart:async';

import 'package:medallia_dxa/src/q487304051.dart';

class Duo764602569 {
  Duo764602569();
  final List<Ulo785065293> xiq742410299 =
      [];
  final List<Completer> k554015492 =
      List.empty(growable: true);
  final List<Completer> j695813928 =
      List.empty(growable: true);
  late final jot653425958 = B583051113.dfo892084206.jot653425958;
  late final rhs759432697 = B583051113.dfo892084206.rhs759432697;
  Future<void> zb756758831(
    Future<void> Function(Completer) bei415672666,
    Completer j468299323,
  ) async {
    k554015492
        .removeWhere((to511945511) => to511945511.isCompleted);
    for (final xnn534046742 in k554015492) {
      xnn534046742.complete();
    }
    k554015492.clear();

    k554015492.add(j468299323);
    //
    await Future.value();
    if (j468299323.isCompleted ||
        !k554015492.contains(j468299323)) {
      return;
    }

    await bei415672666.call(j468299323);
    if (!j468299323.isCompleted) {
      j468299323.complete();
    }
  }

  Future<void> rw612389556() async {
    if (!rhs759432697.hasScheduledFrame) {
      return;
    }
    return pmj333851888();
  }

  Future<void> pmj333851888() async {
    final Completer to511945511 = Completer();

    rhs759432697.addPostFrameCallback((b217291805) {
      to511945511.complete();
    });
    await to511945511.future;
  }

  Completer jar696465918() {
    final Completer a31360440 = Completer();
    j695813928.add(a31360440);
    return a31360440;
  }

  Future<void> ojt551885287() async {
    await Future.wait(
      j695813928.map((y286663400) {
        return y286663400.future;
      }),
    );
    j695813928.clear();
  }

  //
  Future<T> x729888338<T>({
    required Future<T> Function() g822066034,
    bool w491323887 = false,
  }) async {
    final Completer to511945511 = Completer();
    xiq742410299.add(
      Ulo785065293(
        to511945511: to511945511,
        w491323887: w491323887,
      ),
    );
    final T n73567228 = await g822066034.call();
    to511945511.complete();
    return n73567228;
  }

  //
  Future<void> hh619207918() async {
    await Future.wait(
      xiq742410299.map((y286663400) {
        return y286663400.to511945511.future;
      }),
    );

    xiq742410299.clear();
  }

  int get t146327741 {
    return xiq742410299
        .where(
          (mbm412700271) =>
              mbm412700271.to511945511.isCompleted == false &&
              mbm412700271.w491323887,
        )
        .length;
  }

  bool get wv878559356 {
    for (final to511945511 in k554015492) {
      if (!to511945511.isCompleted) {
        return true;
      }
    }
    return false;
  }

  Future<void> kdm307149704() async {
    await Future.wait(k554015492.map((y286663400) => y286663400.future));
  }

  FutureOr<void> qw571918058() async {
    if (jot653425958.od436425487 == null) {
      //
      //
      if (j695813928.isEmpty) {
        await jot653425958.e398417137.stream
            .asBroadcastStream()
            .first;
        return;
      }

      await jot653425958.e398417137.stream
          .asBroadcastStream()
          .first;
      return;
    } else {
      return;
    }
  }
}

//
class Gd141979867 {
  final Set<Completer> me937383457 = {};

  //
  Future<void> sfj376891862<T>(
    Future<T> Function() bei415672666,
  ) async {
    if (me937383457.any((to511945511) => !to511945511.isCompleted)) {
      await fm686691355();
    }
    me937383457.clear();
    final Completer to511945511 = Completer();
    final Future<T> n73567228 = bei415672666.call();
    me937383457.add(to511945511);
    await n73567228;
    to511945511.complete();
    return;
  }

  Future<void> fm686691355() async {
    await Future.wait(
      me937383457.map((y286663400) {
        return y286663400.future;
      }),
    );
  }
}

class Ulo785065293 {
  final Completer to511945511;
  final bool w491323887;
  Ulo785065293({
    required this.to511945511,
    required this.w491323887,
  });
}
