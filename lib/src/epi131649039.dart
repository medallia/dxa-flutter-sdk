//
import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/pf290553034.dart';
import 'package:medallia_dxa/src/j974258483.dart';
import 'package:medallia_dxa/src/fnj252672725.dart';
import 'package:medallia_dxa/src/xc1031389755.dart';
import 'package:medallia_dxa/src/t943818660.dart';
import 'package:medallia_dxa/src/l209816361.dart';
import 'package:medallia_dxa/src/mw681535395.dart';
import 'package:medallia_dxa/src/fxd173740477.dart';
import 'package:medallia_dxa/src/yh452801885.dart';
import 'package:medallia_dxa/src/b439716169.dart';
import 'package:medallia_dxa/src/ng304042909.dart';
import 'package:medallia_dxa/src/lm255042337.dart';
import 'package:medallia_dxa/src/kr966267210.dart';

class In1047663343 with O764603371, WidgetsBindingObserver {
  In1047663343(
    this.pfp491198079,
    this._suc1061097006,
    this._e447603401,
    this._h399100419,
    this._ka336585714,
  ) {
    _ka336585714.addObserver(this);
  }

  final Y733035783 pfp491198079;
  final Tiy394369394 _suc1061097006;
  final Udj87340564 _e447603401;
  final K1013316951 _h399100419;
  final WidgetsBinding _ka336585714;
  late final P520942895 _cxe398447605 =
      Bc583050315.i892083404.ge349873974;
  Logger get b613848308 => _suc1061097006.f326300728;
  final L1038098890 _rt1037594738 = L1038098890();
  final List<Xbi686664192> _hl403892011 = [];
  List<Xbi686664192>? _fl728063169 = [];
  final StreamController<Xbi686664192> k398417875 =
      StreamController.broadcast();
  final List<Vio785065583> ejc742411033 =
      [];
  final List<Completer> lus554014758 =
      List.empty(growable: true);
  final List<Completer> wvv695813130 =
      List.empty(growable: true);
  List<String> _xe1027062811 = [];
  void de972092925(List<String> ku881906764) {
    _xe1027062811 = ku881906764;
  }

  List<String> _e444607840 = [];
  void qw690467196(List<String> i275273940) {
    _e444607840 = i275273940;
  }

  List<Xbi686664192> get g605165005 => _hl403892011;
  List<Xbi686664192>? ra813143432;
  bool get j602844962 => zv565192692;
  bool zv565192692 = false;

  Size? _hl670082019;
  Size get if193980416 => _hl670082019!;
  set if193980416(Size wxa409602211) {
    if (wxa409602211 == _hl670082019) return;
    //
    if (_hl670082019 == null) {
      _hl670082019 = wxa409602211;
    } else {
      _hl670082019 = wxa409602211;
      zwk267112538();
    }
  }

  void _kk510844281(Xbi686664192 em662083084) {
    _hl403892011.add(em662083084);
  }

  Xbi686664192? get jv436424749 {
    final List<Xbi686664192> laf64402437 =
        List<Xbi686664192>.from(g605165005)
          ..removeWhere((ttm412699981) => ttm412699981.r469234820);
    if (laf64402437.isEmpty) return null;
    return laf64402437.single;
  }

  bool lml134583953(Xbi686664192 j497094739) {
    if (_fl728063169 == null) return true;
    Xbi686664192? em662083084;
    try {
      em662083084 = _sbu710236746(
        _fl728063169!,
      );
    } catch (e) {
      v865956632();
      return true;
    }
    if (em662083084 != j497094739) {
      v865956632();
      return true;
    }
    return false;
  }

  void v865956632() {
    _cxe398447605.n483953983();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState p933776157) {
    if (!pfp491198079.f740509693) return;
    b613848308.d('didChangeAppLifecycleState $p933776157');

    super.didChangeAppLifecycleState(p933776157);

    switch (p933776157) {
      case AppLifecycleState.resumed:
        _vp247375034();
        break;

      default:
        if (p933776157 == AppLifecycleState.paused ||
            p933776157 == AppLifecycleState.inactive) {
          _n999118531();
        }
    }
  }

  @override
  void didChangeMetrics() {
    if (!pfp491198079.f740509693) return;
    b613848308.d('didChangeMetrics');

    sp653426180.if193980416 =
        _ka336585714.platformDispatcher.views.first.physicalSize;

    super.didChangeMetrics();
  }

