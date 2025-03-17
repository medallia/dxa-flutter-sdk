//
import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/bka7916544.dart';
import 'package:medallia_dxa/src/d290553722.dart';
import 'package:medallia_dxa/src/c974258819.dart';
import 'package:medallia_dxa/src/jpf451565684.dart';
import 'package:medallia_dxa/src/qij252672357.dart';
import 'package:medallia_dxa/src/u1031389579.dart';
import 'package:medallia_dxa/src/a943817748.dart';
import 'package:medallia_dxa/src/j209815705.dart';
import 'package:medallia_dxa/src/hfo173740557.dart';
import 'package:medallia_dxa/src/d452802285.dart';
import 'package:medallia_dxa/src/x248600066.dart';
import 'package:medallia_dxa/src/q439716601.dart';
import 'package:medallia_dxa/src/llc304042029.dart';
import 'package:medallia_dxa/src/rn255041681.dart';
import 'package:medallia_dxa/src/fg966267642.dart';

class Pf1047662943 extends By142570817 with WidgetsBindingObserver {
  Pf1047662943({
    required WidgetsBinding fx759432555,
    required Hr1013317351 nyy32651925,
    required Xhs404394153 db421585639,
  })  : _fzq336584770 = fx759432555,
        _uc399100339 = nyy32651925,
        super(db421585639) {
    fx759432555.addObserver(this);
  }

  final WidgetsBinding _fzq336584770;
  final Hr1013317351 _uc399100339;
  late final U764602459 _z679689219 =
      K583051259.y892084092.ehg1001100362;
  late final Dgg733036215 _s415102875 =
      K583051259.y892084092.rtm190648983;
  late final Ri859070323 _ple768939443 =
      K583051259.y892084092.f507881066;
  late final S394369730 _mc1061096862 = K583051259.y892084092.uqz751987728;
  late final Am87340452 _qhz447603065 =
      K583051259.y892084092.n522100179;
  late final Mgs520943263 _h398446661 =
      K583051259.y892084092.m349873286;
  late final E672746245 _zu1037595586 = K583051259.y892084092.v387024112;
  final List<T686664112> _mga403891355 = [];
  @visibleForTesting
  List<T686664112>? b557307852 = [];
  final StreamController<T686664112> qoz398416995 =
      StreamController.broadcast();

  final List<Function()> _eqr806089770 = [];
  void ns344867977(Function() v612340707) {
    _eqr806089770.add(v612340707);
  }

  void o724764535(Function() v612340707) {
    _eqr806089770.remove(v612340707);
  }

  void _n512387730() {
    for (final v612340707 in _eqr806089770) {
      v612340707();
    }
  }

  List<String> _bvo1027063723 = [];
  void vzy972093005(List<String> ti881907708) {
    _bvo1027063723 = ti881907708;
  }

  List<String> _p444608208 = [];
  void ci690467532(List<String> zwp275274596) {
    _p444608208 = zwp275274596;
  }

  List<T686664112> get fl605165181 => _mga403891355;
  List<T686664112>? mlk813143608;
  bool get j602844306 =>
      _h398446661.v517109616;

  Size? _zfe364244415;
  @visibleForTesting
  Size? get ctx193981360 => _zfe364244415;
  set ctx193981360(Size? m409602835) {
    if (m409602835 == _zfe364244415) return;
    //
    if (_zfe364244415 == null) {
      _zfe364244415 = m409602835;
    } else {
      _zfe364244415 = m409602835;
      w267113450();
    }
  }

  @visibleForTesting
  void qtp94145370(T686664112 jt662083004) {
    _mga403891355.add(jt662083004);
  }

  T686664112? get oin436425629 {
    final List<T686664112> y64403381 =
        List<T686664112>.from(fl605165181)
          ..removeWhere((w412700413) => w412700413.kt469235508);
    if (y64403381.isEmpty) return null;
    return y64403381.single;
  }

