import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/tm674086535.dart';

extension Gd907639324 on Element {
  List<Element> get gh240949786 {
    final List<Element> gh240949786 = <Element>[];
    visitChildElements((Element bq412700168) => gh240949786.add(bq412700168));
    return gh240949786;
  }
}

extension Sb885922430 on GlobalKey {
  RenderObject? get hs643260254 {
    return currentContext?.findRenderObject();
  }
}

extension Kf839480761 on RenderObject {
  Rect get gzm666268938 {
    final t214293714 = getTransformTo(null).getTranslation();
    final Size ib5430840 = paintBounds.size;
    return Rect.fromLTWH(t214293714.x, t214293714.y, ib5430840.width, ib5430840.height);
  }

  Tyo859603900 bz236862542(RenderObject y236610807) {
    final p837004761 = getTransformTo(y236610807);
    final t214293714 = p837004761.getTranslation();
    final ku268643395 = p837004761.getMaxScaleOnAxis();
    final xsm305780216 = p837004761.getRow(1).storage[1] / ku268643395;
    final x465802276 = p837004761.getRow(1).storage[0] / ku268643395;

    final Size ib5430840 = paintBounds.size;
    return Tyo859603900(
      Rect.fromLTRB(
        t214293714.x,
        t214293714.y,
        t214293714.x + ib5430840.width * ku268643395,
        t214293714.y + ib5430840.height * ku268643395,
      ),
      xsm305780216,
      x465802276,
    );
  }

  bool get ub778819153 {
    //
    return layer != null && layer!.attached;
  }

  bool get po753636639 {
    final Object? d698107598 = this.parent;
    if (d698107598 != null) {
      RenderObject y236610807 = d698107598 as RenderObject;

      RenderObject z54445610 = this;
      while (y236610807.parent != null) {
        if (!y236610807.paintsChild(z54445610)) {
          return false;
        }
        z54445610 = y236610807;
        //
        //
        //
        y236610807 = y236610807.parent! as RenderObject;
      }

      return true;
    }
    return false;
  }

  ScrollPosition? get hdt620771175 {
    try {
      return (this as dynamic).position as ScrollPosition;
    } catch (e) {
      return null;
    }
  }
}

class Tyo859603900 {
  final Rect yr976997237;
  final double o172218763;
  final double khc567092346;

  Tyo859603900(this.yr976997237, this.o172218763, this.khc567092346);
}

extension Ym222415524 on Rect {
  Rect ku268643395(double hb740601995) {
    return Rect.fromLTRB(
      left * hb740601995,
      top * hb740601995,
      right * hb740601995,
      bottom * hb740601995,
    );
  }
}

extension Ly217380002<T> on T {
  R r265148245<R>(R Function(T it) t513752896) => t513752896(this);
}

extension My895188206 on WidgetsBinding {
  static T? _oyq699430982<T>(T? ovs510790092) => ovs510790092;

  static WidgetsBinding? get n892084105 => _oyq699430982(WidgetsBinding.instance)!;

  //
  //renderViewElement
  Element? get zsj405157760 {
    late Element br951105047;
    try {
      //
      br951105047 = (this as dynamic).rootElement as Element;
    } catch (e) {
      //
      br951105047 = (this as dynamic).renderViewElement as Element;
    }
    return br951105047;
  }

  //
  //renderView
  RenderView get a1040687218 {
    late RenderView m933674959;
    try {
      m933674959 =
          //
          (this as dynamic).renderViews.first as RenderView;
    } catch (e) {
      //
      m933674959 = (this as dynamic).renderView as RenderView;
    }
    return m933674959;
  }
}

extension X1026640741 on SchedulerBinding {
  static T? _oyq699430982<T>(T? ovs510790092) => ovs510790092;

  static SchedulerBinding? get n892084105 =>
      _oyq699430982(SchedulerBinding.instance)!;
}

extension X621990409 on List<Wb686664005> {
  Wb686664005? knh384091066(String gns228738515) {
    final int tr290460070 = y81491052(gns228738515);
    if (tr290460070 != -1) {
      return this[tr290460070];
    } else {
      return null;
    }
  }

  int y81491052(String gns228738515) =>
      indexWhere((bq412700168) => bq412700168.uf459292882 == gns228738515);
}

extension Zo386886949 on String {
  String get ab31857145 {
    final RegExp e678758497 = RegExp('[0-9A-Fa-f]+');
    final Iterable<Match> t795912237 = e678758497.allMatches(this);

    final hit173892803 = StringBuffer();

    for (final Match ay1026139147 in t795912237) {
      hit173892803.write(ay1026139147.group(0));
    }

    return hit173892803.toString();
  }
}

extension E717913822<T> on List<int> {
  int? n696419569(int fsc572656534) {
    sort();

    int? qy98533694;

    for (final int ovs510790092 in this) {
      if (ovs510790092 == fsc572656534) {
        return ovs510790092;
      } else if (ovs510790092 < fsc572656534) {
        qy98533694 = ovs510790092;
      } else {
        break;
      }
    }
    return qy98533694;
  }
}
