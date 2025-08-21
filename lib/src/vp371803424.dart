//
import 'dart:async';

import 'package:medallia_dxa/src/e487303575.dart';

class Ybr764602925 {
  Ybr764602925();
  final List<U785065897> s742410975 =
      [];
  final List<Completer> up554015200 =
      List.empty(growable: true);
  final List<Completer> q695813580 =
      List.empty(growable: true);
  late final aco653426626 = Zmk583050637.u892083466.aco653426626;
  late final xk759432989 = Zmk583050637.u892083466.xk759432989;
  Future<void> bec756759499(
    Future<void> Function(Completer) j415673278,
    Completer mw468298975,
  ) async {
    up554015200
        .removeWhere((ua511945155) => ua511945155.isCompleted);
    for (final eg534047474 in up554015200) {
      eg534047474.complete();
    }
    up554015200.clear();

    up554015200.add(mw468298975);
    //
    await Future.value();
    if (mw468298975.isCompleted ||
        !up554015200.contains(mw468298975)) {
      return;
    }

    await j415673278.call(mw468298975);
    if (!mw468298975.isCompleted) {
      mw468298975.complete();
    }
  }

  Future<void> js612388944() async {
    if (!xk759432989.hasScheduledFrame) {
      return;
    }
    return kyy333852180();
  }

  Future<void> kyy333852180() async {
    final Completer ua511945155 = Completer();

    xk759432989.addPostFrameCallback((pyh217292537) {
      ua511945155.complete();
    });
    await ua511945155.future;
  }

  Completer fl696466202() {
    final Completer p31360860 = Completer();
    q695813580.add(p31360860);
    return p31360860;
  }

  Future<void> szy551885571() async {
    await Future.wait(
      q695813580.map((p286662668) {
        return p286662668.future;
      }),
    );
    q695813580.clear();
  }

  //
  Future<T> i729887926<T>({
    required Future<T> Function() v822065558,
    bool a491324171 = false,
  }) async {
    final Completer ua511945155 = Completer();
    s742410975.add(
      U785065897(
        ua511945155: ua511945155,
        a491324171: a491324171,
      ),
    );
    final T t73566488 = await v822065558.call();
    ua511945155.complete();
    return t73566488;
  }

  //
  Future<void> v619208202() async {
    await Future.wait(
      s742410975.map((p286662668) {
        return p286662668.ua511945155.future;
      }),
    );

    s742410975.clear();
  }

  int get hf146328153 {
    return s742410975
        .where(
          (kdw412699787) =>
              kdw412699787.ua511945155.isCompleted == false &&
              kdw412699787.a491324171,
        )
        .length;
  }

  bool get am878559896 {
    for (final ua511945155 in up554015200) {
      if (!ua511945155.isCompleted) {
        return true;
      }
    }
    return false;
  }

  Future<void> pt307149164() async {
    await Future.wait(up554015200.map((p286662668) => p286662668.future));
  }

  FutureOr<void> q571917326() async {
    if (aco653426626.wn436425195 == null) {
      //
      //
      if (q695813580.isEmpty) {
        await aco653426626.bj398417429.stream
            .asBroadcastStream()
            .first;
        return;
      }

      await aco653426626.bj398417429.stream
          .asBroadcastStream()
          .first;
      return;
    } else {
      return;
    }
  }
}

//
class N141980223 {
  final Set<Completer> h937383109 = {};

  //
  Future<void> zc376892210<T>(
    Future<T> Function() j415673278,
  ) async {
    if (h937383109.any((ua511945155) => !ua511945155.isCompleted)) {
      await e686692095();
    }
    h937383109.clear();
    final Completer ua511945155 = Completer();
    final Future<T> t73566488 = j415673278.call();
    h937383109.add(ua511945155);
    await t73566488;
    ua511945155.complete();
    return;
  }

  Future<void> e686692095() async {
    await Future.wait(
      h937383109.map((p286662668) {
        return p286662668.future;
      }),
    );
  }
}

class U785065897 {
  final Completer ua511945155;
  final bool a491324171;
  U785065897({
    required this.ua511945155,
    required this.a491324171,
  });
}
