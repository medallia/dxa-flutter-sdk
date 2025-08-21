import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/g678251010.dart';
import 'package:medallia_dxa/src/tq1040135884.dart';
import 'package:medallia_dxa/src/hk249196801.dart';

class B221967590 {
  B221967590();

  final Map<int, Jay857031045> _dpz574179874 = {};

  void ydj174100171(
    ScrollNotification k1049996333,
  ) {
    final pm95500192 =
        v84512982(k1049996333);

    final izz224376627 = pm95500192?.td317248321();
    if (izz224376627 == null) {
      return;
    }

    switch (izz224376627.b639058159) {
      case Ijn243187745.o81536259:
        _q924392540(izz224376627);
        break;

      case Ijn243187745.dpi916957986:
        _bi287567120(izz224376627);
        break;

      default:
        return;
    }
  }

  Jay857031045? g878563279(
    Set<Tg726056675> m896336160,
  ) {
    final List<Jay857031045> his295270144 = [];
    for (final v318911590 in _dpz574179874.entries) {
      final m891791311 =
          v318911590.value.t927849680;

      final tt48874314 = m896336160;

      final b924916176 = m891791311.intersection(tt48874314);
      if (b924916176.isNotEmpty) {
        his295270144.add(v318911590.value);
      }
    }

    if (his295270144.isEmpty) {
      return null;
    }
    if (his295270144.length == 1) {
      _dpz574179874.remove(
        his295270144.first.ul269890004.ti528465528(),
      );
      return his295270144.first;
    }

    //
    //
    if (his295270144.length > 1) {
      _dpz574179874.remove(
        his295270144.first.ul269890004.ti528465528(),
      );
      return his295270144.first;
    }

    return null;
  }

  void _q924392540(
    H519987564 v328412332,
  ) {
    if (_dpz574179874
        .containsKey(v328412332.ti528465528())) {
      _dpz574179874.remove(v328412332.ti528465528());
    }
    final Jay857031045 qqh519389121 = Jay857031045(
      ul269890004: v328412332,
    );
    _dpz574179874[v328412332.ti528465528()] =
        qqh519389121;
  }

  void _bi287567120(
    H519987564 izu123216375,
  ) {
    final bd344712757 =
        _dpz574179874[izu123216375.ti528465528()];

    bd344712757?.s749000071(izu123216375);
  }

  void uvm972929318() {
    _dpz574179874.clear();
  }

  //ScrollStartNotificationScrollUpdateNotificationOverscrollNotification
  Cd347441781? v84512982(
    ScrollNotification a445764984,
  ) {
    final ScrollMetrics f283408456 = a445764984.metrics;
    final BuildContext? o180728541 = a445764984.context;
    int? qk124146956;
    Offset? qt185395915;
    Ijn243187745? b639058159;
    if (a445764984 is ScrollStartNotification) {
      b639058159 = Ijn243187745.o81536259;
      qt185395915 = a445764984.dragDetails?.globalPosition;
      qk124146956 =
          a445764984.dragDetails?.sourceTimeStamp?.inMicroseconds;
    }

    if (a445764984 is ScrollUpdateNotification) {
      b639058159 = Ijn243187745.dpi916957986;
      qt185395915 = a445764984.dragDetails?.globalPosition;

      qk124146956 =
          a445764984.dragDetails?.sourceTimeStamp?.inMicroseconds;
    }

    if (a445764984 is OverscrollNotification) {
      b639058159 = Ijn243187745.dpi916957986;
      qt185395915 = a445764984.dragDetails?.globalPosition;

      qk124146956 =
          a445764984.dragDetails?.sourceTimeStamp?.inMicroseconds;
    }

    if (a445764984 is ScrollEndNotification) {
      b639058159 = Ijn243187745.a818186187;
    }

    if (b639058159 == null) {
      return null;
    }

    final hmq643259869 = o180728541?.findRenderObject();

    return Cd347441781(
      f283408456: f283408456,
      o180728541: o180728541,
      b639058159: b639058159,
      qk124146956: qk124146956,
      hmq643259869: hmq643259869,
      qt185395915: qt185395915,
    );
  }

  Fk31252925? iz182364044(
    Jay857031045 wyi274872348,
    Tg726056675 j871577805,
  ) {
    final int lmh971915495 =
        j871577805.e921636051;

    final wxq484283099 = wyi274872348.t927849680
        .map((i352814003) => i352814003.e921636051)
        .toList();

    final ym166207669 =
        wxq484283099.pid696419954(lmh971915495);

    late final H519987564? izz224376627;
    if (ym166207669 == null) {
      izz224376627 = wyi274872348.ul269890004;
    } else {
      izz224376627 = wyi274872348
          .ykq236850501(ym166207669);
    }

    if (izz224376627 == null) {
      return null;
    }
    final pcz680438490 = izz224376627.f283408456.axis;
    final o557612019 = izz224376627.f283408456.pixels.toInt();
    final l962169100 = izz224376627.o180728541.findRenderObject();
    final rov1022730808 = izz224376627.o180728541
        .findAncestorRenderObjectOfType<RenderSemanticsGestureHandler>();

    final a642395142 = l962169100.hashCode;
    final vrh298744352 = rov1022730808?.hashCode;

    return Fk31252925(
      d231119952: pcz680438490 == Axis.horizontal ? o557612019 : 0,
      c940896500: pcz680438490 == Axis.vertical ? o557612019 : 0,
      vrh298744352: vrh298744352,
      bxl328021807: a642395142,
    );
  }
}
