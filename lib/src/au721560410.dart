//

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/rsd17384820.dart';
import 'package:medallia_dxa/src/ug50998646.dart';
import 'package:medallia_dxa/src/efp320376475.dart';

import 'package:medallia_dxa/src/tm674086535.dart';
import 'package:medallia_dxa/src/mbc806890118.dart';
import 'package:medallia_dxa/src/sb487303956.dart';
import 'package:medallia_dxa/src/p534491606.dart';
import 'package:medallia_dxa/src/jn249197442.dart';
import 'package:medallia_dxa/src/vz764152707.dart';

typedef Mv312793777 = List<U958539110>;
typedef Mm845227977 = Wb686664005 Function({
  required String uf459292882,
  required String mxi652312459,
  required List<DxaRouteWithModalReference> rk986357085,
  required List<U958539110> a916463027,
});

//
class O520943210 {
  O520943210();
  late final R859070342 dk507881119 =
      Z583051022.n892084105.dk507881119;
  late final A394369591 _isp381625578 = Z583051022.n892084105.gc751987941;
  late final WidgetsBinding _sx657052755 =
      Z583051022.n892084105.qyo759432606;
  late final Xl1047663018 _j750376091 = Z583051022.n892084105.ltl653425985;
  final List<RouteObserver> _ah469627697 = [];
  final Map<TransitionRoute, AnimationStatus> _ywd561103752 =
      <TransitionRoute, AnimationStatus>{};
  bool get ly517109637 => _ywd561103752.isNotEmpty;
  bool get x375854227 => _o245336770 != null;
  final String nz80690071 = 'dxa_route_name_not_provided';
  final Map<String, String> _l1837992 = {};
  void v888190482(Map<String, String> vn371075622) {
    _l1837992.addAll(vn371075622);
  }

  //
  @visibleForTesting
  final Map<int, Mv312793777> t954760197 = {};
  String? xo812909270;

  @visibleForTesting
  List<U958539110> mw949428685() {
    final List<U958539110> i92385037 = [];

    t954760197
        .forEach((bkd834843662, v193602811) {
      for (final cu1001734666 in v193602811) {
        i92385037.add(cu1001734666);
      }
    });
    return i92385037;
  }

  //_zqd5176811
  void nnj483954298() {
    if (!dk507881119.gb740508856) return;
    final List<U958539110> a916463027 = mw949428685();

    String? vu539114814;

    if (x375854227) {
      vu539114814 = _bkv132371537!();
    }

    xo812909270 = vu539114814;

    //
    //
    //
    //
    //
    //
    //
    final List<List<U958539110>> dp719561476 = [];

    dp719561476.addAll(
      _zqd5176811(),
    );
    final List<List<DxaRouteWithModalReference>>
        oyx151546934 = [];

    //
    //
    //
    //
    for (var k499530736 = 0; k499530736 < dp719561476.length; k499530736++) {
      final u1052622693 = dp719561476[k499530736];
      oyx151546934.add([]);
      for (var se309503064 = 0; se309503064 < u1052622693.length; se309503064++) {
        final DxaRouteWithModalReference? h286221422 =
            _w403298446(u1052622693[se309503064]);
        if (h286221422 != null) {
          oyx151546934[k499530736]
              .add(h286221422);
        }
      }
    }

    final List<Wb686664005> vm859565854 = [];
    for (final rk986357085 in oyx151546934) {
      if (rk986357085.isEmpty) continue;
      final U958539110 dl442648835 = rk986357085.last;

      String? dq1012357217;
      dq1012357217 =
          x175916431(dl442648835, vu539114814);

      dq1012357217 = _l1837992[dq1012357217] ??
          dq1012357217;

      _j750376091
          .q38581201(
            uf459292882: rk986357085.hashCode.toString(),
            mxi652312459: dq1012357217 ?? nz80690071,
            rk986357085: rk986357085,
            a916463027: a916463027,
          )
          .r265148245((giw662082889) => vm859565854.add(giw662082889));
    }
    _j750376091.yj64444009(vm859565854);
  }

