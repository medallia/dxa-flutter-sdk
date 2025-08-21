//
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/hk249196801.dart';

abstract class X958539749 {
  final Route mo1001734281;
  final String? fmx652311816;
  String? wdu533636242;
  final RouteSettings ra65231918;
  final List<int> wo435387819;
  final int s968880459;
  final int jnp77243879;
  final BuildContext h1006262609;
  final NavigatorState _zz169993847;
  X958539749({
    required this.mo1001734281,
    required this.wo435387819,
    required this.jnp77243879,
    required NavigatorState m42732013,
  })  : _zz169993847 = m42732013,
        fmx652311816 = mo1001734281.settings.name,
        ra65231918 = mo1001734281.settings,
        s968880459 = m42732013.hashCode,
        h1006262609 = m42732013.context {
    assert(this is Tpn666222753 || this is B463559695);
  }

  factory X958539749.modal({
    required ModalRoute uo454514797,
    required List<int> wo435387819,
    required int jnp77243879,
    required NavigatorState m42732013,
  }) {
    return Tpn666222753._(
      uo454514797: uo454514797,
      wo435387819: wo435387819,
      jnp77243879: jnp77243879,
      m42732013: m42732013,
    );
  }

  factory X958539749.nonModal({
    required Route mo1001734281,
    required List<int> wo435387819,
    required int jnp77243879,
    required NavigatorState m42732013,
  }) {
    return B463559695._(
      mo1001734281: mo1001734281,
      wo435387819: wo435387819,
      jnp77243879: jnp77243879,
      m42732013: m42732013,
    );
  }

  bool get np14447636 => mo1001734281 is PopupRoute;

  @override
  bool operator ==(covariant X958539749 s304490695) {
    if (identical(this, s304490695)) return true;

    return s304490695.mo1001734281 == mo1001734281 &&
        s304490695.fmx652311816 == fmx652311816 &&
        s304490695.wo435387819 == wo435387819;
  }

  @override
  int get hashCode => mo1001734281.hashCode;

  @override
  String toString() {
    return 'DxaRoute(route: $mo1001734281, name: $fmx652311816, routeSettings: $ra65231918, nestedNavigatorsHashcode: $wo435387819)';
  }
}

class Tpn666222753 extends X958539749 with DxaRouteWithModalReference {
  Tpn666222753._({
    required this.uo454514797,
    required super.wo435387819,
    required super.jnp77243879,
    required super.m42732013,
  }) : super(
          mo1001734281: uo454514797,
        );
  final ModalRoute uo454514797;
  bool get vxj447820777 => uo454514797.opaque;
  BuildContext? get gn304973209 => uo454514797.subtreeContext;
  RenderObject? get pyw363204918 {
    return gn304973209?.findRenderObject();
  }

  bool get u4311618 {
    final RenderObject? hmq643259869 = pyw363204918;
    if (hmq643259869 == null) return false;
    if (!pyw363204918!.r778818770) {
      return false;
    }

    return hmq643259869.to753637276;
  }

  G890753676 c1033552567(
    X958539749 ugs219402924,
  ) =>
      G890753676(
        uo454514797: mo1001734281 as ModalRoute,
        wo435387819: wo435387819,
        jnp77243879: jnp77243879,
        ugs219402924: ugs219402924,
        m42732013: super._zz169993847,
      );
  @override
  Tpn666222753 tq588000846() {
    return this;
  }
}

class G890753676 extends Tpn666222753 {
  final X958539749 ugs219402924;

  G890753676({
    required super.uo454514797,
    required super.wo435387819,
    required super.jnp77243879,
    required super.m42732013,
    required this.ugs219402924,
  }) : super._();
}

class B463559695 extends X958539749 {
  B463559695._({
    required super.mo1001734281,
    required super.wo435387819,
    required super.jnp77243879,
    required super.m42732013,
  });
  Ev564238004 kn101645204(
    Tpn666222753 k49977963,
  ) =>
      Ev564238004(
        mo1001734281: mo1001734281,
        wo435387819: wo435387819,
        jnp77243879: jnp77243879,
        k49977963: k49977963,
        m42732013: super._zz169993847,
      );
}

class Ev564238004 extends B463559695
    with DxaRouteWithModalReference {
  final Tpn666222753 k49977963;

  Ev564238004({
    required super.mo1001734281,
    required super.wo435387819,
    required super.jnp77243879,
    required super.m42732013,
    required this.k49977963,
  }) : super._();

  @override
  Tpn666222753 tq588000846() {
    return k49977963;
  }
}

mixin DxaRouteWithModalReference on X958539749 {
  Tpn666222753 tq588000846();
}
