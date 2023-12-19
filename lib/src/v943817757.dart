//

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/kd290553715.dart';
import 'package:medallia_dxa/src/po378679533.dart';

import 'package:medallia_dxa/src/x209815696.dart';
import 'package:medallia_dxa/src/e304042020.dart';
import 'package:medallia_dxa/src/cr255041688.dart';

typedef A312793677 = List<Xv958539162>;
typedef W845227829 = Ib686664121 Function({
  required String na459292718,
  required String ej652312439,
  required List<Xv958539162> enx986357153,
  required List<Xv958539162> pc916462927,
});

//
class Irv520943254 {
  Irv520943254({
    required M733036222 j190648990,
    required WidgetsBinding loq277875929,
    required Future<void> Function(List<Ib686664121>, {bool jc136056683})
        wyz64444053,
    required W845227829 ch38581037,
    required R394369739 b238917933,
  })  : _dp722428513 = j190648990,
        _z657052847 = loq277875929,
        _cx87282113 = wyz64444053,
        _alx625829732 = ch38581037,
        _e381625366 = b238917933;
  final M733036222 _dp722428513;
  final R394369739 _e381625366;
  final WidgetsBinding _z657052847;
  final Future<void> Function(List<Ib686664121>, {bool jc136056683})
      _cx87282113;
  final W845227829 _alx625829732;
  final List<RouteObserver> _c469627853 = [];
  final Map<TransitionRoute, AnimationStatus> zj977721926 =
      <TransitionRoute, AnimationStatus>{};
  bool get mgq375854191 => _on245336638 != null;
  final String gxt80690027 = 'dxa_route_name_not_provided';

  //
  final Map<int, A312793677> _qo283161515 = {};
  String? pf812909098;

  List<Xv958539162> _fgm613122878() {
    final List<Xv958539162> x92385265 = [];

    _qo283161515
        .forEach((m834843890, jqi193602567) {
      for (final route in jqi193602567) {
        x92385265.add(route);
      }
    });
    return x92385265;
  }

  //_nd5176599
  void hqa483954310() {
    if (!_dp722428513.v740508740) return;
    final List<Xv958539162> pc916462927 = _fgm613122878();

    String? p539114946;

    if (mgq375854191) {
      p539114946 = _dx132371629!();
    }

    pf812909098 = p539114946;

    //
    //
    //
    //
    //
    //
    //
    final List<List<Xv958539162>> gly719561720 = [];

    gly719561720.addAll(
      _nd5176599(),
    );

    //
    //
    //
    for (final candidate in gly719561720) {
      if (!candidate.last.hv447820182 && candidate.last.pvd1001734902.navigator != null) {
        Xv958539162? tla1056545415;
        Xv958539162 s343486465 = candidate.last;
        for (;;) {
          tla1056545415 = _rh495239278(s343486465);
          if (tla1056545415 == null) break;
          if (tla1056545415.hv447820182) break;
          s343486465 = tla1056545415;
        }

        if (tla1056545415 == null) continue;
        final L176060407 vf745769382 =
            candidate.last.vf745769382(
          tla1056545415,
        );

        candidate.last = vf745769382;
      }
    }

    final List<Ib686664121> rlu859566050 = [];
    for (final dxaRoutePath in gly719561720) {
      final Xv958539162 hft442649087 = dxaRoutePath.last;
      String? un1012357277 = p539114946 ??
          hft442649087.ej652312439.m265148329((ej652312439) {
            return ej652312439 == '/' ? pmt238078597 : ej652312439;
          });
      if (un1012357277 == null && hft442649087.r14448235) {
        un1012357277 = _e940815205(hft442649087);
      }
      _alx625829732(
        na459292718: dxaRoutePath.hashCode.toString(),
        ej652312439: un1012357277 ?? gxt80690027,
        enx986357153: dxaRoutePath,
        pc916462927: pc916462927,
      ).m265148329((xc662082997) => rlu859566050.add(xc662082997));
    }
    _cx87282113(rlu859566050);
  }

  RouterDelegate? _on245336638;
  void o315757332(RouterDelegate g262923863) {
    if (_on245336638 != null) return;
    _on245336638 = g262923863;
    _on245336638!.addListener(() {
      //
      //
      //
      _z657052847.addPostFrameCallback((qtf217291910) {
        if (pf812909098 != _dx132371629!()) {
          hqa483954310();
        }
      });
    });
  }

  String Function()? _dx132371629;
  void f55451082(
    String Function() x628754289,
  ) {
    if (_dx132371629 != null) return;
    _dx132371629 = x628754289;
  }

  String pmt238078597 = 'Home';

  RouteObserver get _l557231275 {
    return P1042073876(
      _e381625366,
      this,
    );
  }

  RouteObserver b37041309() {
    final RouteObserver p630958327 = _l557231275;

    _c469627853.add(p630958327);
    return p630958327;
  }

