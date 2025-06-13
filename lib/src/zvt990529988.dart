import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/hfd678251073.dart';
import 'package:medallia_dxa/src/x1040135823.dart';
import 'package:medallia_dxa/src/de249196866.dart';

class Zuo221967525 {
  Zuo221967525();

  final Map<int, Dg857031110> _g574179937 = {};

  void t174100104(
    ScrollNotification vp1049996398,
  ) {
    final bgk95500259 =
        iwz84512917(vp1049996398);

    final z224376688 = bgk95500259?.lnq317248258();
    if (z224376688 == null) {
      return;
    }

    switch (z224376688.j639058092) {
      case Wvz243187810.tq81536320:
        _g924392479(z224376688);
        break;

      case Wvz243187810.xn916958049:
        _xjj287567187(z224376688);
        break;

      default:
        return;
    }
  }

  Dg857031110? wj878563212(
    Set<Ft726056608> xe896336227,
  ) {
    final List<Dg857031110> nu295270211 = [];
    for (final uvu318911525 in _g574179937.entries) {
      final l891791244 =
          uvu318911525.value.d927849619;

      final m48874249 = xe896336227;

      final sv924916115 = l891791244.intersection(m48874249);
      if (sv924916115.isNotEmpty) {
        nu295270211.add(uvu318911525.value);
      }
    }

    if (nu295270211.isEmpty) {
      return null;
    }
    if (nu295270211.length == 1) {
      _g574179937.remove(
        nu295270211.first.z269889943.jyq528465467(),
      );
      return nu295270211.first;
    }

    //
    //
    if (nu295270211.length > 1) {
      _g574179937.remove(
        nu295270211.first.z269889943.jyq528465467(),
      );
      return nu295270211.first;
    }

    return null;
  }

  void _g924392479(
    Yeu519987503 gai328412399,
  ) {
    if (_g574179937
        .containsKey(gai328412399.jyq528465467())) {
      _g574179937.remove(gai328412399.jyq528465467());
    }
    final Dg857031110 jfw519389058 = Dg857031110(
      z269889943: gai328412399,
    );
    _g574179937[gai328412399.jyq528465467()] =
        jfw519389058;
  }

  void _xjj287567187(
    Yeu519987503 d123216308,
  ) {
    final lr344712822 =
        _g574179937[d123216308.jyq528465467()];

    lr344712822?.q749000132(d123216308);
  }

  void e972929381() {
    _g574179937.clear();
  }

  //ScrollStartNotificationScrollUpdateNotificationOverscrollNotification
  Sk347441718? iwz84512917(
    ScrollNotification m445764923,
  ) {
    final ScrollMetrics y283408395 = m445764923.metrics;
    final BuildContext? xqe180728478 = m445764923.context;
    int? mib124147023;
    Offset? hvq185395848;
    Wvz243187810? j639058092;
    if (m445764923 is ScrollStartNotification) {
      j639058092 = Wvz243187810.tq81536320;
      hvq185395848 = m445764923.dragDetails?.globalPosition;
      mib124147023 =
          m445764923.dragDetails?.sourceTimeStamp?.inMicroseconds;
    }

    if (m445764923 is ScrollUpdateNotification) {
      j639058092 = Wvz243187810.xn916958049;
      hvq185395848 = m445764923.dragDetails?.globalPosition;

      mib124147023 =
          m445764923.dragDetails?.sourceTimeStamp?.inMicroseconds;
    }

    if (m445764923 is OverscrollNotification) {
      j639058092 = Wvz243187810.xn916958049;
      hvq185395848 = m445764923.dragDetails?.globalPosition;

      mib124147023 =
          m445764923.dragDetails?.sourceTimeStamp?.inMicroseconds;
    }

    if (m445764923 is ScrollEndNotification) {
      j639058092 = Wvz243187810.t818186120;
    }

    if (j639058092 == null) {
      return null;
    }

    final i643259806 = xqe180728478?.findRenderObject();

    return Sk347441718(
      y283408395: y283408395,
      xqe180728478: xqe180728478,
      j639058092: j639058092,
      mib124147023: mib124147023,
      i643259806: i643259806,
      hvq185395848: hvq185395848,
    );
  }

  Xe31252990? z182364111(
    Dg857031110 i274872415,
    Ft726056608 hs871577742,
  ) {
    final int hpv971915428 =
        hs871577742.sj921635984;

    final zmg484283032 = i274872415.d927849619
        .map((m352814064) => m352814064.sj921635984)
        .toList();

    final j166207734 =
        zmg484283032.h696419889(hpv971915428);

    late final Yeu519987503? z224376688;
    if (j166207734 == null) {
      z224376688 = i274872415.z269889943;
    } else {
      z224376688 = i274872415
          .wi236850438(j166207734);
    }

    if (z224376688 == null) {
      return null;
    }
    final qq680438425 = z224376688.y283408395.axis;
    final m557611952 = z224376688.y283408395.pixels.toInt();
    final eg962169167 = z224376688.xqe180728478.findRenderObject();
    final dh1022730875 = z224376688.xqe180728478
        .findAncestorRenderObjectOfType<RenderSemanticsGestureHandler>();

    final f642395205 = eg962169167.hashCode;
    final rc298744419 = dh1022730875?.hashCode;

    return Xe31252990(
      gva231119891: qq680438425 == Axis.horizontal ? m557611952 : 0,
      wpd940896439: qq680438425 == Axis.vertical ? m557611952 : 0,
      rc298744419: rc298744419,
      gbj328021868: f642395205,
    );
  }
}
