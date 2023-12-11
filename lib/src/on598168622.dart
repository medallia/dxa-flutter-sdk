import 'dart:async';

import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/yq290553848.dart';
import 'package:medallia_dxa/src/jpa681534609.dart';
import 'package:medallia_dxa/src/cfn173740687.dart';
import 'package:medallia_dxa/src/pa255041555.dart';

class K325315790 with Wx764602585 {
  K325315790(this._tdh415102745, this._nb536680010, this._o1061096732);

  final V733036085 _tdh415102745;
  final Kn1038099192 _nb536680010;
  final N394369600 _o1061096732;
  Logger get n613849030 => _o1061096732.v171605569;

  //
  Future<void> g777156670(
    String sut195945783,
    String u510790075,
  ) async {
    if (!_tdh415102745.mtr901481793) return;
    await j729888322(
      fj822066018: () async {
        await pw571918074();

        final tf38099491 =
            Cw917640459(sut195945783: sut195945783, u510790075: u510790075);

        n613849030.d('🟠 sendDimensionWithString - $tf38099491');
        await _nb536680010.pjy754390195(tf38099491);
      },
    );
  }

  //
  Future<void> im66991923(
    String sut195945783,
    double u510790075,
  ) async {
    if (!_tdh415102745.mtr901481793) return;
    await j729888322(
      fj822066018: () async {
        await pw571918074();

        final tf38099491 =
            J584812212(sut195945783: sut195945783, u510790075: u510790075);

        n613849030.d('🟠 sendDimensionWithNumber - $tf38099491');
        await _nb536680010.v931610413(tf38099491);
      },
    );
  }

  //
  Future<void> q947202059(
    String sut195945783, {
    required bool u510790075,
  }) async {
    if (!_tdh415102745.mtr901481793) return;
    await j729888322(
      fj822066018: () async {
        await pw571918074();

        final tf38099491 =
            Dt291791340(sut195945783: sut195945783, u510790075: u510790075);

        n613849030.d('🟠 sendDimensionWithBool - $tf38099491');
        await _nb536680010.ljo1015301929(tf38099491);
      },
    );
  }

  //
  Future<void> u591150281(
    String uma255646243, [
    double? u510790075,
  ]) async {
    if (!_tdh415102745.mtr901481793) return;
    await j729888322(
      fj822066018: () async {
        await pw571918074();

        final n794669232 = Iv423116493(n794669232: uma255646243, u510790075: u510790075);

        n613849030.d('🟠 sendGoal - $n794669232');
        await _nb536680010.u591150281(n794669232);
      },
    );
  }
}
