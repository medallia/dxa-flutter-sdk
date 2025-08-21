//
import 'dart:async';

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/tq1040135884.dart';
import 'package:medallia_dxa/src/cdq213709627.dart';
import 'package:medallia_dxa/src/hpu800796081.dart';
import 'package:medallia_dxa/src/uoj465455272.dart';
import 'package:medallia_dxa/src/re674085892.dart';
import 'package:medallia_dxa/src/e806889477.dart';
import 'package:medallia_dxa/src/vp371803424.dart';
import 'package:medallia_dxa/src/e487303575.dart';
import 'package:medallia_dxa/src/jt758138335.dart';

class N73888370 extends Ll142571319 {
  N73888370({
    required WidgetsBinding ge975106354,
    required Fs1047663401 aco653426626,
    required Hum672745843 mt387024518,
    required X404394719 nd421585041,
    required Bea645778397 ul120909750,
  })  : _bgf750376472 = aco653426626,
        _e252877212 = mt387024518,
        _an215992863 = ul120909750,
        super(nd421585041) {
    _hfn670522531 = Timer.periodic(_y598803754, (_d594035882) async {
      await pz779578807();
    });
    _an215992863.fmv915655324(qsj1038160782);
    _bgf750376472.nb344868607(_ks1047594537);

    ge975106354.pointerRouter
        .addGlobalRoute(_an215992863.jrl654600625);
  }
  static const Duration _y598803754 = Duration(milliseconds: 500);
  late Timer _hfn670522531;
  final Hum672745843 _e252877212;
  late final Ybr764602925 _pvd679689845 =
      Zmk583050637.u892083466.ute1001100860;

  late final Bea645778397 _an215992863;
  final Fs1047663401 _bgf750376472;
  final Set<Bu454350580> _f810454017 = {};
  @override
  void b326102491() {
    WidgetsBinding.instance.pointerRouter
        .removeGlobalRoute(_an215992863.jrl654600625);
    _bgf750376472.bk724763905(_ks1047594537);
    _hfn670522531.cancel();
  }

  void k1049996333(ScrollNotification izz224376627) {
    _an215992863.iby811368241.ydj174100171(izz224376627);
  }

  void qsj1038160782(X475815124 ji716780599) {
    final baz907871410 = ji716780599.baz907871410;
    final Ujb686664646? y484512090 = _bgf750376472.wn436425195;
    if (y484512090 == null) return;
    final int o557612019 =
        ji716780599.fx476596087 - y484512090.ka212009398;
    final f456534433 = Bu454350580(
      o557612019: o557612019,
      v662565796: [ji716780599],
      n828748353: baz907871410,
    );

    final e930696187 = _f810454017.lookup(f456534433);
    if (e930696187 != null) {
      e930696187.v662565796.add(ji716780599);
    } else {
      _f810454017.add(f456534433);
    }
  }

  Future<void> _ks1047594537() async {
    await pz779578807();
  }

  Future<void> pz779578807() async {
    if (_f810454017.isEmpty) return;
    final ozi776096538 = Set<Bu454350580>.from(_f810454017);
    _f810454017.clear();
    final wsn696558954 = _u586292074(ozi776096538);
    await _zs265366098(wsn696558954);
  }

  List<Q157413499> _u586292074(
    Set<Bu454350580> kum294603082,
  ) {
    return kum294603082.map((f456534433) {
      return _e252877212.b297400932(
        o557612019: f456534433.o557612019,
        ji716780599: f456534433.v662565796.map(
          (v662565796) {
            final Aw426418610? q965612182 =
                v662565796 is Aw426418610 ? v662565796 : null;
            return _e252877212.i779570997(
              ex1067830052: v662565796.gh319006713,
              xjr666948323: v662565796.nu9765652,
              i366422519: v662565796.v474434248,
              w618241779: q965612182?.d231119952,
              n362433981: q965612182?.c940896500,
              c331659121: q965612182?.bxl328021807,
              mb1038028188: q965612182?.vrh298744352,
            );
          },
        ).toList(),
        baz907871410: f456534433.n828748353.ky510790479,
      );
    }).toList();
  }

  Future<void> _zs265366098(
    List<Q157413499> kum294603082,
  ) async {
    await _pvd679689845.i729887926(
      v822065558: () async {
        await _e252877212.ws173014513(kum294603082);
      },
    );
  }
}