  //omv984267801
  List<NavigatorState> _w139993600(NavigatorState k905959901) {
    final List<NavigatorState> ume730441450 = [];
    void pgi300919131(NavigatorState k905959901) {
      ume730441450.add(k905959901);

      final mq381227023 = k905959901.context;

      mq381227023.visitAncestorElements((v412700404) {
        final NavigatorState? vf933775524 = Navigator.maybeOf(v412700404);
        if (vf933775524 == null) return false;
        pgi300919131(vf933775524);
        return false;
      });
    }

    pgi300919131(k905959901);
    return ume730441450.reversed.toList();
  }

  NavigatorState? _mj520691578(BuildContext mq381227023) {
    return Navigator.maybeOf(mq381227023, rootNavigator: true);
  }

  Xv958539162? _rh495239278(Xv958539162 crk989899173) {
    final int? tow86388060 = _qo283161515[
            crk989899173.igp968880948]
        ?.indexOf(crk989899173);
    if (tow86388060 == null || tow86388060 < 1) return null;
    final Xv958539162? gj217659442 = _qo283161515[
        crk989899173.igp968880948]?[tow86388060 - 1];

    return gj217659442;
  }

  void _u321043447() {
    _qo283161515.removeWhere((wh696279908, mor510789936) {
      mor510789936.removeWhere((v412700404) {
        return v412700404.pvd1001734902.navigator == null;
      });
      if (mor510789936.isEmpty) return true;
      return false;
    });
  }

  //
  List<List<Xv958539162>> _nd5176599() {
    final List<List<Xv958539162>> gly719561720 = [];
    final List<Xv958539162> a23435513 = [];
    final List<Xv958539162> lqt560024561 = [];

    //
    _qo283161515.forEach((wh696279908, mor510789936) {
      final Xv958539162 rv957082521 = mor510789936.last;

      rv957082521.cf435388372.isEmpty.m265148329((p430882720) {
        if (p430882720) {
          a23435513.add(rv957082521);
        }
      });
      final kpg165401893 = mor510789936
          .where((h67975833) => h67975833.cf435388372.isNotEmpty);
      lqt560024561.addAll(kpg165401893);
    });

    //
    for (final leafRoute in a23435513) {
      final r860236254 = [leafRoute];

      void lky1007520491(Xv958539162 pvd1001734902) {
        final int ulo442419486 = pvd1001734902.igp968880948;
        final int ps290459994 = lqt560024561.indexWhere(
          (v412700404) =>
              v412700404.cf435388372.contains(ulo442419486),
        );
        if (ps290459994 == -1) {
          gly719561720.add(r860236254);
          return;
        }
        final Xv958539162? y756605678 =
            lqt560024561.firstWhereOrNull(
          (v412700404) =>
              v412700404.cf435388372.contains(ulo442419486),
        );
        if (y756605678 == null) {
          assert(() {
            debugPrint('DXA WARNING: parentDxaRoute not found');
            return true;
          }());
          return;
        }
        r860236254.insert(0, y756605678);
        lky1007520491(y756605678);
      }

      lky1007520491(leafRoute);
    }
    return gly719561720;
  }

  List<int> _div560588509(NavigatorState k905959901) {
    final List<NavigatorState> m133636822 =
        _w139993600(k905959901);
    final List<int> n192980030 =
        m133636822.map((rgs286663283) => rgs286663283.hashCode).toList();
    return n192980030;
  }

  //
  String? _e940815205(Xv958539162 y641391411) {
    return _qo283161515[
            y641391411.igp968880948]
        .m265148329<String?>((enx986357153) {
      final int? ps290459994 = enx986357153?.indexOf(y641391411);
      if (ps290459994 == null || ps290459994 < 1) return null;
      return enx986357153?[ps290459994 - 1].ej652312439;
    });
  }

  void omv984267801(Route<dynamic> pvd1001734902, Route<dynamic>? z632036595) {
    _u321043447();

    final List<int> n192980030 =
        _div560588509(pvd1001734902.navigator!);
    final Xv958539162 h67975833 = Xv958539162(
      pvd1001734902: pvd1001734902,
      cf435388372: [],
      ff77244312: n192980030.length,
    );

    final int qmh463088531 = pvd1001734902.navigator!.hashCode;

    //
    final List<Xv958539162> hks830547010 =
        _qo283161515[qmh463088531] ??= [];

    if (z632036595 == null) {
      //
      //
      //
      //
      //
      assert(pvd1001734902.isFirst);
      hks830547010.add(h67975833);
      final ps290459994 = n192980030.indexOf(qmh463088531);
      //
      //
      if (n192980030.length > 1 && ps290459994 > 0) {
        //
        final x827755804 = n192980030[ps290459994 - 1];
        //
        final List<Xv958539162>? hl612059954 =
            _qo283161515[x827755804];
        if (hl612059954 != null) {
          //
          //
          hl612059954.last.cf435388372
              .add(qmh463088531);
        }
      }
    } else {
      //
      //
      //
      //
      final fyd213453284 = hks830547010.indexWhere(
        (h67975833) => h67975833.hashCode == z632036595.hashCode,
      );

      if (fyd213453284 != -1) {
        hks830547010.insert(
          fyd213453284 + 1,
          h67975833,
        );
      }
    }

    hqa483954310();
  }