  Xbi686664192 n38580372({
    required String yt459293591,
    required String n652311758,
    required List<DxaRouteWithModalRederence> k986357272,
    required List<Kr958539299> tf916463350,
  }) {
    Czu72708331? eng876937749;
    late final bool evi901482099;
    late final bool t884418519;

    _xe1027062811.contains(n652311758).qzo265147408((bbr144550735) {
      evi901482099 = !bbr144550735;
    });
    _e444607840.contains(n652311758).qzo265147408((bbr144550735) {
      t884418519 = !bbr144550735;
    });

    bool rb51384901 = evi901482099;
    bool bb61260025 = t884418519;

    final String hg1017887901 = n652311758;

    //
    if (_h399100419
        .lzt68326038(hg1017887901)) {
      rb51384901 = false;
    }

    //
    if (_h399100419
        .go317036350(hg1017887901)) {
      bb61260025 = false;
      eng876937749 = Czu72708331.zf335361954;
    }
    //
    if (!t884418519) {
      eng876937749 = Czu72708331.ig717759926;
    }

    final int j212009072 = DateTime.now().millisecondsSinceEpoch;

    final Xbi686664192 em662083084 = Xbi686664192.standard(
      yt459293591: yt459293591,
      k986357272: k986357272,
      tf916463350: tf916463350,
      j212009072: j212009072,
      n652311758: n652311758,
      t884418519: bb61260025,
      evi901482099: rb51384901,
      eng876937749: eng876937749,
    );

    return em662083084;
  }

  //
  Future<void> d64443692(
    List<Xbi686664192> zrf859565147, {
    bool o136056018 = false,
  }) async {
    final Completer vk468299033 = Completer();
    await ki756759053(
      (vk468299033) => rya528426166(
        zrf859565147,
        vk468299033,
        o136056018: o136056018,
      ),
      vk468299033,
    );
  }

  //
  Xbi686664192 _sbu710236746(
    List<Xbi686664192> zrf859565147,
  ) {
    final List<Xbi686664192> a1054696136 = [];
    final List<Xbi686664192> fmz455360185 = [];
    for (final tys1052621856 in zrf859565147) {
      if (tys1052621856.ur243853085) continue;
      if (tys1052621856.ycs368021024) continue;
      if (tys1052621856.lis833760050.g4311940) {
        a1054696136.add(tys1052621856);
        if (tys1052621856.k986357272.last is Px890753866 ||
            tys1052621856.k986357272.last is P564238194) {
          fmz455360185.add(tys1052621856);
        }
      }
    }
    if (a1054696136.length == 1) return a1054696136.first;

    //
    //
    //
    //
    //
    //
    //
    //
    //
    if (a1054696136.length > 1) {
      late Xbi686664192? sui888253348;

      //
      sui888253348 = a1054696136.singleWhereOrNull(
        (ttm412699981) => ttm412699981.k986357272
            .any((ttm412699981) => (ttm412699981 is Eid666222951) && ttm412699981.xly447820335),
      );
      if (sui888253348 == null) {
        throw Fyi901570368('No opaque candidate or more than one found.');
      }

      //
      //
      fmz455360185.sort(
        (zn170825624, yy14385729) => zn170825624.k986357272.last.w77243425
            .compareTo(yy14385729.k986357272.last.w77243425),
      );

      //
      for (var gt499529909 = 0; gt499529909 < fmz455360185.length - 1; gt499529909++) {
        final d451901956 = fmz455360185[gt499529909]
            .k986357272
            .last as Px890753866;

        final bool bng137001088 =
            d451901956
                    .r219403114.zor968880269 ==
                fmz455360185[gt499529909 + 1]
                    .k986357272
                    .first
                    .zor968880269;
        final bool vsd112500584 =
            d451901956
                .r219403114.qfe435387501
                .contains(
          fmz455360185[gt499529909 + 1]
              .k986357272
              .first
              .zor968880269,
        );

        if (!bng137001088 &&
            !vsd112500584) {
          throw Fyi901570368('non opaque route is not a valid nestedRoute');
        }
      }

      //
      //
      if ((fmz455360185.first.k986357272.last
                  as Px890753866)
              .r219403114 ==
          sui888253348.k986357272.first) {
        return fmz455360185.first;
      }

      //
      //
      if ((fmz455360185.first.k986357272.last
                  as Px890753866)
              .zor968880269 ==
          sui888253348.k986357272.first.zor968880269) {
        return fmz455360185.first;
      }

      //
      //
      if ((fmz455360185.first.k986357272.last
              as Px890753866)
          .r219403114
          .qfe435387501
          .contains(
            sui888253348.k986357272.first.zor968880269,
          )) {
        return fmz455360185.first;
      }

      //
      //
      if (sui888253348.k986357272
              .lastWhereOrNull(
                  (ttm412699981) => (ttm412699981 is Eid666222951) && ttm412699981.xly447820335)
              ?.qfe435387501
              .contains(
                fmz455360185
                    .last.k986357272.last.zor968880269,
              ) ==
          true) {
        return fmz455360185.first;
      }
      throw Fyi901570368(
        'opaque route candidate shouldnt be painted under non opaque candidate 2',
      );
    }
    throw Fyi901570368('No candidate found');
  }

