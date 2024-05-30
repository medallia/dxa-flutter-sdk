//
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/u304042270.dart';

abstract class Q958538912 {
  final Route xz1001735116;
  final String? du652312141;
  String? cs533637079;
  final Map<String, String> gsz153545924;
  final List<int> wp435388142;
  final int mm968880654;
  final int b77244066;
  final BuildContext yz1006262804;
  final NavigatorState _zs169993522;
  Q958538912({
    required this.xz1001735116,
    required this.wp435388142,
    required this.b77244066,
    required NavigatorState dg42732200,
  })  : _zs169993522 = dg42732200,
        du652312141 = xz1001735116.settings.name,
        gsz153545924 = xz1001735116.settings.arguments is Map<String, String>
            ? xz1001735116.settings.arguments! as Map<String, String>
            : {},
        mm968880654 = dg42732200.hashCode,
        yz1006262804 = dg42732200.context {
    assert(this is Pgw666223588 || this is Eh463560522);
  }

  factory Q958538912.modal({
    required ModalRoute mm454515496,
    required List<int> wp435388142,
    required int b77244066,
    required NavigatorState dg42732200,
  }) {
    return Pgw666223588._(
      mm454515496: mm454515496,
      wp435388142: wp435388142,
      b77244066: b77244066,
      dg42732200: dg42732200,
    );
  }

  factory Q958538912.nonModal({
    required Route xz1001735116,
    required List<int> wp435388142,
    required int b77244066,
    required NavigatorState dg42732200,
  }) {
    return Eh463560522._(
      xz1001735116: xz1001735116,
      wp435388142: wp435388142,
      b77244066: b77244066,
      dg42732200: dg42732200,
    );
  }

  bool get yoz14448465 => xz1001735116 is PopupRoute;

  bool get vdk501560851 => (yz1006262804 as Element).dirty;

  @override
  bool operator ==(covariant Q958538912 lyu304491394) {
    if (identical(this, lyu304491394)) return true;

    return lyu304491394.xz1001735116 == xz1001735116 &&
        lyu304491394.du652312141 == du652312141 &&
        lyu304491394.wp435388142 == wp435388142;
  }

  @override
  int get hashCode => xz1001735116.hashCode;

  @override
  String toString() {
    return 'DxaRoute(route: $xz1001735116, name: $du652312141, arguments: $gsz153545924, nestedNavigatorsHashcode: $wp435388142)';
  }
}

class Pgw666223588 extends Q958538912 with DxaRouteWithModalRederence {
  Pgw666223588._({
    required this.mm454515496,
    required List<int> wp435388142,
    required int b77244066,
    required NavigatorState dg42732200,
  }) : super(
          xz1001735116: mm454515496,
          wp435388142: wp435388142,
          b77244066: b77244066,
          dg42732200: dg42732200,
        );
  final ModalRoute mm454515496;
  bool get bki447819948 => mm454515496.opaque;
  BuildContext? get sxq304973532 => mm454515496.subtreeContext;
  RenderObject? get pme363205235 {
    return sxq304973532?.findRenderObject();
  }

  bool get mht4311303 {
    final RenderObject? h643260056 = pme363205235;
    if (h643260056 == null) return false;
    if (!pme363205235!.lv778819479) {
      return false;
    }

    return h643260056.cne753636569;
  }

  Pqc890753481 ah1033552370(
    Q958538912 b219402729,
  ) =>
      Pqc890753481(
        mm454515496: xz1001735116 as ModalRoute,
        wp435388142: wp435388142,
        b77244066: b77244066,
        b219402729: b219402729,
        dg42732200: super._zs169993522,
      );
  @override
  Pgw666223588 wbl588000523() {
    return this;
  }
}

class Pqc890753481 extends Pgw666223588 {
  final Q958538912 b219402729;

  Pqc890753481({
    required ModalRoute mm454515496,
    required List<int> wp435388142,
    required int b77244066,
    required NavigatorState dg42732200,
    required this.b219402729,
  }) : super._(
          mm454515496: mm454515496,
          wp435388142: wp435388142,
          b77244066: b77244066,
          dg42732200: dg42732200,
        );
}

class Eh463560522 extends Q958538912 {
  Eh463560522._({
    required Route xz1001735116,
    required List<int> wp435388142,
    required int b77244066,
    required NavigatorState dg42732200,
  }) : super(
            xz1001735116: xz1001735116,
            wp435388142: wp435388142,
            b77244066: b77244066,
            dg42732200: dg42732200);
  Uwu564237809 hmf101644497(
    Pgw666223588 e49977646,
  ) =>
      Uwu564237809(
        xz1001735116: xz1001735116,
        wp435388142: wp435388142,
        b77244066: b77244066,
        e49977646: e49977646,
        dg42732200: super._zs169993522,
      );
}

class Uwu564237809 extends Eh463560522
    with DxaRouteWithModalRederence {
  final Pgw666223588 e49977646;

  Uwu564237809({
    required Route xz1001735116,
    required List<int> wp435388142,
    required int b77244066,
    required NavigatorState dg42732200,
    required this.e49977646,
  }) : super._(
          xz1001735116: xz1001735116,
          wp435388142: wp435388142,
          b77244066: b77244066,
          dg42732200: dg42732200,
        );

  @override
  Pgw666223588 wbl588000523() {
    return e49977646;
  }
}

mixin DxaRouteWithModalRederence on Q958538912 {
  Pgw666223588 wbl588000523();
}
