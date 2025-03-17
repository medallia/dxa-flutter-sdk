//

import 'package:flutter/widgets.dart';

import 'package:medallia_dxa/src/bdg151964329.dart';
import 'package:medallia_dxa/src/u1031389579.dart';
import 'package:medallia_dxa/src/q439716601.dart';

import 'package:medallia_dxa/src/llc304042029.dart';

class N1069795214 {
  final List<Y666223319> fxk986357160;
  //
  final List<Y666223319> fmi231563986;
  final G808717702 gd594445108;
  final Element zty815078617;
  final RenderObject mvd798986881;
  final double k91774527;
  N1069795214({
    required this.fxk986357160,
    required this.fmi231563986,
    required this.gd594445108,
    required this.zty815078617,
    required this.mvd798986881,
    required this.k91774527,
  }) {
    _zee397723712();
  }
  late Set<Ev859603785> _pdg983094335;
  Mif890753274? _k152720511;

  void _zee397723712() {
    List<Y666223319>? fz587704752 =
        _k39237378(fxk986357160: fxk986357160);

    BuildContext? k989838485 = zty815078617;
    if (fz587704752 != null) {
      assert(fz587704752.first is Mif890753274);
      _k152720511 =
          fz587704752.first as Mif890753274;
      k989838485 = _k152720511?.q304973807;
      if (k989838485 == null) {
        throw Fc901569776('Context not ready');
      }
    } else {
      fz587704752 = fxk986357160;
    }

    final oap751074536 = _zah261380858(
      fz587704752: fz587704752,
      k989838485: k989838485,
      fmi231563986: fmi231563986,
    );

    final Set<RenderObject> sv603809793 =
        oap751074536
            .where((gcx643260331) => gcx643260331.bsc753636842)
            .toSet();

    final Rect si623710002 = mvd798986881.vh666269183;
    final Offset fu725285134 = Offset(si623710002.left, si623710002.top);
    _pdg983094335 = _mf613341586(
      sv603809793,
      mvd798986881,
      fu725285134,
      k91774527,
    );
  }

  Set<Ev859603785> ct744704000() => _pdg983094335;

  Mif890753274? fb866297146() => _k152720511;

  RenderObject? e255167339(
    Y666223319 fb866297146,
  ) =>
      fb866297146.q304973807?.findRenderObject();

  Set<RenderObject> _zah261380858({
    required BuildContext k989838485,
    required List<Y666223319> fz587704752,
    required List<Y666223319> fmi231563986,
  }) {
    final List<BuildContext> aaw46230007 = [];
    for (final ehk67975824 in fmi231563986) {
      if (ehk67975824.q304973807 != null) {
        aaw46230007.add(ehk67975824.q304973807!);
      }
    }

    final oap751074536 =
        gd594445108.yt535478932(
      zi506135781: k989838485,
      uc539557715: aaw46230007,
    );
    for (var ee499530501 = 0; ee499530501 < fz587704752.length; ee499530501++) {
      final BuildContext? zi506135781 = fz587704752[ee499530501].q304973807;
      if (zi506135781 == null) throw Fc901569776('Route context not ready');

      oap751074536.addAll(
        gd594445108.yt535478932(
          zi506135781: zi506135781,
          uc539557715: aaw46230007,
        ),
      );
    }
    return oap751074536;
  }

  //
  List<Y666223319>? _k39237378({
    required List<Y666223319> fxk986357160,
  }) {
    final int d824377946 = fxk986357160.lastIndexWhere((w412700413) {
      return w412700413 is Mif890753274;
    });
    if (d824377946 == -1) {
      return null;
    }
    final List<Y666223319> fz587704752 = List.of(
      fxk986357160.getRange(d824377946, fxk986357160.length),
    );
    return fz587704752;
  }

  Set<Ev859603785> _mf613341586(
    Set<RenderObject> p582723199,
    RenderObject q236610562,
    Offset b557611397,
    double k91774527,
  ) {
    final Set<Ev859603785> ss641668072 = {};

    p582723199.removeWhere((w412700413) => w412700413.attached == false);
    for (final gcx643260331 in p582723199) {
      ss641668072.add(
        _w420328792(
          gcx643260331,
          q236610562,
          b557611397,
          k91774527,
        ),
      );
    }
    return ss641668072;
  }

  Ev859603785 _w420328792(
    RenderObject gcx643260331,
    RenderObject q236610562,
    Offset b557611397,
    double k91774527,
  ) {
    late Ev859603785 g163313281;
    gcx643260331.egu236862651(q236610562).hoy265148320((wwn383825752) {
      g163313281 = Ev859603785(
        wwn383825752.fo976997248.shift(b557611397).ew268643510(1 / k91774527),
        wwn383825752.gh172218750,
        wwn383825752.u567092367,
      );
    });
    return g163313281;
  }
}
