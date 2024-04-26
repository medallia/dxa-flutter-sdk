//
import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/jto151963852.dart';
import 'package:medallia_dxa/src/ij290553119.dart';
import 'package:medallia_dxa/src/je879958037.dart';
import 'package:medallia_dxa/src/o857697203.dart';
import 'package:medallia_dxa/src/roo230686441.dart';
import 'package:medallia_dxa/src/pk209816316.dart';
import 'package:medallia_dxa/src/yd131649498.dart';
import 'package:medallia_dxa/src/mby681535094.dart';
import 'package:medallia_dxa/src/oph173740136.dart';
import 'package:medallia_dxa/src/feb452801672.dart';
import 'package:medallia_dxa/src/ky439715996.dart';
import 'package:medallia_dxa/src/e304042568.dart';
import 'package:medallia_dxa/src/klf955932976.dart';
import 'package:medallia_dxa/src/jn255042292.dart';
import 'package:medallia_dxa/src/mk966267039.dart';

class Kqo87340993 with Oro141980204, Jh764602942 {
  Kqo87340993(
    this._zz415102462,
    this._o1061097467,
    this._ox346768785,
    this.lmb594444625,
    this._ju748964518,
    this.x277876405,
    this.o995494052,
    this.fz1052757375,
    this._ml387655218,
    this._w237360152,
    this._stg555932535,
  ) {
    j1049664714 = Timer.periodic(_stg555932535.fnm160989461, (_ru594035897) async {
      await c1031025180();
    });
    _ox346768785.foe801555759.stream.listen((il217292522) {
      ia1030975682 = true;
    });
  }

  final Sv733035730 _zz415102462;
  final Gy394369191 _o1061097467;
  Logger get l613848353 => _o1061097467.iy897253436;
  final Wa204009244 _ox346768785;
  final Khd808718307 lmb594444625;
  final Wq629108935 _ju748964518;
  final Jh1038098463 _ml387655218;
  final V187482307 fz1052757375;
  final WidgetsBinding x277876405;
  final SchedulerBinding o995494052;
  final Fr344142213 _w237360152;
  final U170397597 _stg555932535;
  late final Rsx1047663418 _zr750376459 = R583050654.fwk892083481.ucv653426641;
  @visibleForTesting
  late Timer j1049664714;
  bool _k404421219 = false;
  bool _d61225848 = false;
  bool get _mdx701932408 => _zr750376459.nn436425208 != null;

  //
  P686664661 get _l927016421 {
    return _zr750376459.nn436425208!;
  }

  @visibleForTesting
  bool ia1030975682 = false;
  @visibleForTesting
  bool get zsa968984441 => ia1030975682;
  set zsa968984441(bool l873119389) {
    ia1030975682 = l873119389;
    if (!l873119389) {
      _ox346768785.jc333852167();
    }
  }

  void _awr741702441() {
    if (_k404421219) return;
    _k404421219 = true;
    x277876405.addPostFrameCallback((_ru594035897) async {
      _k404421219 = false;
      await _pt773877910();
    });
  }

  Future<void> b306345792() async {
    zsa968984441 = true;
    await c1031025180();
  }

  Future<void> ok260696104() async {
    await _pt773877910();
  }

  void vfp163679301() {
    if (j1049664714.isActive) return;
    j1049664714 = Timer.periodic(_stg555932535.fnm160989461, (_ru594035897) async {
      await c1031025180();
    });
  }

  void q689591812() {
    j1049664714.cancel();
  }

  void ghj86558874() {
    q689591812();
    vfp163679301();
  }

  void boe145213675() {
    lmb594444625.w916995979();
  }

  Future<void> c1031025180() async {
    if (!zsa968984441) return;
    return _pt773877910();
  }

