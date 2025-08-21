//
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/tq1040135884.dart';

typedef Xa492495342 = int;
typedef N28320912 = int;

class Fk31252925 {
  final int d231119952;
  final int c940896500;
  final N28320912 bxl328021807;
  final N28320912? vrh298744352;

  Fk31252925({
    required this.d231119952,
    required this.c940896500,
    required this.bxl328021807,
    required this.vrh298744352,
  });

  factory Fk31252925.withAxis({
    required Axis pcz680438490,
    required int l185851849,
    required N28320912 bxl328021807,
    required N28320912? gph98049393,
  }) {
    return Fk31252925(
      d231119952: pcz680438490 == Axis.horizontal ? l185851849 : 0,
      c940896500: pcz680438490 == Axis.vertical ? l185851849 : 0,
      vrh298744352: gph98049393,
      bxl328021807: bxl328021807,
    );
  }
}

//ScrollNotificationH519987564
class Cd347441781 {
  final ScrollMetrics f283408456;
  final Ijn243187745 b639058159;
  final BuildContext? o180728541;
  final int? qk124146956;
  final RenderObject? hmq643259869;
  final Offset? qt185395915;
  Cd347441781({
    required this.f283408456,
    required this.o180728541,
    required this.b639058159,
    required this.qk124146956,
    required this.hmq643259869,
    required this.qt185395915,
  });

  bool get whn447504562 =>
      o180728541 != null &&
      qk124146956 != null &&
      hmq643259869 != null &&
      qt185395915 != null;
  int? ti528465528() => hmq643259869?.hashCode;

  H519987564? td317248321() {
    if (!whn447504562) {
      return null;
    }
    return H519987564(
      f283408456: f283408456,
      o180728541: o180728541!,
      qk124146956: qk124146956!,
      hmq643259869: hmq643259869!,
      b639058159: b639058159,
      qt185395915: qt185395915!,
    );
  }
}

//
class H519987564 implements Cd347441781 {
  @override
  final ScrollMetrics f283408456;
  @override
  final Ijn243187745 b639058159;
  @override
  final BuildContext o180728541;
  @override
  final int qk124146956;
  @override
  final RenderObject hmq643259869;
  @override
  final Offset qt185395915;
  H519987564({
    required this.f283408456,
    required this.b639058159,
    required this.o180728541,
    required this.qk124146956,
    required this.hmq643259869,
    required this.qt185395915,
  });

  @override
  bool get whn447504562 => true;

  @override
  int ti528465528() {
    return hmq643259869.hashCode;
  }

  @override
  H519987564 td317248321() {
    return this;
  }
}

//
class Jay857031045 {
  final List<H519987564> szy909033945 = [];

  //
  final Set<Tg726056675> t927849680 =
      {};
  Jay857031045({
    required H519987564 ul269890004,
  }) {
    szy909033945.add(ul269890004);
    t927849680.add(
      Tg726056675(
        e921636051:
            ul269890004.qk124146956,
        scv18244472: ul269890004.qt185395915,
      ),
    );
  }

  H519987564 get ul269890004 => szy909033945.first;

  //
  void s749000071(
    H519987564 s749000071,
  ) {
    assert(
      s749000071.ti528465528() ==
          ul269890004.ti528465528(),
    );
    szy909033945.add(s749000071);
    t927849680.add(
      Tg726056675(
        e921636051:
            s749000071.qk124146956,
        scv18244472: s749000071.qt185395915,
      ),
    );
  }

  //
  H519987564? ykq236850501(int nz696663750) {
    for (final izz224376627 in szy909033945) {
      if (izz224376627.qk124146956 == nz696663750) {
        return izz224376627;
      }
    }
    return null;
  }
}

enum Ijn243187745 {
  o81536259,
  dpi916957986,
  a818186187,
}
