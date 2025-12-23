import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/z674086197.dart';

extension Kf907639214 on Element {
  List<Element> get o240949672 {
    final List<Element> o240949672 = <Element>[];
    visitChildElements((Element v412700090) => o240949672.add(v412700090));
    return o240949672;
  }
}

extension Ex885922252 on GlobalKey {
  RenderObject? get oif643259628 {
    return currentContext?.findRenderObject();
  }
}

extension T839480843 on RenderObject {
  Rect get qyd666269368 {
    final v214294368 = getTransformTo(null).getTranslation();
    final Size g5430666 = paintBounds.size;
    return Rect.fromLTWH(v214294368.x, v214294368.y, g5430666.width, g5430666.height);
  }

  J859602958 tcv236863484(RenderObject cm236611397) {
    final b837004907 = getTransformTo(cm236611397);
    final v214294368 = b837004907.getTranslation();
    final bse268644337 = b837004907.getMaxScaleOnAxis();
    final dlm305780298 = b837004907.getRow(1).storage[1] / bse268644337;
    final lir465803158 = b837004907.getRow(1).storage[0] / bse268644337;

    final Size g5430666 = paintBounds.size;
    return J859602958(
      Rect.fromLTRB(
        v214294368.x,
        v214294368.y,
        v214294368.x + g5430666.width * bse268644337,
        v214294368.y + g5430666.height * bse268644337,
      ),
      dlm305780298,
      lir465803158,
    );
  }

  bool get iwj778819043 {
    //
    return layer != null && layer!.attached;
  }

  bool get m753637037 {
    final Object? la698107260 = this.parent;
    if (la698107260 != null) {
      RenderObject cm236611397 = la698107260 as RenderObject;

      RenderObject x54445464 = this;
      while (cm236611397.parent != null) {
        if (!cm236611397.paintsChild(x54445464)) {
          return false;
        }
        x54445464 = cm236611397;
        //
        //
        //
        cm236611397 = cm236611397.parent! as RenderObject;
      }

      return true;
    }
    return false;
  }

  ScrollPosition? get es620770517 {
    try {
      return (this as dynamic).position as ScrollPosition;
    } catch (e) {
      return null;
    }
  }
}

class J859602958 {
  final Rect n976996551;
  final double tql172218937;
  final double afg567093192;

  J859602958(this.n976996551, this.tql172218937, this.afg567093192);
}

extension Bbp222415126 on Rect {
  Rect bse268644337(double oic740602681) {
    return Rect.fromLTRB(
      left * oic740602681,
      top * oic740602681,
      right * oic740602681,
      bottom * oic740602681,
    );
  }
}

extension Lj217380624<T> on T {
  R fg265147623<R>(R Function(T it) l513752306) => l513752306(this);
}

extension Al895188828 on WidgetsBinding {
  static T? _u699431924<T>(T? qdt510790270) => qdt510790270;

  static WidgetsBinding? get buw892083259 => _u699431924(WidgetsBinding.instance)!;

  //
  //renderViewElement
  Element? get wm405156914 {
    late Element c951104933;
    try {
      //
      c951104933 = (this as dynamic).rootElement as Element;
    } catch (e) {
      //
      c951104933 = (this as dynamic).renderViewElement as Element;
    }
    return c951104933;
  }

  //
  //renderView
  RenderView get v1040688064 {
    late RenderView j933674109;
    try {
      j933674109 =
          //
          (this as dynamic).renderViews.first as RenderView;
    } catch (e) {
      //
      j933674109 = (this as dynamic).renderView as RenderView;
    }
    return j933674109;
  }
}

extension Ftq1026640087 on SchedulerBinding {
  static T? _u699431924<T>(T? qdt510790270) => qdt510790270;

  static SchedulerBinding? get buw892083259 =>
      _u699431924(SchedulerBinding.instance)!;
}

extension Q621990331 on List<S686664439> {
  S686664439? ir384090120(String epz228738657) {
    final int y290460180 = jqk81491934(epz228738657);
    if (y290460180 != -1) {
      return this[y290460180];
    } else {
      return null;
    }
  }

  int jqk81491934(String epz228738657) =>
      indexWhere((v412700090) => v412700090.iks459293536 == epz228738657);
}

extension H386887319 on String {
  String get rzw31857227 {
    final RegExp ot678759379 = RegExp('[0-9A-Fa-f]+');
    final Iterable<Match> xx795913119 = ot678759379.allMatches(this);

    final g173893489 = StringBuffer();

    for (final Match dmp1026140089 in xx795913119) {
      g173893489.write(dmp1026140089.group(0));
    }

    return g173893489.toString();
  }
}

extension P717913452<T> on List<int> {
  int? ka696420163(int rjt572655652) {
    sort();

    int? bo98534028;

    for (final int qdt510790270 in this) {
      if (qdt510790270 == rjt572655652) {
        return qdt510790270;
      } else if (qdt510790270 < rjt572655652) {
        bo98534028 = qdt510790270;
      } else {
        break;
      }
    }
    return bo98534028;
  }
}
