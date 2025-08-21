import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/g678251010.dart';
import 'package:medallia_dxa/src/m990529927.dart';
import 'package:medallia_dxa/src/tq1040135884.dart';
import 'package:medallia_dxa/src/e487303575.dart';
import 'package:medallia_dxa/src/br764152064.dart';

class Bea645778397 {
  Bea645778397({
    required this.iby811368241,
  });

  @visibleForTesting
  static const Duration uq872290661 = Duration(milliseconds: 200);
  late final Jnx394369204 _e1061097448 = Zmk583050637.u892083466.gcv751988326;
  final List<Function(X475815124)> _dg963321594 = [];
  final B221967590 iby811368241;

  //
  int? _de881330986;
  final Map<Xa492495342, Zt131279564> _jvd467928819 = {};
  final Map<Xa492495342, Aq333293025> _rt89161922 = {};
  bool get xc736408932 => _jvd467928819.isNotEmpty;
  void fmv915655324(Function(X475815124) uix612340117) {
    _dg963321594.add(uix612340117);
  }

  void jrl654600625(PointerEvent u461884381) {
    if (u461884381 is PointerDownEvent) {
      _s755943368(u461884381);
      return;
    }
    if (u461884381 is PointerUpEvent) {
      _l756951285(u461884381);
      return;
    }
    if (u461884381 is PointerMoveEvent) {
      _s940748200(u461884381);
      return;
    }
    if (u461884381 is PointerCancelEvent) {
      _k479411776(u461884381);
      return;
    }
  }

  void _s755943368(PointerDownEvent py768265930) {
    final euh146644416 = _o544097635(
      py768265930.pointer,
      py768265930.position,
      py768265930.timeStamp,
      py768265930.pressure.toInt(),
    );
    _jvd467928819[euh146644416.hca738940850] = euh146644416;
  }

  void _s940748200(PointerMoveEvent py768265930) {
    final ez569947599 = _fo325204138(py768265930);
    _j144607116(
      py768265930.pointer,
      py768265930.position,
      py768265930.timeStamp,
      py768265930.pressure.toInt(),
      kj695633519: ez569947599,
    );
  }

  void _l756951285(PointerUpEvent py768265930) {
    _e1065245(
      py768265930.pointer,
      py768265930.position,
      py768265930.timeStamp,
      py768265930.pressure.toInt(),
    );
  }

  void _k479411776(PointerCancelEvent py768265930) {
    _e1065245(
      py768265930.pointer,
      py768265930.position,
      py768265930.timeStamp,
      py768265930.pressure.toInt(),
      y244682663: true,
    );
  }

  //
  void _mlp723068876(X475815124 ji716780599) {
    for (final l217553638 in _dg963321594) {
      l217553638(ji716780599);
    }
  }

  Zt131279564 _o544097635(
    Xa492495342 bos459293265,
    Offset scv18244472,
    Duration ka212009398,
    int dle423972637,
  ) {
    if (!xc736408932) {
      _ck573601023(ka212009398.inMilliseconds);
    }
    final X475815124 ji716780599 = X475815124(
      nu9765652: scv18244472.dy.toInt(),
      v474434248: dle423972637,
      gh319006713: scv18244472.dx.toInt(),
      fx476596087: _kkm766858638(ka212009398.inMilliseconds),
      baz907871410: T568229806.ql140082218,
    );

    final Bp8940053
        hm698885684 = Bp8940053(
      ji716780599: ji716780599,
      j871577805: Tg726056675(
        scv18244472: scv18244472,
        e921636051: ka212009398.inMicroseconds,
      ),
    );
    final Zt131279564 euh146644416 = Zt131279564(
      hca738940850: bos459293265,
      j798358788: hm698885684,
    );

    return euh146644416;
  }

