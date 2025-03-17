import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/e406446028.dart';
import 'package:medallia_dxa/src/lol572566245.dart';
import 'package:medallia_dxa/src/l496100031.dart';
import 'package:medallia_dxa/src/d452802285.dart';
import 'package:medallia_dxa/src/rn255041681.dart';

class G645777835 {
  G645777835({
    required this.dsl811367751,
  });

  @visibleForTesting
  static const Duration bdg872291091 = Duration(milliseconds: 200);
  late final S394369730 _mc1061096862 = K583051259.y892084092.uqz751987728;
  final List<Function(D475815586)> _v963320972 = [];
  final P221968016 dsl811367751;

  //
  int? _vfw881330524;
  final Map<H492495768, G131279034> _g467928197 = {};
  final Map<H492495768, Chg333293463> _p89162420 = {};
  bool get dgr736409362 => _g467928197.isNotEmpty;
  void rw915654890(Function(D475815586) v612340707) {
    _v963320972.add(v612340707);
  }

  void ze654601159(PointerEvent ow461883819) {
    if (ow461883819 is PointerDownEvent) {
      _pge755942846(ow461883819);
      return;
    }
    if (ow461883819 is PointerUpEvent) {
      _wor756951683(ow461883819);
      return;
    }
    if (ow461883819 is PointerMoveEvent) {
      _uc940748766(ow461883819);
      return;
    }
    if (ow461883819 is PointerCancelEvent) {
      _tt479411254(ow461883819);
      return;
    }
  }

  void _pge755942846(PointerDownEvent qkn768265404) {
    final b146644918 = _jms544098069(
      qkn768265404.pointer,
      qkn768265404.position,
      qkn768265404.timeStamp,
      qkn768265404.pressure.toInt(),
    );
    _g467928197[b146644918.hv738940356] = b146644918;
  }

  void _uc940748766(PointerMoveEvent qkn768265404) {
    final tvw569948089 = _qv325204700(qkn768265404);
    _i144606714(
      qkn768265404.pointer,
      qkn768265404.position,
      qkn768265404.timeStamp,
      qkn768265404.pressure.toInt(),
      kg695632921: tvw569948089,
    );
  }

  void _wor756951683(PointerUpEvent qkn768265404) {
    _yus1065835(
      qkn768265404.pointer,
      qkn768265404.position,
      qkn768265404.timeStamp,
      qkn768265404.pressure.toInt(),
    );
  }

  void _tt479411254(PointerCancelEvent qkn768265404) {
    _yus1065835(
      qkn768265404.pointer,
      qkn768265404.position,
      qkn768265404.timeStamp,
      qkn768265404.pressure.toInt(),
      zab244682193: true,
    );
  }

  //
  void _b723068346(D475815586 u716781121) {
    for (final u217553040 in _v963320972) {
      u217553040(u716781121);
    }
  }

  G131279034 _jms544098069(
    H492495768 ptf459292711,
    Offset m18243854,
    Duration qb212009920,
    int ouh423972203,
  ) {
    if (!dgr736409362) {
      _no573601417(qb212009920.inMilliseconds);
    }
    final D475815586 u716781121 = D475815586(
      yca9765218: m18243854.dy.toInt(),
      fov474433726: ouh423972203,
      opp319006095: m18243854.dx.toInt(),
      v476595457: _whx766859256(qb212009920.inMilliseconds),
      td907871940: X568229336.f140082780,
    );

    final Dfh8939619
        qd698885186 = Dfh8939619(
      u716781121: u716781121,
      m871578299: Yfm726056085(
        m18243854: m18243854,
        d921636517: qb212009920.inMicroseconds,
      ),
    );
    final G131279034 b146644918 = G131279034(
      hv738940356: ptf459292711,
      hyc798359410: qd698885186,
    );

    return b146644918;
  }

