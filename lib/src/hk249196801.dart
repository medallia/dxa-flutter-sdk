import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/re674085892.dart';

extension U907638943 on Element {
  List<Element> get kv240949401 {
    final List<Element> kv240949401 = <Element>[];
    visitChildElements((Element kdw412699787) => kv240949401.add(kdw412699787));
    return kv240949401;
  }
}

extension Fxc885922045 on GlobalKey {
  RenderObject? get hmq643259869 {
    return currentContext?.findRenderObject();
  }
}

extension Rj839481146 on RenderObject {
  Rect get y666269577 {
    final ezi214294097 = getTransformTo(null).getTranslation();
    final Size pk5430459 = paintBounds.size;
    return Rect.fromLTWH(ezi214294097.x, ezi214294097.y, pk5430459.width, pk5430459.height);
  }

  Md859603263 kw236863181(RenderObject s236611188) {
    final w837005146 = getTransformTo(s236611188);
    final ezi214294097 = w837005146.getTranslation();
    final mp268644032 = w837005146.getMaxScaleOnAxis();
    final q305780603 = w837005146.getRow(1).storage[1] / mp268644032;
    final bfy465802919 = w837005146.getRow(1).storage[0] / mp268644032;

    final Size pk5430459 = paintBounds.size;
    return Md859603263(
      Rect.fromLTRB(
        ezi214294097.x,
        ezi214294097.y,
        ezi214294097.x + pk5430459.width * mp268644032,
        ezi214294097.y + pk5430459.height * mp268644032,
      ),
      q305780603,
      bfy465802919,
    );
  }

  bool get r778818770 {
    //
    return layer != null && layer!.attached;
  }

  bool get to753637276 {
    final Object? h698106957 = this.parent;
    if (h698106957 != null) {
      RenderObject s236611188 = h698106957 as RenderObject;

      RenderObject s54445225 = this;
      while (s236611188.parent != null) {
        if (!s236611188.paintsChild(s54445225)) {
          return false;
        }
        s54445225 = s236611188;
        //
        //
        //
        s236611188 = s236611188.parent! as RenderObject;
      }

      return true;
    }
    return false;
  }

  ScrollPosition? get ade620770788 {
    try {
      return (this as dynamic).position as ScrollPosition;
    } catch (e) {
      return null;
    }
  }
}

class Md859603263 {
  final Rect b976996854;
  final double sdv172219144;
  final double yhu567092985;

  Md859603263(this.b976996854, this.sdv172219144, this.yhu567092985);
}

extension G222414887 on Rect {
  Rect mp268644032(double r740602376) {
    return Rect.fromLTRB(
      left * r740602376,
      top * r740602376,
      right * r740602376,
      bottom * r740602376,
    );
  }
}

extension H217380385<T> on T {
  R t265147862<R>(R Function(T it) n513752515) => n513752515(this);
}

extension Ueu895188589 on WidgetsBinding {
  static T? _x699431621<T>(T? ky510790479) => ky510790479;

  static WidgetsBinding? get u892083466 => _x699431621(WidgetsBinding.instance)!;

  //
  //renderViewElement
  Element? get b405157123 {
    late Element a951104660;
    try {
      //
      a951104660 = (this as dynamic).rootElement as Element;
    } catch (e) {
      //
      a951104660 = (this as dynamic).renderViewElement as Element;
    }
    return a951104660;
  }

  //
  //renderView
  RenderView get fdu1040687857 {
    late RenderView wyb933674316;
    try {
      wyb933674316 =
          //
          (this as dynamic).renderViews.first as RenderView;
    } catch (e) {
      //
      wyb933674316 = (this as dynamic).renderView as RenderView;
    }
    return wyb933674316;
  }
}

extension Ieu1026640358 on SchedulerBinding {
  static T? _x699431621<T>(T? ky510790479) => ky510790479;

  static SchedulerBinding? get u892083466 =>
      _x699431621(SchedulerBinding.instance)!;
}

extension Eg621990026 on List<Ujb686664646> {
  Ujb686664646? k384090425(String x228738896) {
    final int k290460453 = j81491695(x228738896);
    if (k290460453 != -1) {
      return this[k290460453];
    } else {
      return null;
    }
  }

  int j81491695(String x228738896) =>
      indexWhere((kdw412699787) => kdw412699787.bos459293265 == x228738896);
}

extension S386887590 on String {
  String get d31857530 {
    final RegExp nog678759138 = RegExp('[0-9A-Fa-f]+');
    final Iterable<Match> val795912878 = nog678759138.allMatches(this);

    final mwz173893184 = StringBuffer();

    for (final Match ra1026139784 in val795912878) {
      mwz173893184.write(ra1026139784.group(0));
    }

    return mwz173893184.toString();
  }
}

extension Abn717913181<T> on List<int> {
  int? pid696419954(int yss572655893) {
    sort();

    int? yg98534333;

    for (final int ky510790479 in this) {
      if (ky510790479 == yss572655893) {
        return ky510790479;
      } else if (ky510790479 < yss572655893) {
        yg98534333 = ky510790479;
      } else {
        break;
      }
    }
    return yg98534333;
  }
}
