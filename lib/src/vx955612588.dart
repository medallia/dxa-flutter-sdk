//
import 'dart:async';

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/o1040135247.dart';
import 'package:medallia_dxa/src/cdb213709240.dart';
import 'package:medallia_dxa/src/btg800796466.dart';
import 'package:medallia_dxa/src/e465455659.dart';
import 'package:medallia_dxa/src/tm674086535.dart';
import 'package:medallia_dxa/src/mbc806890118.dart';
import 'package:medallia_dxa/src/czi371804067.dart';
import 'package:medallia_dxa/src/sb487303956.dart';
import 'package:medallia_dxa/src/do758138716.dart';

class Y73887985 extends Uon142570932 {
  Y73887985({
    required WidgetsBinding tf975106993,
    required Xl1047663018 ltl653425985,
    required Iil672746480 sjf387023877,
    required V404394076 er421585426,
    required Qv645777758 qv120909109,
  })  : _j750376091 = ltl653425985,
        _zcu252877599 = sjf387023877,
        _djx215992476 = qv120909109,
        super(er421585426) {
    _tjx670522912 = Timer.periodic(_s598804393, (_s594036265) async {
      await gk779579188();
    });
    _djx215992476.ju915654687(xea1038160141);
    _j750376091.to344867964(_yj1047594154);

    tf975106993.pointerRouter
        .addGlobalRoute(_djx215992476.z654601010);
  }
  static const Duration _s598804393 = Duration(milliseconds: 500);
  late Timer _tjx670522912;
  final Iil672746480 _zcu252877599;
  late final J764602542 _ohq679689462 =
      Z583051022.n892084105.ocb1001100479;

  late final Qv645777758 _djx215992476;
  final Xl1047663018 _j750376091;
  final Set<Pj454349943> _jh810454658 = {};
  @override
  void vt326102872() {
    WidgetsBinding.instance.pointerRouter
        .removeGlobalRoute(_djx215992476.z654601010);
    _j750376091.eod724764546(_yj1047594154);
    _tjx670522912.cancel();
  }

  void qi1049996974(ScrollNotification dus224376240) {
    _djx215992476.d811367858.v174099528(dus224376240);
  }

  void xea1038160141(Ddb475815511 oq716781236) {
    final t907871793 = oq716781236.t907871793;
    final Wb686664005? h484512729 = _j750376091.v436425576;
    if (h484512729 == null) return;
    final int qgz557611376 =
        oq716781236.sv476595700 - h484512729.l212009781;
    final e456534818 = Pj454349943(
      qgz557611376: qgz557611376,
      mte662565159: [oq716781236],
      u828747970: t907871793,
    );

    final hae930695544 = _jh810454658.lookup(e456534818);
    if (hae930695544 != null) {
      hae930695544.mte662565159.add(oq716781236);
    } else {
      _jh810454658.add(e456534818);
    }
  }

  Future<void> _yj1047594154() async {
    await gk779579188();
  }

  Future<void> gk779579188() async {
    if (_jh810454658.isEmpty) return;
    final h776096153 = Set<Pj454349943>.from(_jh810454658);
    _jh810454658.clear();
    final bg696559593 = _y586291689(h776096153);
    await _scr265365713(bg696559593);
  }

  List<W157414136> _y586291689(
    Set<Pj454349943> fnl294603721,
  ) {
    return fnl294603721.map((e456534818) {
      return _zcu252877599.gi297400551(
        qgz557611376: e456534818.qgz557611376,
        oq716781236: e456534818.mte662565159.map(
          (mte662565159) {
            final Avm426418993? v965611541 =
                mte662565159 is Avm426418993 ? mte662565159 : null;
            return _zcu252877599.vh779570614(
              n1067829671: mte662565159.one319006074,
              akd666947680: mte662565159.xsx9765271,
              q366422900: mte662565159.mz474433611,
              qv618241136: v965611541?.f231120595,
              v362434366: v965611541?.g940896887,
              po331658738: v965611541?.dfu328021420,
              nfh1038028575: v965611541?.vyc298743971,
            );
          },
        ).toList(),
        t907871793: e456534818.u828747970.ovs510790092,
      );
    }).toList();
  }

  Future<void> _scr265365713(
    List<W157414136> fnl294603721,
  ) async {
    await _ohq679689462.kc729888309(
      qhu822065941: () async {
        await _zcu252877599.t173014898(fnl294603721);
      },
    );
  }
}
