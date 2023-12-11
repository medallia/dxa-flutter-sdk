//
import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/h151964203.dart';
import 'package:medallia_dxa/src/yq290553848.dart';
import 'package:medallia_dxa/src/r879958770.dart';
import 'package:medallia_dxa/src/je857696596.dart';
import 'package:medallia_dxa/src/xr230685710.dart';
import 'package:medallia_dxa/src/z209815579.dart';
import 'package:medallia_dxa/src/c131648829.dart';
import 'package:medallia_dxa/src/jpa681534609.dart';
import 'package:medallia_dxa/src/cfn173740687.dart';
import 'package:medallia_dxa/src/xwa452802159.dart';
import 'package:medallia_dxa/src/pr304042159.dart';
import 'package:medallia_dxa/src/lx955933655.dart';
import 'package:medallia_dxa/src/pa255041555.dart';
import 'package:medallia_dxa/src/xp966267512.dart';

class Mb87340326 with B141979851, Wx764602585 {
  Mb87340326(
    this._tdh415102745,
    this._o1061096732,
    this._i346769270,
    this.ft594445238,
    this._i748963905,
    this.wlp277875794,
    this.egk995494467,
    this.rnj1052757912,
    this._y387654869,
    this._y237360895,
    this._hb555932048,
  ) {
    uc1049665069 = Timer.periodic(_hb555932048.pj160990194, (_mb594036318) async {
      await n1031024891();
    });
    _i346769270.ni801556424.stream.listen((zto217291789) {
      grl1030976037 = true;
    });
  }

  final V733036085 _tdh415102745;
  final N394369600 _o1061096732;
  Logger get n613849030 => _o1061096732.gz897254107;
  final Iya204008955 _i346769270;
  final Sf808717572 ft594445238;
  final Cgf629109280 _i748963905;
  final Kn1038099192 _y387654869;
  final Y187482660 rnj1052757912;
  final WidgetsBinding wlp277875794;
  final SchedulerBinding egk995494467;
  final Chw344142690 _y237360895;
  final Vc170397050 _hb555932048;
  late final T1047663069 _ji750376172 = V583051129.h892084222.c653425974;
  @visibleForTesting
  late Timer uc1049665069;
  bool _k404420740 = false;
  bool _p61225375 = false;
  bool get _whc701931935 => _ji750376172.h436425503 != null;

  //
  W686663986 get _n927016706 {
    return _ji750376172.h436425503!;
  }

  @visibleForTesting
  bool grl1030976037 = false;
  @visibleForTesting
  bool get atb968983966 => grl1030976037;
  set atb968983966(bool f873118842) {
    grl1030976037 = f873118842;
    if (!f873118842) {
      _i346769270.r333851872();
    }
  }

  void _u741702094() {
    if (_k404420740) return;
    _k404420740 = true;
    wlp277875794.addPostFrameCallback((_mb594036318) async {
      _k404420740 = false;
      await _p773878385();
    });
  }

  Future<void> zj306345383() async {
    atb968983966 = true;
    await n1031024891();
  }

  Future<void> rb260696783() async {
    await _p773878385();
  }

  void cz163679906() {
    if (uc1049665069.isActive) return;
    uc1049665069 = Timer.periodic(_hb555932048.pj160990194, (_mb594036318) async {
      await n1031024891();
    });
  }

  void r689591523() {
    uc1049665069.cancel();
  }

  void lm86559357() {
    r689591523();
    cz163679906();
  }

  void k145213964() {
    ft594445238.zc916995436();
  }

  Future<void> n1031024891() async {
    if (!atb968983966) return;
    return _p773878385();
  }

