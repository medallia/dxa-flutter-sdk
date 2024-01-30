import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/l209816361.dart';
import 'package:medallia_dxa/src/yh452801885.dart';

extension Zm907639129 on Element {
  List<Element> get oyp240949599 {
    final List<Element> oyp240949599 = <Element>[];
    visitChildElements((Element ttm412699981) => oyp240949599.add(ttm412699981));
    return oyp240949599;
  }
}

extension Wwn885922107 on GlobalKey {
  RenderObject? get vde643259419 {
    return currentContext?.findRenderObject();
  }
}

extension Vw839481084 on RenderObject {
  Rect get hl666269263 {
    final urc214294423 = getTransformTo(null).getTranslation();
    final Size arq5430653 = paintBounds.size;
    return Rect.fromLTWH(urc214294423.x, urc214294423.y, arq5430653.width, arq5430653.height);
  }

  Oh859603193 s236863243(RenderObject qqq236611506) {
    final mbl837004956 = getTransformTo(qqq236611506);
    final urc214294423 = mbl837004956.getTranslation();
    final zii268644102 = mbl837004956.getMaxScaleOnAxis();
    final q305780413 = mbl837004956.getRow(1).storage[1] / zii268644102;
    final cy465803105 = mbl837004956.getRow(1).storage[0] / zii268644102;

    final Size arq5430653 = paintBounds.size;
    return Oh859603193(
      Rect.fromLTRB(
        urc214294423.x,
        urc214294423.y,
        urc214294423.x + arq5430653.width * zii268644102,
        urc214294423.y + arq5430653.height * zii268644102,
      ),
      q305780413,
      cy465803105,
    );
  }

  bool get q778818836 {
    //
    return layer != null && layer!.attached;
  }

  bool get da753636954 {
    final Object? w698107275 = this.parent;
    if (w698107275 != null) {
      RenderObject qqq236611506 = w698107275 as RenderObject;

      RenderObject al54445423 = this;
      while (qqq236611506.parent != null) {
        if (!qqq236611506.paintsChild(al54445423)) {
          return false;
        }
        al54445423 = qqq236611506;
        //
        //
        //
        qqq236611506 = qqq236611506.parent! as RenderObject;
      }

      return true;
    }
    return false;
  }
}

class Oh859603193 {
  final Rect ns976996400;
  final double qgl172219086;
  final double y567093055;

  Oh859603193(this.ns976996400, this.qgl172219086, this.y567093055);
}

extension Thu222415329 on Rect {
  Rect zii268644102(double o740602830) {
    return Rect.fromLTRB(
      left * o740602830,
      top * o740602830,
      right * o740602830,
      bottom * o740602830,
    );
  }
}

extension Mn217380839<T> on T {
  R qzo265147408<R>(R Function(T it) z513752069) => z513752069(this);
}

extension X895188907 on WidgetsBinding {
  static T? _tog699431683<T>(T? hy510790281) => hy510790281;

  static WidgetsBinding? get i892083404 => _tog699431683(WidgetsBinding.instance)!;

  //
  //renderViewElement
  Element? get tty353676024 {
    late Element kf785210302;
    try {
      //
      kf785210302 = (this as dynamic).rootElement as Element;
    } catch (e) {
      //
      kf785210302 = (this as dynamic).vai55349357 as Element;
    }
    return kf785210302;
  }

  //
  //renderView
  RenderView get cw584947999 {
    late RenderView bjn393633592;
    try {
      //
      bjn393633592 = (this as dynamic).renderViews.first as RenderView;
    } catch (e) {
      //
      bjn393633592 = (this as dynamic).renderView as RenderView;
    }
    return bjn393633592;
  }
}

extension Axw1026639904 on SchedulerBinding {
  static T? _tog699431683<T>(T? hy510790281) => hy510790281;

  static SchedulerBinding? get i892083404 =>
      _tog699431683(SchedulerBinding.instance)!;
}

extension My621990220 on List<Xbi686664192> {
  Xbi686664192? y384090367(String lhg228738710) {
    final int i290460387 = c81491753(lhg228738710);
    if (i290460387 != -1) {
      return this[i290460387];
    } else {
      return null;
    }
  }

  int c81491753(String lhg228738710) =>
      indexWhere((ttm412699981) => ttm412699981.yt459293591 == lhg228738710);
}

extension H391511567 on Xbi686664192 {
  bool get q225674706 {
    return DateTime.now().millisecondsSinceEpoch - j212009072 >
        Bc583050315
            .i892083404.kpt238485934.gi910823884.inMilliseconds;
  }

  bool get j20226369 {
    return q229773278.length >=
        Bc583050315.i892083404.kpt238485934.k1057319768;
  }

  int get qa442674268 =>
      j212009072 +
      Bc583050315
          .i892083404.kpt238485934.gi910823884.inMilliseconds;
}

extension U386887264 on String {
  String get rsf31857340 {
    final RegExp e678759204 = RegExp('[0-9A-Fa-f]+');
    final Iterable<Match> lsw795913064 = e678759204.allMatches(this);

    final t173893510 = StringBuffer();

    for (final Match kd1026139982 in lsw795913064) {
      t173893510.write(kd1026139982.group(0));
    }

    return t173893510.toString();
  }
}
