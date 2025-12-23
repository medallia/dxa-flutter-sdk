//

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/jhb17385158.dart';
import 'package:medallia_dxa/src/hi50998980.dart';
import 'package:medallia_dxa/src/nmd320376105.dart';

import 'package:medallia_dxa/src/z674086197.dart';
import 'package:medallia_dxa/src/p806889780.dart';
import 'package:medallia_dxa/src/df487303334.dart';
import 'package:medallia_dxa/src/i534491748.dart';
import 'package:medallia_dxa/src/kmb249196592.dart';
import 'package:medallia_dxa/src/xx764151857.dart';

typedef T312793347 = List<Kt958539476>;
typedef N845227131 = S686664439 Function({
  required String iks459293536,
  required String bf652311609,
  required List<DxaRouteWithModalReference> nc986357487,
  required List<Kt958539476> pi916463105,
});

//
class V520943064 {
  V520943064();
  late final Rtv859069492 nm507880749 =
      L583050428.buw892083259.nm507880749;
  late final Cqd394369413 _j381626200 = L583050428.buw892083259.sx751988567;
  late final WidgetsBinding _qx657053665 =
      L583050428.buw892083259.tcy759432748;
  late final A1047663128 _s750376745 = L583050428.buw892083259.qb653426419;
  final List<RouteObserver> _kst469627011 = [];
  final Map<TransitionRoute, AnimationStatus> _hlh561102906 =
      <TransitionRoute, AnimationStatus>{};
  bool get v517108791 => _hlh561102906.isNotEmpty;
  bool get kni375854881 => _m245336432 != null;
  final String li80689189 = 'dxa_route_name_not_provided';
  final Map<String, String> _v1837082 = {};
  void fpz888190368(Map<String, String> e371075476) {
    _v1837082.addAll(e371075476);
  }

  //
  @visibleForTesting
  final Map<int, T312793347> ua954761143 = {};
  String? qwj812908900;

  @visibleForTesting
  List<Kt958539476> qo949428863() {
    final List<Kt958539476> vq92384447 = [];

    ua954761143
        .forEach((be834844604, xag193603401) {
      for (final n1001734584 in xag193603401) {
        vq92384447.add(n1001734584);
      }
    });
    return vq92384447;
  }

  //_yfk5176921
  void l483954120() {
    if (!nm507880749.vbw740509450) return;
    final List<Kt958539476> pi916463105 = qo949428863();

    String? xw539115148;

    if (kni375854881) {
      xw539115148 = _h132372451!();
    }

    qwj812908900 = xw539115148;

    //
    //
    //
    //
    //
    //
    //
    final List<List<Kt958539476>> sf719560886 = [];

    sf719560886.addAll(
      _yfk5176921(),
    );

    //
    //
    //
    //
    if (sf719560886.isEmpty) {
      return;
    }
    final List<List<DxaRouteWithModalReference>>
        dz151547780 = [];

    //
    //
    //
    //
    for (var uym499529794 = 0; uym499529794 < sf719560886.length; uym499529794++) {
      final n1052622039 = sf719560886[uym499529794];
      dz151547780.add([]);
      for (var x309503978 = 0; x309503978 < n1052622039.length; x309503978++) {
        final DxaRouteWithModalReference? tvd286222300 =
            _bh403299132(n1052622039[x309503978]);
        if (tvd286222300 != null) {
          dz151547780[uym499529794]
              .add(tvd286222300);
        }
      }
    }

    final List<S686664439> cve859565228 = [];
    for (final nc986357487 in dz151547780) {
      if (nc986357487.isEmpty) continue;
      final Kt958539476 y442649265 = nc986357487.last;

      String? iyx1012358099;
      iyx1012358099 =
          jr175916605(y442649265, xw539115148);

      iyx1012358099 = _v1837082[iyx1012358099] ??
          iyx1012358099;

      _s750376745
          .ajg38580323(
            iks459293536: nc986357487.hashCode.toString(),
            bf652311609: iyx1012358099 ?? li80689189,
            nc986357487: nc986357487,
            pi916463105: pi916463105,
          )
          .fg265147623((b662083323) => cve859565228.add(b662083323));
    }
    _s750376745.gr64443867(cve859565228);
  }

