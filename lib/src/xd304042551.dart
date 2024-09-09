import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/yqb209816195.dart';

extension K907639027 on Element {
  List<Element> get f240949493 {
    final List<Element> f240949493 = <Element>[];
    visitChildElements((Element uw412699879) => f240949493.add(uw412699879));
    return f240949493;
  }
}

extension Zou885921937 on GlobalKey {
  RenderObject? get cfv643259825 {
    return currentContext?.findRenderObject();
  }
}

extension Qlw839481174 on RenderObject {
  Rect get gxx666269669 {
    final jtr214294077 = getTransformTo(null).getTranslation();
    final Size q5430487 = paintBounds.size;
    return Rect.fromLTWH(jtr214294077.x, jtr214294077.y, q5430487.width, q5430487.height);
  }

  R859603283 ng236863137(RenderObject w236611096) {
    final s837005110 = getTransformTo(w236611096);
    final jtr214294077 = s837005110.getTranslation();
    final lsl268644012 = s837005110.getMaxScaleOnAxis();
    final i305780503 = s837005110.getRow(1).storage[1] / lsl268644012;
    final wy465802955 = s837005110.getRow(1).storage[0] / lsl268644012;

    final Size q5430487 = paintBounds.size;
    return R859603283(
      Rect.fromLTRB(
        jtr214294077.x,
        jtr214294077.y,
        jtr214294077.x + q5430487.width * lsl268644012,
        jtr214294077.y + q5430487.height * lsl268644012,
      ),
      i305780503,
      wy465802955,
    );
  }

  bool get viz778818750 {
    //
    return layer != null && layer!.attached;
  }

  bool get mef753637360 {
    final Object? jj698106913 = this.parent;
    if (jj698106913 != null) {
      RenderObject w236611096 = jj698106913 as RenderObject;

      RenderObject isc54445253 = this;
      while (w236611096.parent != null) {
        if (!w236611096.paintsChild(isc54445253)) {
          return false;
        }
        isc54445253 = w236611096;
        //
        //
        //
        w236611096 = w236611096.parent! as RenderObject;
      }

      return true;
    }
    return false;
  }
}

class R859603283 {
  final Rect qf976996762;
  final double wb172219236;
  final double kt567092885;

  R859603283(this.qf976996762, this.wb172219236, this.kt567092885);
}

extension Gz222414923 on Rect {
  Rect lsl268644012(double sos740602468) {
    return Rect.fromLTRB(
      left * sos740602468,
      top * sos740602468,
      right * sos740602468,
      bottom * sos740602468,
    );
  }
}

extension Mx217380429<T> on T {
  R vy265147834<R>(R Function(T it) vv513752495) => vv513752495(this);
}

extension Knv895188481 on WidgetsBinding {
  static T? _fiw699431593<T>(T? u510790435) => u510790435;

  static WidgetsBinding? get wf892083558 => _fiw699431593(WidgetsBinding.instance)!;

  //
  //renderViewElement
  Element? get drx405157231 {
    late Element g951104760;
    try {
      //
      g951104760 = (this as dynamic).rootElement as Element;
    } catch (e) {
      //
      g951104760 = (this as dynamic).renderViewElement as Element;
    }
    return g951104760;
  }

  //
  //renderView
  RenderView get t1040687773 {
    late RenderView uxf933674272;
    try {
      uxf933674272 =
          //
          (this as dynamic).renderViews.first as RenderView;
    } catch (e) {
      //
      uxf933674272 = (this as dynamic).renderView as RenderView;
    }
    return uxf933674272;
  }
}

extension Dw1026640266 on SchedulerBinding {
  static T? _fiw699431593<T>(T? u510790435) => u510790435;

  static SchedulerBinding? get wf892083558 =>
      _fiw699431593(SchedulerBinding.instance)!;
}

extension Lzn621990118 on List<Cr686664618> {
  Cr686664618? qty384090453(String jxw228738876) {
    final int f290460489 = r81491587(jxw228738876);
    if (f290460489 != -1) {
      return this[f290460489];
    } else {
      return null;
    }
  }

  int r81491587(String jxw228738876) =>
      indexWhere((uw412699879) => uw412699879.cqu459293245 == jxw228738876);
}

extension Oo386887626 on String {
  String get ta31857430 {
    final RegExp q678759054 = RegExp('[0-9A-Fa-f]+');
    final Iterable<Match> x795912898 = q678759054.allMatches(this);

    final i173893164 = StringBuffer();

    for (final Match f1026139876 in x795912898) {
      i173893164.write(f1026139876.group(0));
    }

    return i173893164.toString();
  }
}
