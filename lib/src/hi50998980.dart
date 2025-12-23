//
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/kmb249196592.dart';

abstract class Kt958539476 {
  final Route n1001734584;
  final String? bf652311609;
  String? cog533636515;
  final RouteSettings nen65232159;
  final List<int> l435387546;
  final int gbf968880250;
  final int k77243606;
  final BuildContext uz1006262368;
  final NavigatorState _iyo169994054;
  Kt958539476({
    required this.n1001734584,
    required this.l435387546,
    required this.k77243606,
    required NavigatorState f42731740,
  })  : _iyo169994054 = f42731740,
        bf652311609 = n1001734584.settings.name,
        nen65232159 = n1001734584.settings,
        gbf968880250 = f42731740.hashCode,
        uz1006262368 = f42731740.context {
    assert(this is V666222992 || this is Gca463559998);
  }

  factory Kt958539476.modal({
    required ModalRoute qr454515036,
    required List<int> l435387546,
    required int k77243606,
    required NavigatorState f42731740,
  }) {
    return V666222992._(
      qr454515036: qr454515036,
      l435387546: l435387546,
      k77243606: k77243606,
      f42731740: f42731740,
    );
  }

  factory Kt958539476.nonModal({
    required Route n1001734584,
    required List<int> l435387546,
    required int k77243606,
    required NavigatorState f42731740,
  }) {
    return Gca463559998._(
      n1001734584: n1001734584,
      l435387546: l435387546,
      k77243606: k77243606,
      f42731740: f42731740,
    );
  }

  bool get pdu14447909 => n1001734584 is PopupRoute;

  @override
  bool operator ==(covariant Kt958539476 u304490998) {
    if (identical(this, u304490998)) return true;

    return u304490998.n1001734584 == n1001734584 &&
        u304490998.bf652311609 == bf652311609 &&
        u304490998.l435387546 == l435387546;
  }

  @override
  int get hashCode => n1001734584.hashCode;

  @override
  String toString() {
    return 'DxaRoute(route: $n1001734584, name: $bf652311609, routeSettings: $nen65232159, nestedNavigatorsHashcode: $l435387546)';
  }
}

class V666222992 extends Kt958539476 with DxaRouteWithModalReference {
  V666222992._({
    required this.qr454515036,
    required super.l435387546,
    required super.k77243606,
    required super.f42731740,
  }) : super(
          n1001734584: qr454515036,
        );
  final ModalRoute qr454515036;
  bool get w447820504 => qr454515036.opaque;
  BuildContext? get lqo304972968 => qr454515036.subtreeContext;
  RenderObject? get oz363204615 {
    return lqo304972968?.findRenderObject();
  }

  bool get ywg4311923 {
    final RenderObject? oif643259628 = oz363204615;
    if (oif643259628 == null) return false;
    if (!oz363204615!.iwj778819043) {
      return false;
    }

    return oif643259628.m753637037;
  }

  Lub890753981 lw1033552774(
    Kt958539476 dwl219403165,
  ) =>
      Lub890753981(
        qr454515036: n1001734584 as ModalRoute,
        l435387546: l435387546,
        k77243606: k77243606,
        dwl219403165: dwl219403165,
        f42731740: super._iyo169994054,
      );
  @override
  V666222992 pp588001151() {
    return this;
  }
}

class Lub890753981 extends V666222992 {
  final Kt958539476 dwl219403165;

  Lub890753981({
    required super.qr454515036,
    required super.l435387546,
    required super.k77243606,
    required super.f42731740,
    required this.dwl219403165,
  }) : super._();
}

class Gca463559998 extends Kt958539476 {
  Gca463559998._({
    required super.n1001734584,
    required super.l435387546,
    required super.k77243606,
    required super.f42731740,
  });
  Bd564238213 axc101644965(
    V666222992 ind49978202,
  ) =>
      Bd564238213(
        n1001734584: n1001734584,
        l435387546: l435387546,
        k77243606: k77243606,
        ind49978202: ind49978202,
        f42731740: super._iyo169994054,
      );
}

class Bd564238213 extends Gca463559998
    with DxaRouteWithModalReference {
  final V666222992 ind49978202;

  Bd564238213({
    required super.n1001734584,
    required super.l435387546,
    required super.k77243606,
    required super.f42731740,
    required this.ind49978202,
  }) : super._();

  @override
  V666222992 pp588001151() {
    return ind49978202;
  }
}

mixin DxaRouteWithModalReference on Kt958539476 {
  V666222992 pp588001151();
}
