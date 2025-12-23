import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/zur678251315.dart';
import 'package:medallia_dxa/src/l990529718.dart';
import 'package:medallia_dxa/src/tr1040136189.dart';
import 'package:medallia_dxa/src/df487303334.dart';
import 'package:medallia_dxa/src/xx764151857.dart';

class Ss645778156 {
  Ss645778156({
    required this.jvh811367936,
  });

  @visibleForTesting
  static const Duration n872290388 = Duration(milliseconds: 200);
  late final Cqd394369413 _fq1061097177 = L583050428.buw892083259.sx751988567;
  final List<Function(B475815397)> _g963321803 = [];
  final Jt221967831 jvh811367936;

  //
  int? _qp881330715;
  final Map<D492495071, Ii131279869> _o467929026 = {};
  final Map<D492495071, Rup333292752> _fa89162227 = {};
  bool get iq736408661 => _o467929026.isNotEmpty;
  void qn915655597(Function(B475815397) a612339876) {
    _g963321803.add(a612339876);
  }

  void dc654600320(PointerEvent of461884140) {
    if (of461884140 is PointerDownEvent) {
      _te755943161(of461884140);
      return;
    }
    if (of461884140 is PointerUpEvent) {
      _h756951492(of461884140);
      return;
    }
    if (of461884140 is PointerMoveEvent) {
      _q940747929(of461884140);
      return;
    }
    if (of461884140 is PointerCancelEvent) {
      _ck479412081(of461884140);
      return;
    }
  }

  void _te755943161(PointerDownEvent jvd768266235) {
    final a146644209 = _imd544097362(
      jvd768266235.pointer,
      jvd768266235.position,
      jvd768266235.timeStamp,
      jvd768266235.pressure.toInt(),
    );
    _o467929026[a146644209.m738940547] = a146644209;
  }

  void _q940747929(PointerMoveEvent jvd768266235) {
    final yx569947390 = _g325204379(jvd768266235);
    _kqt144606909(
      jvd768266235.pointer,
      jvd768266235.position,
      jvd768266235.timeStamp,
      jvd768266235.pressure.toInt(),
      zjr695633758: yx569947390,
    );
  }

  void _h756951492(PointerUpEvent jvd768266235) {
    _wz1065004(
      jvd768266235.pointer,
      jvd768266235.position,
      jvd768266235.timeStamp,
      jvd768266235.pressure.toInt(),
    );
  }

  void _ck479412081(PointerCancelEvent jvd768266235) {
    _wz1065004(
      jvd768266235.pointer,
      jvd768266235.position,
      jvd768266235.timeStamp,
      jvd768266235.pressure.toInt(),
      y244682390: true,
    );
  }

  //
  void _d723068669(B475815397 ib716780806) {
    for (final tc217553879 in _g963321803) {
      tc217553879(ib716780806);
    }
  }

  Ii131279869 _imd544097362(
    D492495071 iks459293536,
    Offset djw18244169,
    Duration mox212009095,
    int s423972396,
  ) {
    if (!iq736408661) {
      _w573601230(mox212009095.inMilliseconds);
    }
    final B475815397 ib716780806 = B475815397(
      haa9765413: djw18244169.dy.toInt(),
      xxx474434553: s423972396,
      bj319006408: djw18244169.dx.toInt(),
      zx476595782: _uoo766858431(mox212009095.inMilliseconds),
      n907871619: Q568229535.tas140082459,
    );

    final Xt8940324
        u698885893 = Xt8940324(
      ib716780806: ib716780806,
      utg871578108: Cu726056914(
        djw18244169: djw18244169,
        aa921636322: mox212009095.inMicroseconds,
      ),
    );
    final Ii131279869 a146644209 = Ii131279869(
      m738940547: iks459293536,
      l798358581: u698885893,
    );

    return a146644209;
  }

