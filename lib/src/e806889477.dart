//
import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/v17385463.dart';
import 'package:medallia_dxa/src/oms389194607.dart';
import 'package:medallia_dxa/src/x359402188.dart';
import 'package:medallia_dxa/src/uoj465455272.dart';
import 'package:medallia_dxa/src/bo305217750.dart';
import 'package:medallia_dxa/src/xik50999285.dart';
import 'package:medallia_dxa/src/mn721560025.dart';
import 'package:medallia_dxa/src/re674085892.dart';
import 'package:medallia_dxa/src/vp371803424.dart';
import 'package:medallia_dxa/src/e487303575.dart';
import 'package:medallia_dxa/src/jt758138335.dart';
import 'package:medallia_dxa/src/mo534491989.dart';
import 'package:medallia_dxa/src/hk249196801.dart';
import 'package:medallia_dxa/src/br764152064.dart';
import 'package:medallia_dxa/src/mks372442868.dart';

class Fs1047663401 extends Ll142571319 with WidgetsBindingObserver {
  Fs1047663401({
    required WidgetsBinding xk759432989,
    required Yy1013316753 fe32651491,
    required X404394719 nd421585041,
  })  : _wxf336585268 = xk759432989,
        _sp399100869 = fe32651491,
        super(nd421585041) {
    xk759432989.addObserver(this);
  }

  final WidgetsBinding _wxf336585268;
  final Yy1013316753 _sp399100869;
  late final Ybr764602925 _pvd679689845 =
      Zmk583050637.u892083466.ute1001100860;
  late final In733035713 _j415102445 =
      Zmk583050637.u892083466.can190648545;
  late final Rhw859069701 _kqk768939973 =
      Zmk583050637.u892083466.bpv507880476;
  late final Jnx394369204 _e1061097448 = Zmk583050637.u892083466.gcv751988326;
  late final St87341010 _lgs447603471 =
      Zmk583050637.u892083466.gri522100645;
  late final R520942825 _gnj398447155 =
      Zmk583050637.u892083466.khb349873904;
  late final Hum672745843 _wvw1037595060 = Zmk583050637.u892083466.mt387024518;
  final List<Ujb686664646> _t403891949 = [];
  @visibleForTesting
  List<Ujb686664646>? d557307322 = [];
  final StreamController<Ujb686664646> bj398417429 =
      StreamController.broadcast();

  final List<Function()> _u806090332 = [];
  void nb344868607(Function() uix612340117) {
    _u806090332.add(uix612340117);
  }

  void bk724763905(Function() uix612340117) {
    _u806090332.remove(uix612340117);
  }

  void _hlu512387300() {
    for (final uix612340117 in _u806090332) {
      uix612340117();
    }
  }

  List<String> _p1027063261 = [];
  void vf972092475(List<String> ik881907082) {
    _p1027063261 = ik881907082;
  }

  List<String> _gh444607654 = [];
  void z690467002(List<String> uel275274002) {
    _gh444607654 = uel275274002;
  }

  List<Ujb686664646> get vqk605164555 => _t403891949;
  List<Ujb686664646>? cjl813143118;
  bool get vig602844900 =>
      _gnj398447155.f517108998;

  Size? _zr364244937;
  @visibleForTesting
  Size? get i193980870 => _zr364244937;
  set i193980870(Size? q409602405) {
    if (q409602405 == _zr364244937) return;
    //
    if (_zr364244937 == null) {
      _zr364244937 = q409602405;
    } else {
      _zr364244937 = q409602405;
      hv267112860();
    }
  }

  @visibleForTesting
  void pb94144812(Ujb686664646 ljy662083530) {
    _t403891949.add(ljy662083530);
  }

  Ujb686664646? get wn436425195 {
    final List<Ujb686664646> en64402883 =
        List<Ujb686664646>.from(vqk605164555)
          ..removeWhere((kdw412699787) => kdw412699787.ncv469235010);
    if (en64402883.isEmpty) return null;
    return en64402883.single;
  }

