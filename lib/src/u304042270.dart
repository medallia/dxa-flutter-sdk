import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/auw209815978.dart';
import 'package:medallia_dxa/src/l452802526.dart';

extension Mg907639770 on Element {
  List<Element> get ysy240950236 {
    final List<Element> ysy240950236 = <Element>[];
    visitChildElements((Element jl412700622) => ysy240950236.add(jl412700622));
    return ysy240950236;
  }
}

extension P885922744 on GlobalKey {
  RenderObject? get h643260056 {
    return currentContext?.findRenderObject();
  }
}

extension Um839480447 on RenderObject {
  Rect get ph666268876 {
    final qm214293780 = getTransformTo(null).getTranslation();
    final Size ppb5431294 = paintBounds.size;
    return Rect.fromLTWH(qm214293780.x, qm214293780.y, ppb5431294.width, ppb5431294.height);
  }

  Nly859603578 n236862856(RenderObject an236610865) {
    final u837004319 = getTransformTo(an236610865);
    final qm214293780 = u837004319.getTranslation();
    final pyz268643717 = u837004319.getMaxScaleOnAxis();
    final f305779774 = u837004319.getRow(1).storage[1] / pyz268643717;
    final hmm465802722 = u837004319.getRow(1).storage[0] / pyz268643717;

    final Size ppb5431294 = paintBounds.size;
    return Nly859603578(
      Rect.fromLTRB(
        qm214293780.x,
        qm214293780.y,
        qm214293780.x + ppb5431294.width * pyz268643717,
        qm214293780.y + ppb5431294.height * pyz268643717,
      ),
      f305779774,
      hmm465802722,
    );
  }

  bool get lv778819479 {
    //
    return layer != null && layer!.attached;
  }

  bool get cne753636569 {
    final Object? nrw698107656 = this.parent;
    if (nrw698107656 != null) {
      RenderObject an236610865 = nrw698107656 as RenderObject;

      RenderObject y54446060 = this;
      while (an236610865.parent != null) {
        if (!an236610865.paintsChild(y54446060)) {
          return false;
        }
        y54446060 = an236610865;
        //
        //
        //
        an236610865 = an236610865.parent! as RenderObject;
      }

      return true;
    }
    return false;
  }
}

class Nly859603578 {
  final Rect g976997043;
  final double c172218445;
  final double r567092668;

  Nly859603578(this.g976997043, this.c172218445, this.r567092668);
}

extension Wf222415714 on Rect {
  Rect pyz268643717(double xzg740602189) {
    return Rect.fromLTRB(
      left * xzg740602189,
      top * xzg740602189,
      right * xzg740602189,
      bottom * xzg740602189,
    );
  }
}

extension Gjh217380196<T> on T {
  R rcm265148051<R>(R Function(T it) uf513752710) => uf513752710(this);
}

extension Hv895188264 on WidgetsBinding {
  static T? _baw699431296<T>(T? zak510789642) => zak510789642;

  static WidgetsBinding? get opf892083791 => _baw699431296(WidgetsBinding.instance)!;

  //
  //renderViewElement
  Element? get ys405157446 {
    late Element n951105489;
    try {
      //
      n951105489 = (this as dynamic).rootElement as Element;
    } catch (e) {
      //
      n951105489 = (this as dynamic).renderViewElement as Element;
    }
    return n951105489;
  }

  //
  //renderView
  RenderView get eg1040687540 {
    late RenderView uj933674505;
    try {
      uj933674505 =
          //
          (this as dynamic).renderViews.first as RenderView;
    } catch (e) {
      //
      uj933674505 = (this as dynamic).renderView as RenderView;
    }
    return uj933674505;
  }
}

extension H1026640547 on SchedulerBinding {
  static T? _baw699431296<T>(T? zak510789642) => zak510789642;

  static SchedulerBinding? get opf892083791 =>
      _baw699431296(SchedulerBinding.instance)!;
}

extension Zr621990863 on List<Vo686663811> {
  Vo686663811? g384090748(String wlz228738069) {
    final int o290459744 = l81491370(wlz228738069);
    if (o290459744 != -1) {
      return this[o290459744];
    } else {
      return null;
    }
  }

  int l81491370(String wlz228738069) =>
      indexWhere((jl412700622) => jl412700622.ed459292948 == wlz228738069);
}

extension Av391511180 on Vo686663811 {
  bool get hyq225675089 {
    return DateTime.now().millisecondsSinceEpoch - ew212009715 >
        Wx583050952
            .opf892083791.lps238486317.mrp910824271.inMilliseconds;
  }

  bool get txs20227010 {
    return zjm229772637.length >=
        Wx583050952.opf892083791.lps238486317.im1057319387;
  }

  int get m442674911 =>
      ew212009715 +
      Wx583050952
          .opf892083791.lps238486317.mrp910824271.inMilliseconds;
}

extension R386886883 on String {
  String get mjo31856703 {
    final RegExp wa678758823 = RegExp('[0-9A-Fa-f]+');
    final Iterable<Match> dkk795912683 = wa678758823.allMatches(this);

    final xyb173892869 = StringBuffer();

    for (final Match wbt1026139597 in dkk795912683) {
      xyb173892869.write(wbt1026139597.group(0));
    }

    return xyb173892869.toString();
  }
}
