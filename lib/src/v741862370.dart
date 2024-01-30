//

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/gaj151963929.dart';
import 'package:medallia_dxa/src/xc1031389755.dart';
import 'package:medallia_dxa/src/l209816361.dart';
import 'package:medallia_dxa/src/b439716169.dart';

import 'package:medallia_dxa/src/ng304042909.dart';

class Vnq1069794366 {
  final List<Eid666222951> k986357272;
  //
  final List<Eid666222951> e231563618;
  final Qk808717878 rns594444420;
  final Element vai55349357;
  final RenderObject k798986545;
  final double i91774351;
  Vnq1069794366({
    required this.k986357272,
    required this.e231563618,
    required this.rns594444420,
    required this.vai55349357,
    required this.k798986545,
    required this.i91774351,
  }) {
    _vpz397724656();
  }
  late Set<Oh859603193> _jf983095183;
  RenderObject? _i517635153;
  void _vpz397724656() {
    List<Eid666222951>? yop587704832 =
        _nu973555707(k986357272: k986357272);

    BuildContext? v989839141 = vai55349357;
    if (yop587704832 != null) {
      v989839141 = yop587704832.first.r304972895;
      if (v989839141 == null) {
        throw Fyi901570368('Context not ready');
      }
      _i517635153 = v989839141.findRenderObject();
    } else {
      yop587704832 = k986357272;
    }

    final ypb751075160 = _ep261380426(
      yop587704832: yop587704832,
      v989839141: v989839141,
      poh878439806: yop587704832.first.u1006262423,
      e231563618: e231563618,
    );

    final Set<RenderObject> v603810737 =
        ypb751075160
            .where((vde643259419) => vde643259419.da753636954)
            .toSet();

    final Rect ztl623709314 = k798986545.hl666269263;
    final Offset mu725285566 = Offset(ztl623709314.left, ztl623709314.top);
    _jf983095183 = _wx613341730(
      v603810737,
      k798986545,
      mu725285566,
      i91774351,
    );
  }

  Set<Oh859603193> bdg744704944() => _jf983095183;

  RenderObject? sdm255166683(Xbi686664192 em662083084) =>
      _i517635153;

  Set<RenderObject> _ep261380426({
    required BuildContext v989839141,
    required BuildContext poh878439806,
    required List<Eid666222951> yop587704832,
    required List<Eid666222951> e231563618,
  }) {
    final List<BuildContext> pnv46230087 = [];
    for (final nao67975456 in e231563618) {
      if (nao67975456.r304972895 != null) {
        pnv46230087.add(nao67975456.r304972895!);
      }
    }

    final ypb751075160 =
        rns594444420.mv535478564(
      yq506136405: v989839141,
      q539557091: pnv46230087,
    );
    for (var gt499529909 = 0; gt499529909 < yop587704832.length; gt499529909++) {
      final BuildContext? yq506136405 = yop587704832[gt499529909].r304972895;
      if (yq506136405 == null) throw Fyi901570368('Route context not ready');

      ypb751075160.addAll(
        rns594444420.mv535478564(
          yq506136405: yq506136405,
          q539557091: pnv46230087,
        ),
      );
    }
    return ypb751075160;
  }

  List<Eid666222951>? _nu973555707({
    required List<Eid666222951> k986357272,
  }) {
    final int tod824377834 = k986357272.lastIndexWhere((ttm412699981) {
      return ttm412699981.xly447820335 == false;
    });
    if (tod824377834 == -1) {
      return null;
    }
    final List<Eid666222951> yop587704832 = List.of(
      k986357272.getRange(tod824377834, k986357272.length),
    );
    return yop587704832;
  }

  Set<Oh859603193> _wx613341730(
    Set<RenderObject> l582723023,
    RenderObject qqq236611506,
    Offset s557611573,
    double i91774351,
  ) {
    final Set<Oh859603193> k641667160 = {};

    l582723023.removeWhere((ttm412699981) => ttm412699981.attached == false);
    for (final vde643259419 in l582723023) {
      k641667160.add(
        _j420329192(
          vde643259419,
          qqq236611506,
          s557611573,
          i91774351,
        ),
      );
    }
    return k641667160;
  }

  Oh859603193 _j420329192(
    RenderObject vde643259419,
    RenderObject qqq236611506,
    Offset s557611573,
    double i91774351,
  ) {
    late Oh859603193 qi163312945;
    vde643259419.s236863243(qqq236611506).qzo265147408((hh383825128) {
      qi163312945 = Oh859603193(
        hh383825128.ns976996400.shift(s557611573).zii268644102(1 / i91774351),
        hh383825128.qgl172219086,
        hh383825128.y567093055,
      );
    });
    return qi163312945;
  }
}
