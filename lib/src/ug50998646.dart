//
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/jn249197442.dart';

abstract class U958539110 {
  final Route cu1001734666;
  final String? mxi652312459;
  String? itm533636625;
  final RouteSettings plm65232557;
  final List<int> qzt435388200;
  final int dk968881096;
  final int w77244260;
  final BuildContext ldm1006263250;
  final NavigatorState _cov169993460;
  U958539110({
    required this.cu1001734666,
    required this.qzt435388200,
    required this.w77244260,
    required NavigatorState gx42732398,
  })  : _cov169993460 = gx42732398,
        mxi652312459 = cu1001734666.settings.name,
        plm65232557 = cu1001734666.settings,
        dk968881096 = gx42732398.hashCode,
        ldm1006263250 = gx42732398.context {
    assert(this is X666223138 || this is Lgo463560332);
  }

  factory U958539110.modal({
    required ModalRoute i454515438,
    required List<int> qzt435388200,
    required int w77244260,
    required NavigatorState gx42732398,
  }) {
    return X666223138._(
      i454515438: i454515438,
      qzt435388200: qzt435388200,
      w77244260: w77244260,
      gx42732398: gx42732398,
    );
  }

  factory U958539110.nonModal({
    required Route cu1001734666,
    required List<int> qzt435388200,
    required int w77244260,
    required NavigatorState gx42732398,
  }) {
    return Lgo463560332._(
      cu1001734666: cu1001734666,
      qzt435388200: qzt435388200,
      w77244260: w77244260,
      gx42732398: gx42732398,
    );
  }

  bool get n14448279 => cu1001734666 is PopupRoute;

  @override
  bool operator ==(covariant U958539110 br304491076) {
    if (identical(this, br304491076)) return true;

    return br304491076.cu1001734666 == cu1001734666 &&
        br304491076.mxi652312459 == mxi652312459 &&
        br304491076.qzt435388200 == qzt435388200;
  }

  @override
  int get hashCode => cu1001734666.hashCode;

  @override
  String toString() {
    return 'DxaRoute(route: $cu1001734666, name: $mxi652312459, routeSettings: $plm65232557, nestedNavigatorsHashcode: $qzt435388200)';
  }
}

class X666223138 extends U958539110 with DxaRouteWithModalReference {
  X666223138._({
    required this.i454515438,
    required super.qzt435388200,
    required super.w77244260,
    required super.gx42732398,
  }) : super(
          cu1001734666: i454515438,
        );
  final ModalRoute i454515438;
  bool get kh447820138 => i454515438.opaque;
  BuildContext? get a304973594 => i454515438.subtreeContext;
  RenderObject? get zy363205557 {
    return a304973594?.findRenderObject();
  }

  bool get u4311233 {
    final RenderObject? hs643260254 = zy363205557;
    if (hs643260254 == null) return false;
    if (!zy363205557!.ub778819153) {
      return false;
    }

    return hs643260254.po753636639;
  }

  B890753039 f1033551924(
    U958539110 brc219402287,
  ) =>
      B890753039(
        i454515438: cu1001734666 as ModalRoute,
        qzt435388200: qzt435388200,
        w77244260: w77244260,
        brc219402287: brc219402287,
        gx42732398: super._cov169993460,
      );
  @override
  X666223138 l588000461() {
    return this;
  }
}

class B890753039 extends X666223138 {
  final U958539110 brc219402287;

  B890753039({
    required super.i454515438,
    required super.qzt435388200,
    required super.w77244260,
    required super.gx42732398,
    required this.brc219402287,
  }) : super._();
}

class Lgo463560332 extends U958539110 {
  Lgo463560332._({
    required super.cu1001734666,
    required super.qzt435388200,
    required super.w77244260,
    required super.gx42732398,
  });
  Nkj564237367 vdy101644567(
    X666223138 t49977576,
  ) =>
      Nkj564237367(
        cu1001734666: cu1001734666,
        qzt435388200: qzt435388200,
        w77244260: w77244260,
        t49977576: t49977576,
        gx42732398: super._cov169993460,
      );
}

class Nkj564237367 extends Lgo463560332
    with DxaRouteWithModalReference {
  final X666223138 t49977576;

  Nkj564237367({
    required super.cu1001734666,
    required super.qzt435388200,
    required super.w77244260,
    required super.gx42732398,
    required this.t49977576,
  }) : super._();

  @override
  X666223138 l588000461() {
    return t49977576;
  }
}

mixin DxaRouteWithModalReference on U958539110 {
  X666223138 l588000461();
}