  bool hv134583585(T686664112 b497095651) {
    if (b557307852 == null) return true;
    T686664112? jt662083004;
    try {
      jt662083004 = jjr279492930(
        b557307852!,
      );
    } catch (e) {
      sk865956008();
      return true;
    }
    if (jt662083004 != b497095651) {
      sk865956008();
      return true;
    }
    return false;
  }

  void sk865956008() {
    _h398446661.n483954319();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState g933775533) {
    if (!_ple768939443.brv740508749) return;
    _mc1061096862.uhj141628551(
      Rh355692448.pm380883510,
      'didChangeAppLifecycleState $g933775533',
    );

    super.didChangeAppLifecycleState(g933775533);

    switch (g933775533) {
      case AppLifecycleState.resumed:
        jdb643686684();
        break;

      default:
        if (g933775533 == AppLifecycleState.paused ||
            g933775533 == AppLifecycleState.inactive) {
          ma50792263();
        }
    }
  }

  @override
  void didChangeMetrics() {
    if (!_ple768939443.brv740508749) return;
    _mc1061096862.uhj141628551(Rh355692448.pm380883510, 'didChangeMetrics');

    ctx193981360 = _fzq336584770.platformDispatcher.views.first.physicalSize;

    super.didChangeMetrics();
  }

  T686664112 myv38581028({
    required String ptf459292711,
    required String m652312446,
    required List<DxaRouteWithModalReference> fxk986357160,
    required List<Zs958539155> xrm916462918,
  }) {
    Hzm72708955? w876937637;
    late final bool y901481923;
    late final bool or884417639;

    _bvo1027063723.contains(m652312446).hoy265148320((bbd144550143) {
      y901481923 = !bbd144550143;
    });
    _p444608208.contains(m652312446).hoy265148320((bbd144550143) {
      or884417639 = !bbd144550143;
    });

    bool e51384821 = y901481923;
    bool ddr61260617 = or884417639;

    final String j1017888557 = m652312446;

    //
    if (_uc399100339
        .pbk68325670(j1017888557)) {
      e51384821 = false;
    }

    //
    if (_uc399100339
        .r317035662(j1017888557)) {
      ddr61260617 = false;
      w876937637 = Hzm72708955.n335361042;
    }
    //
    if (!or884417639) {
      w876937637 = Hzm72708955.el717760006;
    }

    final int qb212009920 = DateTime.now().millisecondsSinceEpoch;

    final T686664112 jt662083004 = T686664112.standard(
      ptf459292711: ptf459292711,
      fxk986357160: fxk986357160,
      xrm916462918: xrm916462918,
      qb212009920: qb212009920,
      m652312446: m652312446,
      or884417639: ddr61260617,
      y901481923: e51384821,
      w876937637: w876937637,
    );

    return jt662083004;
  }

  //
  Future<void> pj64444060(
    List<T686664112> vfa859566059, {
    bool zil136056674 = false,
  }) async {
    final Completer n468299433 = Completer();
    await _z679689219.t756758973(
      (n468299433) => f528426758(
        vfa859566059,
        n468299433,
        zil136056674: zil136056674,
      ),
      n468299433,
    );
  }

