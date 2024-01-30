//
import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/gaj151963929.dart';
import 'package:medallia_dxa/src/pf290553034.dart';
import 'package:medallia_dxa/src/b879958464.dart';
import 'package:medallia_dxa/src/tqg857696870.dart';
import 'package:medallia_dxa/src/t230686524.dart';
import 'package:medallia_dxa/src/l209816361.dart';
import 'package:medallia_dxa/src/epi131649039.dart';
import 'package:medallia_dxa/src/mw681535395.dart';
import 'package:medallia_dxa/src/fxd173740477.dart';
import 'package:medallia_dxa/src/yh452801885.dart';
import 'package:medallia_dxa/src/b439716169.dart';
import 'package:medallia_dxa/src/ng304042909.dart';
import 'package:medallia_dxa/src/rgl955932901.dart';
import 'package:medallia_dxa/src/lm255042337.dart';
import 'package:medallia_dxa/src/kr966267210.dart';

class Udj87340564 with Yuq141980665, O764603371 {
  Udj87340564(
    this._h415101995,
    this._suc1061097006,
    this._nmq346768452,
    this.rns594444420,
    this._nfj748964723,
    this.syo277876576,
    this.qao995494257,
    this.u1052757162,
    this._e387655655,
    this._o237360589,
    this._syj555932322,
  ) {
    e1049664799 = Timer.periodic(_syj555932322.qv160989376, (_oh594036076) async {
      await faz1031025609();
    });
    _nmq346768452.e801555706.stream.listen((tf217292607) {
      r1030975767 = true;
    });
  }

  final Y733035783 _h415101995;
  final Tiy394369394 _suc1061097006;
  Logger get b613848308 => _suc1061097006.y897253865;
  final Kzc204009161 _nmq346768452;
  final Qk808717878 rns594444420;
  final Rpq629109010 _nfj748964723;
  final L1038098890 _e387655655;
  final Fzs187482390 u1052757162;
  final WidgetsBinding syo277876576;
  final SchedulerBinding qao995494257;
  final I344141904 _o237360589;
  final Jq170397256 _syj555932322;
  late final In1047663343 _dbm750376926 = Bc583050315.i892083404.sp653426180;
  @visibleForTesting
  late Timer e1049664799;
  bool _iqe404421558 = false;
  bool _zg61225645 = false;
  bool get _z701932205 => _dbm750376926.jv436424749 != null;

  //
  Xbi686664192 get _r927015984 {
    return _dbm750376926.jv436424749!;
  }

  @visibleForTesting
  bool r1030975767 = false;
  @visibleForTesting
  bool get dz968984236 => r1030975767;
  set dz968984236(bool ng873119560) {
    r1030975767 = ng873119560;
    if (!ng873119560) {
      _nmq346768452.blm333852626();
    }
  }

  void _t741702396() {
    if (_iqe404421558) return;
    _iqe404421558 = true;
    syo277876576.addPostFrameCallback((_oh594036076) async {
      _iqe404421558 = false;
      await _qm773878083();
    });
  }

  Future<void> nzl306345621() async {
    dz968984236 = true;
    await faz1031025609();
  }

  Future<void> kd260696573() async {
    await _qm773878083();
  }

  void xh163679632() {
    if (e1049664799.isActive) return;
    e1049664799 = Timer.periodic(_syj555932322.qv160989376, (_oh594036076) async {
      await faz1031025609();
    });
  }

  void or689592273() {
    e1049664799.cancel();
  }

  void kq86559055() {
    or689592273();
    xh163679632();
  }

  void bfb145213758() {
    rns594444420.fh916995678();
  }

  Future<void> faz1031025609() async {
    if (!dz968984236) return;
    return _qm773878083();
  }

