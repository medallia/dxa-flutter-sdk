//
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/j304042238.dart';

abstract class D958539072 {
  final Route z1001734700;
  final String? b652312493;
  String? j533636663;
  final Map<String, String> bij153546020;
  final List<int> fbi435388174;
  final int t968881134;
  final int w77244226;
  final BuildContext ns1006263284;
  final NavigatorState _ae169993426;
  D958539072({
    required this.z1001734700,
    required this.fbi435388174,
    required this.w77244226,
    required NavigatorState eam42732360,
  })  : _ae169993426 = eam42732360,
        b652312493 = z1001734700.settings.name,
        bij153546020 = z1001734700.settings.arguments is Map<String, String>
            ? z1001734700.settings.arguments! as Map<String, String>
            : {},
        t968881134 = eam42732360.hashCode,
        ns1006263284 = eam42732360.context {
    assert(this is Dke666223108 || this is Q463560362);
  }

  factory D958539072.modal({
    required ModalRoute oli454515400,
    required List<int> fbi435388174,
    required int w77244226,
    required NavigatorState eam42732360,
  }) {
    return Dke666223108._(
      oli454515400: oli454515400,
      fbi435388174: fbi435388174,
      w77244226: w77244226,
      eam42732360: eam42732360,
    );
  }

  factory D958539072.nonModal({
    required Route z1001734700,
    required List<int> fbi435388174,
    required int w77244226,
    required NavigatorState eam42732360,
  }) {
    return Q463560362._(
      z1001734700: z1001734700,
      fbi435388174: fbi435388174,
      w77244226: w77244226,
      eam42732360: eam42732360,
    );
  }

  bool get s14448305 => z1001734700 is PopupRoute;

  bool get d501561331 => (ns1006263284 as Element).dirty;

  @override
  bool operator ==(covariant D958539072 uy304491106) {
    if (identical(this, uy304491106)) return true;

    return uy304491106.z1001734700 == z1001734700 &&
        uy304491106.b652312493 == b652312493 &&
        uy304491106.fbi435388174 == fbi435388174;
  }

  @override
  int get hashCode => z1001734700.hashCode;

  @override
  String toString() {
    return 'DxaRoute(route: $z1001734700, name: $b652312493, arguments: $bij153546020, nestedNavigatorsHashcode: $fbi435388174)';
  }
}

class Dke666223108 extends D958539072 with DxaRouteWithModalRederence {
  Dke666223108._({
    required this.oli454515400,
    required List<int> fbi435388174,
    required int w77244226,
    required NavigatorState eam42732360,
  }) : super(
          z1001734700: oli454515400,
          fbi435388174: fbi435388174,
          w77244226: w77244226,
          eam42732360: eam42732360,
        );
  final ModalRoute oli454515400;
  bool get oa447820108 => oli454515400.opaque;
  BuildContext? get aun304973628 => oli454515400.subtreeContext;
  RenderObject? get pex363205523 {
    return aun304973628?.findRenderObject();
  }

  bool get adt4311271 {
    final RenderObject? z643260280 = pex363205523;
    if (z643260280 == null) return false;
    if (!pex363205523!.se778819191) {
      return false;
    }

    return z643260280.rn753636665;
  }

  Ux890753065 f1033551890(
    D958539072 am219402249,
  ) =>
      Ux890753065(
        oli454515400: z1001734700 as ModalRoute,
        fbi435388174: fbi435388174,
        w77244226: w77244226,
        am219402249: am219402249,
        eam42732360: super._ae169993426,
      );
  @override
  Dke666223108 fo588000491() {
    return this;
  }
}

class Ux890753065 extends Dke666223108 {
  final D958539072 am219402249;

  Ux890753065({
    required ModalRoute oli454515400,
    required List<int> fbi435388174,
    required int w77244226,
    required NavigatorState eam42732360,
    required this.am219402249,
  }) : super._(
          oli454515400: oli454515400,
          fbi435388174: fbi435388174,
          w77244226: w77244226,
          eam42732360: eam42732360,
        );
}

class Q463560362 extends D958539072 {
  Q463560362._({
    required Route z1001734700,
    required List<int> fbi435388174,
    required int w77244226,
    required NavigatorState eam42732360,
  }) : super(
            z1001734700: z1001734700,
            fbi435388174: fbi435388174,
            w77244226: w77244226,
            eam42732360: eam42732360);
  Gie564237329 os101644593(
    Dke666223108 mfb49977550,
  ) =>
      Gie564237329(
        z1001734700: z1001734700,
        fbi435388174: fbi435388174,
        w77244226: w77244226,
        mfb49977550: mfb49977550,
        eam42732360: super._ae169993426,
      );
}

class Gie564237329 extends Q463560362
    with DxaRouteWithModalRederence {
  final Dke666223108 mfb49977550;

  Gie564237329({
    required Route z1001734700,
    required List<int> fbi435388174,
    required int w77244226,
    required NavigatorState eam42732360,
    required this.mfb49977550,
  }) : super._(
          z1001734700: z1001734700,
          fbi435388174: fbi435388174,
          w77244226: w77244226,
          eam42732360: eam42732360,
        );

  @override
  Dke666223108 fo588000491() {
    return mfb49977550;
  }
}

mixin DxaRouteWithModalRederence on D958539072 {
  Dke666223108 fo588000491();
}
