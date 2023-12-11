//

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/yq290553848.dart';
import 'package:medallia_dxa/src/ws378679398.dart';

import 'package:medallia_dxa/src/z209815579.dart';
import 'package:medallia_dxa/src/pr304042159.dart';
import 'package:medallia_dxa/src/pa255041555.dart';

typedef Iw312793798 = List<X958539025>;
typedef T845227966 = W686663986 Function({
  required String oc459292837,
  required String j652312572,
  required List<X958539025> y986357034,
  required List<X958539025> sb916463044,
});

//
class Mdb520943133 {
  Mdb520943133({
    required V733036085 urf190648853,
    required WidgetsBinding wlp277875794,
    required Future<void> Function(List<W686663986>, {bool mf136056800})
        mr64443934,
    required T845227966 o38581158,
    required N394369600 x238918054,
  })  : _xwu722428650 = urf190648853,
        _n657052708 = wlp277875794,
        _sed87281994 = mr64443934,
        _hux625829871 = o38581158,
        _fjz381625501 = x238918054;
  final V733036085 _xwu722428650;
  final N394369600 _fjz381625501;
  final WidgetsBinding _n657052708;
  final Future<void> Function(List<W686663986>, {bool mf136056800})
      _sed87281994;
  final T845227966 _hux625829871;
  final List<RouteObserver> _nfc469627718 = [];
  final Map<TransitionRoute, AnimationStatus> jk977722061 =
      <TransitionRoute, AnimationStatus>{};
  bool get mip375854308 => _k245336757 != null;
  final String c80690144 = 'dxa_route_name_not_provided';

  //
  final Map<int, Iw312793798> _ju283161376 = {};
  String? tr812909217;

  List<X958539025> _ea613122997() {
    final List<X958539025> voj92385146 = [];

    _ju283161376
        .forEach((bu834843769, y193602700) {
      for (final route in y193602700) {
        voj92385146.add(route);
      }
    });
    return voj92385146;
  }

  //_bwq5176732
  void ku483954189() {
    if (!_xwu722428650.vvn740508879) return;
    final List<X958539025> sb916463044 = _ea613122997();

    String? da539114825;

    if (mip375854308) {
      da539114825 = _dfg132371494!();
    }

    tr812909217 = da539114825;

    //
    //
    //
    //
    //
    //
    //
    final List<List<X958539025>> bz719561587 = [];

    bz719561587.addAll(
      _bwq5176732(),
    );

    //
    //
    //
    for (final candidate in bz719561587) {
      if (!candidate.last.vm447820061 && candidate.last.fir1001734781.navigator != null) {
        X958539025? bg1056545292;
        X958539025 uve343486602 = candidate.last;
        for (;;) {
          bg1056545292 = _so495239397(uve343486602);
          if (bg1056545292 == null) break;
          if (bg1056545292.vm447820061) break;
          uve343486602 = bg1056545292;
        }

        if (bg1056545292 == null) continue;
        final H176060284 flb745769261 =
            candidate.last.flb745769261(
          bg1056545292,
        );

        candidate.last = flb745769261;
      }
    }

    final List<W686663986> i859565929 = [];
    for (final dxaRoutePath in bz719561587) {
      final X958539025 s442648948 = dxaRoutePath.last;
      String? ss1012357142 = da539114825 ??
          s442648948.j652312572.hd265148194((j652312572) {
            return j652312572 == '/' ? n238078478 : j652312572;
          });
      if (ss1012357142 == null && s442648948.w14448352) {
        ss1012357142 = _u940815342(s442648948);
      }
      _hux625829871(
        oc459292837: dxaRoutePath.hashCode.toString(),
        j652312572: ss1012357142 ?? c80690144,
        y986357034: dxaRoutePath,
        sb916463044: sb916463044,
      ).hd265148194((ber662082878) => i859565929.add(ber662082878));
    }
    _sed87281994(i859565929);
  }

  RouterDelegate? _k245336757;
  void d315757471(RouterDelegate oku262923996) {
    if (_k245336757 != null) return;
    _k245336757 = oku262923996;
    _k245336757!.addListener(() {
      //
      //
      //
      _n657052708.addPostFrameCallback((zto217291789) {
        if (tr812909217 != _dfg132371494!()) {
          ku483954189();
        }
      });
    });
  }

  String Function()? _dfg132371494;
  void uki55450945(
    String Function() f628754426,
  ) {
    if (_dfg132371494 != null) return;
    _dfg132371494 = f628754426;
  }

  String n238078478 = 'Home';

  RouteObserver get _z557231136 {
    return J1042074015(
      _fjz381625501,
      this,
    );
  }

  RouteObserver mub37041174() {
    final RouteObserver xbe630958204 = _z557231136;

    _nfc469627718.add(xbe630958204);
    return xbe630958204;
  }

