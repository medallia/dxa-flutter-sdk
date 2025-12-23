//
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/tr1040136189.dart';

typedef D492495071 = int;
typedef L28321185 = int;

class Hqy31252620 {
  final int qi231120225;
  final int f940896709;
  final L28321185 pd328021534;
  final L28321185? e298744593;

  Hqy31252620({
    required this.qi231120225,
    required this.f940896709,
    required this.pd328021534,
    required this.e298744593,
  });

  factory Hqy31252620.withAxis({
    required Axis o680438763,
    required int qy185851640,
    required L28321185 pd328021534,
    required L28321185? uk98049088,
  }) {
    return Hqy31252620(
      qi231120225: o680438763 == Axis.horizontal ? qy185851640 : 0,
      f940896709: o680438763 == Axis.vertical ? qy185851640 : 0,
      e298744593: uk98049088,
      pd328021534: pd328021534,
    );
  }
}

//ScrollNotificationLgq519987293
class Ewh347441988 {
  final ScrollMetrics wdm283408761;
  final C243187984 tel639058398;
  final BuildContext? co180728812;
  final int? gc124146749;
  final RenderObject? oif643259628;
  final Offset? saz185396218;
  Ewh347441988({
    required this.wdm283408761,
    required this.co180728812,
    required this.tel639058398,
    required this.gc124146749,
    required this.oif643259628,
    required this.saz185396218,
  });

  bool get r447504771 =>
      co180728812 != null &&
      gc124146749 != null &&
      oif643259628 != null &&
      saz185396218 != null;
  int? z528465737() => oif643259628?.hashCode;

  Lgq519987293? wb317248112() {
    if (!r447504771) {
      return null;
    }
    return Lgq519987293(
      wdm283408761: wdm283408761,
      co180728812: co180728812!,
      gc124146749: gc124146749!,
      oif643259628: oif643259628!,
      tel639058398: tel639058398,
      saz185396218: saz185396218!,
    );
  }
}

//
class Lgq519987293 implements Ewh347441988 {
  @override
  final ScrollMetrics wdm283408761;
  @override
  final C243187984 tel639058398;
  @override
  final BuildContext co180728812;
  @override
  final int gc124146749;
  @override
  final RenderObject oif643259628;
  @override
  final Offset saz185396218;
  Lgq519987293({
    required this.wdm283408761,
    required this.tel639058398,
    required this.co180728812,
    required this.gc124146749,
    required this.oif643259628,
    required this.saz185396218,
  });

  @override
  bool get r447504771 => true;

  @override
  int z528465737() {
    return oif643259628.hashCode;
  }

  @override
  Lgq519987293 wb317248112() {
    return this;
  }
}

//
class Viu857030836 {
  final List<Lgq519987293> z909033704 = [];

  //
  final Set<Cu726056914> wm927849953 =
      {};
  Viu857030836({
    required Lgq519987293 s269889765,
  }) {
    z909033704.add(s269889765);
    wm927849953.add(
      Cu726056914(
        aa921636322:
            s269889765.gc124146749,
        djw18244169: s269889765.saz185396218,
      ),
    );
  }

  Lgq519987293 get s269889765 => z909033704.first;

  //
  void cb748999862(
    Lgq519987293 cb748999862,
  ) {
    assert(
      cb748999862.z528465737() ==
          s269889765.z528465737(),
    );
    z909033704.add(cb748999862);
    wm927849953.add(
      Cu726056914(
        aa921636322:
            cb748999862.gc124146749,
        djw18244169: cb748999862.saz185396218,
      ),
    );
  }

  //
  Lgq519987293? mgx236850292(int a696664055) {
    for (final vvs224376322 in z909033704) {
      if (vvs224376322.gc124146749 == a696664055) {
        return vvs224376322;
      }
    }
    return null;
  }
}

enum C243187984 {
  clk81536050,
  qb916957715,
  gxt818185978,
}
