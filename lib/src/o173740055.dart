//
import 'dart:async';

import 'package:medallia_dxa/src/v452801783.dart';

class Jk764602945 {
  Jk764602945();
  final List<Uz785065925> dut742410931 =
      [];
  final List<Completer> swx554015116 =
      List.empty(growable: true);
  final List<Completer> okq695813536 =
      List.empty(growable: true);
  late final o653426606 = Wyf583050721.wf892083558.o653426606;
  late final wid759433073 = Wyf583050721.wf892083558.wid759433073;
  Future<void> xpx756759463(
    Future<void> Function(Completer) f415673298,
    Completer nd468298931,
  ) async {
    swx554015116
        .removeWhere((x511945135) => x511945135.isCompleted);
    for (final sa534047390 in swx554015116) {
      sa534047390.complete();
    }
    swx554015116.clear();

    swx554015116.add(nd468298931);
    //
    await Future.value();
    if (nd468298931.isCompleted ||
        !swx554015116.contains(nd468298931)) {
      return;
    }

    await f415673298.call(nd468298931);
    if (!nd468298931.isCompleted) {
      nd468298931.complete();
    }
  }

  Future<void> s612388924() async {
    if (!wid759433073.hasScheduledFrame) {
      return;
    }
    return fte333852280();
  }

  Future<void> fte333852280() async {
    final Completer x511945135 = Completer();

    wid759433073.addPostFrameCallback((xxo217292437) {
      x511945135.complete();
    });
    await x511945135.future;
  }

  Completer zm696466294() {
    final Completer oya31360816 = Completer();
    okq695813536.add(oya31360816);
    return oya31360816;
  }

  Future<void> li551885679() async {
    await Future.wait(
      okq695813536.map((moj286662752) {
        return moj286662752.future;
      }),
    );
    okq695813536.clear();
  }

  //
  Future<T> lni729887962<T>({
    required Future<T> Function() nv822065658,
    bool ii491324263 = false,
  }) async {
    final Completer x511945135 = Completer();
    dut742410931.add(
      Uz785065925(
        x511945135: x511945135,
        ii491324263: ii491324263,
      ),
    );
    final T ok73566580 = await nv822065658.call();
    x511945135.complete();
    return ok73566580;
  }

  //
  Future<void> mli619208294() async {
    await Future.wait(
      dut742410931.map((moj286662752) {
        return moj286662752.x511945135.future;
      }),
    );

    dut742410931.clear();
  }

  int get l146328117 {
    return dut742410931
        .where(
          (uw412699879) =>
              uw412699879.x511945135.isCompleted == false &&
              uw412699879.ii491324263,
        )
        .length;
  }

  bool get q878559988 {
    for (final x511945135 in swx554015116) {
      if (!x511945135.isCompleted) {
        return true;
      }
    }
    return false;
  }

  Future<void> ic307149056() async {
    await Future.wait(swx554015116.map((moj286662752) => moj286662752.future));
  }

  FutureOr<void> q571917410() async {
    if (o653426606.m436425095 == null) {
      //
      //
      if (okq695813536.isEmpty) {
        await o653426606.pna398417529.stream
            .asBroadcastStream()
            .first;
        return;
      }

      await o653426606.pna398417529.stream
          .asBroadcastStream()
          .first;
      return;
    } else {
      return;
    }
  }
}

class Y141980243 {
  final Map<int, Future> y937383081 = {};

  //
  Future<T> bcd376892254<T>(
    int nz856559251,
    Future<T> Function() f415673298,
  ) async {
    final Future<T> ok73566580 = f415673298.call();
    y937383081.addAll(<int, Future>{nz856559251: ok73566580});

    return ok73566580;
  }

  //
  Future<void> t686691987(int nz856559251) async {
    final Future? jvv598710843 = y937383081[nz856559251];
    await jvv598710843;
    //
    y937383081.remove(nz856559251);
  }
}

class Uz785065925 {
  final Completer x511945135;
  final bool ii491324263;
  Uz785065925({
    required this.x511945135,
    required this.ii491324263,
  });
}
