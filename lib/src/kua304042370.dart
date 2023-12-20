import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/ld209815862.dart';
import 'package:medallia_dxa/src/s452802370.dart';

extension ElementExt on Element {
  List<Element> get dy240950080 {
    final List<Element> dy240950080 = <Element>[];
    visitChildElements((Element b412700498) => dy240950080.add(b412700498));
    return dy240950080;
  }
}

extension GlobalKeyExt on GlobalKey {
  RenderObject? get ft643259908 {
    return currentContext?.findRenderObject();
  }
}

extension RenderObjectPaintBounds on RenderObject {
  Rect get sh666268752 {
    final h214293896 = getTransformTo(null).getTranslation();
    final Size vj5431138 = paintBounds.size;
    return Rect.fromLTWH(h214293896.x, h214293896.y, vj5431138.width, vj5431138.height);
  }

  Uke859603686 fqp236862740(RenderObject te236610989) {
    final q837004419 = getTransformTo(te236610989);
    final h214293896 = q837004419.getTranslation();
    final om268643609 = q837004419.getMaxScaleOnAxis();
    final ssj305779874 = q837004419.getRow(1).storage[1] / om268643609;
    final oi465802622 = q837004419.getRow(1).storage[0] / om268643609;

    final Size vj5431138 = paintBounds.size;
    return Uke859603686(
      Rect.fromLTRB(
        h214293896.x,
        h214293896.y,
        h214293896.x + vj5431138.width * om268643609,
        h214293896.y + vj5431138.height * om268643609,
      ),
      ssj305779874,
      oi465802622,
    );
  }

  bool get g778819339 {
    //
    return layer != null && layer!.attached;
  }

  bool get mvd753636421 {
    final Object? haz698107796 = this.parent;
    if (haz698107796 != null) {
      RenderObject te236610989 = haz698107796 as RenderObject;

      RenderObject m54445936 = this;
      while (te236610989.parent != null) {
        if (!te236610989.paintsChild(m54445936)) {
          return false;
        }
        m54445936 = te236610989;
        //
        //
        //
        te236610989 = te236610989.parent! as RenderObject;
      }

      return true;
    }
    return false;
  }
}

class Uke859603686 {
  final Rect g976996911;
  final double ihk172218577;
  final double vhp567092512;

  Uke859603686(this.g976996911, this.ihk172218577, this.vhp567092512);
}

extension RectScaling on Rect {
  Rect om268643609(double g740602321) {
    return Rect.fromLTRB(
      left * g740602321,
      top * g740602321,
      right * g740602321,
      bottom * g740602321,
    );
  }
}

extension ObjectExt<T> on T {
  R n265147919<R>(R Function(T it) pc513752602) => pc513752602(this);
}

extension WidgetsBindingNullSafe on WidgetsBinding {
  static T? _ybt699431196<T>(T? c510789782) => c510789782;

  static WidgetsBinding? get dh892083923 => _ybt699431196(WidgetsBinding.instance)!;

  //
  //renderViewElement
  Element? get em353675495 {
    late Element hkd785209761;
    try {
      //
      hkd785209761 = (this as dynamic).rootElement as Element;
    } catch (e) {
      //
      hkd785209761 = (this as dynamic).jgc55349874 as Element;
    }
    return hkd785209761;
  }

  //
  //renderView
  RenderView get ujh584948480 {
    late RenderView hr393633063;
    try {
      //
      hr393633063 = (this as dynamic).renderViews.first as RenderView;
    } catch (e) {
      //
      hr393633063 = (this as dynamic).renderView as RenderView;
    }
    return hr393633063;
  }
}

extension SchedulerBindingNullSafe on SchedulerBinding {
  static T? _ybt699431196<T>(T? c510789782) => c510789782;

  static SchedulerBinding? get dh892083923 =>
      _ybt699431196(SchedulerBinding.instance)!;
}

extension ScreenVisitedFinder on List<Q686663711> {
  Q686663711? ew384090848(String f228738185) {
    final int hx290459900 = tdc81491254(f228738185);
    if (hx290459900 != -1) {
      return this[hx290459900];
    } else {
      return null;
    }
  }

  int tdc81491254(String f228738185) =>
      indexWhere((b412700498) => b412700498.jtl459293064 == f228738185);
}

extension ScreenVisitedExt on Q686663711 {
  bool get w225675213 {
    return DateTime.now().millisecondsSinceEpoch - m212009583 >
        Lgg583050836
            .dh892083923.n238486449.u910824403.inMilliseconds;
  }

  bool get qli20226910 {
    return vze229772737.length >=
        Lgg583050836.dh892083923.n238486449.job1057319239;
  }

  int get cyi442674755 =>
      m212009583 +
      Lgg583050836
          .dh892083923.n238486449.u910824403.inMilliseconds;
}

extension StringToHex on String {
  String get rfy31856803 {
    final RegExp kq678758715 = RegExp('[0-9A-Fa-f]+');
    final Iterable<Match> ow795912567 = kq678758715.allMatches(this);

    final h173893017 = StringBuffer();

    for (final Match match in ow795912567) {
      h173893017.write(match.group(0));
    }

    return h173893017.toString();
  }
}