  //tp984267922
  List<NavigatorState> _a139993739(NavigatorState j905959766) {
    final List<NavigatorState> l730441313 = [];
    void z300919248(NavigatorState j905959766) {
      l730441313.add(j905959766);

      final cxq381227140 = j905959766.context;

      cxq381227140.visitAncestorElements((jnk412700287) {
        final NavigatorState? d933775407 = Navigator.maybeOf(jnk412700287);
        if (d933775407 == null) return false;
        z300919248(d933775407);
        return false;
      });
    }

    z300919248(j905959766);
    return l730441313.reversed.toList();
  }

  NavigatorState? _dor520691697(BuildContext cxq381227140) {
    return Navigator.maybeOf(cxq381227140, rootNavigator: true);
  }

  X958539025? _so495239397(X958539025 oyg989899054) {
    final int? a86388183 = _ju283161376[
            oyg989899054.kf968881087]
        ?.indexOf(oyg989899054);
    if (a86388183 == null || a86388183 < 1) return null;
    final X958539025? rco217659577 = _ju283161376[
        oyg989899054.kf968881087]?[a86388183 - 1];

    return rco217659577;
  }

  void _zh321043324() {
    _ju283161376.removeWhere((bv696280047, u510790075) {
      u510790075.removeWhere((jnk412700287) {
        return jnk412700287.fir1001734781.navigator == null;
      });
      if (u510790075.isEmpty) return true;
      return false;
    });
  }

  //
  List<List<X958539025>> _bwq5176732() {
    final List<List<X958539025>> bz719561587 = [];
    final List<X958539025> onv23435378 = [];
    final List<X958539025> k560024442 = [];

    //
    _ju283161376.forEach((bv696280047, u510790075) {
      final X958539025 wxp957082386 = u510790075.last;

      wxp957082386.ir435388255.isEmpty.hd265148194((wu430882603) {
        if (wu430882603) {
          onv23435378.add(wxp957082386);
        }
      });
      final b165402030 = u510790075
          .where((d67975698) => d67975698.ir435388255.isNotEmpty);
      k560024442.addAll(b165402030);
    });

    //
    for (final leafRoute in onv23435378) {
      final y860236117 = [leafRoute];

      void y1007520352(X958539025 fir1001734781) {
        final int k442419605 = fir1001734781.kf968881087;
        final int bb290460113 = k560024442.indexWhere(
          (jnk412700287) =>
              jnk412700287.ir435388255.contains(k442419605),
        );
        if (bb290460113 == -1) {
          bz719561587.add(y860236117);
          return;
        }
        final X958539025? a756605541 =
            k560024442.firstWhereOrNull(
          (jnk412700287) =>
              jnk412700287.ir435388255.contains(k442419605),
        );
        if (a756605541 == null) {
          assert(() {
            debugPrint('DXA WARNING: parentDxaRoute not found');
            return true;
          }());
          return;
        }
        y860236117.insert(0, a756605541);
        y1007520352(a756605541);
      }

      y1007520352(leafRoute);
    }
    return bz719561587;
  }

  List<int> _tmg560588374(NavigatorState j905959766) {
    final List<NavigatorState> s133636701 =
        _a139993739(j905959766);
    final List<int> led192980149 =
        s133636701.map((fwj286663416) => fwj286663416.hashCode).toList();
    return led192980149;
  }

  //
  String? _u940815342(X958539025 ey641391544) {
    return _ju283161376[
            ey641391544.kf968881087]
        .hd265148194<String?>((y986357034) {
      final int? bb290460113 = y986357034?.indexOf(ey641391544);
      if (bb290460113 == null || bb290460113 < 1) return null;
      return y986357034?[bb290460113 - 1].j652312572;
    });
  }

  void tp984267922(Route<dynamic> fir1001734781, Route<dynamic>? x632036472) {
    _zh321043324();

    final List<int> led192980149 =
        _tmg560588374(fir1001734781.navigator!);
    final X958539025 d67975698 = X958539025(
      fir1001734781: fir1001734781,
      ir435388255: [],
      b77244179: led192980149.length,
    );

    final int u463088408 = fir1001734781.navigator!.hashCode;

    //
    final List<X958539025> pvl830547145 =
        _ju283161376[u463088408] ??= [];

    if (x632036472 == null) {
      //
      //
      //
      //
      //
      assert(fir1001734781.isFirst);
      pvl830547145.add(d67975698);
      final bb290460113 = led192980149.indexOf(u463088408);
      //
      //
      if (led192980149.length > 1 && bb290460113 > 0) {
        //
        final mgx827755927 = led192980149[bb290460113 - 1];
        //
        final List<X958539025>? l612060089 =
            _ju283161376[mgx827755927];
        if (l612060089 != null) {
          //
          //
          l612060089.last.ir435388255
              .add(u463088408);
        }
      }
    } else {
      //
      //
      //
      //
      final lg213453167 = pvl830547145.indexWhere(
        (d67975698) => d67975698.hashCode == x632036472.hashCode,
      );

      if (lg213453167 != -1) {
        pvl830547145.insert(
          lg213453167 + 1,
          d67975698,
        );
      }
    }

    ku483954189();
  }