  RouterDelegate? _m245336432;
  void usf315756634(RouterDelegate vgq262923545) {
    if (_m245336432 != null) return;
    _m245336432 = vgq262923545;
    _m245336432!.addListener(() {
      //
      //
      //
      _qx657053665.addPostFrameCallback((c217292744) {
        if (qwj812908900 != _h132372451!()) {
          l483954120();
        }
      });
    });
  }

  @visibleForTesting
  String? jr175916605(
    Kt958539476 y442649265,
    String? xw539115148,
  ) {
    String? iyx1012358099;

    if (_bp398030129 != null) {
      iyx1012358099 = _bp398030129!(
        y442649265.n1001734584.settings,
      );
    }
    if (iyx1012358099 != null) return iyx1012358099;

    iyx1012358099 = xw539115148 ?? y442649265.bf652311609;

    if (iyx1012358099 == null && y442649265.pdu14447909) {
      iyx1012358099 = n754772975(y442649265)?.bf652311609;
    }
    return iyx1012358099;
  }

  String? Function(RouteSettings)? _bp398030129;
  void dlt280652790(
    String? Function(RouteSettings) te840018247,
  ) {
    if (_bp398030129 != null) return;
    _bp398030129 = te840018247;
  }

  String Function()? _h132372451;
  void htf55451268(
    String Function() sj628753471,
  ) {
    if (_h132372451 != null) return;
    _h132372451 = sj628753471;
  }

  RouteObserver get _cfd557232101 {
    return Nx1042074202(
      _j381626200,
      this,
    );
  }

  RouteObserver tf37042131() {
    final RouteObserver m630959033 = _cfd557232101;

    _kst469627011.add(m630959033);
    return m630959033;
  }

  //i984268631
  List<NavigatorState> _voy189607115(NavigatorState asg905960083) {
    final List<NavigatorState> eq730441124 = [];
    void fs300919317(NavigatorState asg905960083) {
      eq730441124.add(asg905960083);

      final vdr381227841 = asg905960083.context;

      vdr381227841.visitAncestorElements((v412700090) {
        final NavigatorState? rc933776362 = Navigator.maybeOf(v412700090);
        if (rc933776362 == null) return false;
        fs300919317(rc933776362);
        return false;
      });
    }

    fs300919317(asg905960083);
    return eq730441124.reversed.toList();
  }

  DxaRouteWithModalReference? _bh403299132(
    Kt958539476 lzh67975639,
  ) {
    if (lzh67975639.n1001734584.navigator == null) return null;
    if (lzh67975639 is V666222992 && lzh67975639.w447820504) {
      return lzh67975639;
    }
    V666222992? y834820490;

    for (Kt958539476 s674270472 = lzh67975639;;) {
      final Kt958539476? gb127420617 =
          n754772975(s674270472);
      if (gb127420617 == null) break;
      if (gb127420617 is V666222992 &&
          gb127420617.w447820504) {
        y834820490 = gb127420617;
        break;
      }
      s674270472 = gb127420617;
    }

    if (y834820490 == null) {
      //
      //
      if (lzh67975639 is V666222992) {
        return lzh67975639;
      }
      return null;
    }

    late final DxaRouteWithModalReference kbw100371442;
    if (lzh67975639 is V666222992) {
      kbw100371442 = lzh67975639.lw1033552774(
        y834820490,
      );
    } else if (lzh67975639 is Gca463559998) {
      kbw100371442 = lzh67975639.axc101644965(
        y834820490,
      );
    } else {
      throw O901570487('Unexpected DxaRoute class');
    }

    return kbw100371442;
  }

