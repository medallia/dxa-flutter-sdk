//
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/sor304042900.dart';

abstract class Cwv958539306 {
  final Route efl1001734470;
  final String? r652311751;
  String? xlf533636445;
  final Map<String, String> a153546318;
  final List<int> jv435387492;
  final int p968880260;
  final int gt77243432;
  final BuildContext sv1006262430;
  final NavigatorState _npw169994168;
  Cwv958539306({
    required this.efl1001734470,
    required this.jv435387492,
    required this.gt77243432,
    required NavigatorState jt42731554,
  })  : _npw169994168 = jt42731554,
        r652311751 = efl1001734470.settings.name,
        a153546318 = efl1001734470.settings.arguments is Map<String, String>
            ? efl1001734470.settings.arguments! as Map<String, String>
            : {},
        p968880260 = jt42731554.hashCode,
        sv1006262430 = jt42731554.context {
    assert(this is Pxr666222958 || this is Ewm463560128);
  }

  factory Cwv958539306.modal({
    required ModalRoute wm454515106,
    required List<int> jv435387492,
    required int gt77243432,
    required NavigatorState jt42731554,
  }) {
    return Pxr666222958._(
      wm454515106: wm454515106,
      jv435387492: jv435387492,
      gt77243432: gt77243432,
      jt42731554: jt42731554,
    );
  }

  factory Cwv958539306.nonModal({
    required Route efl1001734470,
    required List<int> jv435387492,
    required int gt77243432,
    required NavigatorState jt42731554,
  }) {
    return Ewm463560128._(
      efl1001734470: efl1001734470,
      jv435387492: jv435387492,
      gt77243432: gt77243432,
      jt42731554: jt42731554,
    );
  }

  bool get pee14448091 => efl1001734470 is PopupRoute;

  bool get v501560473 => (sv1006262430 as Element).dirty;

  @override
  bool operator ==(covariant Cwv958539306 tt304490760) {
    if (identical(this, tt304490760)) return true;

    return tt304490760.efl1001734470 == efl1001734470 &&
        tt304490760.r652311751 == r652311751 &&
        tt304490760.jv435387492 == jv435387492;
  }

  @override
  int get hashCode => efl1001734470.hashCode;

  @override
  String toString() {
    return 'DxaRoute(route: $efl1001734470, name: $r652311751, arguments: $a153546318, nestedNavigatorsHashcode: $jv435387492)';
  }
}

class Pxr666222958 extends Cwv958539306 with DxaRouteWithModalRederence {
  Pxr666222958._({
    required this.wm454515106,
    required List<int> jv435387492,
    required int gt77243432,
    required NavigatorState jt42731554,
  }) : super(
          efl1001734470: wm454515106,
          jv435387492: jv435387492,
          gt77243432: gt77243432,
          jt42731554: jt42731554,
        );
  final ModalRoute wm454515106;
  bool get wb447820326 => wm454515106.opaque;
  BuildContext? get wv304972886 => wm454515106.subtreeContext;
  RenderObject? get c363204857 {
    return wv304972886?.findRenderObject();
  }

  bool get vni4311949 {
    final RenderObject? vuh643259410 = c363204857;
    if (vuh643259410 == null) return false;
    if (!c363204857!.gpv778818845) {
      return false;
    }

    return vuh643259410.mq753636947;
  }

  Ei890753859 zil1033552760(
    Cwv958539306 fc219403107,
  ) =>
      Ei890753859(
        wm454515106: efl1001734470 as ModalRoute,
        jv435387492: jv435387492,
        gt77243432: gt77243432,
        fc219403107: fc219403107,
        jt42731554: super._npw169994168,
      );
  @override
  Pxr666222958 z588001153() {
    return this;
  }
}

class Ei890753859 extends Pxr666222958 {
  final Cwv958539306 fc219403107;

  Ei890753859({
    required ModalRoute wm454515106,
    required List<int> jv435387492,
    required int gt77243432,
    required NavigatorState jt42731554,
    required this.fc219403107,
  }) : super._(
          wm454515106: wm454515106,
          jv435387492: jv435387492,
          gt77243432: gt77243432,
          jt42731554: jt42731554,
        );
}

class Ewm463560128 extends Cwv958539306 {
  Ewm463560128._({
    required Route efl1001734470,
    required List<int> jv435387492,
    required int gt77243432,
    required NavigatorState jt42731554,
  }) : super(
            efl1001734470: efl1001734470,
            jv435387492: jv435387492,
            gt77243432: gt77243432,
            jt42731554: jt42731554);
  T564238203 qy101644891(
    Pxr666222958 u49978276,
  ) =>
      T564238203(
        efl1001734470: efl1001734470,
        jv435387492: jv435387492,
        gt77243432: gt77243432,
        u49978276: u49978276,
        jt42731554: super._npw169994168,
      );
}

class T564238203 extends Ewm463560128
    with DxaRouteWithModalRederence {
  final Pxr666222958 u49978276;

  T564238203({
    required Route efl1001734470,
    required List<int> jv435387492,
    required int gt77243432,
    required NavigatorState jt42731554,
    required this.u49978276,
  }) : super._(
          efl1001734470: efl1001734470,
          jv435387492: jv435387492,
          gt77243432: gt77243432,
          jt42731554: jt42731554,
        );

  @override
  Pxr666222958 z588001153() {
    return u49978276;
  }
}

mixin DxaRouteWithModalRederence on Cwv958539306 {
  Pxr666222958 z588001153();
}