  void _kqt144606909(
    D492495071 m738940547,
    Offset djw18244169,
    Duration mox212009095,
    int s423972396, {
    required bool zjr695633758,
  }) {
    final a146644209 = _o467929026[m738940547];
    if (zjr695633758) {
      a146644209?.atn271204635(
        mox212009095.inMicroseconds,
        djw18244169,
      );
      return;
    }
    if (a146644209 == null) {
      _fq1061097177.n141629376(
        Gs355691751.pgu380883313,
        'ongoingTouchEvent not found for id $m738940547',
        f248383681: '🔴',
      );
      return;
    }

    final B475815397 ib716780806 = B475815397(
      haa9765413: djw18244169.dy.toInt(),
      xxx474434553: s423972396,
      bj319006408: djw18244169.dx.toInt(),
      zx476595782: _uoo766858431(mox212009095.inMilliseconds),
      n907871619: Q568229535.n246215284,
    );

    final Xt8940324 ryc944329416 =
        Xt8940324(
      ib716780806: ib716780806,
      utg871578108: Cu726056914(
        djw18244169: djw18244169,
        aa921636322: mox212009095.inMicroseconds,
      ),
    );

    a146644209.oor502750542(
      ryc944329416,
    );
  }

  void _wz1065004(
    D492495071 m738940547,
    Offset djw18244169,
    Duration mox212009095,
    int s423972396, {
    bool y244682390 = false,
  }) {
    final a146644209 = _o467929026[m738940547];
    if (a146644209 == null) {
      _fq1061097177.n141629376(
        Gs355691751.pgu380883313,
        'ongoingTouchEvent not found for id $m738940547',
        f248383681: '🔴',
      );
      return;
    }

    final B475815397 ib716780806 = B475815397(
      haa9765413: djw18244169.dy.toInt(),
      xxx474434553: s423972396,
      bj319006408: djw18244169.dx.toInt(),
      //
      //
      //
      //
      //
      zx476595782: y244682390
          ? DateTime.now().millisecondsSinceEpoch
          : _uoo766858431(mox212009095.inMilliseconds),
      n907871619: y244682390 ? Q568229535.mj292864269 : Q568229535.oo1060948421,
    );

    final Xt8940324
        u698885893 = Xt8940324(
      ib716780806: ib716780806,
      utg871578108: Cu726056914(
        djw18244169: djw18244169,
        aa921636322: mox212009095.inMicroseconds,
      ),
    );
    a146644209.oor502750542(
      u698885893,
    );

    //
    //
    _fa89162227[m738940547] = a146644209.e46942401();
    _o467929026.remove(m738940547);
    if (!iq736408661) {
      _h791209773();
      jvh811367936.q972929047();
    }
  }

  void _h791209773() {
    _fa89162227.forEach((_qwn594036123, ht394869720) {
      _v854542906(ht394869720);
    });
    _fa89162227.clear();
  }

  //Ii131279869
  void _v854542906(
    Rup333292752 qx587067058,
  ) {
    final Set<Cu726056914> dlu896335889 =
        qx587067058.n870033782;

    final Viu857030836? kfe274872621 =
        jvh811367936.d878563070(
      dlu896335889,
    );

    for (final j456534160
        in qx587067058.u698885893) {
      final Hqy31252620? uk632369769 = kfe274872621 != null
          ? jvh811367936.k182363837(
              kfe274872621,
              j456534160.utg871578108,
            )
          : null;
      final ib716780806 = uk632369769 != null
          ? j456534160.a371382328(uk632369769)
          : j456534160.ib716780806;

      _d723068669(ib716780806);
    }
  }

  int _uoo766858431(int my468375552) {
    _qp881330715 ??=
        DateTime.now().millisecondsSinceEpoch - my468375552;
    return my468375552 + _qp881330715!;
  }

  void _w573601230(int my468375552) {
    _qp881330715 =
        DateTime.now().millisecondsSinceEpoch - my468375552;
  }

  bool _g325204379(PointerMoveEvent jvd768266235) {
    final List<Xt8940324>?
        f220016465 =
        _o467929026[jvd768266235.pointer]?.u698885893;
    //
    if (f220016465 == null ||
        f220016465.length <= 1) {
      return false;
    }

    final pt1056602170 =
        _uoo766858431(jvd768266235.timeStamp.inMilliseconds) -
            f220016465
                .last.ib716780806.zx476595782;

    if (pt1056602170 < n872290388.inMilliseconds) {
      return true;
    }
    return false;
  }
}
