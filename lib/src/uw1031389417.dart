//
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/o304042319.dart';

abstract class L958538993 {
  final Route ezj1001735069;
  final String? anc652312092;
  String? ht533636998;
  final Map<String, String> y153545877;
  final List<int> pve435388095;
  final int pxh968880735;
  final int aj77244147;
  final BuildContext l1006262853;
  final NavigatorState _fd169993571;
  L958538993({
    required this.ezj1001735069,
    required this.pve435388095,
    required this.aj77244147,
    required NavigatorState l42732281,
  })  : _fd169993571 = l42732281,
        anc652312092 = ezj1001735069.settings.name,
        y153545877 = ezj1001735069.settings.arguments is Map<String, String>
            ? ezj1001735069.settings.arguments! as Map<String, String>
            : {},
        pxh968880735 = l42732281.hashCode,
        l1006262853 = l42732281.context {
    assert(this is Bmq666223541 || this is Z463560475);
  }

  factory L958538993.modal({
    required ModalRoute q454515577,
    required List<int> pve435388095,
    required int aj77244147,
    required NavigatorState l42732281,
  }) {
    return Bmq666223541._(
      q454515577: q454515577,
      pve435388095: pve435388095,
      aj77244147: aj77244147,
      l42732281: l42732281,
    );
  }

  factory L958538993.nonModal({
    required Route ezj1001735069,
    required List<int> pve435388095,
    required int aj77244147,
    required NavigatorState l42732281,
  }) {
    return Z463560475._(
      ezj1001735069: ezj1001735069,
      pve435388095: pve435388095,
      aj77244147: aj77244147,
      l42732281: l42732281,
    );
  }

  bool get y14448384 => ezj1001735069 is PopupRoute;

  @override
  bool operator ==(covariant L958538993 g304491475) {
    if (identical(this, g304491475)) return true;

    return g304491475.ezj1001735069 == ezj1001735069 &&
        g304491475.anc652312092 == anc652312092 &&
        g304491475.pve435388095 == pve435388095;
  }

  @override
  int get hashCode => ezj1001735069.hashCode;

  @override
  String toString() {
    return 'DxaRoute(route: $ezj1001735069, name: $anc652312092, arguments: $y153545877, nestedNavigatorsHashcode: $pve435388095)';
  }
}

class Bmq666223541 extends L958538993 with DxaRouteWithModalRederence {
  Bmq666223541._({
    required this.q454515577,
    required List<int> pve435388095,
    required int aj77244147,
    required NavigatorState l42732281,
  }) : super(
          ezj1001735069: q454515577,
          pve435388095: pve435388095,
          aj77244147: aj77244147,
          l42732281: l42732281,
        );
  final ModalRoute q454515577;
  bool get t447820029 => q454515577.opaque;
  BuildContext? get u304973453 => q454515577.subtreeContext;
  RenderObject? get v363205154 {
    return u304973453?.findRenderObject();
  }

  bool get q4311382 {
    final RenderObject? sx643260105 = v363205154;
    if (sx643260105 == null) return false;
    if (!v363205154!.gk778819526) {
      return false;
    }

    return sx643260105.m753636488;
  }

  J890753432 o1033552291(
    L958538993 uen219402680,
  ) =>
      J890753432(
        q454515577: ezj1001735069 as ModalRoute,
        pve435388095: pve435388095,
        aj77244147: aj77244147,
        uen219402680: uen219402680,
        l42732281: super._fd169993571,
      );
  @override
  Bmq666223541 nkt588000602() {
    return this;
  }
}

class J890753432 extends Bmq666223541 {
  final L958538993 uen219402680;

  J890753432({
    required ModalRoute q454515577,
    required List<int> pve435388095,
    required int aj77244147,
    required NavigatorState l42732281,
    required this.uen219402680,
  }) : super._(
          q454515577: q454515577,
          pve435388095: pve435388095,
          aj77244147: aj77244147,
          l42732281: l42732281,
        );
}

class Z463560475 extends L958538993 {
  Z463560475._({
    required Route ezj1001735069,
    required List<int> pve435388095,
    required int aj77244147,
    required NavigatorState l42732281,
  }) : super(
            ezj1001735069: ezj1001735069,
            pve435388095: pve435388095,
            aj77244147: aj77244147,
            l42732281: l42732281);
  T564237728 n101644416(
    Bmq666223541 nv49977727,
  ) =>
      T564237728(
        ezj1001735069: ezj1001735069,
        pve435388095: pve435388095,
        aj77244147: aj77244147,
        nv49977727: nv49977727,
        l42732281: super._fd169993571,
      );
}

class T564237728 extends Z463560475
    with DxaRouteWithModalRederence {
  final Bmq666223541 nv49977727;

  T564237728({
    required Route ezj1001735069,
    required List<int> pve435388095,
    required int aj77244147,
    required NavigatorState l42732281,
    required this.nv49977727,
  }) : super._(
          ezj1001735069: ezj1001735069,
          pve435388095: pve435388095,
          aj77244147: aj77244147,
          l42732281: l42732281,
        );

  @override
  Bmq666223541 nkt588000602() {
    return nv49977727;
  }
}

mixin DxaRouteWithModalRederence on L958538993 {
  Bmq666223541 nkt588000602();
}