  RouterDelegate? _o245336770;
  void lh315757544(RouterDelegate rj262923947) {
    if (_o245336770 != null) return;
    _o245336770 = rj262923947;
    _o245336770!.addListener(() {
      //
      //
      //
      _sx657052755.addPostFrameCallback((k217291898) {
        if (xo812909270 != _bkv132371537!()) {
          nnj483954298();
        }
      });
    });
  }

  @visibleForTesting
  String? x175916431(
    U958539110 dl442648835,
    String? vu539114814,
  ) {
    String? dq1012357217;

    if (_mva398030467 != null) {
      dq1012357217 = _mva398030467!(
        dl442648835.cu1001734666.settings,
      );
    }
    if (dq1012357217 != null) return dq1012357217;

    dq1012357217 = vu539114814 ?? dl442648835.mxi652312459;

    if (dq1012357217 == null && dl442648835.n14448279) {
      dq1012357217 = uxq754772061(dl442648835)?.mxi652312459;
    }
    return dq1012357217;
  }

  String? Function(RouteSettings)? _mva398030467;
  void a280651844(
    String? Function(RouteSettings) z840018677,
  ) {
    if (_mva398030467 != null) return;
    _mva398030467 = z840018677;
  }

  String Function()? _bkv132371537;
  void ilg55450934(
    String Function() oor628754317,
  ) {
    if (_bkv132371537 != null) return;
    _bkv132371537 = oor628754317;
  }

  RouteObserver get _cv557231191 {
    return K1042074088(
      _isp381625578,
      this,
    );
  }

  RouteObserver n37041249() {
    final RouteObserver gqb630958091 = _cv557231191;

    _ah469627697.add(gqb630958091);
    return gqb630958091;
  }

  //kjn984268005
  List<NavigatorState> _en189607801(NavigatorState d905959713) {
    final List<NavigatorState> q730441238 = [];
    void lqb300919207(NavigatorState d905959713) {
      q730441238.add(d905959713);

      final o381227251 = d905959713.context;

      o381227251.visitAncestorElements((bq412700168) {
        final NavigatorState? y933775448 = Navigator.maybeOf(bq412700168);
        if (y933775448 == null) return false;
        lqb300919207(y933775448);
        return false;
      });
    }

    lqb300919207(d905959713);
    return q730441238.reversed.toList();
  }

  DxaRouteWithModalReference? _w403298446(
    U958539110 dcy67975781,
  ) {
    if (dcy67975781.cu1001734666.navigator == null) return null;
    if (dcy67975781 is X666223138 && dcy67975781.kh447820138) {
      return dcy67975781;
    }
    X666223138? oq834820664;

    for (U958539110 xf674270906 = dcy67975781;;) {
      final U958539110? h127421307 =
          uxq754772061(xf674270906);
      if (h127421307 == null) break;
      if (h127421307 is X666223138 &&
          h127421307.kh447820138) {
        oq834820664 = h127421307;
        break;
      }
      xf674270906 = h127421307;
    }

    if (oq834820664 == null) {
      //
      //
      if (dcy67975781 is X666223138) {
        return dcy67975781;
      }
      return null;
    }

    late final DxaRouteWithModalReference j100370496;
    if (dcy67975781 is X666223138) {
      j100370496 = dcy67975781.f1033551924(
        oq834820664,
      );
    } else if (dcy67975781 is Lgo463560332) {
      j100370496 = dcy67975781.vdy101644567(
        oq834820664,
      );
    } else {
      throw Zqp901569541('Unexpected DxaRoute class');
    }

    return j100370496;
  }