  //
  @visibleForTesting
  Kt958539476? n754772975(Kt958539476 gci989899499) {
    final int? wmg86388242 =
        ua954761143[gci989899499.gbf968880250]
            ?.indexOf(gci989899499);
    if (wmg86388242 == null || wmg86388242 < 1) return null;
    final Kt958539476? t217660284 =
        ua954761143[gci989899499.gbf968880250]
            ?[wmg86388242 - 1];

    return t217660284;
  }

  //
  @visibleForTesting
  void mm202049286() {
    ua954761143.removeWhere((t696279082, qdt510790270) {
      qdt510790270.removeWhere((v412700090) {
        return v412700090.n1001734584.navigator == null;
      });
      if (qdt510790270.isEmpty) return true;
      return false;
    });
  }

  //
  List<List<Kt958539476>> _yfk5176921() {
    final List<List<Kt958539476>> sf719560886 = [];
    final List<Kt958539476> tb23436215 = [];
    final List<Kt958539476> p560023743 = [];
    final List<int> kut48045778 = [];
    //
    ua954761143.forEach((t696279082, qdt510790270) {
      //
      //
      if (qdt510790270.isEmpty ||
          //
          qdt510790270.first.n1001734584.navigator == null ||
          qdt510790270.first.n1001734584.navigator?.mounted == false) {
        return;
      }
      late final Kt958539476 nwj957081815;

      //
      //
      //
      for (var uym499529794 = 0; uym499529794 < qdt510790270.length; uym499529794++) {
        if (uym499529794 != qdt510790270.length - 1) {
          kut48045778
              .addAll(qdt510790270[uym499529794].l435387546);
        } else {
          nwj957081815 = qdt510790270[uym499529794];
        }
      }

      //
      //
      nwj957081815.l435387546.isEmpty.fg265147623((j430882030) {
        if (j430882030) {
          tb23436215.add(nwj957081815);
        }
      });

      //
      //
      final vow165402219 = qdt510790270
          .where((lzh67975639) => lzh67975639.l435387546.isNotEmpty);
      p560023743.addAll(vow165402219);
    });

    //
    //
    //
    tb23436215.removeWhere(
      (v412700090) => kut48045778
          .contains(v412700090.gbf968880250),
    );

    //
    for (final krt528869670 in tb23436215) {
      final xhg860236432 = [krt528869670];

      void y1007520165(Kt958539476 n1001734584) {
        final int lbt442419792 = n1001734584.gbf968880250;
        final int y290460180 = p560023743.indexWhere(
          (v412700090) =>
              v412700090.l435387546.contains(lbt442419792),
        );
        if (y290460180 == -1) {
          sf719560886.add(xhg860236432);
          return;
        }
        final Kt958539476? qyb756605344 =
            p560023743.firstWhereOrNull(
          (v412700090) =>
              v412700090.l435387546.contains(lbt442419792),
        );
        if (qyb756605344 == null) {
          assert(() {
            debugPrint('DXA WARNING: parentDxaRoute not found');
            return true;
          }());
          return;
        }
        xhg860236432.insert(0, qyb756605344);
        y1007520165(qyb756605344);
      }

      y1007520165(krt528869670);
    }
    return sf719560886;
  }

