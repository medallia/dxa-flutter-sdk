import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/tc678250625.dart';
import 'package:medallia_dxa/src/r990530308.dart';
import 'package:medallia_dxa/src/o1040135247.dart';
import 'package:medallia_dxa/src/sb487303956.dart';
import 'package:medallia_dxa/src/vz764152707.dart';

class Qv645777758 {
  Qv645777758({
    required this.d811367858,
  });

  @visibleForTesting
  static const Duration u872291302 = Duration(milliseconds: 200);
  late final A394369591 _ifl1061096811 = Z583051022.n892084105.gc751987941;
  final List<Function(Ddb475815511)> _uno963320953 = [];
  final Vpw221967973 d811367858;

  //
  int? _nf881330601;
  final Map<Q492495725, Df131278927> _hpg467928176 = {};
  final Map<Q492495725, P333293410> _xlk89162305 = {};
  bool get n736409575 => _hpg467928176.isNotEmpty;
  void ju915654687(Function(Ddb475815511) bn612340502) {
    _uno963320953.add(bn612340502);
  }

  void z654601010(PointerEvent leb461883742) {
    if (leb461883742 is PointerDownEvent) {
      _j755942731(leb461883742);
      return;
    }
    if (leb461883742 is PointerUpEvent) {
      _jyy756951670(leb461883742);
      return;
    }
    if (leb461883742 is PointerMoveEvent) {
      _ly940748587(leb461883742);
      return;
    }
    if (leb461883742 is PointerCancelEvent) {
      _c479411395(leb461883742);
      return;
    }
  }

  void _j755942731(PointerDownEvent tg768265289) {
    final bs146644803 = _id544098272(
      tg768265289.pointer,
      tg768265289.position,
      tg768265289.timeStamp,
      tg768265289.pressure.toInt(),
    );
    _hpg467928176[bs146644803.y738940209] = bs146644803;
  }

  void _ly940748587(PointerMoveEvent tg768265289) {
    final x569947980 = _kv325204521(tg768265289);
    _kf144606479(
      tg768265289.pointer,
      tg768265289.position,
      tg768265289.timeStamp,
      tg768265289.pressure.toInt(),
      lxb695633132: x569947980,
    );
  }

  void _jyy756951670(PointerUpEvent tg768265289) {
    _zz1065886(
      tg768265289.pointer,
      tg768265289.position,
      tg768265289.timeStamp,
      tg768265289.pressure.toInt(),
    );
  }

  void _c479411395(PointerCancelEvent tg768265289) {
    _zz1065886(
      tg768265289.pointer,
      tg768265289.position,
      tg768265289.timeStamp,
      tg768265289.pressure.toInt(),
      a244682020: true,
    );
  }

  //
  void _t723068239(Ddb475815511 oq716781236) {
    for (final h217552997 in _uno963320953) {
      h217552997(oq716781236);
    }
  }

  Df131278927 _id544098272(
    Q492495725 uf459292882,
    Offset n18244091,
    Duration l212009781,
    int y423972254,
  ) {
    if (!n736409575) {
      _gmw573601404(l212009781.inMilliseconds);
    }
    final Ddb475815511 oq716781236 = Ddb475815511(
      xsx9765271: n18244091.dy.toInt(),
      mz474433611: y423972254,
      one319006074: n18244091.dx.toInt(),
      sv476595700: _c766859021(l212009781.inMilliseconds),
      t907871793: Avp568229165.e140082857,
    );

    final Cc8939670
        my698885303 = Cc8939670(
      oq716781236: oq716781236,
      v871578190: A726056032(
        n18244091: n18244091,
        fpk921636432: l212009781.inMicroseconds,
      ),
    );
    final Df131278927 bs146644803 = Df131278927(
      y738940209: uf459292882,
      je798359431: my698885303,
    );

    return bs146644803;
  }

