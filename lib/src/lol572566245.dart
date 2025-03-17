import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/e406446028.dart';
import 'package:medallia_dxa/src/l496100031.dart';
import 'package:medallia_dxa/src/llc304042029.dart';

class P221968016 {
  P221968016();

  final Map<int, Zjx857031667> _zp574179412 = {};

  void esn174099645(
    ScrollNotification n1049996891,
  ) {
    final zth95499734 =
        x84513440(n1049996891);

    final bf224376133 = zth95499734?.opf317247799();
    if (bf224376133 == null) {
      return;
    }

    switch (bf224376133.twt639058585) {
      case Ls243188311.u81536885:
        _vap924393002(bf224376133);
        break;

      case Ls243188311.nar916957524:
        _v287567718(bf224376133);
        break;

      default:
        return;
    }
  }

  Zjx857031667? oez878562745(
    Set<Yfm726056085> k896336726,
  ) {
    final List<Zjx857031667> zl295269750 = [];
    for (final s318912016 in _zp574179412.entries) {
      final a891790777 =
          s318912016.value.m927850150;

      final ky48873788 = k896336726;

      final muz924916646 = a891790777.intersection(ky48873788);
      if (muz924916646.isNotEmpty) {
        zl295269750.add(s318912016.value);
      }
    }

    if (zl295269750.isEmpty) {
      return null;
    }
    if (zl295269750.length == 1) {
      _zp574179412.remove(
        zl295269750.first.kj269890466.z528464910(),
      );
      return zl295269750.first;
    }

    //
    //
    if (zl295269750.length > 1) {
      _zp574179412.remove(
        zl295269750.first.kj269890466.z528464910(),
      );
      return zl295269750.first;
    }

    return null;
  }

  void _vap924393002(
    O519987994 su328412890,
  ) {
    if (_zp574179412
        .containsKey(su328412890.z528464910())) {
      _zp574179412.remove(su328412890.z528464910());
    }
    final Zjx857031667 hgl519388599 = Zjx857031667(
      kj269890466: su328412890,
    );
    _zp574179412[su328412890.z528464910()] =
        hgl519388599;
  }

  void _v287567718(
    O519987994 z123216769,
  ) {
    final qp344712259 =
        _zp574179412[z123216769.z528464910()];

    qp344712259?.wex749000689(z123216769);
  }

  void im972929872() {
    _zp574179412.clear();
  }

  //ScrollStartNotificationScrollUpdateNotificationOverscrollNotification
  Ar347441155? x84513440(
    ScrollNotification ri445765390,
  ) {
    final ScrollMetrics v283408958 = ri445765390.metrics;
    final BuildContext? ics180727979 = ri445765390.context;
    int? ke124147578;
    Offset? j185395389;
    Ls243188311? twt639058585;
    if (ri445765390 is ScrollStartNotification) {
      twt639058585 = Ls243188311.u81536885;
      j185395389 = ri445765390.dragDetails?.globalPosition;
      ke124147578 =
          ri445765390.dragDetails?.sourceTimeStamp?.inMicroseconds;
    }

    if (ri445765390 is ScrollUpdateNotification) {
      twt639058585 = Ls243188311.nar916957524;
      j185395389 = ri445765390.dragDetails?.globalPosition;

      ke124147578 =
          ri445765390.dragDetails?.sourceTimeStamp?.inMicroseconds;
    }

    if (ri445765390 is OverscrollNotification) {
      twt639058585 = Ls243188311.nar916957524;
      j185395389 = ri445765390.dragDetails?.globalPosition;

      ke124147578 =
          ri445765390.dragDetails?.sourceTimeStamp?.inMicroseconds;
    }

    if (ri445765390 is ScrollEndNotification) {
      twt639058585 = Ls243188311.va818185661;
    }

    if (twt639058585 == null) {
      return null;
    }

    final gcx643260331 = ics180727979?.findRenderObject();

    return Ar347441155(
      v283408958: v283408958,
      ics180727979: ics180727979,
      twt639058585: twt639058585,
      ke124147578: ke124147578,
      gcx643260331: gcx643260331,
      j185395389: j185395389,
    );
  }

  Kpy31253451? kyj182363642(
    Zjx857031667 dod274872938,
    Yfm726056085 m871578299,
  ) {
    final int n971915921 =
        m871578299.d921636517;

    final cu484282541 = dod274872938.m927850150
        .map((w352813509) => w352813509.d921636517)
        .toList();

    final je166208195 =
        cu484282541.vy696419332(n971915921);

    late final O519987994? bf224376133;
    if (je166208195 == null) {
      bf224376133 = dod274872938.kj269890466;
    } else {
      bf224376133 = dod274872938
          .zia236850995(je166208195);
    }

    if (bf224376133 == null) {
      return null;
    }
    final r680437932 = bf224376133.v283408958.axis;
    final b557611397 = bf224376133.v283408958.pixels.toInt();
    final xo962169722 = bf224376133.ics180727979.findRenderObject();
    final kx1022730318 = bf224376133.ics180727979
        .findAncestorRenderObjectOfType<RenderSemanticsGestureHandler>();

    final z642395760 = xo962169722.hashCode;
    final sqo298743894 = kx1022730318?.hashCode;

    return Kpy31253451(
      qf231120422: r680437932 == Axis.horizontal ? b557611397 : 0,
      bry940896898: r680437932 == Axis.vertical ? b557611397 : 0,
      sqo298743894: sqo298743894,
      r328021337: z642395760,
    );
  }
}
