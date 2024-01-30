//
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/ng304042909.dart';

abstract class Kr958539299 {
  final Route ag1001734479;
  final String? n652311758;
  String? s533636436;
  final Map<String, String> ix153546311;
  final List<int> qfe435387501;
  final int zor968880269;
  final int w77243425;
  final BuildContext u1006262423;
  final NavigatorState _gl169994161;
  Kr958539299({
    required this.ag1001734479,
    required this.qfe435387501,
    required this.w77243425,
    required NavigatorState apj42731563,
  })  : _gl169994161 = apj42731563,
        n652311758 = ag1001734479.settings.name,
        ix153546311 = ag1001734479.settings.arguments is Map<String, String>
            ? ag1001734479.settings.arguments! as Map<String, String>
            : {},
        zor968880269 = apj42731563.hashCode,
        u1006262423 = apj42731563.context {
    assert(this is Eid666222951 || this is Fs463560137);
  }

  factory Kr958539299.modal({
    required ModalRoute t454515115,
    required List<int> qfe435387501,
    required int w77243425,
    required NavigatorState apj42731563,
  }) {
    return Eid666222951._(
      t454515115: t454515115,
      qfe435387501: qfe435387501,
      w77243425: w77243425,
      apj42731563: apj42731563,
    );
  }

  factory Kr958539299.nonModal({
    required Route ag1001734479,
    required List<int> qfe435387501,
    required int w77243425,
    required NavigatorState apj42731563,
  }) {
    return Fs463560137._(
      ag1001734479: ag1001734479,
      qfe435387501: qfe435387501,
      w77243425: w77243425,
      apj42731563: apj42731563,
    );
  }

  bool get z14448082 => ag1001734479 is PopupRoute;

  bool get g501560464 => (u1006262423 as Element).dirty;

  @override
  bool operator ==(covariant Kr958539299 n304490753) {
    if (identical(this, n304490753)) return true;

    return n304490753.ag1001734479 == ag1001734479 &&
        n304490753.n652311758 == n652311758 &&
        n304490753.qfe435387501 == qfe435387501;
  }

  @override
  int get hashCode => ag1001734479.hashCode;

  @override
  String toString() {
    return 'DxaRoute(route: $ag1001734479, name: $n652311758, arguments: $ix153546311, nestedNavigatorsHashcode: $qfe435387501)';
  }
}

class Eid666222951 extends Kr958539299 with DxaRouteWithModalRederence {
  Eid666222951._({
    required this.t454515115,
    required List<int> qfe435387501,
    required int w77243425,
    required NavigatorState apj42731563,
  }) : super(
          ag1001734479: t454515115,
          qfe435387501: qfe435387501,
          w77243425: w77243425,
          apj42731563: apj42731563,
        );
  final ModalRoute t454515115;
  bool get xly447820335 => t454515115.opaque;
  BuildContext? get r304972895 => t454515115.subtreeContext;
  RenderObject? get b363204848 {
    return r304972895?.findRenderObject();
  }

  bool get g4311940 {
    final RenderObject? vde643259419 = b363204848;
    if (vde643259419 == null) return false;
    if (!b363204848!.q778818836) {
      return false;
    }

    return vde643259419.da753636954;
  }

  Px890753866 mfj1033552753(
    Kr958539299 r219403114,
  ) =>
      Px890753866(
        t454515115: ag1001734479 as ModalRoute,
        qfe435387501: qfe435387501,
        w77243425: w77243425,
        r219403114: r219403114,
        apj42731563: super._gl169994161,
      );
  @override
  Eid666222951 y588001160() {
    return this;
  }
}

class Px890753866 extends Eid666222951 {
  final Kr958539299 r219403114;

  Px890753866({
    required ModalRoute t454515115,
    required List<int> qfe435387501,
    required int w77243425,
    required NavigatorState apj42731563,
    required this.r219403114,
  }) : super._(
          t454515115: t454515115,
          qfe435387501: qfe435387501,
          w77243425: w77243425,
          apj42731563: apj42731563,
        );
}

class Fs463560137 extends Kr958539299 {
  Fs463560137._({
    required Route ag1001734479,
    required List<int> qfe435387501,
    required int w77243425,
    required NavigatorState apj42731563,
  }) : super(
            ag1001734479: ag1001734479,
            qfe435387501: qfe435387501,
            w77243425: w77243425,
            apj42731563: apj42731563);
  P564238194 eeb101644882(
    Eid666222951 n49978285,
  ) =>
      P564238194(
        ag1001734479: ag1001734479,
        qfe435387501: qfe435387501,
        w77243425: w77243425,
        n49978285: n49978285,
        apj42731563: super._gl169994161,
      );
}

class P564238194 extends Fs463560137
    with DxaRouteWithModalRederence {
  final Eid666222951 n49978285;

  P564238194({
    required Route ag1001734479,
    required List<int> qfe435387501,
    required int w77243425,
    required NavigatorState apj42731563,
    required this.n49978285,
  }) : super._(
          ag1001734479: ag1001734479,
          qfe435387501: qfe435387501,
          w77243425: w77243425,
          apj42731563: apj42731563,
        );

  @override
  Eid666222951 y588001160() {
    return n49978285;
  }
}

mixin DxaRouteWithModalRederence on Kr958539299 {
  Eid666222951 y588001160();
}
