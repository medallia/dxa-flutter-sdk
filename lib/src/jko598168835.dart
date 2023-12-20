import 'dart:async';

import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/et290553557.dart';
import 'package:medallia_dxa/src/gc681534908.dart';
import 'package:medallia_dxa/src/wst173740962.dart';
import 'package:medallia_dxa/src/w255041854.dart';

class Py325316067 with C764602868 {
  Py325316067(this._q415102516, this._c536680295, this._s1061096497);

  final Xh733036312 _q415102516;
  final Pwn1038099413 _c536680295;
  final Z394369901 _s1061096497;
  Logger get bc613848811 => _s1061096497.d171605868;

  //
  Future<void> s777156883(
    String vo195945498,
    String c510789782,
  ) async {
    if (!_q415102516.j901481580) return;
    await i729888623(
      uh822065743: () async {
        await tms571918295();

        final jiv38099726 =
            Jm917640230(vo195945498: vo195945498, c510789782: c510789782);

        bc613848811.d('🟠 sendDimensionWithString - $jiv38099726');
        await _c536680295.z754390430(jiv38099726);
      },
    );
  }

  //
  Future<void> dlr66991646(
    String vo195945498,
    double c510789782,
  ) async {
    if (!_q415102516.j901481580) return;
    await i729888623(
      uh822065743: () async {
        await tms571918295();

        final jiv38099726 =
            Bb584812441(vo195945498: vo195945498, c510789782: c510789782);

        bc613848811.d('🟠 sendDimensionWithNumber - $jiv38099726');
        await _c536680295.ik931610112(jiv38099726);
      },
    );
  }

  //
  Future<void> qpq947202342(
    String vo195945498, {
    required bool c510789782,
  }) async {
    if (!_q415102516.j901481580) return;
    await i729888623(
      uh822065743: () async {
        await tms571918295();

        final jiv38099726 =
            Z291791041(vo195945498: vo195945498, c510789782: c510789782);

        bc613848811.d('🟠 sendDimensionWithBool - $jiv38099726');
        await _c536680295.nbn1015301636(jiv38099726);
      },
    );
  }

  //
  Future<void> to591150564(
    String zv255646478, [
    double? c510789782,
  ]) async {
    if (!_q415102516.j901481580) return;
    await i729888623(
      uh822065743: () async {
        await tms571918295();

        final beh794669469 = T423116768(beh794669469: zv255646478, c510789782: c510789782);

        bc613848811.d('🟠 sendGoal - $beh794669469');
        await _c536680295.to591150564(beh794669469);
      },
    );
  }
}
