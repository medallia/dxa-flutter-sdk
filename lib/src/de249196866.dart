import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/ke674085959.dart';

extension V907639004 on Element {
  List<Element> get ve240949466 {
    final List<Element> ve240949466 = <Element>[];
    visitChildElements((Element m412699848) => ve240949466.add(m412699848));
    return ve240949466;
  }
}

extension Hg885921982 on GlobalKey {
  RenderObject? get i643259806 {
    return currentContext?.findRenderObject();
  }
}

extension Yl839481209 on RenderObject {
  Rect get wz666269642 {
    final hm214294034 = getTransformTo(null).getTranslation();
    final Size og5430520 = paintBounds.size;
    return Rect.fromLTWH(hm214294034.x, hm214294034.y, og5430520.width, og5430520.height);
  }

  Z859603324 htq236863118(RenderObject plj236611127) {
    final z837005081 = getTransformTo(plj236611127);
    final hm214294034 = z837005081.getTranslation();
    final fp268643971 = z837005081.getMaxScaleOnAxis();
    final i305780536 = z837005081.getRow(1).storage[1] / fp268643971;
    final s465802980 = z837005081.getRow(1).storage[0] / fp268643971;

    final Size og5430520 = paintBounds.size;
    return Z859603324(
      Rect.fromLTRB(
        hm214294034.x,
        hm214294034.y,
        hm214294034.x + og5430520.width * fp268643971,
        hm214294034.y + og5430520.height * fp268643971,
      ),
      i305780536,
      s465802980,
    );
  }

  bool get a778818705 {
    //
    return layer != null && layer!.attached;
  }

  bool get kvb753637343 {
    final Object? mtk698106894 = this.parent;
    if (mtk698106894 != null) {
      RenderObject plj236611127 = mtk698106894 as RenderObject;

      RenderObject j54445290 = this;
      while (plj236611127.parent != null) {
        if (!plj236611127.paintsChild(j54445290)) {
          return false;
        }
        j54445290 = plj236611127;
        //
        //
        //
        plj236611127 = plj236611127.parent! as RenderObject;
      }

      return true;
    }
    return false;
  }

  ScrollPosition? get y620770727 {
    try {
      return (this as dynamic).position as ScrollPosition;
    } catch (e) {
      return null;
    }
  }
}

class Z859603324 {
  final Rect z976996789;
  final double e172219211;
  final double bs567092922;

  Z859603324(this.z976996789, this.e172219211, this.bs567092922);
}

extension Dqr222414948 on Rect {
  Rect fp268643971(double srl740602443) {
    return Rect.fromLTRB(
      left * srl740602443,
      top * srl740602443,
      right * srl740602443,
      bottom * srl740602443,
    );
  }
}

extension Too217380450<T> on T {
  R rct265147797<R>(R Function(T it) j513752448) => j513752448(this);
}

extension Ur895188526 on WidgetsBinding {
  static T? _vrl699431558<T>(T? fch510790412) => fch510790412;

  static WidgetsBinding? get gj892083529 => _vrl699431558(WidgetsBinding.instance)!;

  //
  //renderViewElement
  Element? get m405157184 {
    late Element ku951104727;
    try {
      //
      ku951104727 = (this as dynamic).rootElement as Element;
    } catch (e) {
      //
      ku951104727 = (this as dynamic).renderViewElement as Element;
    }
    return ku951104727;
  }

  //
  //renderView
  RenderView get los1040687794 {
    late RenderView ciz933674255;
    try {
      ciz933674255 =
          //
          (this as dynamic).renderViews.first as RenderView;
    } catch (e) {
      //
      ciz933674255 = (this as dynamic).renderView as RenderView;
    }
    return ciz933674255;
  }
}

extension V1026640293 on SchedulerBinding {
  static T? _vrl699431558<T>(T? fch510790412) => fch510790412;

  static SchedulerBinding? get gj892083529 =>
      _vrl699431558(SchedulerBinding.instance)!;
}

extension Tr621990089 on List<X686664581> {
  X686664581? ga384090490(String t228738835) {
    final int in290460518 = gl81491628(t228738835);
    if (in290460518 != -1) {
      return this[in290460518];
    } else {
      return null;
    }
  }

  int gl81491628(String t228738835) =>
      indexWhere((m412699848) => m412699848.kjb459293202 == t228738835);
}

extension Nw386887653 on String {
  String get x31857465 {
    final RegExp m678759073 = RegExp('[0-9A-Fa-f]+');
    final Iterable<Match> ki795912941 = m678759073.allMatches(this);

    final cyn173893123 = StringBuffer();

    for (final Match tvd1026139851 in ki795912941) {
      cyn173893123.write(tvd1026139851.group(0));
    }

    return cyn173893123.toString();
  }
}

extension Gy717913118<T> on List<int> {
  int? h696419889(int vv572655958) {
    sort();

    int? bs98534398;

    for (final int fch510790412 in this) {
      if (fch510790412 == vv572655958) {
        return fch510790412;
      } else if (fch510790412 < vv572655958) {
        bs98534398 = fch510790412;
      } else {
        break;
      }
    }
    return bs98534398;
  }
}