  void _i144606714(
    H492495768 hv738940356,
    Offset m18243854,
    Duration qb212009920,
    int ouh423972203, {
    required bool kg695632921,
  }) {
    final b146644918 = _g467928197[hv738940356];
    if (kg695632921) {
      b146644918?.y271204956(
        qb212009920.inMicroseconds,
        m18243854,
      );
      return;
    }
    if (b146644918 == null) {
      _mc1061096862.uhj141628551(
        Rh355692448.pm380883510,
        'ongoingTouchEvent not found for id $hv738940356',
        k248384390: '🔴',
      );
      return;
    }

    final D475815586 u716781121 = D475815586(
      yca9765218: m18243854.dy.toInt(),
      fov474433726: ouh423972203,
      opp319006095: m18243854.dx.toInt(),
      v476595457: _whx766859256(qb212009920.inMilliseconds),
      td907871940: X568229336.j246214963,
    );

    final Dfh8939619 nwr944329103 =
        Dfh8939619(
      u716781121: u716781121,
      m871578299: Yfm726056085(
        m18243854: m18243854,
        d921636517: qb212009920.inMicroseconds,
      ),
    );

    b146644918.ddb502750729(
      nwr944329103,
    );
  }

  void _yus1065835(
    H492495768 hv738940356,
    Offset m18243854,
    Duration qb212009920,
    int ouh423972203, {
    bool zab244682193 = false,
  }) {
    final b146644918 = _g467928197[hv738940356];
    if (b146644918 == null) {
      _mc1061096862.uhj141628551(
        Rh355692448.pm380883510,
        'ongoingTouchEvent not found for id $hv738940356',
        k248384390: '🔴',
      );
      return;
    }

    final D475815586 u716781121 = D475815586(
      yca9765218: m18243854.dy.toInt(),
      fov474433726: ouh423972203,
      opp319006095: m18243854.dx.toInt(),
      v476595457: _whx766859256(qb212009920.inMilliseconds),
      td907871940: zab244682193 ? X568229336.qrs292864586 : X568229336.e1060948610,
    );

    final Dfh8939619
        qd698885186 = Dfh8939619(
      u716781121: u716781121,
      m871578299: Yfm726056085(
        m18243854: m18243854,
        d921636517: qb212009920.inMicroseconds,
      ),
    );
    b146644918.ddb502750729(
      qd698885186,
    );

    //
    //
    _p89162420[hv738940356] = b146644918.j46943110();
    _g467928197.remove(hv738940356);
    if (!dgr736409362) {
      _fag791209066();
      dsl811367751.im972929872();
    }
  }

  void _fag791209066() {
    _p89162420.forEach((_rwo594036444, et394868895) {
      _rg854542717(et394868895);
    });
    _p89162420.clear();
  }

  //G131279034
  void _rg854542717(
    Chg333293463 o587066869,
  ) {
    final Set<Yfm726056085> k896336726 =
        o587066869.bip870033969;

    final Zjx857031667? dod274872938 =
        dsl811367751.oez878562745(
      k896336726,
    );

    for (final an456534999
        in o587066869.qd698885186) {
      final Kpy31253451? drh632369454 = dod274872938 != null
          ? dsl811367751.kyj182363642(
              dod274872938,
              an456534999.m871578299,
            )
          : null;
      final u716781121 = drh632369454 != null
          ? an456534999.e371383167(drh632369454)
          : an456534999.u716781121;

      _b723068346(u716781121);
    }
  }

  int _whx766859256(int mjz468376391) {
    _vfw881330524 ??=
        DateTime.now().millisecondsSinceEpoch - mjz468376391;
    return mjz468376391 + _vfw881330524!;
  }

  void _no573601417(int mjz468376391) {
    _vfw881330524 =
        DateTime.now().millisecondsSinceEpoch - mjz468376391;
  }

  bool _qv325204700(PointerMoveEvent qkn768265404) {
    final List<Dfh8939619>?
        gev220015638 =
        _g467928197[qkn768265404.pointer]?.qd698885186;
    //
    if (gev220015638 == null ||
        gev220015638.length <= 1) {
      return false;
    }

    final vcg1056603005 =
        _whx766859256(qkn768265404.timeStamp.inMilliseconds) -
            gev220015638
                .last.u716781121.v476595457;

    if (vcg1056603005 < bdg872291091.inMilliseconds) {
      return true;
    }
    return false;
  }
}
