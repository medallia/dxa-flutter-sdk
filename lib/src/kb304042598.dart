import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/ic209816274.dart';
import 'package:medallia_dxa/src/e452801702.dart';

extension Mpq907638946 on Element {
  List<Element> get mg240949412 {
    final List<Element> mg240949412 = <Element>[];
    visitChildElements((Element yte412699830) => mg240949412.add(yte412699830));
    return mg240949412;
  }
}

extension Qep885921984 on GlobalKey {
  RenderObject? get pii643259872 {
    return currentContext?.findRenderObject();
  }
}

extension Fk839481095 on RenderObject {
  Rect get biw666269620 {
    final tjk214294124 = getTransformTo(null).getTranslation();
    final Size dv5430406 = paintBounds.size;
    return Rect.fromLTWH(tjk214294124.x, tjk214294124.y, dv5430406.width, dv5430406.height);
  }

  If859603202 n236863216(RenderObject bx236611145) {
    final mqp837005159 = getTransformTo(bx236611145);
    final tjk214294124 = mqp837005159.getTranslation();
    final li268644093 = mqp837005159.getMaxScaleOnAxis();
    final t305780550 = mqp837005159.getRow(1).storage[1] / li268644093;
    final ce465802906 = mqp837005159.getRow(1).storage[0] / li268644093;

    final Size dv5430406 = paintBounds.size;
    return If859603202(
      Rect.fromLTRB(
        tjk214294124.x,
        tjk214294124.y,
        tjk214294124.x + dv5430406.width * li268644093,
        tjk214294124.y + dv5430406.height * li268644093,
      ),
      t305780550,
      ce465802906,
    );
  }

  bool get mla778818799 {
    //
    return layer != null && layer!.attached;
  }

  bool get bl753637281 {
    final Object? z698106992 = this.parent;
    if (z698106992 != null) {
      RenderObject bx236611145 = z698106992 as RenderObject;

      RenderObject fwy54445204 = this;
      while (bx236611145.parent != null) {
        if (!bx236611145.paintsChild(fwy54445204)) {
          return false;
        }
        fwy54445204 = bx236611145;
        //
        //
        //
        bx236611145 = bx236611145.parent! as RenderObject;
      }

      return true;
    }
    return false;
  }
}

class If859603202 {
  final Rect ku976996811;
  final double mt172219189;
  final double rwy567092932;

  If859603202(this.ku976996811, this.mt172219189, this.rwy567092932);
}

extension Nu222414874 on Rect {
  Rect li268644093(double i740602421) {
    return Rect.fromLTRB(
      left * i740602421,
      top * i740602421,
      right * i740602421,
      bottom * i740602421,
    );
  }
}

extension Ii217380380<T> on T {
  R mr265147883<R>(R Function(T it) udy513752574) => udy513752574(this);
}

extension N895188560 on WidgetsBinding {
  static T? _v699431672<T>(T? iit510790514) => iit510790514;

  static WidgetsBinding? get vpo892083511 => _v699431672(WidgetsBinding.instance)!;

  //
  //renderViewElement
  Element? get jur353676035 {
    late Element v785209925;
    try {
      //
      v785209925 = (this as dynamic).rootElement as Element;
    } catch (e) {
      //
      v785209925 = (this as dynamic).px55349654 as Element;
    }
    return v785209925;
  }

  //
  //renderView
  RenderView get bz584947940 {
    late RenderView rpl393633475;
    try {
      //
      rpl393633475 = (this as dynamic).renderViews.first as RenderView;
    } catch (e) {
      //
      rpl393633475 = (this as dynamic).renderView as RenderView;
    }
    return rpl393633475;
  }
}

extension Bd1026640347 on SchedulerBinding {
  static T? _v699431672<T>(T? iit510790514) => iit510790514;

  static SchedulerBinding? get vpo892083511 =>
      _v699431672(SchedulerBinding.instance)!;
}

extension Kag621990071 on List<Szr686664699> {
  Szr686664699? v384090372(String q228738925) {
    final int f290460440 = bb81491666(q228738925);
    if (f290460440 != -1) {
      return this[f290460440];
    } else {
      return null;
    }
  }

  int bb81491666(String q228738925) =>
      indexWhere((yte412699830) => yte412699830.i459293292 == q228738925);
}

extension F391512052 on Szr686664699 {
  bool get b225674281 {
    return DateTime.now().millisecondsSinceEpoch - r212009355 >
        Pg583050672
            .vpo892083511.i238485589.vi910823479.inMilliseconds;
  }

  bool get jss20226234 {
    return l229772837.length >=
        Pg583050672.vpo892083511.i238485589.ojl1057319587;
  }

  int get q442674599 =>
      r212009355 +
      Pg583050672
          .vpo892083511.i238485589.vi910823479.inMilliseconds;
}

extension E386887579 on String {
  String get o31857479 {
    final RegExp yrv678759135 = RegExp('[0-9A-Fa-f]+');
    final Iterable<Match> k795912851 = yrv678759135.allMatches(this);

    final a173893245 = StringBuffer();

    for (final Match r1026139829 in k795912851) {
      a173893245.write(r1026139829.group(0));
    }

    return a173893245.toString();
  }
}