  Future<void> _pt773877910() async {
    if (!_zz415102462.mk740509224) return;
    if (_zz415102462.i101453571) return;
    if (!_mdx701932408) return;
    if (v878559883) {
      _awr741702441();
      return;
    }
    if (_zr750376459.vpg602844919) {
      return _awr741702441();
    }
    final P686664661 p531813439 = _l927016421;
    if (ucv653426641.a134584132(p531813439)) {
      return;
    }

    if (p531813439.j986357709.last
            .vd588000861()
            .lvz304973194 ==
        null) {
      _awr741702441();
      return;
    }
    if (p531813439.cov225674247) return;
    if (p531813439.kuc20226196) return;
    if (!_zz415102462.cko884418050) {
      return _qx1062210730(
        l662083545: p531813439,
        o305047298: Cmp433202450(
          ujw876938176: U72708414.pi783797975,
        ),
      );
    }
    if (!p531813439.cko884418050) {
      final U72708414 ujw876938176 =
          p531813439.ujw876938176 ??
              U72708414.m717759587;
      return _qx1062210730(
        l662083545: p531813439,
        o305047298: Cmp433202450(
          ujw876938176: ujw876938176,
        ),
      );
    }
    if (_w237360152.c676812776) {
      return _qx1062210730(
        l662083545: p531813439,
        o305047298: Cmp433202450(
          ujw876938176: _w237360152.nyq256798659,
        ),
      );
    }

    if (_d61225848) return;

    //
    //
    //
    if (o995494052.schedulerPhase == SchedulerPhase.idle) {
      _d61225848 = true;
      await x277876405.endOfFrame;
      _d61225848 = false;
      if (!_mdx701932408) return;
      if (_zr750376459.vpg602844919) {
        return _awr741702441();
      }
    }
    if (!bp276414734) {
      _awr741702441();
      return;
    }
    if (uny146328138 > 0) {
      return;
    }
    final int yb13583794 = p531813439.eho161819108;
    final String so526227223 = p531813439.g652311835;
    final int fr152847513 = DateTime.now().millisecondsSinceEpoch;
    late final ByteData? utl323108225;
    try {
      utl323108225 = await fz1052757375.bxm533881678(
        l662083545: p531813439,
        xkh269944704: () => zsa968984441 = false,
        iu981024240: _awr741702441,
        gw954939960: (un5430440) => _ju748964518.n16226636 = un5430440,
      );
    } on Oy901570197 catch (e) {
      debugPrint(e.od172461432);
      return;
    }
    if (utl323108225 == null) return;
    await _bku480728501(
      utl323108225.buffer.asUint8List(),
      yb13583794,
      so526227223,
      fr152847513,
      p531813439,
    );
  }

  Future<void> _bku480728501(
    Uint8List oty238766917,
    int ysv228738883,
    String olz343814160,
    int fr152847513,
    P686664661 l662083545, {
    bool lm450169684 = false,
  }) async {
    final Dn491807063 ji815611838 = Dn491807063(
      oty238766917: oty238766917,
      ysv228738883: ysv228738883,
      olz343814160: olz343814160,
      fr152847513: fr152847513,
    );

    l662083545.f229772811.add(
      S627939660(
        ji815611838: ji815611838,
        lm450169684: lm450169684,
      ),
    );
    l613848353.d(
      'Save screenshot - screenName: $olz343814160 - screenId: $ysv228738883 - startFocusTime: $fr152847513',
    );
    await _ml387655218.rj521093624(ji815611838);
  }

  //
  Future<void> ot117538215(
    Qf270265044 l662083545,
  ) async {
    if (_zz415102462.i101453571) return;
    if (l662083545.kuc20226196) return;
    final int d784535529 = l662083545.h1032417297 - 500;
    if (!_zz415102462.cko884418050) {
      return _qx1062210730(
        l662083545: l662083545,
        o305047298: Cmp433202450(
          ujw876938176: U72708414.pi783797975,
        ),
        v489873464: d784535529,
      );
    }
    if (l662083545.f229772811.isEmpty) {
      return _qx1062210730(
        l662083545: l662083545,
        o305047298: Cmp433202450(
          ujw876938176: U72708414.ctw1072277688,
        ),
        v489873464: d784535529,
      );
    }
  }

  Future<void> _qx1062210730({
    required P686664661 l662083545,
    required Cmp433202450 o305047298,
    int? v489873464,
  }) async {
    await tzd686692076(
      _qx1062210730.hashCode,
    );
    return dy376892193(
        _qx1062210730.hashCode, () async {
      //
      //
      if (l662083545.f229772811.isNotEmpty &&
          l662083545.f229772811.last.lm450169684) return;
      final ByteData mf629039665 =
          await _ju748964518.gv817361370(
        o305047298,
      );

      final int fr152847513 =
          v489873464 ?? DateTime.now().millisecondsSinceEpoch;

      l613848353.d(
        '''
      _sendOnePlaceholderImageForThisScreen - 
      screenName: ${l662083545.g652311835} - 
      screenId: ${l662083545.eho161819108} -
      text: ${o305047298.o266286535()}
      ''',
      );

      await _bku480728501(
        mf629039665.buffer.asUint8List(),
        l662083545.eho161819108,
        l662083545.g652311835,
        fr152847513,
        l662083545,
        lm450169684: true,
      );
    });
  }

  bool get bp276414734 {
    bool oag669941473 = true;
    try {
      o995494052.currentFrameTimeStamp;
    } catch (e) {
      if (o995494052.hasScheduledFrame) {
        oag669941473 = false;
      }
    }
    return oag669941473;
  }
}