  //
  @visibleForTesting
  T686664112 jjr279492930(
    List<T686664112> vfa859566059,
  ) {
    final List<T686664112> hms1054695800 = [];
    final List<T686664112> mk455359753 = [];
    for (final mw1052622736 in vfa859566059) {
      if (mw1052622736.njl243852461) continue;
      if (mw1052622736.jq368020880) continue;
      if (mw1052622736.kyk833759362.bxx4311092) {
        hms1054695800.add(mw1052622736);
        if (mw1052622736.fxk986357160.last is Mif890753274 ||
            mw1052622736.fxk986357160.last is Glm564237506) {
          mk455359753.add(mw1052622736);
        }
      }
    }
    if (hms1054695800.length == 1) return hms1054695800.first;

    //
    //
    //
    //
    //
    //
    //
    //
    //
    if (hms1054695800.length > 1) {
      late T686664112? dp888252436;

      //
      dp888252436 = hms1054695800.singleWhereOrNull(
        (w412700413) => w412700413.fxk986357160
            .any((w412700413) => (w412700413 is Y666223319) && w412700413.w447820191),
      );
      if (dp888252436 == null) {
        throw Fc901569776('No opaque candidate or more than one found.');
      }

      //
      //
      mk455359753.sort(
        (uyp170824744, bp14385649) => uyp170824744.fxk986357160.last.ax77244305
            .compareTo(bp14385649.fxk986357160.last.ax77244305),
      );

      //
      for (var ee499530501 = 0; ee499530501 < mk455359753.length - 1; ee499530501++) {
        final k451901876 = mk455359753[ee499530501]
            .fxk986357160
            .last as Mif890753274;

        final bool cb137001776 =
            k451901876
                    .ob219402458.ch968880957 ==
                mk455359753[ee499530501 + 1]
                    .fxk986357160
                    .first
                    .ch968880957;
        final bool cz112499928 =
            k451901876
                .ob219402458.rws435388381
                .contains(
          mk455359753[ee499530501 + 1]
              .fxk986357160
              .first
              .ch968880957,
        );

        if (!cb137001776 &&
            !cz112499928) {
          throw Fc901569776('non opaque route is not a valid nestedRoute');
        }
      }

      //
      //
      if ((mk455359753.first.fxk986357160.last
                  as Mif890753274)
              .ob219402458 ==
          dp888252436.fxk986357160.first) {
        return mk455359753.first;
      }

      //
      //
      if ((mk455359753.first.fxk986357160.last
                  as Mif890753274)
              .ch968880957 ==
          dp888252436.fxk986357160.first.ch968880957) {
        return mk455359753.first;
      }

      //
      //
      if ((mk455359753.first.fxk986357160.last
              as Mif890753274)
          .ob219402458
          .rws435388381
          .contains(
            dp888252436.fxk986357160.first.ch968880957,
          )) {
        return mk455359753.first;
      }

      //
      //
      if (dp888252436.fxk986357160
              .lastWhereOrNull(
                (w412700413) => (w412700413 is Y666223319) && w412700413.w447820191,
              )
              ?.rws435388381
              .contains(
                mk455359753
                    .last.fxk986357160.last.ch968880957,
              ) ==
          true) {
        return mk455359753.first;
      }
      throw Fc901569776(
        'opaque route candidate shouldnt be painted under non opaque candidate 2',
      );
    }
    throw Fc901569776('No candidate found');
  }

  //pj64444060_getScreenVisitedFromPotentialCandidates_getScreenVisitedFromPotentialCandidates
  Future<void> f528426758(
    List<T686664112> vfa859566059,
    Completer n468299433, {
    bool zil136056674 = false,
  }) async {
    //
    await _z679689219.tg612389414();

    if (n468299433.isCompleted) return;

    if (!_s415102875.y901481923) return;
    if (_s415102875.v945440421) return;
    late bool oii978332228;
    //
    //
    //
    //
    //
    //
    if (mlk813143608 != null) {
      oii978332228 = true;
      mlk813143608 = null;
    } else {
      oii978332228 = zil136056674;
    }
    if (oin436425629 != null) {
      await vsc867603758(oin436425629!.ptf459292711);
    }
    await _z679689219.hr551885173();
    if (n468299433.isCompleted) return;
    //
    while (j602844306) {
      await _z679689219.gdk333851746();
      if (n468299433.isCompleted) return;
    }

    //
    T686664112? jt662083004;
    while (jt662083004 == null) {
      try {
        jt662083004 =
            jjr279492930(vfa859566059);
      } catch (e) {
        await _z679689219.gdk333851746();
        if (n468299433.isCompleted) return;
      }
    }
    if (n468299433.isCompleted) return;
    if (!jt662083004.y901481923) {
      return;
    }
    qtp94145370(
      jt662083004,
    );
    b557307852 = vfa859566059;
    _mc1061096862.uhj141628551(
      Rh355692448.vv959100689,
      'Start Screen - name: ${jt662083004.m652312446} - id: ${jt662083004.uj161819521} - startTime ${jt662083004.qb212009920}',
      k248384390: '🔵',
    );
    await _zu1037595586.pj64444060(
      iwp343814773: jt662083004.m652312446,
      y228738342: jt662083004.uj161819521,
      fg312326119: jt662083004.qb212009920,
      zil136056674: oii978332228,
    );
    //
    if (qoz398416995.isClosed) return;
    qoz398416995.add(jt662083004);
    await _qhz447603065.oq306345253();
  }

