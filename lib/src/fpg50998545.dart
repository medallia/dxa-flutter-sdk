//
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/c249197541.dart';

abstract class Js958539009 {
  final Route sxx1001734765;
  final String? ov652312556;
  String? rt533636726;
  final RouteSettings o65232586;
  final List<int> dss435388239;
  final int cjy968881071;
  final int qeh77244163;
  final BuildContext mx1006263221;
  final NavigatorState _cy169993363;
  Js958539009({
    required this.sxx1001734765,
    required this.dss435388239,
    required this.qeh77244163,
    required NavigatorState g42732297,
  })  : _cy169993363 = g42732297,
        ov652312556 = sxx1001734765.settings.name,
        o65232586 = sxx1001734765.settings,
        cjy968881071 = g42732297.hashCode,
        mx1006263221 = g42732297.context {
    assert(this is Pgj666223173 || this is Ein463560427);
  }

  factory Js958539009.modal({
    required ModalRoute cq454515337,
    required List<int> dss435388239,
    required int qeh77244163,
    required NavigatorState g42732297,
  }) {
    return Pgj666223173._(
      cq454515337: cq454515337,
      dss435388239: dss435388239,
      qeh77244163: qeh77244163,
      g42732297: g42732297,
    );
  }

  factory Js958539009.nonModal({
    required Route sxx1001734765,
    required List<int> dss435388239,
    required int qeh77244163,
    required NavigatorState g42732297,
  }) {
    return Ein463560427._(
      sxx1001734765: sxx1001734765,
      dss435388239: dss435388239,
      qeh77244163: qeh77244163,
      g42732297: g42732297,
    );
  }

  bool get an14448368 => sxx1001734765 is PopupRoute;

  @override
  bool operator ==(covariant Js958539009 ydy304491043) {
    if (identical(this, ydy304491043)) return true;

    return ydy304491043.sxx1001734765 == sxx1001734765 &&
        ydy304491043.ov652312556 == ov652312556 &&
        ydy304491043.dss435388239 == dss435388239;
  }

  @override
  int get hashCode => sxx1001734765.hashCode;

  @override
  String toString() {
    return 'DxaRoute(route: $sxx1001734765, name: $ov652312556, routeSettings: $o65232586, nestedNavigatorsHashcode: $dss435388239)';
  }
}

class Pgj666223173 extends Js958539009 with DxaRouteWithModalReference {
  Pgj666223173._({
    required this.cq454515337,
    required super.dss435388239,
    required super.qeh77244163,
    required super.g42732297,
  }) : super(
          sxx1001734765: cq454515337,
        );
  final ModalRoute cq454515337;
  bool get bh447820045 => cq454515337.opaque;
  BuildContext? get c304973693 => cq454515337.subtreeContext;
  RenderObject? get mu363205586 {
    return c304973693?.findRenderObject();
  }

  bool get c4311206 {
    final RenderObject? jm643260217 = mu363205586;
    if (jm643260217 == null) return false;
    if (!mu363205586!.je778819126) {
      return false;
    }

    return jm643260217.f753636728;
  }

  Nx890753128 w1033551955(
    Js958539009 fm219402312,
  ) =>
      Nx890753128(
        cq454515337: sxx1001734765 as ModalRoute,
        dss435388239: dss435388239,
        qeh77244163: qeh77244163,
        fm219402312: fm219402312,
        g42732297: super._cy169993363,
      );
  @override
  Pgj666223173 dr588000426() {
    return this;
  }
}

class Nx890753128 extends Pgj666223173 {
  final Js958539009 fm219402312;

  Nx890753128({
    required super.cq454515337,
    required super.dss435388239,
    required super.qeh77244163,
    required super.g42732297,
    required this.fm219402312,
  }) : super._();
}

class Ein463560427 extends Js958539009 {
  Ein463560427._({
    required super.sxx1001734765,
    required super.dss435388239,
    required super.qeh77244163,
    required super.g42732297,
  });
  Ux564237392 l101644656(
    Pgj666223173 s49977487,
  ) =>
      Ux564237392(
        sxx1001734765: sxx1001734765,
        dss435388239: dss435388239,
        qeh77244163: qeh77244163,
        s49977487: s49977487,
        g42732297: super._cy169993363,
      );
}

class Ux564237392 extends Ein463560427
    with DxaRouteWithModalReference {
  final Pgj666223173 s49977487;

  Ux564237392({
    required super.sxx1001734765,
    required super.dss435388239,
    required super.qeh77244163,
    required super.g42732297,
    required this.s49977487,
  }) : super._();

  @override
  Pgj666223173 dr588000426() {
    return s49977487;
  }
}

mixin DxaRouteWithModalReference on Js958539009 {
  Pgj666223173 dr588000426();
}