  bool p134584151(Ujb686664646 ure497095061) {
    if (d557307322 == null) return true;
    Ujb686664646? ljy662083530;
    try {
      ljy662083530 = u279493428(
        d557307322!,
      );
    } catch (e) {
      n865956574();
      return true;
    }
    if (ljy662083530 != ure497095061) {
      n865956574();
      return true;
    }
    return false;
  }

  void n865956574() {
    _gnj398447155.p483953913();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState wvg933776091) {
    if (!_kqk768939973.zdb740509243) return;
    _e1061097448.w141629169(
      F355691990.e380883008,
      'didChangeAppLifecycleState $wvg933776091',
    );

    super.didChangeAppLifecycleState(wvg933776091);

    switch (wvg933776091) {
      case AppLifecycleState.resumed:
        fhl643687274();
        break;

      default:
        if (wvg933776091 == AppLifecycleState.paused ||
            wvg933776091 == AppLifecycleState.inactive) {
          bds50791729();
        }
    }
  }

  @override
  void didChangeMetrics() {
    if (!_kqk768939973.zdb740509243) return;
    _e1061097448.w141629169(F355691990.e380883008, 'didChangeMetrics');

    i193980870 = _wxf336585268.platformDispatcher.views.first.physicalSize;

    super.didChangeMetrics();
  }

  Ujb686664646 bo38580562({
    required String bos459293265,
    required String fmx652311816,
    required List<DxaRouteWithModalReference> gns986357726,
    required List<X958539749> rw916463408,
  }) {
    T72708397? c876938195;
    late final bool n901482421;
    late final bool b884418065;

    _p1027063261.contains(fmx652311816).t265147862((x144550537) {
      n901482421 = !x144550537;
    });
    _gh444607654.contains(fmx652311816).t265147862((x144550537) {
      b884418065 = !x144550537;
    });

    bool j51385219 = n901482421;
    bool nbw61260095 = b884418065;

    final String ydb1017888091 = fmx652311816;

    //
    if (_sp399100869
        .m68326224(ydb1017888091)) {
      j51385219 = false;
    }

    //
    if (_sp399100869
        .lus317036280(ydb1017888091)) {
      nbw61260095 = false;
      c876938195 = T72708397.r335361636;
    }
    //
    if (!b884418065) {
      c876938195 = T72708397.mk717759600;
    }

    final int ka212009398 = DateTime.now().millisecondsSinceEpoch;

    final Ujb686664646 ljy662083530 = Ujb686664646.standard(
      bos459293265: bos459293265,
      gns986357726: gns986357726,
      rw916463408: rw916463408,
      ka212009398: ka212009398,
      fmx652311816: fmx652311816,
      b884418065: nbw61260095,
      n901482421: j51385219,
      c876938195: c876938195,
    );

    return ljy662083530;
  }

  //
  Future<void> rx64443626(
    List<Ujb686664646> ff859565469, {
    bool rwl136056084 = false,
  }) async {
    final Completer mw468298975 = Completer();
    await _pvd679689845.bec756759499(
      (mw468298975) => m528426352(
        ff859565469,
        mw468298975,
        rwl136056084: rwl136056084,
      ),
      mw468298975,
    );
  }

