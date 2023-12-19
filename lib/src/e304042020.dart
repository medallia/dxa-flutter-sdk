import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/x209815696.dart';
import 'package:medallia_dxa/src/xtn452802276.dart';

extension ElementExt on Element {
  List<Element> get z240949990 {
    final List<Element> z240949990 = <Element>[];
    visitChildElements((Element v412700404) => z240949990.add(v412700404));
    return z240949990;
  }
}

extension GlobalKeyExt on GlobalKey {
  RenderObject? get xv643260322 {
    return currentContext?.findRenderObject();
  }
}

extension RenderObjectPaintBounds on RenderObject {
  Rect get ub666269174 {
    final u214293550 = getTransformTo(null).getTranslation();
    final Size zpf5430980 = paintBounds.size;
    return Rect.fromLTWH(u214293550.x, u214293550.y, zpf5430980.width, zpf5430980.height);
  }

  Bo859603776 cif236862642(RenderObject or236610571) {
    final i837004581 = getTransformTo(or236610571);
    final u214293550 = i837004581.getTranslation();
    final b268643519 = i837004581.getMaxScaleOnAxis();
    final rm305779972 = i837004581.getRow(1).storage[1] / b268643519;
    final euq465802456 = i837004581.getRow(1).storage[0] / b268643519;

    final Size zpf5430980 = paintBounds.size;
    return Bo859603776(
      Rect.fromLTRB(
        u214293550.x,
        u214293550.y,
        u214293550.x + zpf5430980.width * b268643519,
        u214293550.y + zpf5430980.height * b268643519,
      ),
      rm305779972,
      euq465802456,
    );
  }

  bool get qhu778819245 {
    //
    return layer != null && layer!.attached;
  }

  bool get jd753636835 {
    final Object? lew698107442 = this.parent;
    if (lew698107442 != null) {
      RenderObject or236610571 = lew698107442 as RenderObject;

      RenderObject zfr54445782 = this;
      while (or236610571.parent != null) {
        if (!or236610571.paintsChild(zfr54445782)) {
          return false;
        }
        zfr54445782 = or236610571;
        //
        //
        //
        or236610571 = or236610571.parent! as RenderObject;
      }

      return true;
    }
    return false;
  }
}

class Bo859603776 {
  final Rect xr976997257;
  final double hze172218743;
  final double yab567092358;

  Bo859603776(this.xr976997257, this.hze172218743, this.yab567092358);
}

extension RectScaling on Rect {
  Rect b268643519(double vzb740601975) {
    return Rect.fromLTRB(
      left * vzb740601975,
      top * vzb740601975,
      right * vzb740601975,
      bottom * vzb740601975,
    );
  }
}

extension ObjectExt<T> on T {
  R m265148329<R>(R Function(T it) aci513753020) => aci513753020(this);
}

extension WidgetsBindingNullSafe on WidgetsBinding {
  static T? _dvn699431098<T>(T? mor510789936) => mor510789936;

  static WidgetsBinding? get fc892084085 => _dvn699431098(WidgetsBinding.instance)!;

  //
  //renderViewElement
  Element? get p353675585 {
    late Element u785209351;
    try {
      //
      u785209351 = (this as dynamic).rootElement as Element;
    } catch (e) {
      //
      u785209351 = (this as dynamic).mjg55350228 as Element;
    }
    return u785209351;
  }

  //
  //renderView
  RenderView get oxf584948390 {
    late RenderView il393632897;
    try {
      //
      il393632897 = (this as dynamic).renderViews.first as RenderView;
    } catch (e) {
      //
      il393632897 = (this as dynamic).renderView as RenderView;
    }
    return il393632897;
  }
}

extension SchedulerBindingNullSafe on SchedulerBinding {
  static T? _dvn699431098<T>(T? mor510789936) => mor510789936;

  static SchedulerBinding? get fc892084085 =>
      _dvn699431098(SchedulerBinding.instance)!;
}

extension ScreenVisitedFinder on List<Ib686664121> {
  Ib686664121? zko384090950(String ft228738351) {
    final int ps290459994 = aeu81491088(ft228738351);
    if (ps290459994 != -1) {
      return this[ps290459994];
    } else {
      return null;
    }
  }

  int aeu81491088(String ft228738351) =>
      indexWhere((v412700404) => v412700404.na459292718 == ft228738351);
}

extension ScreenVisitedExt on Ib686664121 {
  bool get une225674859 {
    return DateTime.now().millisecondsSinceEpoch - blt212009929 >
        Ka583051250
            .fc892084085.xvq238486039.dnu910824053.inMilliseconds;
  }

  bool get brt20226808 {
    return vy229772391.length >=
        Ka583051250.fc892084085.xvq238486039.we1057319137;
  }

  int get ueb442675173 =>
      blt212009929 +
      Ka583051250
          .fc892084085.xvq238486039.dnu910824053.inMilliseconds;
}

extension StringToHex on String {
  String get ab31856901 {
    final RegExp ui678758557 = RegExp('[0-9A-Fa-f]+');
    final Iterable<Match> a795912401 = ui678758557.allMatches(this);

    final jx173892671 = StringBuffer();

    for (final Match match in a795912401) {
      jx173892671.write(match.group(0));
    }

    return jx173892671.toString();
  }
}
