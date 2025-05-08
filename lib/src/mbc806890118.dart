//
import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/rsd17384820.dart';
import 'package:medallia_dxa/src/kf389194220.dart';
import 'package:medallia_dxa/src/xjh359401551.dart';
import 'package:medallia_dxa/src/e465455659.dart';
import 'package:medallia_dxa/src/sa305218133.dart';
import 'package:medallia_dxa/src/ug50998646.dart';
import 'package:medallia_dxa/src/au721560410.dart';
import 'package:medallia_dxa/src/tm674086535.dart';
import 'package:medallia_dxa/src/czi371804067.dart';
import 'package:medallia_dxa/src/sb487303956.dart';
import 'package:medallia_dxa/src/do758138716.dart';
import 'package:medallia_dxa/src/p534491606.dart';
import 'package:medallia_dxa/src/jn249197442.dart';
import 'package:medallia_dxa/src/vz764152707.dart';
import 'package:medallia_dxa/src/m372442231.dart';

class Xl1047663018 extends Uon142570932 with WidgetsBindingObserver {
  Xl1047663018({
    required WidgetsBinding qyo759432606,
    required Lkp1013317138 k32651872,
    required V404394076 er421585426,
  })  : _ln336584887 = qyo759432606,
        _huw399100230 = k32651872,
        super(er421585426) {
    qyo759432606.addObserver(this);
  }

  final WidgetsBinding _ln336584887;
  final Lkp1013317138 _huw399100230;
  late final J764602542 _ohq679689462 =
      Z583051022.n892084105.ocb1001100479;
  late final Md733036098 _nwo415102830 =
      Z583051022.n892084105.vd190648930;
  late final R859070342 _xw768939334 =
      Z583051022.n892084105.dk507881119;
  late final A394369591 _ifl1061096811 = Z583051022.n892084105.gc751987941;
  late final Xc87340369 _xn447603084 =
      Z583051022.n892084105.cd522100006;
  late final O520943210 _uu398446768 =
      Z583051022.n892084105.qgk349873267;
  late final Iil672746480 _mqv1037595447 = Z583051022.n892084105.sjf387023877;
  final List<Wb686664005> _s403891310 = [];
  @visibleForTesting
  List<Wb686664005>? jqe557307705 = [];
  final StreamController<Wb686664005> y398417046 =
      StreamController.broadcast();

  final List<Function()> _qh806089951 = [];
  void to344867964(Function() bn612340502) {
    _qh806089951.add(bn612340502);
  }

  void eod724764546(Function() bn612340502) {
    _qh806089951.remove(bn612340502);
  }

  void _y512387687() {
    for (final bn612340502 in _qh806089951) {
      bn612340502();
    }
  }

  List<String> _aui1027063646 = [];
  void hxx972093112(List<String> iip881907465) {
    _aui1027063646 = iip881907465;
  }

  List<String> _h444608037 = [];
  void s690467385(List<String> sn275274641) {
    _h444608037 = sn275274641;
  }

  List<Wb686664005> get vac605165192 => _s403891310;
  List<Wb686664005>? ntc813143757;
  bool get wju602844263 =>
      _uu398446768.ly517109637;

  Size? _rvo364244298;
  @visibleForTesting
  Size? get v193981253 => _rvo364244298;
  set v193981253(Size? c409603046) {
    if (c409603046 == _rvo364244298) return;
    //
    if (_rvo364244298 == null) {
      _rvo364244298 = c409603046;
    } else {
      _rvo364244298 = c409603046;
      xd267113247();
    }
  }

  @visibleForTesting
  void yza94145455(Wb686664005 giw662082889) {
    _s403891310.add(giw662082889);
  }

  Wb686664005? get v436425576 {
    final List<Wb686664005> q64403264 =
        List<Wb686664005>.from(vac605165192)
          ..removeWhere((bq412700168) => bq412700168.mrn469235649);
    if (q64403264.isEmpty) return null;
    return q64403264.single;
  }

