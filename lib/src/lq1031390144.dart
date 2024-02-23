//
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/kb304042598.dart';

abstract class Iag958539736 {
  final Route o1001734324;
  final String? dxl652311861;
  String? kax533636271;
  final Map<String, String> n153546684;
  final List<int> f435387798;
  final int g968880502;
  final int i77243866;
  final BuildContext ygj1006262636;
  final NavigatorState _z169993802;
  Iag958539736({
    required this.o1001734324,
    required this.f435387798,
    required this.i77243866,
    required NavigatorState qnu42731984,
  })  : _z169993802 = qnu42731984,
        dxl652311861 = o1001734324.settings.name,
        n153546684 = o1001734324.settings.arguments is Map<String, String>
            ? o1001734324.settings.arguments! as Map<String, String>
            : {},
        g968880502 = qnu42731984.hashCode,
        ygj1006262636 = qnu42731984.context {
    assert(this is Ipv666222748 || this is Tk463559730);
  }

  factory Iag958539736.modal({
    required ModalRoute dpb454514768,
    required List<int> f435387798,
    required int i77243866,
    required NavigatorState qnu42731984,
  }) {
    return Ipv666222748._(
      dpb454514768: dpb454514768,
      f435387798: f435387798,
      i77243866: i77243866,
      qnu42731984: qnu42731984,
    );
  }

  factory Iag958539736.nonModal({
    required Route o1001734324,
    required List<int> f435387798,
    required int i77243866,
    required NavigatorState qnu42731984,
  }) {
    return Tk463559730._(
      o1001734324: o1001734324,
      f435387798: f435387798,
      i77243866: i77243866,
      qnu42731984: qnu42731984,
    );
  }

  bool get eay14447657 => o1001734324 is PopupRoute;

  bool get zz501560683 => (ygj1006262636 as Element).dirty;

  @override
  bool operator ==(covariant Iag958539736 ll304490746) {
    if (identical(this, ll304490746)) return true;

    return ll304490746.o1001734324 == o1001734324 &&
        ll304490746.dxl652311861 == dxl652311861 &&
        ll304490746.f435387798 == f435387798;
  }

  @override
  int get hashCode => o1001734324.hashCode;

  @override
  String toString() {
    return 'DxaRoute(route: $o1001734324, name: $dxl652311861, arguments: $n153546684, nestedNavigatorsHashcode: $f435387798)';
  }
}

class Ipv666222748 extends Iag958539736 with DxaRouteWithModalRederence {
  Ipv666222748._({
    required this.dpb454514768,
    required List<int> f435387798,
    required int i77243866,
    required NavigatorState qnu42731984,
  }) : super(
          o1001734324: dpb454514768,
          f435387798: f435387798,
          i77243866: i77243866,
          qnu42731984: qnu42731984,
        );
  final ModalRoute dpb454514768;
  bool get r447820756 => dpb454514768.opaque;
  BuildContext? get uc304973220 => dpb454514768.subtreeContext;
  RenderObject? get jxz363204875 {
    return uc304973220?.findRenderObject();
  }

  bool get qyo4311679 {
    final RenderObject? pii643259872 = jxz363204875;
    if (pii643259872 == null) return false;
    if (!jxz363204875!.mla778818799) {
      return false;
    }

    return pii643259872.bl753637281;
  }

  Lr890753713 ypz1033552522(
    Iag958539736 uum219402897,
  ) =>
      Lr890753713(
        dpb454514768: o1001734324 as ModalRoute,
        f435387798: f435387798,
        i77243866: i77243866,
        uum219402897: uum219402897,
        qnu42731984: super._z169993802,
      );
  @override
  Ipv666222748 ybl588000883() {
    return this;
  }
}

class Lr890753713 extends Ipv666222748 {
  final Iag958539736 uum219402897;

  Lr890753713({
    required ModalRoute dpb454514768,
    required List<int> f435387798,
    required int i77243866,
    required NavigatorState qnu42731984,
    required this.uum219402897,
  }) : super._(
          dpb454514768: dpb454514768,
          f435387798: f435387798,
          i77243866: i77243866,
          qnu42731984: qnu42731984,
        );
}

class Tk463559730 extends Iag958539736 {
  Tk463559730._({
    required Route o1001734324,
    required List<int> f435387798,
    required int i77243866,
    required NavigatorState qnu42731984,
  }) : super(
            o1001734324: o1001734324,
            f435387798: f435387798,
            i77243866: i77243866,
            qnu42731984: qnu42731984);
  Pi564237961 anz101645225(
    Ipv666222748 p49977942,
  ) =>
      Pi564237961(
        o1001734324: o1001734324,
        f435387798: f435387798,
        i77243866: i77243866,
        p49977942: p49977942,
        qnu42731984: super._z169993802,
      );
}

class Pi564237961 extends Tk463559730
    with DxaRouteWithModalRederence {
  final Ipv666222748 p49977942;

  Pi564237961({
    required Route o1001734324,
    required List<int> f435387798,
    required int i77243866,
    required NavigatorState qnu42731984,
    required this.p49977942,
  }) : super._(
          o1001734324: o1001734324,
          f435387798: f435387798,
          i77243866: i77243866,
          qnu42731984: qnu42731984,
        );

  @override
  Ipv666222748 ybl588000883() {
    return p49977942;
  }
}

mixin DxaRouteWithModalRederence on Iag958539736 {
  Ipv666222748 ybl588000883();
}
