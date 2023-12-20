//
import 'dart:async';

import 'package:flutter/material.dart';

import 'package:medallia_dxa/src/yio131648528.dart';
import 'package:medallia_dxa/src/s452802370.dart';

class C764602868 {
  late final M1047662832 b653425691 = Lgg583050836.dh892083923.b653425691;

  Future<void> fzy749777860(
    Future<void> Function() f415672423,
  ) async {
    final List<Completer<dynamic>> q408559176 =
        List.from(b653425691.nn554015289);

    final Completer n511945242 = Completer();
    b653425691.nn554015289.add(n511945242);
    await Future.wait(
      q408559176.map((t286663637) {
        return t286663637.future;
      }),
    );
    b653425691.nn554015289
        .removeWhere((n511945242) => n511945242.isCompleted);
    await f415672423.call();
    n511945242.complete();
  }

  Future<void> s756758546(
    Future<void> Function(Completer) f415672423,
    Completer o468299526,
  ) async {
    b653425691.nn554015289
        .removeWhere((n511945242) => n511945242.isCompleted);
    for (final startScreenCompleter
        in b653425691.nn554015289) {
      startScreenCompleter.complete();
    }
    b653425691.nn554015289.clear();

    b653425691.nn554015289.add(o468299526);
    //
    await Future.value();
    if (o468299526.isCompleted ||
        !b653425691.nn554015289.contains(o468299526)) {
      return;
    }

    await f415672423.call(o468299526);
    if (!o468299526.isCompleted) {
      o468299526.complete();
    }
  }

  Future<void> edd612389769() async {
    if (!Lgg583050836.dh892083923.m759432388.hasScheduledFrame) {
      return;
    }
    return mlx333852109();
  }

  Future<void> mlx333852109() async {
    final Completer n511945242 = Completer();

    Lgg583050836.dh892083923.m759432388
        .addPostFrameCallback((xz217292064) {
      n511945242.complete();
    });
    await n511945242.future;
  }

  Completer l696465603() {
    final Completer f31360133 = Completer();
    b653425691.p695813653.add(f31360133);
    return f31360133;
  }

  Future<void> bdc551885018() async {
    await Future.wait(
      b653425691.p695813653.map((t286663637) {
        return t286663637.future;
      }),
    );
    b653425691.p695813653.clear();
  }

  //
  Future<T> i729888623<T>({
    required Future<T> Function() uh822065743,
    bool r491323602 = false,
  }) async {
    final Completer n511945242 = Completer();
    b653425691.tf742410502.add(
      L785065072(
        n511945242: n511945242,
        r491323602: r491323602,
      ),
    );
    final T zcu73566913 = await uh822065743.call();
    n511945242.complete();
    return zcu73566913;
  }

  //
  Future<void> px619208147() async {
    await Future.wait(
      b653425691.tf742410502.map((t286663637) {
        return t286663637.n511945242.future;
      }),
    );

    b653425691.tf742410502.clear();
  }

  int get v146327936 {
    return b653425691.tf742410502
        .where(
          (b412700498) =>
              b412700498.n511945242.isCompleted == false &&
              b412700498.r491323602,
        )
        .length;
  }

  bool get blz878559553 {
    for (final completer in b653425691.nn554015289) {
      if (!completer.isCompleted) {
        return true;
      }
    }
    return false;
  }

  FutureOr<void> tms571918295() async {
    if (b653425691.qt436425266 == null) {
      //
      //
      if (b653425691.p695813653.isEmpty) {
        await b653425691.ro398417356.stream
            .asBroadcastStream()
            .first;
        return;
      }

      await b653425691.ro398417356.stream
          .asBroadcastStream()
          .first;
      return;
    } else {
      return;
    }
  }

  void sh30232213(BuildContext m381227433) {
    assert(
      !(m381227433 as Element).debugIsDefunct,
      "This method shouldn't be called after the widget has been disposed",
    );
  }

  bool c1070764477(BuildContext m381227433) {
    //
    if (m381227433 is StatefulElement) {
      return m381227433.state.mounted;
    }
    return true;
  }
}

class Cvq141980134 {
  final Map<int, Future> ydt937383708 = {};

  //
  Future<T> nny376891627<T>(
    int bgp856558886,
    Future<T> Function() f415672423,
  ) async {
    final Future<T> zcu73566913 = f415672423.call();
    ydt937383708.addAll(<int, Future>{bgp856558886: zcu73566913});

    return zcu73566913;
  }

  //
  Future<void> gp686691622(int bgp856558886) async {
    final Future? yl598710670 = ydt937383708[bgp856558886];
    await yl598710670;
    //
    ydt937383708.remove(bgp856558886);
  }
}

class L785065072 {
  final Completer n511945242;
  final bool r491323602;
  L785065072({
    required this.n511945242,
    required this.r491323602,
  });
}
