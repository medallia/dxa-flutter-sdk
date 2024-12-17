//

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/w151964619.dart';
import 'package:medallia_dxa/src/uw1031389417.dart';
import 'package:medallia_dxa/src/m209816059.dart';
import 'package:medallia_dxa/src/uzh439716763.dart';

import 'package:medallia_dxa/src/o304042319.dart';

class E1069795052 {
  final List<Bmq666223541> ymn986356938;
  //
  final List<Bmq666223541> t231564208;
  final S808717540 dy594444886;
  final Element m815078843;
  final RenderObject qfn798987235;
  final double qpd91774813;
  E1069795052({
    required this.ymn986356938,
    required this.t231564208,
    required this.dy594444886,
    required this.m815078843,
    required this.qfn798987235,
    required this.qpd91774813,
  }) {
    _f397723938();
  }
  late Set<Ds859603499> _av983094621;
  J890753432? _jds152720669;

  void _f397723938() {
    List<Bmq666223541>? fnb587704530 =
        _c39237216(ymn986356938: ymn986356938);

    BuildContext? qd989838839 = m815078843;
    if (fnb587704530 != null) {
      assert(fnb587704530.first is J890753432);
      _jds152720669 =
          fnb587704530.first as J890753432;
      qd989838839 = _jds152720669?.u304973453;
      if (qd989838839 == null) {
        throw Ftf901569938('Context not ready');
      }
    } else {
      fnb587704530 = ymn986356938;
    }

    final obb751074698 = _uv261381016(
      fnb587704530: fnb587704530,
      qd989838839: qd989838839,
      t231564208: t231564208,
    );

    final Set<RenderObject> rk603810147 =
        obb751074698
            .where((sx643260105) => sx643260105.m753636488)
            .toSet();

    final Rect gsp623709776 = qfn798987235.n666268829;
    final Offset lfh725284972 = Offset(gsp623709776.left, gsp623709776.top);
    _av983094621 = _p613341424(
      rk603810147,
      qfn798987235,
      lfh725284972,
      qpd91774813,
    );
  }

  Set<Ds859603499> eet744704354() => _av983094621;

  J890753432? ga866296920() => _jds152720669;

  RenderObject? cs255166985(
    Bmq666223541 ga866296920,
  ) =>
      ga866296920.u304973453?.findRenderObject();

  Set<RenderObject> _uv261381016({
    required BuildContext qd989838839,
    required List<Bmq666223541> fnb587704530,
    required List<Bmq666223541> t231564208,
  }) {
    final List<BuildContext> j46229653 = [];
    for (final t67976178 in t231564208) {
      if (t67976178.u304973453 != null) {
        j46229653.add(t67976178.u304973453!);
      }
    }

    final obb751074698 =
        dy594444886.lhp535479286(
      e506135943: qd989838839,
      nl539557425: j46229653,
    );
    for (var lb499530343 = 0; lb499530343 < fnb587704530.length; lb499530343++) {
      final BuildContext? e506135943 = fnb587704530[lb499530343].u304973453;
      if (e506135943 == null) throw Ftf901569938('Route context not ready');

      obb751074698.addAll(
        dy594444886.lhp535479286(
          e506135943: e506135943,
          nl539557425: j46229653,
        ),
      );
    }
    return obb751074698;
  }

  //
  List<Bmq666223541>? _c39237216({
    required List<Bmq666223541> ymn986356938,
  }) {
    final int zjt824378168 = ymn986356938.lastIndexWhere((aty412700575) {
      return aty412700575 is J890753432;
    });
    if (zjt824378168 == -1) {
      return null;
    }
    final List<Bmq666223541> fnb587704530 = List.of(
      ymn986356938.getRange(zjt824378168, ymn986356938.length),
    );
    return fnb587704530;
  }

  Set<Ds859603499> _p613341424(
    Set<RenderObject> r582723357,
    RenderObject loh236610912,
    Offset u557611239,
    double qpd91774813,
  ) {
    final Set<Ds859603499> jv641667722 = {};

    r582723357.removeWhere((aty412700575) => aty412700575.attached == false);
    for (final sx643260105 in r582723357) {
      jv641667722.add(
        _tb420328506(
          sx643260105,
          loh236610912,
          u557611239,
          qpd91774813,
        ),
      );
    }
    return jv641667722;
  }

  Ds859603499 _tb420328506(
    RenderObject sx643260105,
    RenderObject loh236610912,
    Offset u557611239,
    double qpd91774813,
  ) {
    late Ds859603499 oxd163313635;
    sx643260105.za236862937(loh236610912).osu265148098((dzo383825466) {
      oxd163313635 = Ds859603499(
        dzo383825466.oy976997090.shift(u557611239).hzf268643796(1 / qpd91774813),
        dzo383825466.fm172218396,
        dzo383825466.ib567092717,
      );
    });
    return oxd163313635;
  }
}
