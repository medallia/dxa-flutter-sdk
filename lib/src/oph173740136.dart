//
import 'dart:async';

import 'package:flutter/material.dart';

import 'package:medallia_dxa/src/yd131649498.dart';
import 'package:medallia_dxa/src/feb452801672.dart';

class Jh764602942 {
  late final Rsx1047663418 ucv653426641 = R583050654.fwk892083481.ucv653426641;

  Future<void> q749776910(
    Future<void> Function() i415673261,
  ) async {
    final List<Completer<dynamic>> y408558978 =
        List.from(ucv653426641.ax554015219);

    final Completer hu511945168 = Completer();
    ucv653426641.ax554015219.add(hu511945168);
    await Future.wait(
      y408558978.map((at286662687) {
        return at286662687.future;
      }),
    );
    ucv653426641.ax554015219
        .removeWhere((hu511945168) => hu511945168.isCompleted);
    await i415673261.call();
    hu511945168.complete();
  }

  Future<void> ivh756759512(
    Future<void> Function(Completer) i415673261,
    Completer vcx468298956,
  ) async {
    ucv653426641.ax554015219
        .removeWhere((hu511945168) => hu511945168.isCompleted);
    for (final js534047457
        in ucv653426641.ax554015219) {
      js534047457.complete();
    }
    ucv653426641.ax554015219.clear();

    ucv653426641.ax554015219.add(vcx468298956);
    //
    await Future.value();
    if (vcx468298956.isCompleted ||
        !ucv653426641.ax554015219.contains(vcx468298956)) {
      return;
    }

    await i415673261.call(vcx468298956);
    if (!vcx468298956.isCompleted) {
      vcx468298956.complete();
    }
  }

  Future<void> jkh612388931() async {
    if (!R583050654.fwk892083481.is759432974.hasScheduledFrame) {
      return;
    }
    return jc333852167();
  }

  Future<void> jc333852167() async {
    final Completer hu511945168 = Completer();

    R583050654.fwk892083481.is759432974
        .addPostFrameCallback((il217292522) {
      hu511945168.complete();
    });
    await hu511945168.future;
  }

  Completer vlq696466185() {
    final Completer ucn31360847 = Completer();
    ucv653426641.mf695813599.add(ucn31360847);
    return ucn31360847;
  }

  Future<void> o551885584() async {
    await Future.wait(
      ucv653426641.mf695813599.map((at286662687) {
        return at286662687.future;
      }),
    );
    ucv653426641.mf695813599.clear();
  }

  //
  Future<T> tm729887909<T>({
    required Future<T> Function() vp822065541,
    bool ur491324184 = false,
  }) async {
    final Completer hu511945168 = Completer();
    ucv653426641.q742410956.add(
      Qi785065914(
        hu511945168: hu511945168,
        ur491324184: ur491324184,
      ),
    );
    final T pd73566475 = await vp822065541.call();
    hu511945168.complete();
    return pd73566475;
  }

  //
  Future<void> qh619208217() async {
    await Future.wait(
      ucv653426641.q742410956.map((at286662687) {
        return at286662687.hu511945168.future;
      }),
    );

    ucv653426641.q742410956.clear();
  }

  int get uny146328138 {
    return ucv653426641.q742410956
        .where(
          (r412699800) =>
              r412699800.hu511945168.isCompleted == false &&
              r412699800.ur491324184,
        )
        .length;
  }

  bool get v878559883 {
    for (final hu511945168 in ucv653426641.ax554015219) {
      if (!hu511945168.isCompleted) {
        return true;
      }
    }
    return false;
  }

  FutureOr<void> m571917341() async {
    if (ucv653426641.nn436425208 == null) {
      //
      //
      if (ucv653426641.mf695813599.isEmpty) {
        await ucv653426641.zw398417414.stream
            .asBroadcastStream()
            .first;
        return;
      }

      await ucv653426641.zw398417414.stream
          .asBroadcastStream()
          .first;
      return;
    } else {
      return;
    }
  }

  void hmm30231903(BuildContext w381227619) {
    assert(
      !(w381227619 as Element).debugIsDefunct,
      "This method shouldn't be called after the widget has been disposed",
    );
  }

  bool g1070764663(BuildContext w381227619) {
    //
    if (w381227619 is StatefulElement) {
      return w381227619.state.mounted;
    }
    return true;
  }
}

class Oro141980204 {
  final Map<int, Future> fq937383126 = {};

  //
  Future<T> dy376892193<T>(
    int mkr856559340,
    Future<T> Function() i415673261,
  ) async {
    final Future<T> pd73566475 = i415673261.call();
    fq937383126.addAll(<int, Future>{mkr856559340: pd73566475});

    return pd73566475;
  }

  //
  Future<void> tzd686692076(int mkr856559340) async {
    final Future? v598710852 = fq937383126[mkr856559340];
    await v598710852;
    //
    fq937383126.remove(mkr856559340);
  }
}

class Qi785065914 {
  final Completer hu511945168;
  final bool ur491324184;
  Qi785065914({
    required this.hu511945168,
    required this.ur491324184,
  });
}
