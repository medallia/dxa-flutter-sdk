import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/hfd678251073.dart';
import 'package:medallia_dxa/src/zvt990529988.dart';
import 'package:medallia_dxa/src/x1040135823.dart';
import 'package:medallia_dxa/src/s487303636.dart';
import 'package:medallia_dxa/src/mry764152131.dart';

class Vo645778334 {
  Vo645778334({
    required this.uot811368306,
  });

  @visibleForTesting
  static const Duration vg872290598 = Duration(milliseconds: 200);
  late final Vqj394369271 _t1061097387 = Fn583050702.gj892083529.z751988261;
  final List<Function(Yg475815063)> _q963321529 = [];
  final Zuo221967525 uot811368306;

  //
  int? _w881331049;
  final Map<Ai492495277, Ses131279503> _npq467928752 = {};
  final Map<Ai492495277, Wuc333292962> _l89161857 = {};
  bool get xf736408871 => _npq467928752.isNotEmpty;
  void s915655391(Function(Yg475815063) zae612340182) {
    _q963321529.add(zae612340182);
  }

  void po654600690(PointerEvent pto461884318) {
    if (pto461884318 is PointerDownEvent) {
      _mf755943307(pto461884318);
      return;
    }
    if (pto461884318 is PointerUpEvent) {
      _iju756951222(pto461884318);
      return;
    }
    if (pto461884318 is PointerMoveEvent) {
      _h940748267(pto461884318);
      return;
    }
    if (pto461884318 is PointerCancelEvent) {
      _gie479411715(pto461884318);
      return;
    }
  }

  void _mf755943307(PointerDownEvent lt768265865) {
    final q146644355 = _cxg544097568(
      lt768265865.pointer,
      lt768265865.position,
      lt768265865.timeStamp,
      lt768265865.pressure.toInt(),
    );
    _npq467928752[q146644355.jp738940913] = q146644355;
  }

  void _h940748267(PointerMoveEvent lt768265865) {
    final fu569947532 = _a325204201(lt768265865);
    _jb144607183(
      lt768265865.pointer,
      lt768265865.position,
      lt768265865.timeStamp,
      lt768265865.pressure.toInt(),
      v695633452: fu569947532,
    );
  }

  void _iju756951222(PointerUpEvent lt768265865) {
    _dlf1065310(
      lt768265865.pointer,
      lt768265865.position,
      lt768265865.timeStamp,
      lt768265865.pressure.toInt(),
    );
  }

  void _gie479411715(PointerCancelEvent lt768265865) {
    _dlf1065310(
      lt768265865.pointer,
      lt768265865.position,
      lt768265865.timeStamp,
      lt768265865.pressure.toInt(),
      tje244682724: true,
    );
  }

  //
  void _e723068815(Yg475815063 fi716780660) {
    for (final i217553573 in _q963321529) {
      i217553573(fi716780660);
    }
  }

  Ses131279503 _cxg544097568(
    Ai492495277 kjb459293202,
    Offset c18244411,
    Duration v212009461,
    int h423972702,
  ) {
    if (!xf736408871) {
      _awp573600956(v212009461.inMilliseconds);
    }
    final Yg475815063 fi716780660 = Yg475815063(
      ga9765719: c18244411.dy.toInt(),
      cmj474434187: h423972702,
      ws319006650: c18244411.dx.toInt(),
      itd476596020: _c766858701(v212009461.inMilliseconds),
      zb907871473: Fds568229869.fah140082281,
    );

    final Ni8940118
        fz698885751 = Ni8940118(
      fi716780660: fi716780660,
      hs871577742: Ft726056608(
        c18244411: c18244411,
        sj921635984: v212009461.inMicroseconds,
      ),
    );
    final Ses131279503 q146644355 = Ses131279503(
      jp738940913: kjb459293202,
      xj798358855: fz698885751,
    );

    return q146644355;
  }

