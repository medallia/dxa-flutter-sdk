import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/qx678250726.dart';
import 'package:medallia_dxa/src/djh990530403.dart';
import 'package:medallia_dxa/src/idy1040135208.dart';
import 'package:medallia_dxa/src/q487304051.dart';
import 'package:medallia_dxa/src/r764152804.dart';

class Bx645777721 {
  Bx645777721({
    required this.scc811367893,
  });

  @visibleForTesting
  static const Duration og872291201 = Duration(milliseconds: 200);
  late final Zwh394369616 _opx1061096716 = B583051113.dfo892084206.fg751987842;
  final List<Function(Ak475815472)> _e963320862 = [];
  final Cdv221967874 scc811367893;

  //
  int? _cen881330638;
  final Map<Eci492495626, Wbe131278888> _y467928087 = {};
  final Map<Eci492495626, H333293317> _uw89162278 = {};
  bool get fn736409472 => _y467928087.isNotEmpty;
  void wip915654776(Function(Ak475815472) tm612340593) {
    _e963320862.add(tm612340593);
  }

  void rwl654601045(PointerEvent wn461883705) {
    if (wn461883705 is PointerDownEvent) {
      _h755942700(wn461883705);
      return;
    }
    if (wn461883705 is PointerUpEvent) {
      _wy756951569(wn461883705);
      return;
    }
    if (wn461883705 is PointerMoveEvent) {
      _rx940748620(wn461883705);
      return;
    }
    if (wn461883705 is PointerCancelEvent) {
      _cz479411364(wn461883705);
      return;
    }
  }

  void _h755942700(PointerDownEvent li768265262) {
    final q146644772 = _odd544098183(
      li768265262.pointer,
      li768265262.position,
      li768265262.timeStamp,
      li768265262.pressure.toInt(),
    );
    _y467928087[q146644772.sz738940246] = q146644772;
  }

  void _rx940748620(PointerMoveEvent li768265262) {
    final yu569947947 = _w325204558(li768265262);
    _jq144606568(
      li768265262.pointer,
      li768265262.position,
      li768265262.timeStamp,
      li768265262.pressure.toInt(),
      gsr695633035: yu569947947,
    );
  }

  void _wy756951569(PointerUpEvent li768265262) {
    _i1065977(
      li768265262.pointer,
      li768265262.position,
      li768265262.timeStamp,
      li768265262.pressure.toInt(),
    );
  }

  void _cz479411364(PointerCancelEvent li768265262) {
    _i1065977(
      li768265262.pointer,
      li768265262.position,
      li768265262.timeStamp,
      li768265262.pressure.toInt(),
      ehg244682051: true,
    );
  }

  //
  void _zlg723068200(Ak475815472 tp716781267) {
    for (final e217552898 in _e963320862) {
      e217552898(tp716781267);
    }
  }

  Wbe131278888 _odd544098183(
    Eci492495626 gi459292853,
    Offset c18243996,
    Duration kmj212009810,
    int h423972345,
  ) {
    if (!fn736409472) {
      _e573601307(kmj212009810.inMilliseconds);
    }
    final Ak475815472 tp716781267 = Ak475815472(
      pc9765360: c18243996.dy.toInt(),
      e474433580: h423972345,
      y319005981: c18243996.dx.toInt(),
      ju476595603: _au766859114(kmj212009810.inMilliseconds),
      ox907871830: Sf568229194.zm140082894,
    );

    final Rv8939761
        z698885328 = Rv8939761(
      tp716781267: tp716781267,
      r871578153: Vw726055943(
        c18243996: c18243996,
        k921636407: kmj212009810.inMicroseconds,
      ),
    );
    final Wbe131278888 q146644772 = Wbe131278888(
      sz738940246: gi459292853,
      p798359520: z698885328,
    );

    return q146644772;
  }

