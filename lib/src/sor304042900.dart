import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/nvt209816352.dart';
import 'package:medallia_dxa/src/cwx452801876.dart';

extension Ab907639120 on Element {
  List<Element> get vpo240949590 {
    final List<Element> vpo240949590 = <Element>[];
    visitChildElements((Element hpp412699972) => vpo240949590.add(hpp412699972));
    return vpo240949590;
  }
}

extension Xv885922098 on GlobalKey {
  RenderObject? get vuh643259410 {
    return currentContext?.findRenderObject();
  }
}

extension H839481077 on RenderObject {
  Rect get ws666269254 {
    final g214294430 = getTransformTo(null).getTranslation();
    final Size n5430644 = paintBounds.size;
    return Rect.fromLTWH(g214294430.x, g214294430.y, n5430644.width, n5430644.height);
  }

  Jx859603184 pfo236863234(RenderObject wi236611515) {
    final xc837004949 = getTransformTo(wi236611515);
    final g214294430 = xc837004949.getTranslation();
    final b268644111 = xc837004949.getMaxScaleOnAxis();
    final gi305780404 = xc837004949.getRow(1).storage[1] / b268644111;
    final ojd465803112 = xc837004949.getRow(1).storage[0] / b268644111;

    final Size n5430644 = paintBounds.size;
    return Jx859603184(
      Rect.fromLTRB(
        g214294430.x,
        g214294430.y,
        g214294430.x + n5430644.width * b268644111,
        g214294430.y + n5430644.height * b268644111,
      ),
      gi305780404,
      ojd465803112,
    );
  }

  bool get gpv778818845 {
    //
    return layer != null && layer!.attached;
  }

  bool get mq753636947 {
    final Object? cr698107266 = this.parent;
    if (cr698107266 != null) {
      RenderObject wi236611515 = cr698107266 as RenderObject;

      RenderObject dzs54445414 = this;
      while (wi236611515.parent != null) {
        if (!wi236611515.paintsChild(dzs54445414)) {
          return false;
        }
        dzs54445414 = wi236611515;
        //
        //
        //
        wi236611515 = wi236611515.parent! as RenderObject;
      }

      return true;
    }
    return false;
  }
}

class Jx859603184 {
  final Rect q976996409;
  final double oz172219079;
  final double yl567093046;

  Jx859603184(this.q976996409, this.oz172219079, this.yl567093046);
}

extension Nbl222415336 on Rect {
  Rect b268644111(double j740602823) {
    return Rect.fromLTRB(
      left * j740602823,
      top * j740602823,
      right * j740602823,
      bottom * j740602823,
    );
  }
}

extension Sj217380846<T> on T {
  R wrb265147417<R>(R Function(T it) mo513752076) => mo513752076(this);
}

extension Wl895188898 on WidgetsBinding {
  static T? _dl699431690<T>(T? rjc510790272) => rjc510790272;

  static WidgetsBinding? get ss892083397 => _dl699431690(WidgetsBinding.instance)!;

  //
  //renderViewElement
  Element? get eji405157068 {
    late Element ju951104859;
    try {
      //
      ju951104859 = (this as dynamic).rootElement as Element;
    } catch (e) {
      //
      ju951104859 = (this as dynamic).renderViewElement as Element;
    }
    return ju951104859;
  }

  //
  //renderView
  RenderView get sbv1040687934 {
    late RenderView g933674115;
    try {
      g933674115 =
          //
          (this as dynamic).renderViews.first as RenderView;
    } catch (e) {
      //
      g933674115 = (this as dynamic).renderView as RenderView;
    }
    return g933674115;
  }
}

extension Pqy1026639913 on SchedulerBinding {
  static T? _dl699431690<T>(T? rjc510790272) => rjc510790272;

  static SchedulerBinding? get ss892083397 =>
      _dl699431690(SchedulerBinding.instance)!;
}

extension Q621990213 on List<I686664201> {
  I686664201? ax384090358(String ayv228738719) {
    final int i290460394 = dy81491744(ayv228738719);
    if (i290460394 != -1) {
      return this[i290460394];
    } else {
      return null;
    }
  }

  int dy81491744(String ayv228738719) =>
      indexWhere((hpp412699972) => hpp412699972.nvn459293598 == ayv228738719);
}

extension Jn391511558 on I686664201 {
  bool get m225674715 {
    return DateTime.now().millisecondsSinceEpoch - ok212009081 >
        Yt583050306
            .ss892083397.le238485927.lb910823877.inMilliseconds;
  }

  bool get ten20226376 {
    return c229773271.length >=
        Yt583050306.ss892083397.le238485927.f1057319761;
  }

  int get heh442674261 =>
      ok212009081 +
      Yt583050306
          .ss892083397.le238485927.lb910823877.inMilliseconds;
}

extension R386887273 on String {
  String get yn31857333 {
    final RegExp kp678759213 = RegExp('[0-9A-Fa-f]+');
    final Iterable<Match> oo795913057 = kp678759213.allMatches(this);

    final ow173893519 = StringBuffer();

    for (final Match x1026139975 in oo795913057) {
      ow173893519.write(x1026139975.group(0));
    }

    return ow173893519.toString();
  }
}
