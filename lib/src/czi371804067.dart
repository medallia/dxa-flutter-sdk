//
import 'dart:async';

import 'package:medallia_dxa/src/sb487303956.dart';

class J764602542 {
  J764602542();
  final List<E785065258> v742410332 =
      [];
  final List<Completer> omg554015587 =
      List.empty(growable: true);
  final List<Completer> smj695813967 =
      List.empty(growable: true);
  late final ltl653425985 = Z583051022.n892084105.ltl653425985;
  late final qyo759432606 = Z583051022.n892084105.qyo759432606;
  Future<void> gkg756758856(
    Future<void> Function(Completer) jn415672637,
    Completer ic468299356,
  ) async {
    omg554015587
        .removeWhere((tq511945536) => tq511945536.isCompleted);
    for (final q534046833 in omg554015587) {
      q534046833.complete();
    }
    omg554015587.clear();

    omg554015587.add(ic468299356);
    //
    await Future.value();
    if (ic468299356.isCompleted ||
        !omg554015587.contains(ic468299356)) {
      return;
    }

    await jn415672637.call(ic468299356);
    if (!ic468299356.isCompleted) {
      ic468299356.complete();
    }
  }

  Future<void> z612389587() async {
    if (!qyo759432606.hasScheduledFrame) {
      return;
    }
    return f333851799();
  }

  Future<void> f333851799() async {
    final Completer tq511945536 = Completer();

    qyo759432606.addPostFrameCallback((k217291898) {
      tq511945536.complete();
    });
    await tq511945536.future;
  }

  Completer jam696465817() {
    final Completer dr31360479 = Completer();
    smj695813967.add(dr31360479);
    return dr31360479;
  }

  Future<void> yvb551885184() async {
    await Future.wait(
      smj695813967.map((kp286663311) {
        return kp286663311.future;
      }),
    );
    smj695813967.clear();
  }

  //
  Future<T> kc729888309<T>({
    required Future<T> Function() qhu822065941,
    bool ggf491323784 = false,
  }) async {
    final Completer tq511945536 = Completer();
    v742410332.add(
      E785065258(
        tq511945536: tq511945536,
        ggf491323784: ggf491323784,
      ),
    );
    final T fwn73567131 = await qhu822065941.call();
    tq511945536.complete();
    return fwn73567131;
  }

  //
  Future<void> avi619207817() async {
    await Future.wait(
      v742410332.map((kp286663311) {
        return kp286663311.tq511945536.future;
      }),
    );

    v742410332.clear();
  }

  int get yet146327770 {
    return v742410332
        .where(
          (bq412700168) =>
              bq412700168.tq511945536.isCompleted == false &&
              bq412700168.ggf491323784,
        )
        .length;
  }

  bool get q878559259 {
    for (final tq511945536 in omg554015587) {
      if (!tq511945536.isCompleted) {
        return true;
      }
    }
    return false;
  }

  Future<void> c307149807() async {
    await Future.wait(omg554015587.map((kp286663311) => kp286663311.future));
  }

  FutureOr<void> zc571917965() async {
    if (ltl653425985.v436425576 == null) {
      //
      //
      if (smj695813967.isEmpty) {
        await ltl653425985.y398417046.stream
            .asBroadcastStream()
            .first;
        return;
      }

      await ltl653425985.y398417046.stream
          .asBroadcastStream()
          .first;
      return;
    } else {
      return;
    }
  }
}

//
class Yx141979836 {
  final Set<Completer> hi937383494 = {};

  //
  Future<void> cif376891825<T>(
    Future<T> Function() jn415672637,
  ) async {
    if (hi937383494.any((tq511945536) => !tq511945536.isCompleted)) {
      await b686691452();
    }
    hi937383494.clear();
    final Completer tq511945536 = Completer();
    final Future<T> fwn73567131 = jn415672637.call();
    hi937383494.add(tq511945536);
    await fwn73567131;
    tq511945536.complete();
    return;
  }

  Future<void> b686691452() async {
    await Future.wait(
      hi937383494.map((kp286663311) {
        return kp286663311.future;
      }),
    );
  }
}

class E785065258 {
  final Completer tq511945536;
  final bool ggf491323784;
  E785065258({
    required this.tq511945536,
    required this.ggf491323784,
  });
}