  void _kf144606479(
    Q492495725 y738940209,
    Offset n18244091,
    Duration l212009781,
    int y423972254, {
    required bool lxb695633132,
  }) {
    final bs146644803 = _hpg467928176[y738940209];
    if (lxb695633132) {
      bs146644803?.m271205033(
        l212009781.inMicroseconds,
        n18244091,
      );
      return;
    }
    if (bs146644803 == null) {
      _ifl1061096811.tog141628530(
        Qqg355692373.yjj380883651,
        'ongoingTouchEvent not found for id $y738940209',
        j248384371: '🔴',
      );
      return;
    }

    final Ddb475815511 oq716781236 = Ddb475815511(
      xsx9765271: n18244091.dy.toInt(),
      mz474433611: y423972254,
      one319006074: n18244091.dx.toInt(),
      sv476595700: _c766859021(l212009781.inMilliseconds),
      t907871793: Avp568229165.ncd246215110,
    );

    final Cc8939670 pew944329082 =
        Cc8939670(
      oq716781236: oq716781236,
      v871578190: A726056032(
        n18244091: n18244091,
        fpk921636432: l212009781.inMicroseconds,
      ),
    );

    bs146644803.iwd502750972(
      pew944329082,
    );
  }

  void _zz1065886(
    Q492495725 y738940209,
    Offset n18244091,
    Duration l212009781,
    int y423972254, {
    bool a244682020 = false,
  }) {
    final bs146644803 = _hpg467928176[y738940209];
    if (bs146644803 == null) {
      _ifl1061096811.tog141628530(
        Qqg355692373.yjj380883651,
        'ongoingTouchEvent not found for id $y738940209',
        j248384371: '🔴',
      );
      return;
    }

    final Ddb475815511 oq716781236 = Ddb475815511(
      xsx9765271: n18244091.dy.toInt(),
      mz474433611: y423972254,
      one319006074: n18244091.dx.toInt(),
      sv476595700: _c766859021(l212009781.inMilliseconds),
      t907871793: a244682020 ? Avp568229165.jpt292864703 : Avp568229165.usy1060948599,
    );

    final Cc8939670
        my698885303 = Cc8939670(
      oq716781236: oq716781236,
      v871578190: A726056032(
        n18244091: n18244091,
        fpk921636432: l212009781.inMicroseconds,
      ),
    );
    bs146644803.iwd502750972(
      my698885303,
    );

    //
    //
    _xlk89162305[y738940209] = bs146644803.hej46943091();
    _hpg467928176.remove(y738940209);
    if (!n736409575) {
      _z791209119();
      d811367858.jpd972929957();
    }
  }

  void _z791209119() {
    _xlk89162305.forEach((_s594036265, bx394868842) {
      _b854542728(bx394868842);
    });
    _xlk89162305.clear();
  }

  //Df131278927
  void _b854542728(
    P333293410 eh587066624,
  ) {
    final Set<A726056032> op896336803 =
        eh587066624.x870034116;

    final E857031430? xy274872991 =
        d811367858.pd878562636(
      op896336803,
    );

    for (final e456534818
        in eh587066624.my698885303) {
      final L31253310? rs632369627 = xy274872991 != null
          ? d811367858.vm182363407(
              xy274872991,
              e456534818.v871578190,
            )
          : null;
      final oq716781236 = rs632369627 != null
          ? e456534818.y371383178(rs632369627)
          : e456534818.oq716781236;

      _t723068239(oq716781236);
    }
  }

  int _c766859021(int pzl468376498) {
    _nf881330601 ??=
        DateTime.now().millisecondsSinceEpoch - pzl468376498;
    return pzl468376498 + _nf881330601!;
  }

  void _gmw573601404(int pzl468376498) {
    _nf881330601 =
        DateTime.now().millisecondsSinceEpoch - pzl468376498;
  }

  bool _kv325204521(PointerMoveEvent tg768265289) {
    final List<Cc8939670>?
        l220015843 =
        _hpg467928176[tg768265289.pointer]?.my698885303;
    //
    if (l220015843 == null ||
        l220015843.length <= 1) {
      return false;
    }

    final o1056603016 =
        _c766859021(tg768265289.timeStamp.inMilliseconds) -
            l220015843
                .last.oq716781236.sv476595700;

    if (o1056603016 < u872291302.inMilliseconds) {
      return true;
    }
    return false;
  }
}