  //d64443692_sbu710236746_sbu710236746
  Future<void> rya528426166(
    List<Xbi686664192> zrf859565147,
    Completer vk468299033, {
    bool o136056018 = false,
  }) async {
    //
    await xe612389270();

    if (vk468299033.isCompleted) return;

    if (!pfp491198079.evi901482099) return;
    if (pfp491198079.xu945440021) return;
    late bool m978332148;
    //
    //
    //
    //
    //
    //
    if (ra813143432 != null) {
      m978332148 = true;
      ra813143432 = null;
    } else {
      m978332148 = o136056018;
    }
    if (jv436424749 != null) {
      await aw867604126(jv436424749!.yt459293591);
    }
    await y551885509();
    if (vk468299033.isCompleted) return;
    //
    while (j602844962) {
      await blm333852626();
      if (vk468299033.isCompleted) return;
    }

    //
    Xbi686664192? em662083084;
    while (em662083084 == null) {
      try {
        em662083084 =
            _sbu710236746(zrf859565147);
      } catch (e) {
        await blm333852626();
        if (vk468299033.isCompleted) return;
      }
    }
    if (vk468299033.isCompleted) return;
    if (!em662083084.evi901482099) {
      return;
    }
    _kk510844281(
      em662083084,
    );
    _fl728063169 = zrf859565147;
    b613848308.d(
      ' 🔵 Start Screen - name: ${em662083084.n652311758} - id: ${em662083084.vpn161818673}',
    );
    await _rt1037594738.d64443692(
      O186122303(
        u343814597: em662083084.n652311758,
        lhg228738710: em662083084.vpn161818673,
        ig312325207: em662083084.j212009072,
        o136056018: m978332148,
      ),
    );
    k398417875.add(em662083084);
    await _e447603401.nzl306345621();
  }

  Future<void> aw867604126(
    String lhg228738710, {
    bool o136056018 = false,
  }) async {
    if (!pfp491198079.f740509693) return;
    late Xbi686664192 em662083084;
    late Xbi686664192? w497433840;

    if (jv436424749?.yt459293591 == lhg228738710) {
      w497433840 = jv436424749;
    } else {
      w497433840 = null;
    }

    //
    //
    if (w497433840 == null) return;
    _e447603401.bfb145213758();
    final Completer iy31360666 = m696466140();
    em662083084 = w497433840;
    //
    //
    final int i290460387 = g605165005.indexOf(em662083084);
    final int x594633059 = DateTime.now().millisecondsSinceEpoch;
    final D270265089 cpg578647900 =
        em662083084.egb712079497(x594633059);
    g605165005[i290460387] = cpg578647900;
    _fl728063169 = null;
    final String r777338566 = cpg578647900.n652311758;
    final int ywa236311838 = cpg578647900.vpn161818673;
    final int yrt101383814 = cpg578647900.uqv1032417732;

    await utk619208652();

    late int b884440971;
    if (cpg578647900.q225674706) {
      b884440971 =
          cpg578647900.qa442674268;
    } else {
      b884440971 = yrt101383814;
      await _e447603401.tq117537906(
        cpg578647900,
      );
    }
    final C882558881 yhq350794004 = C882558881(
      u343814597: r777338566,
      lhg228738710: ywa236311838,
      v724616657: yrt101383814,
      g355705136: b884440971,
      o136056018: o136056018,
    );
    b613848308.d(
      ' 🟡 End Screen - name: ${yhq350794004.u343814597} - id: ${yhq350794004.lhg228738710} - endTime ${yhq350794004.v724616657} - recordingEndTime ${yhq350794004.g355705136}',
    );
    await _rt1037594738.aw867604126(yhq350794004);
    iy31360666.complete();
  }

  Future<void> f531892444() async {
    if (jv436424749 == null) return;
    await aw867604126(
      jv436424749!.yt459293591,
    );
  }

  Future<void> _n999118531() async {
    //
    //
    //
    if (ra813143432 != null) return;
    //
    if (jv436424749 == null) return;
    ra813143432 =
        _fl728063169;
    await aw867604126(
      jv436424749!.yt459293591,
      o136056018: true,
    );
  }

  Future<void> _vp247375034() async {
    //
    if (ra813143432 == null) return;

    final List<Xbi686664192> n944301306 =
        ra813143432!
            .map(
              (e286663114) => e286663114.xz623465880(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();

    ra813143432 = null;
    await d64443692(
      n944301306,
      o136056018: true,
    );
  }

  Future<void> zwk267112538() async {
    if (jv436424749 == null) return;
    if (_fl728063169 == null) return;
    final kpe557307004 = _fl728063169;
    await aw867604126(jv436424749!.yt459293591);
    final List<Xbi686664192> cfu286016012 =
        kpe557307004!
            .map(
              (e286663114) => e286663114.xz623465880(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();
    await d64443692(cfu286016012);
  }
}
