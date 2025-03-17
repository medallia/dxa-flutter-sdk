//
import 'dart:async';

import 'package:medallia_dxa/src/d452802285.dart';

class U764602459 {
  U764602459();
  final List<R785065439> inq742410409 =
      [];
  final List<Completer> ow554015638 =
      List.empty(growable: true);
  final List<Completer> qr695814074 =
      List.empty(growable: true);
  late final zal653426100 = K583051259.y892084092.zal653426100;
  late final fx759432555 = K583051259.y892084092.fx759432555;
  Future<void> t756758973(
    Future<void> Function(Completer) yj415672776,
    Completer n468299433,
  ) async {
    ow554015638
        .removeWhere((kx511945653) => kx511945653.isCompleted);
    for (final yw534046852 in ow554015638) {
      yw534046852.complete();
    }
    ow554015638.clear();

    ow554015638.add(n468299433);
    //
    await Future.value();
    if (n468299433.isCompleted ||
        !ow554015638.contains(n468299433)) {
      return;
    }

    await yj415672776.call(n468299433);
    if (!n468299433.isCompleted) {
      n468299433.complete();
    }
  }

  Future<void> tg612389414() async {
    if (!fx759432555.hasScheduledFrame) {
      return;
    }
    return gdk333851746();
  }

  Future<void> gdk333851746() async {
    final Completer kx511945653 = Completer();

    fx759432555.addPostFrameCallback((e217291919) {
      kx511945653.complete();
    });
    await kx511945653.future;
  }

  Completer mwf696465772() {
    final Completer nrs31360298 = Completer();
    qr695814074.add(nrs31360298);
    return nrs31360298;
  }

  Future<void> hr551885173() async {
    await Future.wait(
      qr695814074.map((bma286663290) {
        return bma286663290.future;
      }),
    );
    qr695814074.clear();
  }

  //
  Future<T> m729888448<T>({
    required Future<T> Function() st822066144,
    bool t491323773 = false,
  }) async {
    final Completer kx511945653 = Completer();
    inq742410409.add(
      R785065439(
        kx511945653: kx511945653,
        t491323773: t491323773,
      ),
    );
    final T jm73567086 = await st822066144.call();
    kx511945653.complete();
    return jm73567086;
  }

  //
  Future<void> gq619207804() async {
    await Future.wait(
      inq742410409.map((bma286663290) {
        return bma286663290.kx511945653.future;
      }),
    );

    inq742410409.clear();
  }

  int get jyp146327599 {
    return inq742410409
        .where(
          (w412700413) =>
              w412700413.kx511945653.isCompleted == false &&
              w412700413.t491323773,
        )
        .length;
  }

  bool get tj878559470 {
    for (final kx511945653 in ow554015638) {
      if (!kx511945653.isCompleted) {
        return true;
      }
    }
    return false;
  }

  Future<void> y307149594() async {
    await Future.wait(ow554015638.map((bma286663290) => bma286663290.future));
  }

  FutureOr<void> n571917944() async {
    if (zal653426100.oin436425629 == null) {
      //
      //
      if (qr695814074.isEmpty) {
        await zal653426100.qoz398416995.stream
            .asBroadcastStream()
            .first;
        return;
      }

      await zal653426100.qoz398416995.stream
          .asBroadcastStream()
          .first;
      return;
    } else {
      return;
    }
  }
}

//
class Sdf141979721 {
  final Set<Completer> u937383603 = {};

  //
  Future<void> w376891716<T>(
    Future<T> Function() yj415672776,
  ) async {
    if (u937383603.any((kx511945653) => !kx511945653.isCompleted)) {
      await b686691465();
    }
    u937383603.clear();
    final Completer kx511945653 = Completer();
    final Future<T> jm73567086 = yj415672776.call();
    u937383603.add(kx511945653);
    await jm73567086;
    kx511945653.complete();
    return;
  }

  Future<void> b686691465() async {
    await Future.wait(
      u937383603.map((bma286663290) {
        return bma286663290.future;
      }),
    );
  }
}

class R785065439 {
  final Completer kx511945653;
  final bool t491323773;
  R785065439({
    required this.kx511945653,
    required this.t491323773,
  });
}