  bool akv134583764(Wb686664005 u497095446) {
    if (jqe557307705 == null) return true;
    Wb686664005? giw662082889;
    try {
      giw662082889 = b279493047(
        jqe557307705!,
      );
    } catch (e) {
      efi865955933();
      return true;
    }
    if (giw662082889 != u497095446) {
      efi865955933();
      return true;
    }
    return false;
  }

  void efi865955933() {
    _uu398446768.nnj483954298();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState y933775448) {
    if (!_xw768939334.gb740508856) return;
    _ifl1061096811.tog141628530(
      Qqg355692373.yjj380883651,
      'didChangeAppLifecycleState $y933775448',
    );

    super.didChangeAppLifecycleState(y933775448);

    switch (y933775448) {
      case AppLifecycleState.resumed:
        vcc643686889();
        break;

      default:
        if (y933775448 == AppLifecycleState.paused ||
            y933775448 == AppLifecycleState.inactive) {
          bre50792370();
        }
    }
  }

  @override
  void didChangeMetrics() {
    if (!_xw768939334.gb740508856) return;
    _ifl1061096811.tog141628530(Qqg355692373.yjj380883651, 'didChangeMetrics');

    v193981253 = _ln336584887.platformDispatcher.views.first.physicalSize;

    super.didChangeMetrics();
  }

  Wb686664005 q38581201({
    required String uf459292882,
    required String mxi652312459,
    required List<DxaRouteWithModalReference> rk986357085,
    required List<U958539110> a916463027,
  }) {
    Bgj72709038? cfh876937552;
    late final bool mii901481782;
    late final bool zi884417682;

    _aui1027063646.contains(mxi652312459).r265148245((ttq144549898) {
      mii901481782 = !ttq144549898;
    });
    _h444608037.contains(mxi652312459).r265148245((ttq144549898) {
      zi884417682 = !ttq144549898;
    });

    bool azo51384576 = mii901481782;
    bool kx61260732 = zi884417682;

    final String kd1017888728 = mxi652312459;

    //
    if (_huw399100230
        .dgm68325843(kd1017888728)) {
      azo51384576 = false;
    }

    //
    if (_huw399100230
        .hch317035643(kd1017888728)) {
      kx61260732 = false;
      cfh876937552 = Bgj72709038.ibh335361255;
    }
    //
    if (!zi884417682) {
      cfh876937552 = Bgj72709038.m717760243;
    }

    final int l212009781 = DateTime.now().millisecondsSinceEpoch;

    final Wb686664005 giw662082889 = Wb686664005.standard(
      uf459292882: uf459292882,
      rk986357085: rk986357085,
      a916463027: a916463027,
      l212009781: l212009781,
      mxi652312459: mxi652312459,
      zi884417682: kx61260732,
      mii901481782: azo51384576,
      cfh876937552: cfh876937552,
    );

    return giw662082889;
  }

  //
  Future<void> yj64444009(
    List<Wb686664005> vm859565854, {
    bool pe136056727 = false,
  }) async {
    final Completer ic468299356 = Completer();
    await _ohq679689462.gkg756758856(
      (ic468299356) => ycx528426995(
        vm859565854,
        ic468299356,
        pe136056727: pe136056727,
      ),
      ic468299356,
    );
  }

