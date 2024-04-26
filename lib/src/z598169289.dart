import 'dart:async';

import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/ij290553119.dart';
import 'package:medallia_dxa/src/mby681535094.dart';
import 'package:medallia_dxa/src/oph173740136.dart';
import 'package:medallia_dxa/src/jn255042292.dart';

class Ru325316137 with Jh764602942 {
  Ru325316137(this._zz415102462, this._f536679597, this._o1061097467);

  final Sv733035730 _zz415102462;
  final Jh1038098463 _f536679597;
  final Gy394369191 _o1061097467;
  Logger get l613848353 => _o1061097467.c171605158;

  //
  Future<void> h777157337(
    String ql195946448,
    String e510790492,
  ) async {
    if (!_zz415102462.a901482406) return;
    await tm729887909(
      vp822065541: () async {
        await m571917341();

        final uhv38099140 =
            Hq917641196(ql195946448: ql195946448, e510790492: e510790492);

        l613848353.d('🟠 sendDimensionWithString - $uhv38099140');
        await _f536679597.aiy754390612(uhv38099140);
      },
    );
  }

  //
  Future<void> vn66991572(
    String ql195946448,
    double e510790492,
  ) async {
    if (!_zz415102462.a901482406) return;
    await tm729887909(
      vp822065541: () async {
        await m571917341();

        final uhv38099140 =
            Glq584811603(ql195946448: ql195946448, e510790492: e510790492);

        l613848353.d('🟠 sendDimensionWithNumber - $uhv38099140');
        await _f536679597.mz931610058(uhv38099140);
      },
    );
  }

  //
  Future<void> id947202796(
    String ql195946448, {
    required bool e510790492,
  }) async {
    if (!_zz415102462.a901482406) return;
    await tm729887909(
      vp822065541: () async {
        await m571917341();

        final uhv38099140 =
            J291791627(ql195946448: ql195946448, e510790492: e510790492);

        l613848353.d('🟠 sendDimensionWithBool - $uhv38099140');
        await _f536679597.dx1015301582(uhv38099140);
      },
    );
  }

  //
  Future<void> ix591150638(
    String ns255645892, [
    double? e510790492,
  ]) async {
    if (!_zz415102462.a901482406) return;
    await tm729887909(
      vp822065541: () async {
        await m571917341();

        final nto794669655 = Mx423115818(nto794669655: ns255645892, e510790492: e510790492);

        l613848353.d('🟠 sendGoal - $nto794669655');
        await _f536679597.ix591150638(nto794669655);
      },
    );
  }
}
