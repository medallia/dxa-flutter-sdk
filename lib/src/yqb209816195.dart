import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/ki1031390097.dart';
import 'package:medallia_dxa/src/x681534985.dart';
import 'package:medallia_dxa/src/v452801783.dart';
import 'package:medallia_dxa/src/xd304042551.dart';
import 'package:medallia_dxa/src/en966267104.dart';

@immutable
class Cr686664618 {
  final String cqu459293245;
  final String m652311908;
  final int yh212009434;
  final int? inx1032417390;
  final bool hjt633508229;
  final List<DxaRouteWithModalRederence> qng986357682;
  final List<Q958539657> mz916463452;
  final bool i614815927;

  final bool byu884418173;
  final bool il901482457;
  final Q72708417? ww876938175;
  final List<Dc627939635> ncb229772916;
  late final WidgetsBinding _ige336585304 =
      Wyf583050721.wf892083558.wid759433073;

  //
  List<L666222797> get yxs231563464 {
    return mz916463452
        .whereType<L666222797>()
        .where((moj286662752) => !h399594189.contains(moj286662752))
        .toList()
      ..removeWhere(
        (uw412699879) => uw412699879.kcq1001734373.navigator == null,
      );
  }

  Element get qz313790079 =>
      _ige336585304.drx405157231!;

  bool get n821948568 {
    return qng986357682.every((uw412699879) => uw412699879 is L666222797);
  }

  List<L666222797> get h399594189 {
    final List<L666222797> m786463775 = [];
    for (final fnm67975306 in qng986357682) {
      m786463775.add(fnm67975306.qst588000802());
    }
    return m786463775;
  }

  L666222797 get gd833759896 {
    final DxaRouteWithModalRederence ve22218531 = qng986357682.last;

    return ve22218531.qst588000802();
  }

  bool get y243852983 =>
      qng986357682.any((uw412699879) => uw412699879.kcq1001734373.navigator == null);

  bool get kfs368021386 =>
      !qng986357682.any((uw412699879) => uw412699879 is L666222797);

  final bool mvq469234990;
  int get ban161819035 => cqu459293245.hashCode ^ yh212009434.hashCode;

  Cr686664618({
    required this.cqu459293245,
    required this.m652311908,
    required this.yh212009434,
    required this.qng986357682,
    required this.mz916463452,
    required this.inx1032417390,
    required this.mvq469234990,
    required this.i614815927,
    required this.hjt633508229,
    required this.byu884418173,
    required this.il901482457,
    required this.ww876938175,
  }) : ncb229772916 = [];

  Cr686664618.standard({
    required this.cqu459293245,
    required this.m652311908,
    required this.yh212009434,
    required this.qng986357682,
    required this.mz916463452,
    required this.byu884418173,
    required this.il901482457,
    required this.ww876938175,
    this.inx1032417390,
  })  : mvq469234990 = false,
        i614815927 = false,
        hjt633508229 = false,
        ncb229772916 = [];

  //p712079651
  Cr686664618.createFinished({
    required this.cqu459293245,
    required this.yh212009434,
    required this.m652311908,
    required this.inx1032417390,
    required this.qng986357682,
    required this.mz916463452,
    required this.i614815927,
    required this.hjt633508229,
    required this.byu884418173,
    required this.il901482457,
    required this.ncb229772916,
    required this.ww876938175,
  }) : mvq469234990 = true;

  Bd270265003 p712079651(int inx1032417390) {
    return Bd270265003(
      cqu459293245: cqu459293245,
      m652311908: m652311908,
      qng986357682: qng986357682,
      mz916463452: mz916463452,
      yh212009434: yh212009434,
      inx1032417390: inx1032417390,
      i614815927: i614815927,
      hjt633508229: hjt633508229,
      byu884418173: byu884418173,
      il901482457: il901482457,
      ww876938175: ww876938175,
      ncb229772916: ncb229772916,
    );
  }

  //
  //
  Cr686664618 uk623465522(int bb124518461) {
    return Cr686664618(
      cqu459293245: cqu459293245,
      m652311908: m652311908,
      yh212009434: bb124518461,
      qng986357682: qng986357682,
      mz916463452: mz916463452,
      inx1032417390: inx1032417390,
      mvq469234990: mvq469234990,
      i614815927: i614815927,
      hjt633508229: hjt633508229,
      byu884418173: byu884418173,
      il901482457: il901482457,
      ww876938175: ww876938175,
    );
  }

  @override
  String toString() {
    return 'ScreenVisited(id: $cqu459293245, uniqueid $ban161819035, name: $m652311908, timestamp: $yh212009434, endTimestamp: $inx1032417390, isTabBar: $hjt633508229, finished: $mvq469234990)';
  }
}

@immutable
class Dc627939635 {
  final bool gn450169643;
  final Wt491807016 kxq815611841;
  const Dc627939635({
    required this.gn450169643,
    required this.kxq815611841,
  });
}

@immutable
class Bd270265003 extends Cr686664618 {
  @override
  int get inx1032417390 => super.inx1032417390!;
  Bd270265003({
    required String cqu459293245,
    required int yh212009434,
    required String m652311908,
    required int inx1032417390,
    required List<DxaRouteWithModalRederence> qng986357682,
    required List<Q958539657> mz916463452,
    required bool i614815927,
    required bool hjt633508229,
    required bool byu884418173,
    required bool il901482457,
    required List<Dc627939635> ncb229772916,
    required Q72708417? ww876938175,
  }) : super.createFinished(
          cqu459293245: cqu459293245,
          yh212009434: yh212009434,
          m652311908: m652311908,
          inx1032417390: inx1032417390,
          qng986357682: qng986357682,
          mz916463452: mz916463452,
          i614815927: i614815927,
          hjt633508229: hjt633508229,
          byu884418173: byu884418173,
          il901482457: il901482457,
          ncb229772916: ncb229772916,
          ww876938175: ww876938175,
        );
}
