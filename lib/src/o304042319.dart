import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/m209816059.dart';

extension B907639691 on Element {
  List<Element> get p240950157 {
    final List<Element> p240950157 = <Element>[];
    visitChildElements((Element aty412700575) => p240950157.add(aty412700575));
    return p240950157;
  }
}

extension Lt885922793 on GlobalKey {
  RenderObject? get sx643260105 {
    return currentContext?.findRenderObject();
  }
}

extension P839480366 on RenderObject {
  Rect get n666268829 {
    final wai214293829 = getTransformTo(null).getTranslation();
    final Size kpz5431215 = paintBounds.size;
    return Rect.fromLTWH(wai214293829.x, wai214293829.y, kpz5431215.width, kpz5431215.height);
  }

  Ds859603499 za236862937(RenderObject loh236610912) {
    final gw837004366 = getTransformTo(loh236610912);
    final wai214293829 = gw837004366.getTranslation();
    final hzf268643796 = gw837004366.getMaxScaleOnAxis();
    final a305779823 = gw837004366.getRow(1).storage[1] / hzf268643796;
    final uhk465802675 = gw837004366.getRow(1).storage[0] / hzf268643796;

    final Size kpz5431215 = paintBounds.size;
    return Ds859603499(
      Rect.fromLTRB(
        wai214293829.x,
        wai214293829.y,
        wai214293829.x + kpz5431215.width * hzf268643796,
        wai214293829.y + kpz5431215.height * hzf268643796,
      ),
      a305779823,
      uhk465802675,
    );
  }

  bool get gk778819526 {
    //
    return layer != null && layer!.attached;
  }

  bool get m753636488 {
    final Object? tcp698107737 = this.parent;
    if (tcp698107737 != null) {
      RenderObject loh236610912 = tcp698107737 as RenderObject;

      RenderObject as54446013 = this;
      while (loh236610912.parent != null) {
        if (!loh236610912.paintsChild(as54446013)) {
          return false;
        }
        as54446013 = loh236610912;
        //
        //
        //
        loh236610912 = loh236610912.parent! as RenderObject;
      }

      return true;
    }
    return false;
  }
}

class Ds859603499 {
  final Rect oy976997090;
  final double fm172218396;
  final double ib567092717;

  Ds859603499(this.oy976997090, this.fm172218396, this.ib567092717);
}

extension Rjt222415667 on Rect {
  Rect hzf268643796(double dde740602140) {
    return Rect.fromLTRB(
      left * dde740602140,
      top * dde740602140,
      right * dde740602140,
      bottom * dde740602140,
    );
  }
}

extension J217380149<T> on T {
  R osu265148098<R>(R Function(T it) l513752791) => l513752791(this);
}

extension Zfl895188345 on WidgetsBinding {
  static T? _kx699431377<T>(T? dnn510789723) => dnn510789723;

  static WidgetsBinding? get rq892083742 => _kx699431377(WidgetsBinding.instance)!;

  //
  //renderViewElement
  Element? get m405157399 {
    late Element hs951105408;
    try {
      //
      hs951105408 = (this as dynamic).rootElement as Element;
    } catch (e) {
      //
      hs951105408 = (this as dynamic).renderViewElement as Element;
    }
    return hs951105408;
  }

  //
  //renderView
  RenderView get qwr1040687589 {
    late RenderView f933674584;
    try {
      f933674584 =
          //
          (this as dynamic).renderViews.first as RenderView;
    } catch (e) {
      //
      f933674584 = (this as dynamic).renderView as RenderView;
    }
    return f933674584;
  }
}

extension Eu1026640626 on SchedulerBinding {
  static T? _kx699431377<T>(T? dnn510789723) => dnn510789723;

  static SchedulerBinding? get rq892083742 =>
      _kx699431377(SchedulerBinding.instance)!;
}

extension Nl621990814 on List<Yv686663890> {
  Yv686663890? d384090669(String fss228738116) {
    final int tsy290459697 = a81491451(fss228738116);
    if (tsy290459697 != -1) {
      return this[tsy290459697];
    } else {
      return null;
    }
  }

  int a81491451(String fss228738116) =>
      indexWhere((aty412700575) => aty412700575.njo459292997 == fss228738116);
}

extension Gan386886834 on String {
  String get o31856750 {
    final RegExp fnl678758902 = RegExp('[0-9A-Fa-f]+');
    final Iterable<Match> p795912634 = fnl678758902.allMatches(this);

    final y173892948 = StringBuffer();

    for (final Match suf1026139548 in p795912634) {
      y173892948.write(suf1026139548.group(0));
    }

    return y173892948.toString();
  }
}