  Future<void> vsc867603758(
    String y228738342, {
    bool zil136056674 = false,
  }) async {
    if (!_ple768939443.brv740508749) return;
    late T686664112 jt662083004;
    late T686664112? n497434432;

    if (oin436425629?.ptf459292711 == y228738342) {
      n497434432 = oin436425629;
    } else {
      n497434432 = null;
    }

    //
    //
    if (n497434432 == null) return;
    _qhz447603065.h145214094();
    final Completer nrs31360298 =
        _z679689219.mwf696465772();
    jt662083004 = n497434432;
    //
    //
    final int v290459987 = fl605165181.indexOf(jt662083004);
    final int sl594633427 = DateTime.now().millisecondsSinceEpoch;
    final T270264497 n578647276 =
        jt662083004.n712080185(sl594633427);
    fl605165181[v290459987] = n578647276;
    b557307852 = null;
    final String j777338230 = n578647276.m652312446;
    final int lt236312238 = n578647276.uj161819521;
    final int f101383478 = n578647276.e1032417908;

    _n512387730();
    await _z679689219.gq619207804();
    final int igt884440123 = f101383478;

    _mc1061096862.uhj141628551(
      Rh355692448.vv959100689,
      'End Screen - name: $j777338230 - id: $lt236312238 - endTime $f101383478 - recordingEndTime $igt884440123',
      k248384390: '🟡',
    );
    await _zu1037595586.vsc867603758(
      iwp343814773: j777338230,
      y228738342: lt236312238,
      su724616801: f101383478,
      kua355705472: igt884440123,
      zil136056674: zil136056674,
    );
    nrs31360298.complete();
  }

  Future<void> c531893100() async {
    if (oin436425629 == null) return;
    await vsc867603758(
      oin436425629!.ptf459292711,
    );
  }

  @visibleForTesting
  Future<void> ma50792263() async {
    _mc1061096862.uhj141628551(
      Rh355692448.o577029553,
      'App did enter background',
    );
    //
    //
    //
    if (mlk813143608 != null) return;
    //
    if (oin436425629 == null) return;
    mlk813143608 =
        b557307852;
    await vsc867603758(
      oin436425629!.ptf459292711,
      zil136056674: true,
    );
  }

  @visibleForTesting
  Future<void> jdb643686684() async {
    _mc1061096862.uhj141628551(
      Rh355692448.o577029553,
      'App did become active',
    );
    //
    if (mlk813143608 == null) return;

    final List<T686664112> zr944301898 =
        mlk813143608!
            .map(
              (bma286663290) => bma286663290.bt623466024(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();

    mlk813143608 = null;
    await pj64444060(
      zr944301898,
      zil136056674: true,
    );
  }

  Future<void> w267113450() async {
    if (oin436425629 == null) return;
    if (b557307852 == null) return;
    final llo64552949 =
        b557307852;
    await vsc867603758(oin436425629!.ptf459292711);
    final List<T686664112> fso286015932 =
        llo64552949!
            .map(
              (bma286663290) => bma286663290.bt623466024(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();
    await pj64444060(fso286015932);
  }

  Future<void> h393528050(String qvu131698499) async {
    if (oin436425629 == null) return;
    if (b557307852 == null) return;
    final zs971782364 =
        oin436425629!.muc801147143(qvu131698499);
    final int v290459987 = b557307852!
        .indexWhere((w412700413) => w412700413.ptf459292711 == oin436425629!.ptf459292711);
    if (v290459987 == -1) return;
    b557307852![v290459987] = zs971782364;
    await w267113450();
  }

  @override
  void e326102957() {
    _fzq336584770.removeObserver(this);
    qoz398416995.close();
  }
}