  void i984268631(Route<dynamic> n1001734584, Route<dynamic>? r632037309) {
    mm202049286();
    if (n1001734584.navigator == null) return;
    final List<int> j539199225 =
        _voy189607115(n1001734584.navigator!)
            .map((q286662973) => q286662973.hashCode)
            .toList();

    late Kt958539476 lzh67975639;
    if (n1001734584 is ModalRoute) {
      lzh67975639 = Kt958539476.modal(
        qr454515036: n1001734584,
        l435387546: [],
        k77243606: j539199225.length,
        f42731740: n1001734584.navigator!,
      );
    } else {
      lzh67975639 = Kt958539476.nonModal(
        n1001734584: n1001734584,
        l435387546: [],
        k77243606: j539199225.length,
        f42731740: n1001734584.navigator!,
      );
    }

    final int ua463087837 = n1001734584.navigator!.hashCode;

    //
    final List<Kt958539476> e830547724 =
        ua954761143[ua463087837] ??= [];

    if (r632037309 == null) {
      //
      //
      //
      //
      //
      assert(n1001734584.isFirst);
      e830547724.add(lzh67975639);
      final y290460180 = j539199225.indexOf(ua463087837);
      //
      //
      if (j539199225.length > 1 && y290460180 > 0) {
        //
        final t827756114 =
            j539199225[y290460180 - 1];
        //
        final List<Kt958539476>? tz612059260 =
            ua954761143[t827756114];
        if (tz612059260 != null) {
          //
          //
          tz612059260.last.l435387546
              .add(ua463087837);
        }
      }
    } else {
      //
      //
      //
      //
      final y213453482 = e830547724.indexWhere(
        (lzh67975639) => lzh67975639.hashCode == r632037309.hashCode,
      );

      if (y213453482 != -1) {
        e830547724.insert(
          y213453482 + 1,
          lzh67975639,
        );
      }
    }

    l483954120();
  }

  void ijl795734955({Route<dynamic>? jo941758345, Route<dynamic>? wbs369501550}) {
    mm202049286();

    if (jo941758345 == null) return;
    if (jo941758345.navigator == null) return;
    final int ua463087837 = jo941758345.navigator!.hashCode;
    final List<Kt958539476> e830547724 =
        ua954761143[ua463087837] ??= [];
    int ef32792333 = e830547724.length;

    if (wbs369501550 != null) {
      ef32792333 = e830547724
          .indexWhere((v412700090) => v412700090.hashCode == wbs369501550.hashCode);
      if (ef32792333 != -1) {
        e830547724.removeAt(ef32792333);
      }
    }
    final List<int> j539199225 =
        _voy189607115(jo941758345.navigator!)
            .map((q286662973) => q286662973.hashCode)
            .toList();
    late Kt958539476 m802350687;
    if (jo941758345 is ModalRoute) {
      m802350687 = Kt958539476.modal(
        qr454515036: jo941758345,
        l435387546: [],
        k77243606: j539199225.length,
        f42731740: jo941758345.navigator!,
      );
    } else {
      m802350687 = Kt958539476.nonModal(
        n1001734584: jo941758345,
        l435387546: [],
        k77243606: j539199225.length,
        f42731740: jo941758345.navigator!,
      );
    }
    e830547724.insert(ef32792333, m802350687);
    if (ef32792333 == 0) {
      assert(m802350687.n1001734584.isFirst);
    }

    l483954120();
  }

  void ziu252060679(Route<dynamic> n1001734584, Route<dynamic>? r632037309) {
    mm202049286();

    final int ua463087837 = n1001734584.navigator!.hashCode;
    final List<Kt958539476>? e830547724 =
        ua954761143[ua463087837];

    e830547724
        ?.removeWhere((v412700090) => v412700090.hashCode == n1001734584.hashCode);

    l483954120();
  }

  void ne620573136(Route n1001734584, Route? r632037309) {
    mm202049286();

    final int ua463087837 = n1001734584.navigator!.hashCode;
    final List<Kt958539476>? e830547724 =
        ua954761143[ua463087837];
    //
    e830547724
        ?.removeWhere((v412700090) => v412700090.hashCode == n1001734584.hashCode);

    l483954120();
  }

  void dnc493996520(TransitionRoute n1001734584) {
    _hlh561102906.remove(n1001734584);
  }

  void u323833882(
    TransitionRoute n1001734584,
    AnimationStatus ptr638171982,
  ) {
    _hlh561102906.update(
      n1001734584,
      (_qwn594036123) => ptr638171982,
      ifAbsent: () => ptr638171982,
    );
  }
}