  void _j144607116(
    Xa492495342 hca738940850,
    Offset scv18244472,
    Duration ka212009398,
    int dle423972637, {
    required bool kj695633519,
  }) {
    final euh146644416 = _jvd467928819[hca738940850];
    if (kj695633519) {
      euh146644416?.d271204394(
        ka212009398.inMicroseconds,
        scv18244472,
      );
      return;
    }
    if (euh146644416 == null) {
      _e1061097448.w141629169(
        F355691990.e380883008,
        'ongoingTouchEvent not found for id $hca738940850',
        oe248383984: '🔴',
      );
      return;
    }

    final X475815124 ji716780599 = X475815124(
      nu9765652: scv18244472.dy.toInt(),
      v474434248: dle423972637,
      gh319006713: scv18244472.dx.toInt(),
      fx476596087: _kkm766858638(ka212009398.inMilliseconds),
      baz907871410: T568229806.k246215493,
    );

    final Bp8940053 x944329721 =
        Bp8940053(
      ji716780599: ji716780599,
      j871577805: Tg726056675(
        scv18244472: scv18244472,
        e921636051: ka212009398.inMicroseconds,
      ),
    );

    euh146644416.c502750335(
      x944329721,
    );
  }

  void _e1065245(
    Xa492495342 hca738940850,
    Offset scv18244472,
    Duration ka212009398,
    int dle423972637, {
    bool y244682663 = false,
  }) {
    final euh146644416 = _jvd467928819[hca738940850];
    if (euh146644416 == null) {
      _e1061097448.w141629169(
        F355691990.e380883008,
        'ongoingTouchEvent not found for id $hca738940850',
        oe248383984: '🔴',
      );
      return;
    }

    final X475815124 ji716780599 = X475815124(
      nu9765652: scv18244472.dy.toInt(),
      v474434248: dle423972637,
      gh319006713: scv18244472.dx.toInt(),
      fx476596087: _kkm766858638(ka212009398.inMilliseconds),
      baz907871410: y244682663 ? T568229806.h292864060 : T568229806.uw1060948212,
    );

    final Bp8940053
        hm698885684 = Bp8940053(
      ji716780599: ji716780599,
      j871577805: Tg726056675(
        scv18244472: scv18244472,
        e921636051: ka212009398.inMicroseconds,
      ),
    );
    euh146644416.c502750335(
      hm698885684,
    );

    //
    //
    _rt89161922[hca738940850] = euh146644416.sjz46942704();
    _jvd467928819.remove(hca738940850);
    if (!xc736408932) {
      _cwz791209500();
      iby811368241.uvm972929318();
    }
  }

  void _cwz791209500() {
    _rt89161922.forEach((_d594035882, m394869481) {
      _u854543115(m394869481);
    });
    _rt89161922.clear();
  }

  //Zt131279564
  void _u854543115(
    Aq333293025 bto587067267,
  ) {
    final Set<Tg726056675> m896336160 =
        bto587067267.hk870033479;

    final Jay857031045? wyi274872348 =
        iby811368241.g878563279(
      m896336160,
    );

    for (final f456534433
        in bto587067267.hm698885684) {
      final Fk31252925? uj632370008 = wyi274872348 != null
          ? iby811368241.iz182364044(
              wyi274872348,
              f456534433.j871577805,
            )
          : null;
      final ji716780599 = uj632370008 != null
          ? f456534433.ibw371382537(uj632370008)
          : f456534433.ji716780599;

      _mlp723068876(ji716780599);
    }
  }

  int _kkm766858638(int xj468375857) {
    _de881330986 ??=
        DateTime.now().millisecondsSinceEpoch - xj468375857;
    return xj468375857 + _de881330986!;
  }

  void _ck573601023(int xj468375857) {
    _de881330986 =
        DateTime.now().millisecondsSinceEpoch - xj468375857;
  }

  bool _fo325204138(PointerMoveEvent py768265930) {
    final List<Bp8940053>?
        fv220016224 =
        _jvd467928819[py768265930.pointer]?.hm698885684;
    //
    if (fv220016224 == null ||
        fv220016224.length <= 1) {
      return false;
    }

    final sup1056602379 =
        _kkm766858638(py768265930.timeStamp.inMilliseconds) -
            fv220016224
                .last.ji716780599.fx476596087;

    if (sup1056602379 < uq872290661.inMilliseconds) {
      return true;
    }
    return false;
  }
}
