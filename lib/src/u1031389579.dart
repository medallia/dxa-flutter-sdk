//
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/llc304042029.dart';

abstract class Zs958539155 {
  final Route ahj1001734911;
  final String? m652312446;
  String? x533636836;
  final RouteSettings tum65232472;
  final List<int> rws435388381;
  final int ch968880957;
  final int ax77244305;
  final BuildContext kzi1006263079;
  final NavigatorState _h169993217;
  Zs958539155({
    required this.ahj1001734911,
    required this.rws435388381,
    required this.ax77244305,
    required NavigatorState dd42732443,
  })  : _h169993217 = dd42732443,
        m652312446 = ahj1001734911.settings.name,
        tum65232472 = ahj1001734911.settings,
        ch968880957 = dd42732443.hashCode,
        kzi1006263079 = dd42732443.context {
    assert(this is Y666223319 || this is C463560313);
  }

  factory Zs958539155.modal({
    required ModalRoute mmu454515227,
    required List<int> rws435388381,
    required int ax77244305,
    required NavigatorState dd42732443,
  }) {
    return Y666223319._(
      mmu454515227: mmu454515227,
      rws435388381: rws435388381,
      ax77244305: ax77244305,
      dd42732443: dd42732443,
    );
  }

  factory Zs958539155.nonModal({
    required Route ahj1001734911,
    required List<int> rws435388381,
    required int ax77244305,
    required NavigatorState dd42732443,
  }) {
    return C463560313._(
      ahj1001734911: ahj1001734911,
      rws435388381: rws435388381,
      ax77244305: ax77244305,
      dd42732443: dd42732443,
    );
  }

  bool get yts14448226 => ahj1001734911 is PopupRoute;

  @override
  bool operator ==(covariant Zs958539155 wz304491185) {
    if (identical(this, wz304491185)) return true;

    return wz304491185.ahj1001734911 == ahj1001734911 &&
        wz304491185.m652312446 == m652312446 &&
        wz304491185.rws435388381 == rws435388381;
  }

  @override
  int get hashCode => ahj1001734911.hashCode;

  @override
  String toString() {
    return 'DxaRoute(route: $ahj1001734911, name: $m652312446, routeSettings: $tum65232472, nestedNavigatorsHashcode: $rws435388381)';
  }
}

class Y666223319 extends Zs958539155 with DxaRouteWithModalReference {
  Y666223319._({
    required this.mmu454515227,
    required super.rws435388381,
    required super.ax77244305,
    required super.dd42732443,
  }) : super(
          ahj1001734911: mmu454515227,
        );
  final ModalRoute mmu454515227;
  bool get w447820191 => mmu454515227.opaque;
  BuildContext? get q304973807 => mmu454515227.subtreeContext;
  RenderObject? get cs363205440 {
    return q304973807?.findRenderObject();
  }

  bool get bxx4311092 {
    final RenderObject? gcx643260331 = cs363205440;
    if (gcx643260331 == null) return false;
    if (!cs363205440!.cvz778819236) {
      return false;
    }

    return gcx643260331.bsc753636842;
  }

  Mif890753274 m1033552065(
    Zs958539155 ob219402458,
  ) =>
      Mif890753274(
        mmu454515227: ahj1001734911 as ModalRoute,
        rws435388381: rws435388381,
        ax77244305: ax77244305,
        ob219402458: ob219402458,
        dd42732443: super._h169993217,
      );
  @override
  Y666223319 yom588000312() {
    return this;
  }
}

class Mif890753274 extends Y666223319 {
  final Zs958539155 ob219402458;

  Mif890753274({
    required super.mmu454515227,
    required super.rws435388381,
    required super.ax77244305,
    required super.dd42732443,
    required this.ob219402458,
  }) : super._();
}

class C463560313 extends Zs958539155 {
  C463560313._({
    required super.ahj1001734911,
    required super.rws435388381,
    required super.ax77244305,
    required super.dd42732443,
  });
  Glm564237506 dh101644770(
    Y666223319 i49977373,
  ) =>
      Glm564237506(
        ahj1001734911: ahj1001734911,
        rws435388381: rws435388381,
        ax77244305: ax77244305,
        i49977373: i49977373,
        dd42732443: super._h169993217,
      );
}

class Glm564237506 extends C463560313
    with DxaRouteWithModalReference {
  final Y666223319 i49977373;

  Glm564237506({
    required super.ahj1001734911,
    required super.rws435388381,
    required super.ax77244305,
    required super.dd42732443,
    required this.i49977373,
  }) : super._();

  @override
  Y666223319 yom588000312() {
    return i49977373;
  }
}

mixin DxaRouteWithModalReference on Zs958539155 {
  Y666223319 yom588000312();
}
