//

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/l369046961.dart';
import 'package:medallia_dxa/src/fpg50998545.dart';
import 'package:medallia_dxa/src/e534491569.dart';

import 'package:medallia_dxa/src/c249197541.dart';

class Mp1069795100 {
  final List<Pgj666223173> mu986357050;
  //
  final List<Pgj666223173> tsh231563840;
  final Km808717588 mm594445222;
  final Element ch815078475;
  final RenderObject d798986771;
  final double pz91774637;
  Mp1069795100({
    required this.mu986357050,
    required this.tsh231563840,
    required this.mm594445222,
    required this.ch815078475,
    required this.d798986771,
    required this.pz91774637,
  }) {
    _j397723858();
  }
  late Set<Lwi859603931> _ki983094445;
  Nx890753128? _xy152720621;

  void _j397723858() {
    List<Pgj666223173>? o587704610 =
        _s39237520(mu986357050: mu986357050);

    BuildContext? a989838343 = ch815078475;
    if (o587704610 != null) {
      assert(o587704610.first is Nx890753128);
      _xy152720621 =
          o587704610.first as Nx890753128;
      a989838343 = _xy152720621?.c304973693;
      if (a989838343 == null) {
        throw J901569634('Context not ready');
      }
    } else {
      o587704610 = mu986357050;
    }

    final m751074426 = _zxk261380712(
      o587704610: o587704610,
      a989838343: a989838343,
      tsh231563840: tsh231563840,
    );

    final Set<RenderObject> x603809939 =
        m751074426
            .where((jm643260217) => jm643260217.f753636728)
            .toSet();

    final Rect rt623710112 = d798986771.w666269037;
    final Offset pby725285276 = Offset(rt623710112.left, rt623710112.top);
    _ki983094445 = _leh613341440(
      x603809939,
      d798986771,
      pby725285276,
      pz91774637,
    );
  }

  Set<Lwi859603931> c744704146() => _ki983094445;

  Nx890753128? csr866297256() => _xy152720621;

  RenderObject? bhi255167481(
    Pgj666223173 csr866297256,
  ) =>
      csr866297256.c304973693?.findRenderObject();

  Set<RenderObject> _zxk261380712({
    required BuildContext a989838343,
    required List<Pgj666223173> o587704610,
    required List<Pgj666223173> tsh231563840,
  }) {
    final List<BuildContext> bu46229861 = [];
    for (final kl67975682 in tsh231563840) {
      if (kl67975682.c304973693 != null) {
        bu46229861.add(kl67975682.c304973693!);
      }
    }

    final m751074426 =
        mm594445222.on535478790(
      h506135671: a989838343,
      ny539557825: bu46229861,
    );
    for (var qcz499530647 = 0; qcz499530647 < o587704610.length; qcz499530647++) {
      final BuildContext? h506135671 = o587704610[qcz499530647].c304973693;
      if (h506135671 == null) throw J901569634('Route context not ready');

      m751074426.addAll(
        mm594445222.on535478790(
          h506135671: h506135671,
          ny539557825: bu46229861,
        ),
      );
    }
    return m751074426;
  }

  //
  List<Pgj666223173>? _s39237520({
    required List<Pgj666223173> mu986357050,
  }) {
    final int d824378056 = mu986357050.lastIndexWhere((mbm412700271) {
      return mbm412700271 is Nx890753128;
    });
    if (d824378056 == -1) {
      return null;
    }
    final List<Pgj666223173> o587704610 = List.of(
      mu986357050.getRange(d824378056, mu986357050.length),
    );
    return o587704610;
  }

  Set<Lwi859603931> _leh613341440(
    Set<RenderObject> i582723309,
    RenderObject u236610704,
    Offset dcy557611287,
    double pz91774637,
  ) {
    final Set<Lwi859603931> va641667962 = {};

    i582723309.removeWhere((mbm412700271) => mbm412700271.attached == false);
    for (final jm643260217 in i582723309) {
      va641667962.add(
        _rh420328906(
          jm643260217,
          u236610704,
          dcy557611287,
          pz91774637,
        ),
      );
    }
    return va641667962;
  }

  Lwi859603931 _rh420328906(
    RenderObject jm643260217,
    RenderObject u236610704,
    Offset dcy557611287,
    double pz91774637,
  ) {
    late Lwi859603931 cc163313171;
    jm643260217.o236862505(u236610704).mqx265148210((fnp383825866) {
      cc163313171 = Lwi859603931(
        fnp383825866.bu976997138.shift(dcy557611287).tm268643364(1 / pz91774637),
        fnp383825866.yh172218860,
        fnp383825866.bqo567092253,
      );
    });
    return cc163313171;
  }
}
