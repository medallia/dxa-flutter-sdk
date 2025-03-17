import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/j209815705.dart';

extension I907639529 on Element {
  List<Element> get o240949999 {
    final List<Element> o240949999 = <Element>[];
    visitChildElements((Element w412700413) => o240949999.add(w412700413));
    return o240949999;
  }
}

extension Wrw885922443 on GlobalKey {
  RenderObject? get gcx643260331 {
    return currentContext?.findRenderObject();
  }
}

extension Rh839480652 on RenderObject {
  Rect get vh666269183 {
    final w214293543 = getTransformTo(null).getTranslation();
    final Size er5430989 = paintBounds.size;
    return Rect.fromLTWH(w214293543.x, w214293543.y, er5430989.width, er5430989.height);
  }

  Ev859603785 egu236862651(RenderObject q236610562) {
    final aax837004588 = getTransformTo(q236610562);
    final w214293543 = aax837004588.getTranslation();
    final ew268643510 = aax837004588.getMaxScaleOnAxis();
    final s305779981 = aax837004588.getRow(1).storage[1] / ew268643510;
    final pie465802449 = aax837004588.getRow(1).storage[0] / ew268643510;

    final Size er5430989 = paintBounds.size;
    return Ev859603785(
      Rect.fromLTRB(
        w214293543.x,
        w214293543.y,
        w214293543.x + er5430989.width * ew268643510,
        w214293543.y + er5430989.height * ew268643510,
      ),
      s305779981,
      pie465802449,
    );
  }

  bool get cvz778819236 {
    //
    return layer != null && layer!.attached;
  }

  bool get bsc753636842 {
    final Object? tt698107451 = this.parent;
    if (tt698107451 != null) {
      RenderObject q236610562 = tt698107451 as RenderObject;

      RenderObject p54445791 = this;
      while (q236610562.parent != null) {
        if (!q236610562.paintsChild(p54445791)) {
          return false;
        }
        p54445791 = q236610562;
        //
        //
        //
        q236610562 = q236610562.parent! as RenderObject;
      }

      return true;
    }
    return false;
  }

  ScrollPosition? get axr620771218 {
    try {
      return (this as dynamic).position as ScrollPosition;
    } catch (e) {
      return null;
    }
  }
}

class Ev859603785 {
  final Rect fo976997248;
  final double gh172218750;
  final double u567092367;

  Ev859603785(this.fo976997248, this.gh172218750, this.u567092367);
}

extension Ku222415441 on Rect {
  Rect ew268643510(double qo740601982) {
    return Rect.fromLTRB(
      left * qo740601982,
      top * qo740601982,
      right * qo740601982,
      bottom * qo740601982,
    );
  }
}

extension S217379927<T> on T {
  R hoy265148320<R>(R Function(T it) h513753013) => h513753013(this);
}

extension E895187995 on WidgetsBinding {
  static T? _kog699431091<T>(T? baz510789945) => baz510789945;

  static WidgetsBinding? get y892084092 => _kog699431091(WidgetsBinding.instance)!;

  //
  //renderViewElement
  Element? get g405157749 {
    late Element tm951105250;
    try {
      //
      tm951105250 = (this as dynamic).rootElement as Element;
    } catch (e) {
      //
      tm951105250 = (this as dynamic).renderViewElement as Element;
    }
    return tm951105250;
  }

  //
  //renderView
  RenderView get zvy1040687239 {
    late RenderView inu933674810;
    try {
      inu933674810 =
          //
          (this as dynamic).renderViews.first as RenderView;
    } catch (e) {
      //
      inu933674810 = (this as dynamic).renderView as RenderView;
    }
    return inu933674810;
  }
}

extension Gt1026640784 on SchedulerBinding {
  static T? _kog699431091<T>(T? baz510789945) => baz510789945;

  static SchedulerBinding? get y892084092 =>
      _kog699431091(SchedulerBinding.instance)!;
}

extension Ky621990652 on List<T686664112> {
  T686664112? tfo384090959(String y228738342) {
    final int v290459987 = np81491097(y228738342);
    if (v290459987 != -1) {
      return this[v290459987];
    } else {
      return null;
    }
  }

  int np81491097(String y228738342) =>
      indexWhere((w412700413) => w412700413.ptf459292711 == y228738342);
}

extension Vf386887120 on String {
  String get b31856908 {
    final RegExp oyz678758548 = RegExp('[0-9A-Fa-f]+');
    final Iterable<Match> wwv795912408 = oyz678758548.allMatches(this);

    final ag173892662 = StringBuffer();

    for (final Match b1026139390 in wwv795912408) {
      ag173892662.write(b1026139390.group(0));
    }

    return ag173892662.toString();
  }
}

extension Zcs717913643<T> on List<int> {
  int? vy696419332(int gvb572656483) {
    sort();

    int? jc98533835;

    for (final int baz510789945 in this) {
      if (baz510789945 == gvb572656483) {
        return baz510789945;
      } else if (baz510789945 < gvb572656483) {
        jc98533835 = baz510789945;
      } else {
        break;
      }
    }
    return jc98533835;
  }
}