  Future<void> _p773878385() async {
    if (!_tdh415102745.vvn740508879) return;
    if (!_whc701931935) return;
    if (ww878559340) {
      _u741702094();
      return;
    }
    if (_ji750376172.wk602844176) {
      return _u741702094();
    }
    final W686663986 q531814104 = _n927016706;
    if (c653425974.oh134583715(q531814104)) {
      return;
    }

    if (q531814104.y986357034.last.v89098398 &&
        q531814104.y986357034.last.gy304973677 == null) {
      _u741702094();
      return;
    }
    if (q531814104.j225674976) return;
    if (q531814104.lk20226675) return;
    if (!_tdh415102745.j884417765) {
      return _rq1062211149(
        ber662082878: q531814104,
        swd305047013: C433203189(
          hmz876937511: Vme72709081.vz783797296,
        ),
      );
    }
    if (!q531814104.j884417765) {
      final Vme72709081 hmz876937511 =
          q531814104.hmz876937511 ??
              Vme72709081.le717760132;
      return _rq1062211149(
        ber662082878: q531814104,
        swd305047013: C433203189(
          hmz876937511: hmz876937511,
        ),
      );
    }
    if (_y237360895.pbs676812047) {
      return _rq1062211149(
        ber662082878: q531814104,
        swd305047013: C433203189(
          hmz876937511: _y237360895.xf256797988,
        ),
      );
    }

    if (_p61225375) return;

    //
    //
    //
    if (egk995494467.schedulerPhase == SchedulerPhase.idle) {
      _p61225375 = true;
      await wlp277875794.endOfFrame;
      _p61225375 = false;
      if (!_whc701931935) return;
      if (_ji750376172.wk602844176) {
        return _u741702094();
      }
    }
    if (!oh276415465) {
      _u741702094();
      return;
    }
    if (d146327725 > 0) {
      return;
    }
    final int jvz13584213 = q531814104.hp161819395;
    final String a526226928 = q531814104.j652312572;
    final int of152847998 = DateTime.now().millisecondsSinceEpoch;
    final ByteData? a323108710 = await rnj1052757912.u533881257(
      ber662082878: q531814104,
      dlw269944167: () => atb968983966 = false,
      ucz981024535: _u741702094,
      i954939615: (hk5430863) => _i748963905.t16227243 = hk5430863,
    );
    if (a323108710 == null) return;
    await _xwp480728914(
      a323108710.buffer.asUint8List(),
      jvz13584213,
      a526226928,
      of152847998,
      q531814104,
    );
  }

  Future<void> _xwp480728914(
    Uint8List gpf238766498,
    int fm228738468,
    String a343814903,
    int of152847998,
    W686663986 ber662082878, {
    bool do450169267 = false,
  }) async {
    final Ebr491807664 e815611225 = Ebr491807664(
      gpf238766498: gpf238766498,
      fm228738468: fm228738468,
      a343814903: a343814903,
      of152847998: of152847998,
    );

    ber662082878.l229772524.add(
      F627940267(
        e815611225: e815611225,
        do450169267: do450169267,
      ),
    );
    n613849030.d(
      'Save screenshot - screenName: $a343814903 - screenId: $fm228738468 - startFocusTime: $of152847998',
    );
    await _y387654869.bwh521093919(e815611225);
  }

  //
  Future<void> zs117538624(
    Ezf270264371 ber662082878,
  ) async {
    if (ber662082878.lk20226675) return;
    final int wyz784534798 = ber662082878.go1032418038 - 500;
    if (!_tdh415102745.j884417765) {
      return _rq1062211149(
        ber662082878: ber662082878,
        swd305047013: C433203189(
          hmz876937511: Vme72709081.vz783797296,
        ),
        itg489874143: wyz784534798,
      );
    }
    if (ber662082878.l229772524.isEmpty) {
      return _rq1062211149(
        ber662082878: ber662082878,
        swd305047013: C433203189(
          hmz876937511: Vme72709081.abu1072278111,
        ),
        itg489874143: wyz784534798,
      );
    }
  }

  Future<void> _rq1062211149({
    required W686663986 ber662082878,
    required C433203189 swd305047013,
    int? itg489874143,
  }) async {
    await b686691339(
      _rq1062211149.hashCode,
    );
    return bfl376891846(
        _rq1062211149.hashCode, () async {
      //
      //
      if (ber662082878.l229772524.isNotEmpty &&
          ber662082878.l229772524.last.do450169267) return;
      final ByteData cw629039318 =
          await _i748963905.llz817361725(
        swd305047013,
      );

      final int of152847998 =
          itg489874143 ?? DateTime.now().millisecondsSinceEpoch;

      n613849030.d(
        '''
      _sendOnePlaceholderImageForThisScreen - 
      screenName: ${ber662082878.j652312572} - 
      screenId: ${ber662082878.hp161819395} -
      text: ${swd305047013.fzb266286880()}
      ''',
      );

      await _xwp480728914(
        cw629039318.buffer.asUint8List(),
        ber662082878.hp161819395,
        ber662082878.j652312572,
        of152847998,
        ber662082878,
        do450169267: true,
      );
    });
  }

  bool get oh276415465 {
    bool lig669940742 = true;
    try {
      egk995494467.currentFrameTimeStamp;
    } catch (e) {
      if (egk995494467.hasScheduledFrame) {
        lig669940742 = false;
      }
    }
    return lig669940742;
  }
}
