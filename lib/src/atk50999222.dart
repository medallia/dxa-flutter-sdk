//
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/de249196866.dart';

abstract class Z958539686 {
  final Route dfy1001734346;
  final String? iwu652311883;
  String? abw533636305;
  final RouteSettings p65231981;
  final List<int> h435387880;
  final int jl968880392;
  final int sz77243812;
  final BuildContext lls1006262546;
  final NavigatorState _nmy169993780;
  Z958539686({
    required this.dfy1001734346,
    required this.h435387880,
    required this.sz77243812,
    required NavigatorState m42731950,
  })  : _nmy169993780 = m42731950,
        iwu652311883 = dfy1001734346.settings.name,
        p65231981 = dfy1001734346.settings,
        jl968880392 = m42731950.hashCode,
        lls1006262546 = m42731950.context {
    assert(this is Gs666222818 || this is Oo463559756);
  }

  factory Z958539686.modal({
    required ModalRoute ot454514734,
    required List<int> h435387880,
    required int sz77243812,
    required NavigatorState m42731950,
  }) {
    return Gs666222818._(
      ot454514734: ot454514734,
      h435387880: h435387880,
      sz77243812: sz77243812,
      m42731950: m42731950,
    );
  }

  factory Z958539686.nonModal({
    required Route dfy1001734346,
    required List<int> h435387880,
    required int sz77243812,
    required NavigatorState m42731950,
  }) {
    return Oo463559756._(
      dfy1001734346: dfy1001734346,
      h435387880: h435387880,
      sz77243812: sz77243812,
      m42731950: m42731950,
    );
  }

  bool get xk14447703 => dfy1001734346 is PopupRoute;

  @override
  bool operator ==(covariant Z958539686 lb304490628) {
    if (identical(this, lb304490628)) return true;

    return lb304490628.dfy1001734346 == dfy1001734346 &&
        lb304490628.iwu652311883 == iwu652311883 &&
        lb304490628.h435387880 == h435387880;
  }

  @override
  int get hashCode => dfy1001734346.hashCode;

  @override
  String toString() {
    return 'DxaRoute(route: $dfy1001734346, name: $iwu652311883, routeSettings: $p65231981, nestedNavigatorsHashcode: $h435387880)';
  }
}

class Gs666222818 extends Z958539686 with DxaRouteWithModalReference {
  Gs666222818._({
    required this.ot454514734,
    required super.h435387880,
    required super.sz77243812,
    required super.m42731950,
  }) : super(
          dfy1001734346: ot454514734,
        );
  final ModalRoute ot454514734;
  bool get vm447820714 => ot454514734.opaque;
  BuildContext? get nc304973274 => ot454514734.subtreeContext;
  RenderObject? get lke363204981 {
    return nc304973274?.findRenderObject();
  }

  bool get kh4311553 {
    final RenderObject? i643259806 = lke363204981;
    if (i643259806 == null) return false;
    if (!lke363204981!.a778818705) {
      return false;
    }

    return i643259806.kvb753637343;
  }

  Gc890753743 f1033552628(
    Z958539686 j219402991,
  ) =>
      Gc890753743(
        ot454514734: dfy1001734346 as ModalRoute,
        h435387880: h435387880,
        sz77243812: sz77243812,
        j219402991: j219402991,
        m42731950: super._nmy169993780,
      );
  @override
  Gs666222818 h588000781() {
    return this;
  }
}

class Gc890753743 extends Gs666222818 {
  final Z958539686 j219402991;

  Gc890753743({
    required super.ot454514734,
    required super.h435387880,
    required super.sz77243812,
    required super.m42731950,
    required this.j219402991,
  }) : super._();
}

class Oo463559756 extends Z958539686 {
  Oo463559756._({
    required super.dfy1001734346,
    required super.h435387880,
    required super.sz77243812,
    required super.m42731950,
  });
  S564238071 n101645271(
    Gs666222818 tv49977896,
  ) =>
      S564238071(
        dfy1001734346: dfy1001734346,
        h435387880: h435387880,
        sz77243812: sz77243812,
        tv49977896: tv49977896,
        m42731950: super._nmy169993780,
      );
}

class S564238071 extends Oo463559756
    with DxaRouteWithModalReference {
  final Gs666222818 tv49977896;

  S564238071({
    required super.dfy1001734346,
    required super.h435387880,
    required super.sz77243812,
    required super.m42731950,
    required this.tv49977896,
  }) : super._();

  @override
  Gs666222818 h588000781() {
    return tv49977896;
  }
}

mixin DxaRouteWithModalReference on Z958539686 {
  Gs666222818 h588000781();
}