  //
  @visibleForTesting
  Ujb686664646 u279493428(
    List<Ujb686664646> ff859565469,
  ) {
    final List<Ujb686664646> j1054696206 = [];
    final List<Ujb686664646> d455360383 = [];
    for (final f1052622310 in ff859565469) {
      if (f1052622310.tn243853019) continue;
      if (f1052622310.zgl368021478) continue;
      if (f1052622310.lf833759988.u4311618) {
        j1054696206.add(f1052622310);
        if (f1052622310.gns986357726.last is G890753676 ||
            f1052622310.gns986357726.last is Ev564238004) {
          d455360383.add(f1052622310);
        }
      }
    }
    if (j1054696206.length == 1) return j1054696206.first;

    //
    //
    //
    //
    //
    //
    //
    //
    //
    if (j1054696206.length > 1) {
      late Ujb686664646? qoj888253026;

      //
      qoj888253026 = j1054696206.singleWhereOrNull(
        (kdw412699787) => kdw412699787.gns986357726
            .any((kdw412699787) => (kdw412699787 is Tpn666222753) && kdw412699787.vxj447820777),
      );
      if (qoj888253026 == null) {
        throw Z901570182('No opaque candidate or more than one found.');
      }

      //
      //
      d455360383.sort(
        (pd170825310, lv14386055) => pd170825310.gns986357726.last.jnp77243879
            .compareTo(lv14386055.gns986357726.last.jnp77243879),
      );

      //
      for (var d499530099 = 0; d499530099 < d455360383.length - 1; d499530099++) {
        final qh451902402 = d455360383[d499530099]
            .gns986357726
            .last as G890753676;

        final bool blw137001286 =
            qh451902402
                    .ugs219402924.s968880459 ==
                d455360383[d499530099 + 1]
                    .gns986357726
                    .first
                    .s968880459;
        final bool s112500398 =
            qh451902402
                .ugs219402924.wo435387819
                .contains(
          d455360383[d499530099 + 1]
              .gns986357726
              .first
              .s968880459,
        );

        if (!blw137001286 &&
            !s112500398) {
          throw Z901570182('non opaque route is not a valid nestedRoute');
        }
      }

      //
      //
      if ((d455360383.first.gns986357726.last
                  as G890753676)
              .ugs219402924 ==
          qoj888253026.gns986357726.first) {
        return d455360383.first;
      }

      //
      //
      if ((d455360383.first.gns986357726.last
                  as G890753676)
              .s968880459 ==
          qoj888253026.gns986357726.first.s968880459) {
        return d455360383.first;
      }

      //
      //
      if ((d455360383.first.gns986357726.last
              as G890753676)
          .ugs219402924
          .wo435387819
          .contains(
            qoj888253026.gns986357726.first.s968880459,
          )) {
        return d455360383.first;
      }

      //
      //
      if (qoj888253026.gns986357726
              .lastWhereOrNull(
                (kdw412699787) => (kdw412699787 is Tpn666222753) && kdw412699787.vxj447820777,
              )
              ?.wo435387819
              .contains(
                d455360383
                    .last.gns986357726.last.s968880459,
              ) ==
          true) {
        return d455360383.first;
      }
      throw Z901570182(
        'opaque route candidate shouldnt be painted under non opaque candidate 2',
      );
    }
    throw Z901570182('No candidate found');
  }

  //rx64443626_getScreenVisitedFromPotentialCandidates_getScreenVisitedFromPotentialCandidates
  Future<void> m528426352(
    List<Ujb686664646> ff859565469,
    Completer mw468298975, {
    bool rwl136056084 = false,
  }) async {
    //
    await _pvd679689845.js612388944();

    if (mw468298975.isCompleted) return;

    if (!_j415102445.n901482421) return;
    if (_j415102445.s945439955) return;
    late bool kl978331698;
    //
    //
    //
    //
    //
    //
    if (cjl813143118 != null) {
      kl978331698 = true;
      cjl813143118 = null;
    } else {
      kl978331698 = rwl136056084;
    }
    if (wn436425195 != null) {
      await le867604312(wn436425195!.bos459293265);
    }
    await _pvd679689845.szy551885571();
    if (mw468298975.isCompleted) return;
    //
    while (vig602844900) {
      await _pvd679689845.kyy333852180();
      if (mw468298975.isCompleted) return;
    }

    //
    Ujb686664646? ljy662083530;
    while (ljy662083530 == null) {
      try {
        ljy662083530 =
            u279493428(ff859565469);
      } catch (e) {
        await _pvd679689845.kyy333852180();
        if (mw468298975.isCompleted) return;
      }
    }
    if (mw468298975.isCompleted) return;
    if (!ljy662083530.n901482421) {
      return;
    }
    pb94144812(
      ljy662083530,
    );
    d557307322 = ff859565469;
    _e1061097448.w141629169(
      F355691990.z959100263,
      'Start Screen - name: ${ljy662083530.fmx652311816} - id: ${ljy662083530.ws161819127} - startTime ${ljy662083530.ka212009398}',
      oe248383984: '🔵',
    );
    await _wvw1037595060.rx64443626(
      u343814147: ljy662083530.fmx652311816,
      x228738896: ljy662083530.ws161819127,
      sov312325521: ljy662083530.ka212009398,
      rwl136056084: kl978331698,
    );
    //
    if (bj398417429.isClosed) return;
    bj398417429.add(ljy662083530);
    await _lgs447603471.pr306345811();
  }