  //
  @visibleForTesting
  Wb686664005 b279493047(
    List<Wb686664005> vm859565854,
  ) {
    final List<Wb686664005> nqn1054695821 = [];
    final List<Wb686664005> wai455359996 = [];
    for (final u1052622693 in vm859565854) {
      if (u1052622693.jdz243852376) continue;
      if (u1052622693.y368020837) continue;
      if (u1052622693.ehk833759351.u4311233) {
        nqn1054695821.add(u1052622693);
        if (u1052622693.rk986357085.last is B890753039 ||
            u1052622693.rk986357085.last is Nkj564237367) {
          wai455359996.add(u1052622693);
        }
      }
    }
    if (nqn1054695821.length == 1) return nqn1054695821.first;

    //
    //
    //
    //
    //
    //
    //
    //
    //
    if (nqn1054695821.length > 1) {
      late Wb686664005? qxg888252641;

      //
      qxg888252641 = nqn1054695821.singleWhereOrNull(
        (bq412700168) => bq412700168.rk986357085
            .any((bq412700168) => (bq412700168 is X666223138) && bq412700168.kh447820138),
      );
      if (qxg888252641 == null) {
        throw Zqp901569541('No opaque candidate or more than one found.');
      }

      //
      //
      wai455359996.sort(
        (w170824925, mj14385412) => w170824925.rk986357085.last.w77244260
            .compareTo(mj14385412.rk986357085.last.w77244260),
      );

      //
      for (var k499530736 = 0; k499530736 < wai455359996.length - 1; k499530736++) {
        final wm451901761 = wai455359996[k499530736]
            .rk986357085
            .last as B890753039;

        final bool fio137001925 =
            wm451901761
                    .brc219402287.dk968881096 ==
                wai455359996[k499530736 + 1]
                    .rk986357085
                    .first
                    .dk968881096;
        final bool ht112499757 =
            wm451901761
                .brc219402287.qzt435388200
                .contains(
          wai455359996[k499530736 + 1]
              .rk986357085
              .first
              .dk968881096,
        );

        if (!fio137001925 &&
            !ht112499757) {
          throw Zqp901569541('non opaque route is not a valid nestedRoute');
        }
      }

      //
      //
      if ((wai455359996.first.rk986357085.last
                  as B890753039)
              .brc219402287 ==
          qxg888252641.rk986357085.first) {
        return wai455359996.first;
      }

      //
      //
      if ((wai455359996.first.rk986357085.last
                  as B890753039)
              .dk968881096 ==
          qxg888252641.rk986357085.first.dk968881096) {
        return wai455359996.first;
      }

      //
      //
      if ((wai455359996.first.rk986357085.last
              as B890753039)
          .brc219402287
          .qzt435388200
          .contains(
            qxg888252641.rk986357085.first.dk968881096,
          )) {
        return wai455359996.first;
      }

      //
      //
      if (qxg888252641.rk986357085
              .lastWhereOrNull(
                (bq412700168) => (bq412700168 is X666223138) && bq412700168.kh447820138,
              )
              ?.qzt435388200
              .contains(
                wai455359996
                    .last.rk986357085.last.dk968881096,
              ) ==
          true) {
        return wai455359996.first;
      }
      throw Zqp901569541(
        'opaque route candidate shouldnt be painted under non opaque candidate 2',
      );
    }
    throw Zqp901569541('No candidate found');
  }

  //yj64444009_getScreenVisitedFromPotentialCandidates_getScreenVisitedFromPotentialCandidates
  Future<void> ycx528426995(
    List<Wb686664005> vm859565854,
    Completer ic468299356, {
    bool pe136056727 = false,
  }) async {
    //
    await _ohq679689462.z612389587();

    if (ic468299356.isCompleted) return;

    if (!_nwo415102830.mii901481782) return;
    if (_nwo415102830.ph945440336) return;
    late bool qfm978332337;
    //
    //
    //
    //
    //
    //
    if (ntc813143757 != null) {
      qfm978332337 = true;
      ntc813143757 = null;
    } else {
      qfm978332337 = pe136056727;
    }
    if (v436425576 != null) {
      await jx867603931(v436425576!.uf459292882);
    }
    await _ohq679689462.yvb551885184();
    if (ic468299356.isCompleted) return;
    //
    while (wju602844263) {
      await _ohq679689462.f333851799();
      if (ic468299356.isCompleted) return;
    }

    //
    Wb686664005? giw662082889;
    while (giw662082889 == null) {
      try {
        giw662082889 =
            b279493047(vm859565854);
      } catch (e) {
        await _ohq679689462.f333851799();
        if (ic468299356.isCompleted) return;
      }
    }
    if (ic468299356.isCompleted) return;
    if (!giw662082889.mii901481782) {
      return;
    }
    yza94145455(
      giw662082889,
    );
    jqe557307705 = vm859565854;
    _ifl1061096811.tog141628530(
      Qqg355692373.ad959100900,
      'Start Screen - name: ${giw662082889.mxi652312459} - id: ${giw662082889.yf161819508} - startTime ${giw662082889.l212009781}',
      j248384371: '🔵',
    );
    await _mqv1037595447.yj64444009(
      bt343814784: giw662082889.mxi652312459,
      gns228738515: giw662082889.yf161819508,
      vg312325906: giw662082889.l212009781,
      pe136056727: qfm978332337,
    );
    //
    if (y398417046.isClosed) return;
    y398417046.add(giw662082889);
    await _xn447603084.i306345424();
  }