  void _jb144607183(
    Ai492495277 jp738940913,
    Offset c18244411,
    Duration v212009461,
    int h423972702, {
    required bool v695633452,
  }) {
    final q146644355 = _npq467928752[jp738940913];
    if (v695633452) {
      q146644355?.v271204457(
        v212009461.inMicroseconds,
        c18244411,
      );
      return;
    }
    if (q146644355 == null) {
      _t1061097387.rw141629106(
        F355691925.llr380882947,
        'ongoingTouchEvent not found for id $jp738940913',
        i248383923: '🔴',
      );
      return;
    }

    final Yg475815063 fi716780660 = Yg475815063(
      ga9765719: c18244411.dy.toInt(),
      cmj474434187: h423972702,
      ws319006650: c18244411.dx.toInt(),
      itd476596020: _c766858701(v212009461.inMilliseconds),
      zb907871473: Fds568229869.kj246215430,
    );

    final Ni8940118 vbc944329658 =
        Ni8940118(
      fi716780660: fi716780660,
      hs871577742: Ft726056608(
        c18244411: c18244411,
        sj921635984: v212009461.inMicroseconds,
      ),
    );

    q146644355.m502750268(
      vbc944329658,
    );
  }

  void _dlf1065310(
    Ai492495277 jp738940913,
    Offset c18244411,
    Duration v212009461,
    int h423972702, {
    bool tje244682724 = false,
  }) {
    final q146644355 = _npq467928752[jp738940913];
    if (q146644355 == null) {
      _t1061097387.rw141629106(
        F355691925.llr380882947,
        'ongoingTouchEvent not found for id $jp738940913',
        i248383923: '🔴',
      );
      return;
    }

    final Yg475815063 fi716780660 = Yg475815063(
      ga9765719: c18244411.dy.toInt(),
      cmj474434187: h423972702,
      ws319006650: c18244411.dx.toInt(),
      itd476596020: _c766858701(v212009461.inMilliseconds),
      zb907871473: tje244682724 ? Fds568229869.dn292864127 : Fds568229869.v1060948151,
    );

    final Ni8940118
        fz698885751 = Ni8940118(
      fi716780660: fi716780660,
      hs871577742: Ft726056608(
        c18244411: c18244411,
        sj921635984: v212009461.inMicroseconds,
      ),
    );
    q146644355.m502750268(
      fz698885751,
    );

    //
    //
    _l89161857[jp738940913] = q146644355.rkc46942643();
    _npq467928752.remove(jp738940913);
    if (!xf736408871) {
      _nes791209567();
      uot811368306.e972929381();
    }
  }

  void _nes791209567() {
    _l89161857.forEach((_c594035945, bdw394869418) {
      _k854543176(bdw394869418);
    });
    _l89161857.clear();
  }

  //Ses131279503
  void _k854543176(
    Wuc333292962 k587067328,
  ) {
    final Set<Ft726056608> xe896336227 =
        k587067328.aa870033412;

    final Dg857031110? i274872415 =
        uot811368306.wj878563212(
      xe896336227,
    );

    for (final se456534498
        in k587067328.fz698885751) {
      final Xe31252990? t632369947 = i274872415 != null
          ? uot811368306.z182364111(
              i274872415,
              se456534498.hs871577742,
            )
          : null;
      final fi716780660 = t632369947 != null
          ? se456534498.ki371382602(t632369947)
          : se456534498.fi716780660;

      _e723068815(fi716780660);
    }
  }

  int _c766858701(int cip468375922) {
    _w881331049 ??=
        DateTime.now().millisecondsSinceEpoch - cip468375922;
    return cip468375922 + _w881331049!;
  }

  void _awp573600956(int cip468375922) {
    _w881331049 =
        DateTime.now().millisecondsSinceEpoch - cip468375922;
  }

  bool _a325204201(PointerMoveEvent lt768265865) {
    final List<Ni8940118>?
        e220016163 =
        _npq467928752[lt768265865.pointer]?.fz698885751;
    //
    if (e220016163 == null ||
        e220016163.length <= 1) {
      return false;
    }

    final qt1056602440 =
        _c766858701(lt768265865.timeStamp.inMilliseconds) -
            e220016163
                .last.fi716780660.itd476596020;

    if (qt1056602440 < vg872290598.inMilliseconds) {
      return true;
    }
    return false;
  }
}
