//
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/e304042568.dart';

abstract class Sio958539766 {
  final Route v1001734298;
  final String? g652311835;
  String? t533636225;
  final Map<String, String> e153546642;
  final List<int> w435387832;
  final int b968880472;
  final int iu77243892;
  final BuildContext k1006262594;
  final NavigatorState _b169993828;
  Sio958539766({
    required this.v1001734298,
    required this.w435387832,
    required this.iu77243892,
    required NavigatorState by42732030,
  })  : _b169993828 = by42732030,
        g652311835 = v1001734298.settings.name,
        e153546642 = v1001734298.settings.arguments is Map<String, String>
            ? v1001734298.settings.arguments! as Map<String, String>
            : {},
        b968880472 = by42732030.hashCode,
        k1006262594 = by42732030.context {
    assert(this is Oa666222770 || this is X463559708);
  }

  factory Sio958539766.modal({
    required ModalRoute atx454514814,
    required List<int> w435387832,
    required int iu77243892,
    required NavigatorState by42732030,
  }) {
    return Oa666222770._(
      atx454514814: atx454514814,
      w435387832: w435387832,
      iu77243892: iu77243892,
      by42732030: by42732030,
    );
  }

  factory Sio958539766.nonModal({
    required Route v1001734298,
    required List<int> w435387832,
    required int iu77243892,
    required NavigatorState by42732030,
  }) {
    return X463559708._(
      v1001734298: v1001734298,
      w435387832: w435387832,
      iu77243892: iu77243892,
      by42732030: by42732030,
    );
  }

  bool get g14447623 => v1001734298 is PopupRoute;

  bool get bjv501560645 => (k1006262594 as Element).dirty;

  @override
  bool operator ==(covariant Sio958539766 b304490708) {
    if (identical(this, b304490708)) return true;

    return b304490708.v1001734298 == v1001734298 &&
        b304490708.g652311835 == g652311835 &&
        b304490708.w435387832 == w435387832;
  }

  @override
  int get hashCode => v1001734298.hashCode;

  @override
  String toString() {
    return 'DxaRoute(route: $v1001734298, name: $g652311835, arguments: $e153546642, nestedNavigatorsHashcode: $w435387832)';
  }
}

class Oa666222770 extends Sio958539766 with DxaRouteWithModalRederence {
  Oa666222770._({
    required this.atx454514814,
    required List<int> w435387832,
    required int iu77243892,
    required NavigatorState by42732030,
  }) : super(
          v1001734298: atx454514814,
          w435387832: w435387832,
          iu77243892: iu77243892,
          by42732030: by42732030,
        );
  final ModalRoute atx454514814;
  bool get oi447820794 => atx454514814.opaque;
  BuildContext? get lvz304973194 => atx454514814.subtreeContext;
  RenderObject? get odo363204901 {
    return lvz304973194?.findRenderObject();
  }

  bool get v4311633 {
    final RenderObject? n643259854 = odo363204901;
    if (n643259854 == null) return false;
    if (!odo363204901!.h778818753) {
      return false;
    }

    return n643259854.d753637263;
  }

  R890753695 g1033552548(
    Sio958539766 quz219402943,
  ) =>
      R890753695(
        atx454514814: v1001734298 as ModalRoute,
        w435387832: w435387832,
        iu77243892: iu77243892,
        quz219402943: quz219402943,
        by42732030: super._b169993828,
      );
  @override
  Oa666222770 vd588000861() {
    return this;
  }
}

class R890753695 extends Oa666222770 {
  final Sio958539766 quz219402943;

  R890753695({
    required ModalRoute atx454514814,
    required List<int> w435387832,
    required int iu77243892,
    required NavigatorState by42732030,
    required this.quz219402943,
  }) : super._(
          atx454514814: atx454514814,
          w435387832: w435387832,
          iu77243892: iu77243892,
          by42732030: by42732030,
        );
}

class X463559708 extends Sio958539766 {
  X463559708._({
    required Route v1001734298,
    required List<int> w435387832,
    required int iu77243892,
    required NavigatorState by42732030,
  }) : super(
            v1001734298: v1001734298,
            w435387832: w435387832,
            iu77243892: iu77243892,
            by42732030: by42732030);
  V564237991 foj101645191(
    Oa666222770 pk49977976,
  ) =>
      V564237991(
        v1001734298: v1001734298,
        w435387832: w435387832,
        iu77243892: iu77243892,
        pk49977976: pk49977976,
        by42732030: super._b169993828,
      );
}

class V564237991 extends X463559708
    with DxaRouteWithModalRederence {
  final Oa666222770 pk49977976;

  V564237991({
    required Route v1001734298,
    required List<int> w435387832,
    required int iu77243892,
    required NavigatorState by42732030,
    required this.pk49977976,
  }) : super._(
          v1001734298: v1001734298,
          w435387832: w435387832,
          iu77243892: iu77243892,
          by42732030: by42732030,
        );

  @override
  Oa666222770 vd588000861() {
    return pk49977976;
  }
}

mixin DxaRouteWithModalRederence on Sio958539766 {
  Oa666222770 vd588000861();
}
