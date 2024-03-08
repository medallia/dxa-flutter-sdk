import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/w1031389746.dart';
import 'package:medallia_dxa/src/mo681535402.dart';
import 'package:medallia_dxa/src/cwx452801876.dart';
import 'package:medallia_dxa/src/sor304042900.dart';
import 'package:medallia_dxa/src/zan966267203.dart';

@immutable
class I686664201 {
  final String nvn459293598;
  final String r652311751;
  final int ok212009081;
  final int? xlq1032417741;
  final bool xq633507878;
  final List<DxaRouteWithModalRederence> th986357265;
  final List<Cwv958539306> a916463359;
  final bool em614816020;

  final bool h884418526;
  final bool icq901482106;
  final E72708322? zun876937756;
  final List<C627939472> c229773271;

  //
  List<Pxr666222958> get mfa231563627 {
    return a916463359
        .whereType<Pxr666222958>()
        .where((wl286663107) => !rl399594350.contains(wl286663107))
        .toList()
      ..removeWhere(
        (hpp412699972) => hpp412699972.efl1001734470.navigator == null,
      );
  }

  bool get pj370874477 => th986357265.last.v501560473;

  Element get da313790428 =>
      Yt583050306.ss892083397.bl759432914.eji405157068!;

  bool get cuk821948731 {
    return th986357265.every((hpp412699972) => hpp412699972 is Pxr666222958);
  }

  List<Pxr666222958> get rl399594350 {
    final List<Pxr666222958> maw786464188 = [];
    for (final rlq67975465 in th986357265) {
      maw786464188.add(rlq67975465.z588001153());
    }
    return maw786464188;
  }

  Pxr666222958 get m833760059 {
    final DxaRouteWithModalRederence vis22218368 = th986357265.last;

    return vis22218368.z588001153();
  }

  bool get uv243853076 =>
      th986357265.any((hpp412699972) => hpp412699972.efl1001734470.navigator == null);

  bool get jl368021033 =>
      !th986357265.any((hpp412699972) => hpp412699972 is Pxr666222958);

  final bool lzo469234829;
  int get dfk161818680 => nvn459293598.hashCode ^ ok212009081.hashCode;

  I686664201({
    required this.nvn459293598,
    required this.r652311751,
    required this.ok212009081,
    required this.th986357265,
    required this.a916463359,
    required this.xlq1032417741,
    required this.lzo469234829,
    required this.em614816020,
    required this.xq633507878,
    required this.h884418526,
    required this.icq901482106,
    required this.zun876937756,
  }) : c229773271 = [];

  I686664201.standard({
    required this.nvn459293598,
    required this.r652311751,
    required this.ok212009081,
    required this.th986357265,
    required this.a916463359,
    required this.h884418526,
    required this.icq901482106,
    required this.zun876937756,
    this.xlq1032417741,
  })  : lzo469234829 = false,
        em614816020 = false,
        xq633507878 = false,
        c229773271 = [];

  //b712079488
  const I686664201.createFinished({
    required this.nvn459293598,
    required this.ok212009081,
    required this.r652311751,
    required this.xlq1032417741,
    required this.th986357265,
    required this.a916463359,
    required this.em614816020,
    required this.xq633507878,
    required this.h884418526,
    required this.icq901482106,
    required this.c229773271,
    required this.zun876937756,
  }) : lzo469234829 = true;

  Var270265096 b712079488(int xlq1032417741) {
    return Var270265096(
      nvn459293598: nvn459293598,
      r652311751: r652311751,
      th986357265: th986357265,
      a916463359: a916463359,
      ok212009081: ok212009081,
      xlq1032417741: xlq1032417741,
      em614816020: em614816020,
      xq633507878: xq633507878,
      h884418526: h884418526,
      icq901482106: icq901482106,
      zun876937756: zun876937756,
      c229773271: c229773271,
    );
  }

  //
  //
  I686664201 e623465873(int no124518814) {
    return I686664201(
      nvn459293598: nvn459293598,
      r652311751: r652311751,
      ok212009081: no124518814,
      th986357265: th986357265,
      a916463359: a916463359,
      xlq1032417741: xlq1032417741,
      lzo469234829: lzo469234829,
      em614816020: em614816020,
      xq633507878: xq633507878,
      h884418526: h884418526,
      icq901482106: icq901482106,
      zun876937756: zun876937756,
    );
  }

  @override
  String toString() {
    return 'ScreenVisited(id: $nvn459293598, uniqueid $dfk161818680, name: $r652311751, timestamp: $ok212009081, endTimestamp: $xlq1032417741, isTabBar: $xq633507878, finished: $lzo469234829)';
  }
}

@immutable
class C627939472 {
  final bool hsb450169480;
  final Jp491806859 dh815611490;
  const C627939472({
    required this.hsb450169480,
    required this.dh815611490,
  });
}

@immutable
class Var270265096 extends I686664201 {
  @override
  int get xlq1032417741 => super.xlq1032417741!;
  const Var270265096({
    required String nvn459293598,
    required int ok212009081,
    required String r652311751,
    required int xlq1032417741,
    required List<DxaRouteWithModalRederence> th986357265,
    required List<Cwv958539306> a916463359,
    required bool em614816020,
    required bool xq633507878,
    required bool h884418526,
    required bool icq901482106,
    required List<C627939472> c229773271,
    required E72708322? zun876937756,
  }) : super.createFinished(
          nvn459293598: nvn459293598,
          ok212009081: ok212009081,
          r652311751: r652311751,
          xlq1032417741: xlq1032417741,
          th986357265: th986357265,
          a916463359: a916463359,
          em614816020: em614816020,
          xq633507878: xq633507878,
          h884418526: h884418526,
          icq901482106: icq901482106,
          c229773271: c229773271,
          zun876937756: zun876937756,
        );
}
