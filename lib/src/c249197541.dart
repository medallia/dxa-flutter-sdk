import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/f674086624.dart';

extension Jw907639419 on Element {
  List<Element> get zs240949885 {
    final List<Element> zs240949885 = <Element>[];
    visitChildElements((Element mbm412700271) => zs240949885.add(mbm412700271));
    return zs240949885;
  }
}

extension Giw885922329 on GlobalKey {
  RenderObject? get jm643260217 {
    return currentContext?.findRenderObject();
  }
}

extension X839480798 on RenderObject {
  Rect get w666269037 {
    final g214293685 = getTransformTo(null).getTranslation();
    final Size x5430879 = paintBounds.size;
    return Rect.fromLTWH(g214293685.x, g214293685.y, x5430879.width, x5430879.height);
  }

  Lwi859603931 o236862505(RenderObject u236610704) {
    final rbq837004734 = getTransformTo(u236610704);
    final g214293685 = rbq837004734.getTranslation();
    final tm268643364 = rbq837004734.getMaxScaleOnAxis();
    final p305780127 = rbq837004734.getRow(1).storage[1] / tm268643364;
    final d465802307 = rbq837004734.getRow(1).storage[0] / tm268643364;

    final Size x5430879 = paintBounds.size;
    return Lwi859603931(
      Rect.fromLTRB(
        g214293685.x,
        g214293685.y,
        g214293685.x + x5430879.width * tm268643364,
        g214293685.y + x5430879.height * tm268643364,
      ),
      p305780127,
      d465802307,
    );
  }

  bool get je778819126 {
    //
    return layer != null && layer!.attached;
  }

  bool get f753636728 {
    final Object? p698107561 = this.parent;
    if (p698107561 != null) {
      RenderObject u236610704 = p698107561 as RenderObject;

      RenderObject pci54445645 = this;
      while (u236610704.parent != null) {
        if (!u236610704.paintsChild(pci54445645)) {
          return false;
        }
        pci54445645 = u236610704;
        //
        //
        //
        u236610704 = u236610704.parent! as RenderObject;
      }

      return true;
    }
    return false;
  }

  ScrollPosition? get j620771072 {
    try {
      return (this as dynamic).position as ScrollPosition;
    } catch (e) {
      return null;
    }
  }
}

class Lwi859603931 {
  final Rect bu976997138;
  final double yh172218860;
  final double bqo567092253;

  Lwi859603931(this.bu976997138, this.yh172218860, this.bqo567092253);
}

extension Y222415555 on Rect {
  Rect tm268643364(double hpd740602092) {
    return Rect.fromLTRB(
      left * hpd740602092,
      top * hpd740602092,
      right * hpd740602092,
      bottom * hpd740602092,
    );
  }
}

extension X217380037<T> on T {
  R mqx265148210<R>(R Function(T it) bq513752871) => bq513752871(this);
}

extension Pc895188105 on WidgetsBinding {
  static T? _rew699430945<T>(T? lgn510790059) => lgn510790059;

  static WidgetsBinding? get dfo892084206 => _rew699430945(WidgetsBinding.instance)!;

  //
  //renderViewElement
  Element? get bad405157863 {
    late Element v951105136;
    try {
      //
      v951105136 = (this as dynamic).rootElement as Element;
    } catch (e) {
      //
      v951105136 = (this as dynamic).renderViewElement as Element;
    }
    return v951105136;
  }

  //
  //renderView
  RenderView get lqj1040687125 {
    late RenderView us933674920;
    try {
      us933674920 =
          //
          (this as dynamic).renderViews.first as RenderView;
    } catch (e) {
      //
      us933674920 = (this as dynamic).renderView as RenderView;
    }
    return us933674920;
  }
}

extension Hy1026640642 on SchedulerBinding {
  static T? _rew699430945<T>(T? lgn510790059) => lgn510790059;

  static SchedulerBinding? get dfo892084206 =>
      _rew699430945(SchedulerBinding.instance)!;
}

extension Jzk621990510 on List<R686663970> {
  R686663970? ra384091101(String zlx228738484) {
    final int oph290460097 = a81490955(zlx228738484);
    if (oph290460097 != -1) {
      return this[oph290460097];
    } else {
      return null;
    }
  }

  int a81490955(String zlx228738484) =>
      indexWhere((mbm412700271) => mbm412700271.gi459292853 == zlx228738484);
}

extension H386886978 on String {
  String get m31857054 {
    final RegExp eij678758406 = RegExp('[0-9A-Fa-f]+');
    final Iterable<Match> l795912266 = eij678758406.allMatches(this);

    final rf173892772 = StringBuffer();

    for (final Match zz1026139244 in l795912266) {
      rf173892772.write(zz1026139244.group(0));
    }

    return rf173892772.toString();
  }
}

extension D717913785<T> on List<int> {
  int? v696419478(int m572656625) {
    sort();

    int? nqt98533721;

    for (final int lgn510790059 in this) {
      if (lgn510790059 == m572656625) {
        return lgn510790059;
      } else if (lgn510790059 < m572656625) {
        nqt98533721 = lgn510790059;
      } else {
        break;
      }
    }
    return nqt98533721;
  }
}