  //
  @visibleForTesting
  U958539110? uxq754772061(U958539110 q989899097) {
    final int? dd86388128 =
        t954760197[q989899097.dk968881096]
            ?.indexOf(q989899097);
    if (dd86388128 == null || dd86388128 < 1) return null;
    final U958539110? txm217659598 =
        t954760197[q989899097.dk968881096]
            ?[dd86388128 - 1];

    return txm217659598;
  }

  //
  @visibleForTesting
  void pa202048692() {
    t954760197.removeWhere((fw696279960, ovs510790092) {
      ovs510790092.removeWhere((bq412700168) {
        return bq412700168.cu1001734666.navigator == null;
      });
      if (ovs510790092.isEmpty) return true;
      return false;
    });
  }

  //
  List<List<U958539110>> _zqd5176811() {
    final List<List<U958539110>> dp719561476 = [];
    final List<U958539110> y23435269 = [];
    final List<U958539110> ezb560024333 = [];
    final List<int> cat48045408 = [];
    //
    t954760197.forEach((fw696279960, ovs510790092) {
      //
      if (ovs510790092.first.cu1001734666.navigator == null ||
          ovs510790092.first.cu1001734666.navigator?.mounted == false) {
        return;
      }
      late final U958539110 qkf957082469;

      //
      //
      //
      for (var k499530736 = 0; k499530736 < ovs510790092.length; k499530736++) {
        if (k499530736 != ovs510790092.length - 1) {
          cat48045408
              .addAll(ovs510790092[k499530736].qzt435388200);
        } else {
          qkf957082469 = ovs510790092[k499530736];
        }
      }

      //
      //
      qkf957082469.qzt435388200.isEmpty.r265148245((il430882652) {
        if (il430882652) {
          y23435269.add(qkf957082469);
        }
      });

      //
      //
      final ihz165402073 = ovs510790092
          .where((dcy67975781) => dcy67975781.qzt435388200.isNotEmpty);
      ezb560024333.addAll(ihz165402073);
    });

    //
    //
    //
    y23435269.removeWhere(
      (bq412700168) => cat48045408
          .contains(bq412700168.dk968881096),
    );

    //
    for (final j528870036 in y23435269) {
      final eu860236066 = [j528870036];

      void hz1007520279(U958539110 cu1001734666) {
        final int yq442419682 = cu1001734666.dk968881096;
        final int tr290460070 = ezb560024333.indexWhere(
          (bq412700168) =>
              bq412700168.qzt435388200.contains(yq442419682),
        );
        if (tr290460070 == -1) {
          dp719561476.add(eu860236066);
          return;
        }
        final U958539110? xb756605458 =
            ezb560024333.firstWhereOrNull(
          (bq412700168) =>
              bq412700168.qzt435388200.contains(yq442419682),
        );
        if (xb756605458 == null) {
          assert(() {
            debugPrint('DXA WARNING: parentDxaRoute not found');
            return true;
          }());
          return;
        }
        eu860236066.insert(0, xb756605458);
        hz1007520279(xb756605458);
      }

      hz1007520279(j528870036);
    }
    return dp719561476;
  }