  void _jq144606568(
    Eci492495626 sz738940246,
    Offset c18243996,
    Duration kmj212009810,
    int h423972345, {
    required bool gsr695633035,
  }) {
    final q146644772 = _y467928087[sz738940246];
    if (gsr695633035) {
      q146644772?.vw271205070(
        kmj212009810.inMicroseconds,
        c18243996,
      );
      return;
    }
    if (q146644772 == null) {
      _opx1061096716.no141628437(
        X355692338.qb380883620,
        'ongoingTouchEvent not found for id $sz738940246',
        txc248384276: '🔴',
      );
      return;
    }

    final Ak475815472 tp716781267 = Ak475815472(
      pc9765360: c18243996.dy.toInt(),
      e474433580: h423972345,
      y319005981: c18243996.dx.toInt(),
      ju476595603: _au766859114(kmj212009810.inMilliseconds),
      ox907871830: Sf568229194.tv246215073,
    );

    final Rv8939761 cyh944328989 =
        Rv8939761(
      tp716781267: tp716781267,
      r871578153: Vw726055943(
        c18243996: c18243996,
        k921636407: kmj212009810.inMicroseconds,
      ),
    );

    q146644772.r502750875(
      cyh944328989,
    );
  }

  void _i1065977(
    Eci492495626 sz738940246,
    Offset c18243996,
    Duration kmj212009810,
    int h423972345, {
    bool ehg244682051 = false,
  }) {
    final q146644772 = _y467928087[sz738940246];
    if (q146644772 == null) {
      _opx1061096716.no141628437(
        X355692338.qb380883620,
        'ongoingTouchEvent not found for id $sz738940246',
        txc248384276: '🔴',
      );
      return;
    }

    final Ak475815472 tp716781267 = Ak475815472(
      pc9765360: c18243996.dy.toInt(),
      e474433580: h423972345,
      y319005981: c18243996.dx.toInt(),
      //
      //
      //
      //
      //
      ju476595603: ehg244682051
          ? DateTime.now().millisecondsSinceEpoch
          : _au766859114(kmj212009810.inMilliseconds),
      ox907871830: ehg244682051 ? Sf568229194.qc292864728 : Sf568229194.lu1060948496,
    );

    final Rv8939761
        z698885328 = Rv8939761(
      tp716781267: tp716781267,
      r871578153: Vw726055943(
        c18243996: c18243996,
        k921636407: kmj212009810.inMicroseconds,
      ),
    );
    q146644772.r502750875(
      z698885328,
    );

    //
    //
    _uw89162278[sz738940246] = q146644772.wlz46942996();
    _y467928087.remove(sz738940246);
    if (!fn736409472) {
      _y791209208();
      scc811367893.m972929986();
    }
  }

  void _y791209208() {
    _uw89162278.forEach((_gjh594036302, kr394868749) {
      _igl854542831(kr394868749);
    });
    _uw89162278.clear();
  }

  //Wbe131278888
  void _igl854542831(
    H333293317 q587066727,
  ) {
    final Set<Vw726055943> qgu896336836 =
        q587066727.k870034083;

    final Ff857031521? a274873080 =
        scc811367893.ide878562603(
      qgu896336836,
    );

    for (final u456534853
        in q587066727.z698885328) {
      final Fv31253337? m632369596 = a274873080 != null
          ? scc811367893.vd182363496(
              a274873080,
              u456534853.r871578153,
            )
          : null;
      final tp716781267 = m632369596 != null
          ? u456534853.sjj371383277(m632369596)
          : u456534853.tp716781267;

      _zlg723068200(tp716781267);
    }
  }

  int _au766859114(int bk468376533) {
    _cen881330638 ??=
        DateTime.now().millisecondsSinceEpoch - bk468376533;
    return bk468376533 + _cen881330638!;
  }

  void _e573601307(int bk468376533) {
    _cen881330638 =
        DateTime.now().millisecondsSinceEpoch - bk468376533;
  }

  bool _w325204558(PointerMoveEvent li768265262) {
    final List<Rv8939761>?
        hq220015748 =
        _y467928087[li768265262.pointer]?.z698885328;
    //
    if (hq220015748 == null ||
        hq220015748.length <= 1) {
      return false;
    }

    final wqk1056603119 =
        _au766859114(li768265262.timeStamp.inMilliseconds) -
            hq220015748
                .last.tp716781267.ju476595603;

    if (wqk1056603119 < og872291201.inMilliseconds) {
      return true;
    }
    return false;
  }
}