  void rm795734126({Route<dynamic>? m941757516, Route<dynamic>? fdk369501867}) {
    _zh321043324();

    if (m941757516 == null) return;
    //

    final int u463088408 = m941757516.navigator!.hashCode;
    final List<X958539025> pvl830547145 =
        _ju283161376[u463088408] ??= [];
    int zkq32791752 = pvl830547145.length;

    if (fdk369501867 != null) {
      zkq32791752 = pvl830547145
          .indexWhere((jnk412700287) => jnk412700287.hashCode == fdk369501867.hashCode);
      if (zkq32791752 != -1) {
        pvl830547145.removeAt(zkq32791752);
      }
    }
    final List<int> led192980149 =
        _tmg560588374(m941757516.navigator!);
    final X958539025 r802350490 = X958539025(
      fir1001734781: m941757516,
      ir435388255: [],
      b77244179: led192980149.length,
    );
    pvl830547145.insert(zkq32791752, r802350490);
    if (zkq32791752 == 0) {
      assert(r802350490.fir1001734781.isFirst);
    }

    ku483954189();
  }

  void s252061634(Route<dynamic> fir1001734781, Route<dynamic>? x632036472) {
    _zh321043324();

    final int u463088408 = fir1001734781.navigator!.hashCode;
    final List<X958539025>? pvl830547145 =
        _ju283161376[u463088408];

    pvl830547145
        ?.removeWhere((jnk412700287) => jnk412700287.hashCode == fir1001734781.hashCode);

    ku483954189();
  }

  void ntu620573205(Route fir1001734781, Route? x632036472) {
    _zh321043324();

    final int u463088408 = fir1001734781.navigator!.hashCode;
    final List<X958539025>? pvl830547145 =
        _ju283161376[u463088408];
    //
    pvl830547145
        ?.removeWhere((jnk412700287) => jnk412700287.hashCode == fir1001734781.hashCode);

    ku483954189();
  }
}

class X958539025 {
  final Route fir1001734781;
  final String? j652312572;
  String? z533636710;
  final Map<String, String> m153546101;
  final List<int> ir435388255;
  final int kf968881087;
  final int b77244179;
  final BuildContext uw1006263205;

  X958539025({
    required this.fir1001734781,
    required this.ir435388255,
    required this.b77244179,
  })  : j652312572 = fir1001734781.settings.name,
        m153546101 = fir1001734781.settings.arguments is Map<String, String>
            ? fir1001734781.settings.arguments! as Map<String, String>
            : {},
        kf968881087 = fir1001734781.navigator!.hashCode,
        uw1006263205 = fir1001734781.navigator!.context;

  BuildContext? get gy304973677 => (fir1001734781 as ModalRoute).subtreeContext;
  bool get v89098398 => fir1001734781 is ModalRoute;
  bool get w14448352 => fir1001734781 is PopupRoute;
  bool get vm447820061 => fir1001734781 is ModalRoute && (fir1001734781 as ModalRoute).opaque;
  bool get ih501561250 => (uw1006263205 as Element).dirty;

  RenderObject? get tno363205570 {
    return gy304973677?.findRenderObject();
  }

  bool get w4311222 {
    final RenderObject? v643260201 = tno363205570;
    if (v643260201 == null) return false;
    if (!tno363205570!.c778819110) {
      return false;
    }

    return v643260201.u753636712;
  }

  H176060284 flb745769261(X958539025 x632036472) =>
      H176060284(
        fir1001734781: fir1001734781,
        ir435388255: ir435388255,
        b77244179: b77244179,
        kp219402328: x632036472,
      );

  @override
  bool operator ==(covariant X958539025 sz304491059) {
    if (identical(this, sz304491059)) return true;

    return sz304491059.fir1001734781 == fir1001734781 &&
        sz304491059.j652312572 == j652312572 &&
        sz304491059.ir435388255 == ir435388255;
  }

  @override
  int get hashCode => fir1001734781.hashCode;

  @override
  String toString() {
    return 'DxaRoute(route: $fir1001734781, name: $j652312572, arguments: $m153546101, nestedNavigatorsHashcode: $ir435388255)';
  }
}

class H176060284 extends X958539025 {
  final X958539025 kp219402328;
  H176060284({
    required Route fir1001734781,
    required List<int> ir435388255,
    required int b77244179,
    required this.kp219402328,
  }) : super(
          fir1001734781: fir1001734781,
          ir435388255: ir435388255,
          b77244179: b77244179,
        );
}
