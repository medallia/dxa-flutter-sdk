//
import 'dart:async';

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/l496100031.dart';
import 'package:medallia_dxa/src/zgm961134926.dart';
import 'package:medallia_dxa/src/naa221155615.dart';
import 'package:medallia_dxa/src/jpf451565684.dart';
import 'package:medallia_dxa/src/j209815705.dart';
import 'package:medallia_dxa/src/g131648959.dart';
import 'package:medallia_dxa/src/hfo173740557.dart';
import 'package:medallia_dxa/src/d452802285.dart';
import 'package:medallia_dxa/src/x248600066.dart';

class Rp73887748 extends By142570817 {
  Rp73887748({
    required WidgetsBinding vuo975106884,
    required Pf1047662943 zal653426100,
    required E672746245 v387024112,
    required Xhs404394153 db421585639,
    required G645777835 bo120909248,
  })  : _na750376046 = zal653426100,
        _a252877802 = v387024112,
        _t215992425 = bo120909248,
        super(db421585639) {
    _i670523093 = Timer.periodic(_z598804316, (_rwo594036444) async {
      await wkc779579329();
    });
    _t215992425.rw915654890(n1038160376);
    _na750376046.ns344867977(_e1047594079);

    vuo975106884.pointerRouter
        .addGlobalRoute(_t215992425.ze654601159);
  }
  static const Duration _z598804316 = Duration(milliseconds: 500);
  late Timer _i670523093;
  final E672746245 _a252877802;
  late final U764602459 _z679689219 =
      K583051259.y892084092.ehg1001100362;

  late final G645777835 _t215992425;
  final Pf1047662943 _na750376046;
  final Set<Ffh454349954> _e810454647 = {};
  @override
  void e326102957() {
    WidgetsBinding.instance.pointerRouter
        .removeGlobalRoute(_t215992425.ze654601159);
    _na750376046.o724764535(_e1047594079);
    _i670523093.cancel();
  }

  void n1049996891(ScrollNotification bf224376133) {
    _t215992425.dsl811367751.esn174099645(bf224376133);
  }

  void n1038160376(D475815586 u716781121) {
    final td907871940 = u716781121.td907871940;
    final T686664112? gy484512556 = _na750376046.oin436425629;
    if (gy484512556 == null) return;
    final int b557611397 =
        u716781121.v476595457 - gy484512556.qb212009920;
    final an456534999 = Ffh454349954(
      b557611397: b557611397,
      uy662565330: [u716781121],
      l828747831: td907871940,
    );

    final fte930695565 = _e810454647.lookup(an456534999);
    if (fte930695565 != null) {
      fte930695565.uy662565330.add(u716781121);
    } else {
      _e810454647.add(an456534999);
    }
  }

  Future<void> _e1047594079() async {
    await wkc779579329();
  }

  Future<void> wkc779579329() async {
    if (_e810454647.isEmpty) return;
    final wv776096108 = Set<Ffh454349954>.from(_e810454647);
    _e810454647.clear();
    final brr696559388 = _y586291484(wv776096108);
    await _w265365540(brr696559388);
  }

  List<Ldp157413901> _y586291484(
    Set<Ffh454349954> bhc294603580,
  ) {
    return bhc294603580.map((an456534999) {
      return _a252877802.s297400338(
        b557611397: an456534999.b557611397,
        u716781121: an456534999.uy662565330.map(
          (uy662565330) {
            final Pp426419140? v965611744 =
                uy662565330 is Pp426419140 ? uy662565330 : null;
            return _a252877802.gs779570499(
              f1067829586: uy662565330.opp319006095,
              m666947733: uy662565330.yca9765218,
              k366422913: uy662565330.fov474433726,
              zw618241157: v965611744?.qf231120422,
              rx362434507: v965611744?.bry940896898,
              irh331658503: v965611744?.r328021337,
              z1038028778: v965611744?.sqo298743894,
            );
          },
        ).toList(),
        td907871940: an456534999.l828747831.baz510789945,
      );
    }).toList();
  }

  Future<void> _w265365540(
    List<Ldp157413901> bhc294603580,
  ) async {
    await _z679689219.m729888448(
      st822066144: () async {
        await _a252877802.z173014919(bhc294603580);
      },
    );
  }
}