  Future<void> le867604312(
    String x228738896, {
    bool rwl136056084 = false,
  }) async {
    if (!_kqk768939973.zdb740509243) return;
    late Ujb686664646 ljy662083530;
    late Ujb686664646? iis497433910;

    if (wn436425195?.bos459293265 == x228738896) {
      iis497433910 = wn436425195;
    } else {
      iis497433910 = null;
    }

    //
    //
    if (iis497433910 == null) return;
    _lgs447603471.ua145213688();
    final Completer p31360860 =
        _pvd679689845.fl696466202();
    ljy662083530 = iis497433910;
    //
    //
    final int k290460453 = vqk605164555.indexOf(ljy662083530);
    final int jc594632869 = DateTime.now().millisecondsSinceEpoch;
    final P270265031 zm578647706 =
        ljy662083530.ks712079695(jc594632869);
    vqk605164555[k290460453] = zm578647706;
    d557307322 = null;
    final String vi777338624 = zm578647706.fmx652311816;
    final int h236311768 = zm578647706.ws161819127;
    final int ng101384000 = zm578647706.zo1032417282;

    _hlu512387300();
    await _pvd679689845.v619208202();
    final int pvb884440653 = ng101384000;

    _e1061097448.w141629169(
      F355691990.z959100263,
      'End Screen - name: $vi777338624 - id: $h236311768 - endTime $ng101384000 - recordingEndTime $pvb884440653',
      oe248383984: '🟡',
    );
    await _wvw1037595060.le867604312(
      u343814147: vi777338624,
      x228738896: h236311768,
      zyt724616215: ng101384000,
      bo355705078: pvb884440653,
      rwl136056084: rwl136056084,
    );
    p31360860.complete();
  }

  Future<void> p531892506() async {
    if (wn436425195 == null) return;
    await le867604312(
      wn436425195!.bos459293265,
    );
  }

  @visibleForTesting
  Future<void> bds50791729() async {
    _e1061097448.w141629169(
      F355691990.ozy577030087,
      'App did enter background',
    );
    //
    //
    //
    if (cjl813143118 != null) return;
    //
    if (wn436425195 == null) return;
    cjl813143118 =
        d557307322;
    await le867604312(
      wn436425195!.bos459293265,
      rwl136056084: true,
    );
  }

  @visibleForTesting
  Future<void> fhl643687274() async {
    _e1061097448.w141629169(
      F355691990.ozy577030087,
      'App did become active',
    );
    //
    if (cjl813143118 == null) return;

    final List<Ujb686664646> s944301372 =
        cjl813143118!
            .map(
              (p286662668) => p286662668.chz623465566(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();

    cjl813143118 = null;
    await rx64443626(
      s944301372,
      rwl136056084: true,
    );
  }

  Future<void> hv267112860() async {
    if (wn436425195 == null) return;
    if (d557307322 == null) return;
    final rx64552323 =
        d557307322;
    await le867604312(wn436425195!.bos459293265);
    final List<Ujb686664646> hhh286016458 =
        rx64552323!
            .map(
              (p286662668) => p286662668.chz623465566(
                DateTime.now().millisecondsSinceEpoch,
              ),
            )
            .toList();
    await rx64443626(hhh286016458);
  }

  Future<void> il393527428(String gn131697973) async {
    if (wn436425195 == null) return;
    if (d557307322 == null) return;
    final aq971782826 =
        wn436425195!.nkj801147761(gn131697973);
    final int k290460453 = d557307322!
        .indexWhere((kdw412699787) => kdw412699787.bos459293265 == wn436425195!.bos459293265);
    if (k290460453 == -1) return;
    d557307322![k290460453] = aq971782826;
    await hv267112860();
  }

  @override
  void b326102491() {
    _wxf336585268.removeObserver(this);
    bj398417429.close();
  }
}
