import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/pk209816316.dart';
import 'package:medallia_dxa/src/feb452801672.dart';

extension I907638924 on Element {
  List<Element> get hg240949386 {
    final List<Element> hg240949386 = <Element>[];
    visitChildElements((Element r412699800) => hg240949386.add(r412699800));
    return hg240949386;
  }
}

extension Bj885922030 on GlobalKey {
  RenderObject? get n643259854 {
    return currentContext?.findRenderObject();
  }
}

extension E839481129 on RenderObject {
  Rect get u666269594 {
    final en214294082 = getTransformTo(null).getTranslation();
    final Size un5430440 = paintBounds.size;
    return Rect.fromLTWH(en214294082.x, en214294082.y, un5430440.width, un5430440.height);
  }

  Oj859603244 c236863198(RenderObject ss236611175) {
    final q837005129 = getTransformTo(ss236611175);
    final en214294082 = q837005129.getTranslation();
    final ajr268644051 = q837005129.getMaxScaleOnAxis();
    final ev305780584 = q837005129.getRow(1).storage[1] / ajr268644051;
    final rr465802932 = q837005129.getRow(1).storage[0] / ajr268644051;

    final Size un5430440 = paintBounds.size;
    return Oj859603244(
      Rect.fromLTRB(
        en214294082.x,
        en214294082.y,
        en214294082.x + un5430440.width * ajr268644051,
        en214294082.y + un5430440.height * ajr268644051,
      ),
      ev305780584,
      rr465802932,
    );
  }

  bool get h778818753 {
    //
    return layer != null && layer!.attached;
  }

  bool get d753637263 {
    final Object? q698106974 = this.parent;
    if (q698106974 != null) {
      RenderObject ss236611175 = q698106974 as RenderObject;

      RenderObject l54445242 = this;
      while (ss236611175.parent != null) {
        if (!ss236611175.paintsChild(l54445242)) {
          return false;
        }
        l54445242 = ss236611175;
        //
        //
        //
        ss236611175 = ss236611175.parent! as RenderObject;
      }

      return true;
    }
    return false;
  }
}

class Oj859603244 {
  final Rect ib976996837;
  final double s172219163;
  final double ceb567092970;

  Oj859603244(this.ib976996837, this.s172219163, this.ceb567092970);
}

extension Qu222414900 on Rect {
  Rect ajr268644051(double mm740602395) {
    return Rect.fromLTRB(
      left * mm740602395,
      top * mm740602395,
      right * mm740602395,
      bottom * mm740602395,
    );
  }
}

extension Q217380402<T> on T {
  R jyg265147845<R>(R Function(T it) gb513752528) => gb513752528(this);
}

extension Wlp895188606 on WidgetsBinding {
  static T? _vja699431638<T>(T? e510790492) => e510790492;

  static WidgetsBinding? get fwk892083481 => _vja699431638(WidgetsBinding.instance)!;

  //
  //renderViewElement
  Element? get t405157136 {
    late Element sag951104647;
    try {
      //
      sag951104647 = (this as dynamic).rootElement as Element;
    } catch (e) {
      //
      sag951104647 = (this as dynamic).renderViewElement as Element;
    }
    return sag951104647;
  }

  //
  //renderView
  RenderView get yta1040687842 {
    late RenderView uw933674335;
    try {
      uw933674335 =
          //
          (this as dynamic).renderViews.first as RenderView;
    } catch (e) {
      //
      uw933674335 = (this as dynamic).renderView as RenderView;
    }
    return uw933674335;
  }
}

extension Sx1026640373 on SchedulerBinding {
  static T? _vja699431638<T>(T? e510790492) => e510790492;

  static SchedulerBinding? get fwk892083481 =>
      _vja699431638(SchedulerBinding.instance)!;
}

extension Yq621990041 on List<P686664661> {
  P686664661? cq384090410(String ysv228738883) {
    final int g290460470 = cq81491708(ysv228738883);
    if (g290460470 != -1) {
      return this[g290460470];
    } else {
      return null;
    }
  }

  int cq81491708(String ysv228738883) =>
      indexWhere((r412699800) => r412699800.o459293250 == ysv228738883);
}

extension Xcf391512026 on P686664661 {
  bool get cov225674247 {
    return DateTime.now().millisecondsSinceEpoch - h212009381 >
        R583050654
            .fwk892083481.l238485627.kpm910823449.inMilliseconds;
  }

  bool get kuc20226196 {
    return f229772811.length >=
        R583050654.fwk892083481.l238485627.e1057319565;
  }

  int get sg442674569 =>
      h212009381 +
      R583050654
          .fwk892083481.l238485627.kpm910823449.inMilliseconds;
}

extension D386887605 on String {
  String get dsh31857513 {
    final RegExp wqf678759153 = RegExp('[0-9A-Fa-f]+');
    final Iterable<Match> m795912893 = wqf678759153.allMatches(this);

    final mw173893203 = StringBuffer();

    for (final Match nfu1026139803 in m795912893) {
      mw173893203.write(nfu1026139803.group(0));
    }

    return mw173893203.toString();
  }
}