  void kjn984268005(Route<dynamic> cu1001734666, Route<dynamic>? vdx632036367) {
    pa202048692();
    if (cu1001734666.navigator == null) return;
    final List<int> ss539198795 =
        _en189607801(cu1001734666.navigator!)
            .map((kp286663311) => kp286663311.hashCode)
            .toList();

    late U958539110 dcy67975781;
    if (cu1001734666 is ModalRoute) {
      dcy67975781 = U958539110.modal(
        i454515438: cu1001734666,
        qzt435388200: [],
        w77244260: ss539198795.length,
        gx42732398: cu1001734666.navigator!,
      );
    } else {
      dcy67975781 = U958539110.nonModal(
        cu1001734666: cu1001734666,
        qzt435388200: [],
        w77244260: ss539198795.length,
        gx42732398: cu1001734666.navigator!,
      );
    }

    final int wr463088495 = cu1001734666.navigator!.hashCode;

    //
    final List<U958539110> t830547134 =
        t954760197[wr463088495] ??= [];

    if (vdx632036367 == null) {
      //
      //
      //
      //
      //
      assert(cu1001734666.isFirst);
      t830547134.add(dcy67975781);
      final tr290460070 = ss539198795.indexOf(wr463088495);
      //
      //
      if (ss539198795.length > 1 && tr290460070 > 0) {
        //
        final aus827756000 =
            ss539198795[tr290460070 - 1];
        //
        final List<U958539110>? mvy612060110 =
            t954760197[aus827756000];
        if (mvy612060110 != null) {
          //
          //
          mvy612060110.last.qzt435388200
              .add(wr463088495);
        }
      }
    } else {
      //
      //
      //
      //
      final wk213453080 = t830547134.indexWhere(
        (dcy67975781) => dcy67975781.hashCode == vdx632036367.hashCode,
      );

      if (wk213453080 != -1) {
        t830547134.insert(
          wk213453080 + 1,
          dcy67975781,
        );
      }
    }

    nnj483954298();
  }

  void jiv795734041({Route<dynamic>? xnt941757499, Route<dynamic>? ne369501916}) {
    pa202048692();

    if (xnt941757499 == null) return;
    if (xnt941757499.navigator == null) return;
    final int wr463088495 = xnt941757499.navigator!.hashCode;
    final List<U958539110> t830547134 =
        t954760197[wr463088495] ??= [];
    int cmh32791743 = t830547134.length;

    if (ne369501916 != null) {
      cmh32791743 = t830547134
          .indexWhere((bq412700168) => bq412700168.hashCode == ne369501916.hashCode);
      if (cmh32791743 != -1) {
        t830547134.removeAt(cmh32791743);
      }
    }
    final List<int> ss539198795 =
        _en189607801(xnt941757499.navigator!)
            .map((kp286663311) => kp286663311.hashCode)
            .toList();
    late U958539110 ecz802350573;
    if (xnt941757499 is ModalRoute) {
      ecz802350573 = U958539110.modal(
        i454515438: xnt941757499,
        qzt435388200: [],
        w77244260: ss539198795.length,
        gx42732398: xnt941757499.navigator!,
      );
    } else {
      ecz802350573 = U958539110.nonModal(
        cu1001734666: xnt941757499,
        qzt435388200: [],
        w77244260: ss539198795.length,
        gx42732398: xnt941757499.navigator!,
      );
    }
    t830547134.insert(cmh32791743, ecz802350573);
    if (cmh32791743 == 0) {
      assert(ecz802350573.cu1001734666.isFirst);
    }

    nnj483954298();
  }

  void eqp252061621(Route<dynamic> cu1001734666, Route<dynamic>? vdx632036367) {
    pa202048692();

    final int wr463088495 = cu1001734666.navigator!.hashCode;
    final List<U958539110>? t830547134 =
        t954760197[wr463088495];

    t830547134
        ?.removeWhere((bq412700168) => bq412700168.hashCode == cu1001734666.hashCode);

    nnj483954298();
  }

  void ij620573282(Route cu1001734666, Route? vdx632036367) {
    pa202048692();

    final int wr463088495 = cu1001734666.navigator!.hashCode;
    final List<U958539110>? t830547134 =
        t954760197[wr463088495];
    //
    t830547134
        ?.removeWhere((bq412700168) => bq412700168.hashCode == cu1001734666.hashCode);

    nnj483954298();
  }

  void wlq493996634(TransitionRoute cu1001734666) {
    _ywd561103752.remove(cu1001734666);
  }

  void u323834792(
    TransitionRoute cu1001734666,
    AnimationStatus zp638171388,
  ) {
    _ywd561103752.update(
      cu1001734666,
      (_s594036265) => zp638171388,
      ifAbsent: () => zp638171388,
    );
  }
}