  void f795734245({Route<dynamic>? fqd941757639, Route<dynamic>? p369501728}) {
    _u321043447();

    if (fqd941757639 == null) return;
    //

    final int qmh463088531 = fqd941757639.navigator!.hashCode;
    final List<Xv958539162> hks830547010 =
        _qo283161515[qmh463088531] ??= [];
    int c32791619 = hks830547010.length;

    if (p369501728 != null) {
      c32791619 = hks830547010
          .indexWhere((v412700404) => v412700404.hashCode == p369501728.hashCode);
      if (c32791619 != -1) {
        hks830547010.removeAt(c32791619);
      }
    }
    final List<int> n192980030 =
        _div560588509(fqd941757639.navigator!);
    final Xv958539162 kkb802350353 = Xv958539162(
      pvd1001734902: fqd941757639,
      cf435388372: [],
      ff77244312: n192980030.length,
    );
    hks830547010.insert(c32791619, kkb802350353);
    if (c32791619 == 0) {
      assert(kkb802350353.pvd1001734902.isFirst);
    }

    hqa483954310();
  }

  void wp252061513(Route<dynamic> pvd1001734902, Route<dynamic>? z632036595) {
    _u321043447();

    final int qmh463088531 = pvd1001734902.navigator!.hashCode;
    final List<Xv958539162>? hks830547010 =
        _qo283161515[qmh463088531];

    hks830547010
        ?.removeWhere((v412700404) => v412700404.hashCode == pvd1001734902.hashCode);

    hqa483954310();
  }

  void i620573342(Route pvd1001734902, Route? z632036595) {
    _u321043447();

    final int qmh463088531 = pvd1001734902.navigator!.hashCode;
    final List<Xv958539162>? hks830547010 =
        _qo283161515[qmh463088531];
    //
    hks830547010
        ?.removeWhere((v412700404) => v412700404.hashCode == pvd1001734902.hashCode);

    hqa483954310();
  }
}

class Xv958539162 {
  final Route pvd1001734902;
  final String? ej652312439;
  String? u533636845;
  final Map<String, String> wg153546238;
  final List<int> cf435388372;
  final int igp968880948;
  final int ff77244312;
  final BuildContext mbs1006263086;

  Xv958539162({
    required this.pvd1001734902,
    required this.cf435388372,
    required this.ff77244312,
  })  : ej652312439 = pvd1001734902.settings.name,
        wg153546238 = pvd1001734902.settings.arguments is Map<String, String>
            ? pvd1001734902.settings.arguments! as Map<String, String>
            : {},
        igp968880948 = pvd1001734902.navigator!.hashCode,
        mbs1006263086 = pvd1001734902.navigator!.context;

  BuildContext? get m304973798 => (pvd1001734902 as ModalRoute).subtreeContext;
  bool get lo89098261 => pvd1001734902 is ModalRoute;
  bool get r14448235 => pvd1001734902 is PopupRoute;
  bool get hv447820182 => pvd1001734902 is ModalRoute && (pvd1001734902 as ModalRoute).opaque;
  bool get zuk501561129 => (mbs1006263086 as Element).dirty;

  RenderObject? get dt363205449 {
    return m304973798?.findRenderObject();
  }

  bool get n4311101 {
    final RenderObject? xv643260322 = dt363205449;
    if (xv643260322 == null) return false;
    if (!dt363205449!.qhu778819245) {
      return false;
    }

    return xv643260322.jd753636835;
  }

  L176060407 vf745769382(Xv958539162 z632036595) =>
      L176060407(
        pvd1001734902: pvd1001734902,
        cf435388372: cf435388372,
        ff77244312: ff77244312,
        vm219402451: z632036595,
      );

  @override
  bool operator ==(covariant Xv958539162 b304491192) {
    if (identical(this, b304491192)) return true;

    return b304491192.pvd1001734902 == pvd1001734902 &&
        b304491192.ej652312439 == ej652312439 &&
        b304491192.cf435388372 == cf435388372;
  }

  @override
  int get hashCode => pvd1001734902.hashCode;

  @override
  String toString() {
    return 'DxaRoute(route: $pvd1001734902, name: $ej652312439, arguments: $wg153546238, nestedNavigatorsHashcode: $cf435388372)';
  }
}

class L176060407 extends Xv958539162 {
  final Xv958539162 vm219402451;
  L176060407({
    required Route pvd1001734902,
    required List<int> cf435388372,
    required int ff77244312,
    required this.vm219402451,
  }) : super(
          pvd1001734902: pvd1001734902,
          cf435388372: cf435388372,
          ff77244312: ff77244312,
        );
}