  Future<void> _qm773878083() async {
    if (!_h415101995.f740509693) return;
    if (_h415101995.bny101453526) return;
    if (!_z701932205) return;
    if (vau878560094) {
      _t741702396();
      return;
    }
    if (_dbm750376926.j602844962) {
      return _t741702396();
    }
    final Xbi686664192 it531813866 = _r927015984;
    if (sp653426180.lml134583953(it531813866)) {
      return;
    }

    if (it531813866.k986357272.last
            .y588001160()
            .r304972895 ==
        null) {
      _t741702396();
      return;
    }
    if (it531813866.q225674706) return;
    if (it531813866.j20226369) return;
    if (!_h415101995.t884418519) {
      return _txm1062210943(
        em662083084: it531813866,
        sav305047255: Fb433202375(
          eng876937749: Czu72708331.bcc783798018,
        ),
      );
    }
    if (!it531813866.t884418519) {
      final Czu72708331 eng876937749 =
          it531813866.eng876937749 ??
              Czu72708331.ig717759926;
      return _txm1062210943(
        em662083084: it531813866,
        sav305047255: Fb433202375(
          eng876937749: eng876937749,
        ),
      );
    }
    if (_o237360589.jb676812349) {
      return _txm1062210943(
        em662083084: it531813866,
        sav305047255: Fb433202375(
          eng876937749: _o237360589.e256798230,
        ),
      );
    }

    if (_zg61225645) return;

    //
    //
    //
    if (qao995494257.schedulerPhase == SchedulerPhase.idle) {
      _zg61225645 = true;
      await syo277876576.endOfFrame;
      _zg61225645 = false;
      if (!_z701932205) return;
      if (_dbm750376926.j602844962) {
        return _t741702396();
      }
    }
    if (!sy276414683) {
      _t741702396();
      return;
    }
    if (w146328479 > 0) {
      return;
    }
    final int nnf13583463 = it531813866.vpn161818673;
    final String zlc526227138 = it531813866.n652311758;
    final int x152847692 = DateTime.now().millisecondsSinceEpoch;
    late final ByteData? znc323107924;
    try {
      znc323107924 = await u1052757162.f533881499(
        em662083084: it531813866,
        jp269944405: () => dz968984236 = false,
        c981023781: _t741702396,
        k954940397: (arq5430653) => _nfj748964723.u16226457 = arq5430653,
      );
    } on Fyi901570368 catch (e) {
      debugPrint(e.iut172461229);
      return;
    }
    if (znc323107924 == null) return;
    await _wdy480728160(
      znc323107924.buffer.asUint8List(),
      nnf13583463,
      zlc526227138,
      x152847692,
      it531813866,
    );
  }

  Future<void> _wdy480728160(
    Uint8List w238766736,
    int lhg228738710,
    String u343814597,
    int x152847692,
    Xbi686664192 em662083084, {
    bool y450169473 = false,
  }) async {
    final Lua491806850 jqy815611499 = Lua491806850(
      w238766736: w238766736,
      lhg228738710: lhg228738710,
      u343814597: u343814597,
      x152847692: x152847692,
    );

    em662083084.q229773278.add(
      Vk627939481(
        jqy815611499: jqy815611499,
        y450169473: y450169473,
      ),
    );
    b613848308.d(
      'Save screenshot - screenName: $u343814597 - screenId: $lhg228738710 - startFocusTime: $x152847692',
    );
    await _e387655655.u521093165(jqy815611499);
  }

  //
  Future<void> tq117537906(
    D270265089 em662083084,
  ) async {
    if (_h415101995.bny101453526) return;
    if (em662083084.j20226369) return;
    final int ajk784535100 = em662083084.uqv1032417732 - 500;
    if (!_h415101995.t884418519) {
      return _txm1062210943(
        em662083084: em662083084,
        sav305047255: Fb433202375(
          eng876937749: Czu72708331.bcc783798018,
        ),
        pg489873901: ajk784535100,
      );
    }
    if (em662083084.q229773278.isEmpty) {
      return _txm1062210943(
        em662083084: em662083084,
        sav305047255: Fb433202375(
          eng876937749: Czu72708331.eme1072277869,
        ),
        pg489873901: ajk784535100,
      );
    }
  }

  Future<void> _txm1062210943({
    required Xbi686664192 em662083084,
    required Fb433202375 sav305047255,
    int? pg489873901,
  }) async {
    await b686692153(
      _txm1062210943.hashCode,
    );
    return z376892148(
        _txm1062210943.hashCode, () async {
      //
      //
      if (em662083084.q229773278.isNotEmpty &&
          em662083084.q229773278.last.y450169473) return;
      final ByteData pl629040100 =
          await _nfj748964723.wst817360911(
        sav305047255,
      );

      final int x152847692 =
          pg489873901 ?? DateTime.now().millisecondsSinceEpoch;

      b613848308.d(
        '''
      _sendOnePlaceholderImageForThisScreen - 
      screenName: ${em662083084.n652311758} - 
      screenId: ${em662083084.vpn161818673} -
      text: ${sav305047255.eyk266286098()}
      ''',
      );

      await _wdy480728160(
        pl629040100.buffer.asUint8List(),
        em662083084.vpn161818673,
        em662083084.n652311758,
        x152847692,
        em662083084,
        y450169473: true,
      );
    });
  }

  bool get sy276414683 {
    bool i669941556 = true;
    try {
      qao995494257.currentFrameTimeStamp;
    } catch (e) {
      if (qao995494257.hasScheduledFrame) {
        i669941556 = false;
      }
    }
    return i669941556;
  }
}
