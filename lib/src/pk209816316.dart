import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/ie1031390190.dart';
import 'package:medallia_dxa/src/mby681535094.dart';
import 'package:medallia_dxa/src/feb452801672.dart';
import 'package:medallia_dxa/src/e304042568.dart';
import 'package:medallia_dxa/src/mk966267039.dart';

@immutable
class P686664661 {
  final String o459293250;
  final String g652311835;
  final int h212009381;
  final int? h1032417297;
  final bool yzd633508346;
  final List<DxaRouteWithModalRederence> j986357709;
  final List<Sio958539766> b916463395;
  final bool y614815944;

  final bool cko884418050;
  final bool a901482406;
  final U72708414? ujw876938176;
  final List<S627939660> f229772811;

  //
  List<Oa666222770> get lcu231563447 {
    return b916463395
        .whereType<Oa666222770>()
        .where((at286662687) => !zu399594162.contains(at286662687))
        .toList()
      ..removeWhere(
        (r412699800) => r412699800.v1001734298.navigator == null,
      );
  }

  bool get bkt370874801 => j986357709.last.bjv501560645;

  Element get tc313789952 =>
      R583050654.fwk892083481.is759432974.t405157136!;

  bool get vt821948647 {
    return j986357709.every((r412699800) => r412699800 is Oa666222770);
  }

  List<Oa666222770> get zu399594162 {
    final List<Oa666222770> vus786463840 = [];
    for (final qo67975413 in j986357709) {
      vus786463840.add(qo67975413.vd588000861());
    }
    return vus786463840;
  }

  Oa666222770 get mo833759975 {
    final DxaRouteWithModalRederence u22218588 = j986357709.last;

    return u22218588.vd588000861();
  }

  bool get d243853000 =>
      j986357709.any((r412699800) => r412699800.v1001734298.navigator == null);

  bool get y368021493 =>
      !j986357709.any((r412699800) => r412699800 is Oa666222770);

  final bool fsf469235025;
  int get eho161819108 => o459293250.hashCode ^ h212009381.hashCode;

  P686664661({
    required this.o459293250,
    required this.g652311835,
    required this.h212009381,
    required this.j986357709,
    required this.b916463395,
    required this.h1032417297,
    required this.fsf469235025,
    required this.y614815944,
    required this.yzd633508346,
    required this.cko884418050,
    required this.a901482406,
    required this.ujw876938176,
  }) : f229772811 = [];

  P686664661.standard({
    required this.o459293250,
    required this.g652311835,
    required this.h212009381,
    required this.j986357709,
    required this.b916463395,
    required this.cko884418050,
    required this.a901482406,
    required this.ujw876938176,
    this.h1032417297,
  })  : fsf469235025 = false,
        y614815944 = false,
        yzd633508346 = false,
        f229772811 = [];

  //f712079708
  const P686664661.createFinished({
    required this.o459293250,
    required this.h212009381,
    required this.g652311835,
    required this.h1032417297,
    required this.j986357709,
    required this.b916463395,
    required this.y614815944,
    required this.yzd633508346,
    required this.cko884418050,
    required this.a901482406,
    required this.f229772811,
    required this.ujw876938176,
  }) : fsf469235025 = true;

  Qf270265044 f712079708(int h1032417297) {
    return Qf270265044(
      o459293250: o459293250,
      g652311835: g652311835,
      j986357709: j986357709,
      b916463395: b916463395,
      h212009381: h212009381,
      h1032417297: h1032417297,
      y614815944: y614815944,
      yzd633508346: yzd633508346,
      cko884418050: cko884418050,
      a901482406: a901482406,
      ujw876938176: ujw876938176,
      f229772811: f229772811,
    );
  }

  //
  //
  P686664661 w623465549(int uk124518466) {
    return P686664661(
      o459293250: o459293250,
      g652311835: g652311835,
      h212009381: uk124518466,
      j986357709: j986357709,
      b916463395: b916463395,
      h1032417297: h1032417297,
      fsf469235025: fsf469235025,
      y614815944: y614815944,
      yzd633508346: yzd633508346,
      cko884418050: cko884418050,
      a901482406: a901482406,
      ujw876938176: ujw876938176,
    );
  }

  @override
  String toString() {
    return 'ScreenVisited(id: $o459293250, uniqueid $eho161819108, name: $g652311835, timestamp: $h212009381, endTimestamp: $h1032417297, isTabBar: $yzd633508346, finished: $fsf469235025)';
  }
}

@immutable
class S627939660 {
  final bool lm450169684;
  final Dn491807063 ji815611838;
  const S627939660({
    required this.lm450169684,
    required this.ji815611838,
  });
}

@immutable
class Qf270265044 extends P686664661 {
  @override
  int get h1032417297 => super.h1032417297!;
  const Qf270265044({
    required String o459293250,
    required int h212009381,
    required String g652311835,
    required int h1032417297,
    required List<DxaRouteWithModalRederence> j986357709,
    required List<Sio958539766> b916463395,
    required bool y614815944,
    required bool yzd633508346,
    required bool cko884418050,
    required bool a901482406,
    required List<S627939660> f229772811,
    required U72708414? ujw876938176,
  }) : super.createFinished(
          o459293250: o459293250,
          h212009381: h212009381,
          g652311835: g652311835,
          h1032417297: h1032417297,
          j986357709: j986357709,
          b916463395: b916463395,
          y614815944: y614815944,
          yzd633508346: yzd633508346,
          cko884418050: cko884418050,
          a901482406: a901482406,
          f229772811: f229772811,
          ujw876938176: ujw876938176,
        );
}
