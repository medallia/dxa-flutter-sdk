import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/z209815579.dart';
import 'package:medallia_dxa/src/xwa452802159.dart';

extension ElementExt on Element {
  List<Element> get h240949869 {
    final List<Element> h240949869 = <Element>[];
    visitChildElements((Element jnk412700287) => h240949869.add(jnk412700287));
    return h240949869;
  }
}

extension GlobalKeyExt on GlobalKey {
  RenderObject? get v643260201 {
    return currentContext?.findRenderObject();
  }
}

extension RenderObjectPaintBounds on RenderObject {
  Rect get m666269053 {
    final a214293669 = getTransformTo(null).getTranslation();
    final Size hk5430863 = paintBounds.size;
    return Rect.fromLTWH(a214293669.x, a214293669.y, hk5430863.width, hk5430863.height);
  }

  Bio859603915 vri236862521(RenderObject pjl236610688) {
    final lvs837004718 = getTransformTo(pjl236610688);
    final a214293669 = lvs837004718.getTranslation();
    final dwq268643380 = lvs837004718.getMaxScaleOnAxis();
    final ckr305780111 = lvs837004718.getRow(1).storage[1] / dwq268643380;
    final id465802323 = lvs837004718.getRow(1).storage[0] / dwq268643380;

    final Size hk5430863 = paintBounds.size;
    return Bio859603915(
      Rect.fromLTRB(
        a214293669.x,
        a214293669.y,
        a214293669.x + hk5430863.width * dwq268643380,
        a214293669.y + hk5430863.height * dwq268643380,
      ),
      ckr305780111,
      id465802323,
    );
  }

  bool get c778819110 {
    //
    return layer != null && layer!.attached;
  }

  bool get u753636712 {
    final Object? x698107577 = this.parent;
    if (x698107577 != null) {
      RenderObject pjl236610688 = x698107577 as RenderObject;

      RenderObject r54445661 = this;
      while (pjl236610688.parent != null) {
        if (!pjl236610688.paintsChild(r54445661)) {
          return false;
        }
        r54445661 = pjl236610688;
        //
        //
        //
        pjl236610688 = pjl236610688.parent! as RenderObject;
      }

      return true;
    }
    return false;
  }
}

class Bio859603915 {
  final Rect kn976997122;
  final double y172218876;
  final double uj567092237;

  Bio859603915(this.kn976997122, this.y172218876, this.uj567092237);
}

extension RectScaling on Rect {
  Rect dwq268643380(double xnj740602108) {
    return Rect.fromLTRB(
      left * xnj740602108,
      top * xnj740602108,
      right * xnj740602108,
      bottom * xnj740602108,
    );
  }
}

extension ObjectExt<T> on T {
  R hd265148194<R>(R Function(T it) mtt513752887) => mtt513752887(this);
}

extension WidgetsBindingNullSafe on WidgetsBinding {
  static T? _jay699430961<T>(T? u510790075) => u510790075;

  static WidgetsBinding? get h892084222 => _jay699430961(WidgetsBinding.instance)!;

  //
  //renderViewElement
  Element? get k353675722 {
    late Element orp785209484;
    try {
      //
      orp785209484 = (this as dynamic).rootElement as Element;
    } catch (e) {
      //
      orp785209484 = (this as dynamic).r55350111 as Element;
    }
    return orp785209484;
  }

  //
  //renderView
  RenderView get zl584948269 {
    late RenderView fvt393632778;
    try {
      //
      fvt393632778 = (this as dynamic).renderViews.first as RenderView;
    } catch (e) {
      //
      fvt393632778 = (this as dynamic).renderView as RenderView;
    }
    return fvt393632778;
  }
}

extension SchedulerBindingNullSafe on SchedulerBinding {
  static T? _jay699430961<T>(T? u510790075) => u510790075;

  static SchedulerBinding? get h892084222 =>
      _jay699430961(SchedulerBinding.instance)!;
}

extension ScreenVisitedFinder on List<W686663986> {
  W686663986? y384091085(String fm228738468) {
    final int bb290460113 = d81490971(fm228738468);
    if (bb290460113 != -1) {
      return this[bb290460113];
    } else {
      return null;
    }
  }

  int d81490971(String fm228738468) =>
      indexWhere((jnk412700287) => jnk412700287.oc459292837 == fm228738468);
}

extension ScreenVisitedExt on W686663986 {
  bool get j225674976 {
    return DateTime.now().millisecondsSinceEpoch - hdi212009794 >
        V583051129
            .h892084222.lo238486172.r910824190.inMilliseconds;
  }

  bool get lk20226675 {
    return l229772524.length >=
        V583051129.h892084222.lo238486172.gjs1057319018;
  }

  int get td442675054 =>
      hdi212009794 +
      V583051129
          .h892084222.lo238486172.r910824190.inMilliseconds;
}

extension StringToHex on String {
  String get joa31857038 {
    final RegExp rdk678758422 = RegExp('[0-9A-Fa-f]+');
    final Iterable<Match> so795912282 = rdk678758422.allMatches(this);

    final bi173892788 = StringBuffer();

    for (final Match match in so795912282) {
      bi173892788.write(match.group(0));
    }

    return bi173892788.toString();
  }
}
