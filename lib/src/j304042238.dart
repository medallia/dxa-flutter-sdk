import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/sbd209815626.dart';

extension Ki907639354 on Element {
  List<Element> get sq240949820 {
    final List<Element> sq240949820 = <Element>[];
    visitChildElements((Element c412700206) => sq240949820.add(c412700206));
    return sq240949820;
  }
}

extension Ai885922392 on GlobalKey {
  RenderObject? get z643260280 {
    return currentContext?.findRenderObject();
  }
}

extension Hgp839480735 on RenderObject {
  Rect get e666268972 {
    final dhe214293748 = getTransformTo(null).getTranslation();
    final Size bgq5430814 = paintBounds.size;
    return Rect.fromLTWH(dhe214293748.x, dhe214293748.y, bgq5430814.width, bgq5430814.height);
  }

  G859603866 w236862568(RenderObject wu236610769) {
    final fn837004799 = getTransformTo(wu236610769);
    final dhe214293748 = fn837004799.getTranslation();
    final yn268643429 = fn837004799.getMaxScaleOnAxis();
    final ef305780190 = fn837004799.getRow(1).storage[1] / yn268643429;
    final hz465802242 = fn837004799.getRow(1).storage[0] / yn268643429;

    final Size bgq5430814 = paintBounds.size;
    return G859603866(
      Rect.fromLTRB(
        dhe214293748.x,
        dhe214293748.y,
        dhe214293748.x + bgq5430814.width * yn268643429,
        dhe214293748.y + bgq5430814.height * yn268643429,
      ),
      ef305780190,
      hz465802242,
    );
  }

  bool get se778819191 {
    //
    return layer != null && layer!.attached;
  }

  bool get rn753636665 {
    final Object? esh698107624 = this.parent;
    if (esh698107624 != null) {
      RenderObject wu236610769 = esh698107624 as RenderObject;

      RenderObject za54445580 = this;
      while (wu236610769.parent != null) {
        if (!wu236610769.paintsChild(za54445580)) {
          return false;
        }
        za54445580 = wu236610769;
        //
        //
        //
        wu236610769 = wu236610769.parent! as RenderObject;
      }

      return true;
    }
    return false;
  }
}

class G859603866 {
  final Rect sli976997203;
  final double qxm172218797;
  final double zgr567092316;

  G859603866(this.sli976997203, this.qxm172218797, this.zgr567092316);
}

extension Uf222415490 on Rect {
  Rect yn268643429(double t740602029) {
    return Rect.fromLTRB(
      left * t740602029,
      top * t740602029,
      right * t740602029,
      bottom * t740602029,
    );
  }
}

extension C217379972<T> on T {
  R mlj265148275<R>(R Function(T it) ra513752934) => ra513752934(this);
}

extension Mo895188168 on WidgetsBinding {
  static T? _yk699431008<T>(T? wvb510790122) => wvb510790122;

  static WidgetsBinding? get yrd892084143 => _yk699431008(WidgetsBinding.instance)!;

  //
  //renderViewElement
  Element? get eu405157798 {
    late Element ina951105073;
    try {
      //
      ina951105073 = (this as dynamic).rootElement as Element;
    } catch (e) {
      //
      ina951105073 = (this as dynamic).renderViewElement as Element;
    }
    return ina951105073;
  }

  //
  //renderView
  RenderView get pba1040687188 {
    late RenderView vz933674985;
    try {
      vz933674985 =
          //
          (this as dynamic).renderViews.first as RenderView;
    } catch (e) {
      //
      vz933674985 = (this as dynamic).renderView as RenderView;
    }
    return vz933674985;
  }
}

extension Vu1026640707 on SchedulerBinding {
  static T? _yk699431008<T>(T? wvb510790122) => wvb510790122;

  static SchedulerBinding? get yrd892084143 =>
      _yk699431008(SchedulerBinding.instance)!;
}

extension Idd621990447 on List<H686664035> {
  H686664035? wd384091036(String ukh228738549) {
    final int kc290460032 = th81491018(ukh228738549);
    if (kc290460032 != -1) {
      return this[kc290460032];
    } else {
      return null;
    }
  }

  int th81491018(String ukh228738549) =>
      indexWhere((c412700206) => c412700206.tfn459292916 == ukh228738549);
}

extension Tnr386886915 on String {
  String get w31857119 {
    final RegExp esv678758471 = RegExp('[0-9A-Fa-f]+');
    final Iterable<Match> ns795912203 = esv678758471.allMatches(this);

    final nfg173892837 = StringBuffer();

    for (final Match av1026139181 in ns795912203) {
      nfg173892837.write(av1026139181.group(0));
    }

    return nfg173892837.toString();
  }
}
