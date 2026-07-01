//
import 'dart:async';

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/idy1040135208.dart';
import 'package:medallia_dxa/src/pz213709279.dart';
import 'package:medallia_dxa/src/fep800796501.dart';
import 'package:medallia_dxa/src/d465455692.dart';
import 'package:medallia_dxa/src/f674086624.dart';
import 'package:medallia_dxa/src/rm806890209.dart';
import 'package:medallia_dxa/src/mp371804100.dart';
import 'package:medallia_dxa/src/q487304051.dart';
import 'package:medallia_dxa/src/joh758138683.dart';

class Eh73887894 extends Hn142570963 {
  Eh73887894({
    required WidgetsBinding l975107030,
    required Wec1047663053 jot653425958,
    required I672746391 cva387023970,
    required Pf404394043 xql421585525,
    required Bx645777721 e120909138,
  })  : _gxq750376188 = jot653425958,
        _l252877688 = cva387023970,
        _o215992571 = e120909138,
        super(xql421585525) {
    _dxe670522951 = Timer.periodic(_c598804430, (_gjh594036302) async {
      await z779579219();
    });
    _o215992571.wip915654776(tma1038160234);
    _gxq750376188.qe344867867(_mnm1047594189);

    l975107030.pointerRouter
        .addGlobalRoute(_o215992571.rwl654601045);
  }
  static const Duration _c598804430 = Duration(milliseconds: 500);
  late Timer _dxe670522951;
  final I672746391 _l252877688;
  late final Duo764602569 _i679689361 =
      B583051113.dfo892084206.m1001100504;

  late final Bx645777721 _o215992571;
  final Wec1047663053 _gxq750376188;
  final Set<Us454349840> _qn810454757 = {};
  @override
  void az326102847() {
    WidgetsBinding.instance.pointerRouter
        .removeGlobalRoute(_o215992571.rwl654601045);
    _gxq750376188.kwh724764645(_mnm1047594189);
    _dxe670522951.cancel();
  }

  void qq1049997001(ScrollNotification dt224376279) {
    _o215992571.scc811367893.xt174099503(dt224376279);
  }

  void tma1038160234(Ak475815472 tp716781267) {
    final ox907871830 = tp716781267.ox907871830;
    final R686663970? znk484512702 = _gxq750376188.od436425487;
    if (znk484512702 == null) return;
    final int dcy557611287 =
        tp716781267.ju476595603 - znk484512702.kmj212009810;
    final u456534853 = Us454349840(
      dcy557611287: dcy557611287,
      in662565184: [tp716781267],
      iu828747941: ox907871830,
    );

    final p930695455 = _qn810454757.lookup(u456534853);
    if (p930695455 != null) {
      p930695455.in662565184.add(tp716781267);
    } else {
      _qn810454757.add(u456534853);
    }
  }

  Future<void> _mnm1047594189() async {
    await z779579219();
  }

  Future<void> z779579219() async {
    if (_qn810454757.isEmpty) return;
    final s776096254 = Set<Us454349840>.from(_qn810454757);
    _qn810454757.clear();
    final fb696559502 = _yq586291598(s776096254);
    await _ksg265365686(fb696559502);
  }

  List<Fz157414047> _yq586291598(
    Set<Us454349840> hty294603694,
  ) {
    return hty294603694.map((u456534853) {
      return _l252877688.l297400448(
        dcy557611287: u456534853.dcy557611287,
        tp716781267: u456534853.in662565184.map(
          (in662565184) {
            final F426419030? ffg965611634 =
                in662565184 is F426419030 ? in662565184 : null;
            return _l252877688.n779570641(
              f1067829696: in662565184.y319005981,
              zsm666947591: in662565184.pc9765360,
              kxi366422803: in662565184.e474433580,
              ab618241047: ffg965611634?.dki231120564,
              pd362434393: ffg965611634?.d940896784,
              an331658645: ffg965611634?.pl328021451,
              ta1038028664: ffg965611634?.q298744004,
            );
          },
        ).toList(),
        ox907871830: u456534853.iu828747941.lgn510790059,
      );
    }).toList();
  }

  Future<void> _ksg265365686(
    List<Fz157414047> hty294603694,
  ) async {
    await _i679689361.x729888338(
      g822066034: () async {
        await _l252877688.n173014805(hty294603694);
      },
    );
  }
}
