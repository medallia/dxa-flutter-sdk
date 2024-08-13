//

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/ker151964282.dart';
import 'package:medallia_dxa/src/h1031389528.dart';
import 'package:medallia_dxa/src/sbd209815626.dart';
import 'package:medallia_dxa/src/aq439716394.dart';

import 'package:medallia_dxa/src/j304042238.dart';

class Ehd1069795165 {
  final List<Dke666223108> x986357115;
  //
  final List<Dke666223108> yq231563777;
  final Mf808717653 mt594445287;
  final Element vk815078410;
  final RenderObject ng798986834;
  final double d91774700;
  Ehd1069795165({
    required this.x986357115,
    required this.yq231563777,
    required this.mt594445287,
    required this.vk815078410,
    required this.ng798986834,
    required this.d91774700,
  }) {
    _v397723795();
  }
  late Set<G859603866> _l983094508;
  RenderObject? _qbg517635890;
  void _v397723795() {
    List<Dke666223108>? bq587704675 =
        _wu973554840(x986357115: x986357115);

    BuildContext? m989838406 = vk815078410;
    if (bq587704675 != null) {
      m989838406 = bq587704675.first.aun304973628;
      if (m989838406 == null) {
        throw Ol901569571('Context not ready');
      }
      _qbg517635890 = m989838406.findRenderObject();
    } else {
      bq587704675 = x986357115;
    }

    final m751074363 = _xq261380649(
      bq587704675: bq587704675,
      m989838406: m989838406,
      b878439965: bq587704675.first.ns1006263284,
      yq231563777: yq231563777,
    );

    //

    final Set<RenderObject> f603810002 =
        m751074363
            .where((z643260280) => z643260280.rn753636665)
            .toSet();

    final Rect bic623710177 = ng798986834.e666268972;
    final Offset d725285341 = Offset(bic623710177.left, bic623710177.top);
    _l983094508 = _xaq613341505(
      f603810002,
      ng798986834,
      d725285341,
      d91774700,
    );
  }

  Set<G859603866> baw744704211() => _l983094508;

  RenderObject? m255167416(H686664035 kju662082927) =>
      _qbg517635890;

  Set<RenderObject> _xq261380649({
    required BuildContext m989838406,
    required BuildContext b878439965,
    required List<Dke666223108> bq587704675,
    required List<Dke666223108> yq231563777,
  }) {
    final List<BuildContext> y46229796 = [];
    for (final nem67975747 in yq231563777) {
      if (nem67975747.aun304973628 != null) {
        y46229796.add(nem67975747.aun304973628!);
      }
    }

    final m751074363 =
        mt594445287.ie535478855(
      t506135606: m989838406,
      ayv539557760: y46229796,
    );
    for (var md499530710 = 0; md499530710 < bq587704675.length; md499530710++) {
      final BuildContext? t506135606 = bq587704675[md499530710].aun304973628;
      if (t506135606 == null) throw Ol901569571('Route context not ready');

      m751074363.addAll(
        mt594445287.ie535478855(
          t506135606: t506135606,
          ayv539557760: y46229796,
        ),
      );
    }
    return m751074363;
  }

  List<Dke666223108>? _wu973554840({
    required List<Dke666223108> x986357115,
  }) {
    final int wdm824377993 = x986357115.lastIndexWhere((c412700206) {
      return c412700206.oa447820108 == false;
    });
    if (wdm824377993 == -1) {
      return null;
    }
    final List<Dke666223108> bq587704675 = List.of(
      x986357115.getRange(wdm824377993, x986357115.length),
    );
    return bq587704675;
  }

  Set<G859603866> _xaq613341505(
    Set<RenderObject> q582723244,
    RenderObject wu236610769,
    Offset tzr557611350,
    double d91774700,
  ) {
    final Set<G859603866> aj641667899 = {};

    q582723244.removeWhere((c412700206) => c412700206.attached == false);
    for (final z643260280 in q582723244) {
      aj641667899.add(
        _elo420328843(
          z643260280,
          wu236610769,
          tzr557611350,
          d91774700,
        ),
      );
    }
    return aj641667899;
  }

  G859603866 _elo420328843(
    RenderObject z643260280,
    RenderObject wu236610769,
    Offset tzr557611350,
    double d91774700,
  ) {
    late G859603866 wet163313234;
    z643260280.w236862568(wu236610769).mlj265148275((mgo383825803) {
      wet163313234 = G859603866(
        mgo383825803.sli976997203.shift(tzr557611350).yn268643429(1 / d91774700),
        mgo383825803.qxm172218797,
        mgo383825803.zgr567092316,
      );
    });
    return wet163313234;
  }
}