  Future<void> jx867603931(
    String gns228738515, {
    bool pe136056727 = false,
  }) async {
    if (!_xw768939334.gb740508856) return;
    late Wb686664005 giw662082889;
    late Wb686664005? y497434549;

    if (v436425576?.uf459292882 == gns228738515) {
      y497434549 = v436425576;
    } else {
      y497434549 = null;
    }

    //
    //
    if (y497434549 == null) return;
    _xn447603084.ihz145214075();
    final Completer dr31360479 =
        _ohq679689462.jam696465817();
    giw662082889 = y497434549;
    //
    //
    final int tr290460070 = vac605165192.indexOf(giw662082889);
    final int efh594633254 = DateTime.now().millisecondsSinceEpoch;
    final Cq270264388 ymd578647065 =
        giw662082889.d712080332(efh594633254);
    vac605165192[tr290460070] = ymd578647065;
    jqe557307705 = null;
    final String pv777338243 = ymd578647065.mxi652312459;
    final int uq236312155 = ymd578647065.yf161819508;
    final int c101383619 = ymd578647065.mq1032417921;

    _y512387687();
    await _ohq679689462.avi619207817();
    final int gdv884440270 = c101383619;

    _ifl1061096811.tog141628530(
      Qqg355692373.ad959100900,
      'End Screen - name: $pv777338243 - id: $uq236312155 - endTime $c101383619 - recordingEndTime $gdv884440270',
      j248384371: '🟡',
    );
    await _mqv1037595447.jx867603931(
      bt343814784: pv777338243,
      gns228738515: uq236312155,
      xa724616852: c101383619,
      elk355705461: gdv884440270,
      pe136056727: pe136056727,
    );
    dr31360479.complete();
  }

  Future<void> w531893145() async {
    if (v436425576 == null) return;
    await jx867603931(
      v436425576!.uf459292882,
    );
  }

  @visibleForTesting
  Future<void> bre50792370() async {
    _ifl1061096811.tog141628530(
      Qqg355692373.a577029444,
      'App did enter background',
    );
    //
    //
    //
    if (ntc813143757 != null) return;
    //
    if (v436425576 == null) return;
    ntc813143757 =
        jqe557307705;
    await jx867603931(
      v436425576!.uf459292882,
      pe136056727: true,
    );
  }

  @visibleForTesting
  Future<void> vcc643686889() async {
    _ifl1061096811.tog141628530(
      Qqg355692373.a577029444,
      'App did become active',
    );
    //
    if (ntc813143757 == null) return;

    final List<Wb686664005> b944302015 =
        ntc813143757!
            .map(
              (kp286663311) => kp286663311.r623466205(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();

    ntc813143757 = null;
    await yj64444009(
      b944302015,
      pe136056727: true,
    );
  }

  Future<void> xd267113247() async {
    if (v436425576 == null) return;
    if (jqe557307705 == null) return;
    final ay64552704 =
        jqe557307705;
    await jx867603931(v436425576!.uf459292882);
    final List<Wb686664005> na286015817 =
        ay64552704!
            .map(
              (kp286663311) => kp286663311.r623466205(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();
    await yj64444009(na286015817);
  }

  Future<void> jo393527815(String ohw131698614) async {
    if (v436425576 == null) return;
    if (jqe557307705 == null) return;
    final o971782185 =
        v436425576!.zk801147378(ohw131698614);
    final int tr290460070 = jqe557307705!
        .indexWhere((bq412700168) => bq412700168.uf459292882 == v436425576!.uf459292882);
    if (tr290460070 == -1) return;
    jqe557307705![tr290460070] = o971782185;
    await xd267113247();
  }

  @override
  void vt326102872() {
    _ln336584887.removeObserver(this);
    y398417046.close();
  }
}
