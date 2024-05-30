import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/k974259120.dart';
import 'package:medallia_dxa/src/th40563190.dart';
import 'package:medallia_dxa/src/e255041954.dart';

class I170396875 {
  I170396875({
    required this.l32652198,
    required this.pu364809523,
    required Kq394370033 srs613848695,
  }) : _jy1061096621 = srs613848695;
  final Zg1013317588 l32652198;
  final Vp746780968 pu364809523;
  final Kq394370033 _jy1061096621;
  Duration? gn100203231;
  Duration get mrp910824271 {
    return gb682868819<Duration>(
      wej208388187: l32652198.wej208388187,
      xz1004203177: gn100203231,
      nq335361313: l32652198.ly76066623,
      wh491239390: pu364809523.mrp910824271,
    );
  }

  int? k358955217;
  int get im1057319387 {
    return gb682868819<int>(
      wej208388187: l32652198.wej208388187,
      xz1004203177: k358955217,
      nq335361313: l32652198.r1024540035,
      wh491239390: pu364809523.im1057319387,
    );
  }

  Color? _kbz114879236;
  set nk36789335(Color zak510789642) {
    _jy1061096621.fbr141628852(Df355692179.pyv959100450, 'Set masking color to $zak510789642');
    _kbz114879236 = zak510789642;
  }

  Color get nk36789335 {
    return gb682868819<Color>(
      wej208388187: l32652198.wej208388187,
      xz1004203177: _kbz114879236,
      nq335361313: l32652198.cba938088863,
      wh491239390: pu364809523.nk36789335,
    );
  }

  Duration? lk252093060;
  Duration get ch160989763 {
    return gb682868819<Duration>(
      wej208388187: l32652198.wej208388187,
      nq335361313: l32652198.n529816549,
      xz1004203177: lk252093060,
      wh491239390: pu364809523.ch160989763,
    );
  }

  ImageQuality? _rp620867153;

  set nfa99713853(ImageQuality zak510789642) {
    _jy1061096621.fbr141628852(Df355692179.pyv959100450, 'Set image quality: $zak510789642');
    _rp620867153 = zak510789642;
  }

  ImageQuality get nfa99713853 {
    return gb682868819<ImageQuality>(
      wej208388187: l32652198.wej208388187,
      nq335361313: l32652198.zfw178815721,
      xz1004203177: _rp620867153,
      wh491239390: pu364809523.nfa99713853,
    );
  }

  //
  T gb682868819<T>({
    required bool wej208388187,
    required T? xz1004203177,
    required T? nq335361313,
    required T wh491239390,
  }) {
    if (wej208388187 == true) {
      return nq335361313 ?? xz1004203177 ?? wh491239390;
    }
    return xz1004203177 ?? nq335361313 ?? wh491239390;
  }
}

class Vp746780968 {
  final Duration mrp910824271 = const Duration(minutes: 5);
  final int im1057319387 = 1200;
  final Duration ch160989763 = const Duration(milliseconds: 250);
  final Color nk36789335 = Colors.grey;
  final ImageQuality nfa99713853 = ImageQuality.average;
}
