import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/zur678251315.dart';
import 'package:medallia_dxa/src/tr1040136189.dart';
import 'package:medallia_dxa/src/kmb249196592.dart';

class Jt221967831 {
  Jt221967831();

  final Map<int, Viu857030836> _f574180115 = {};

  void qg174100474(
    ScrollNotification jaw1049996572,
  ) {
    final a95499921 =
        fs84513255(jaw1049996572);

    final vvs224376322 = a95499921?.wb317248112();
    if (vvs224376322 == null) {
      return;
    }

    switch (vvs224376322.tel639058398) {
      case C243187984.clk81536050:
        _dle924392813(vvs224376322);
        break;

      case C243187984.qb916957715:
        _c287566881(vvs224376322);
        break;

      default:
        return;
    }
  }

  Viu857030836? d878563070(
    Set<Cu726056914> dlu896335889,
  ) {
    final List<Viu857030836> gw295269937 = [];
    for (final uba318911831 in _f574180115.entries) {
      final ahp891791102 =
          uba318911831.value.wm927849953;

      final z48874107 = dlu896335889;

      final ka924915937 = ahp891791102.intersection(z48874107);
      if (ka924915937.isNotEmpty) {
        gw295269937.add(uba318911831.value);
      }
    }

    if (gw295269937.isEmpty) {
      return null;
    }
    if (gw295269937.length == 1) {
      _f574180115.remove(
        gw295269937.first.s269889765.z528465737(),
      );
      return gw295269937.first;
    }

    //
    //
    if (gw295269937.length > 1) {
      _f574180115.remove(
        gw295269937.first.s269889765.z528465737(),
      );
      return gw295269937.first;
    }

    return null;
  }

  void _dle924392813(
    Lgq519987293 s328412573,
  ) {
    if (_f574180115
        .containsKey(s328412573.z528465737())) {
      _f574180115.remove(s328412573.z528465737());
    }
    final Viu857030836 n519388912 = Viu857030836(
      s269889765: s328412573,
    );
    _f574180115[s328412573.z528465737()] =
        n519388912;
  }

  void _c287566881(
    Lgq519987293 rhh123216070,
  ) {
    final wno344712964 =
        _f574180115[rhh123216070.z528465737()];

    wno344712964?.cb748999862(rhh123216070);
  }

  void q972929047() {
    _f574180115.clear();
  }

  //ScrollStartNotificationScrollUpdateNotificationOverscrollNotification
  Ewh347441988? fs84513255(
    ScrollNotification y445764681,
  ) {
    final ScrollMetrics wdm283408761 = y445764681.metrics;
    final BuildContext? co180728812 = y445764681.context;
    int? gc124146749;
    Offset? saz185396218;
    C243187984? tel639058398;
    if (y445764681 is ScrollStartNotification) {
      tel639058398 = C243187984.clk81536050;
      saz185396218 = y445764681.dragDetails?.globalPosition;
      gc124146749 =
          y445764681.dragDetails?.sourceTimeStamp?.inMicroseconds;
    }

    if (y445764681 is ScrollUpdateNotification) {
      tel639058398 = C243187984.qb916957715;
      saz185396218 = y445764681.dragDetails?.globalPosition;

      gc124146749 =
          y445764681.dragDetails?.sourceTimeStamp?.inMicroseconds;
    }

    if (y445764681 is OverscrollNotification) {
      tel639058398 = C243187984.qb916957715;
      saz185396218 = y445764681.dragDetails?.globalPosition;

      gc124146749 =
          y445764681.dragDetails?.sourceTimeStamp?.inMicroseconds;
    }

    if (y445764681 is ScrollEndNotification) {
      tel639058398 = C243187984.gxt818185978;
    }

    if (tel639058398 == null) {
      return null;
    }

    final oif643259628 = co180728812?.findRenderObject();

    return Ewh347441988(
      wdm283408761: wdm283408761,
      co180728812: co180728812,
      tel639058398: tel639058398,
      gc124146749: gc124146749,
      oif643259628: oif643259628,
      saz185396218: saz185396218,
    );
  }

  Hqy31252620? k182363837(
    Viu857030836 kfe274872621,
    Cu726056914 utg871578108,
  ) {
    final int h971915734 =
        utg871578108.aa921636322;

    final zdn484283370 = kfe274872621.wm927849953
        .map((m352813698) => m352813698.aa921636322)
        .toList();

    final jzo166207876 =
        zdn484283370.ka696420163(h971915734);

    late final Lgq519987293? vvs224376322;
    if (jzo166207876 == null) {
      vvs224376322 = kfe274872621.s269889765;
    } else {
      vvs224376322 = kfe274872621
          .mgx236850292(jzo166207876);
    }

    if (vvs224376322 == null) {
      return null;
    }
    final o680438763 = vvs224376322.wdm283408761.axis;
    final t557611714 = vvs224376322.wdm283408761.pixels.toInt();
    final wx962168893 = vvs224376322.co180728812.findRenderObject();
    final fmr1022731017 = vvs224376322.co180728812
        .findAncestorRenderObjectOfType<RenderSemanticsGestureHandler>();

    final ez642395447 = wx962168893.hashCode;
    final e298744593 = fmr1022731017?.hashCode;

    return Hqy31252620(
      qi231120225: o680438763 == Axis.horizontal ? t557611714 : 0,
      f940896709: o680438763 == Axis.vertical ? t557611714 : 0,
      e298744593: e298744593,
      pd328021534: ez642395447,
    );
  }
}
