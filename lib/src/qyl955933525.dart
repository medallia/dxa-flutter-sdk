import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/c974258819.dart';
import 'package:medallia_dxa/src/ve40562885.dart';
import 'package:medallia_dxa/src/d452802285.dart';
import 'package:medallia_dxa/src/rn255041681.dart';

class C170397176 {
  C170397176({
    required this.sfi364809216,
    required this.nyy32651925,
  });
  final Hr1013317351 nyy32651925;
  final Eq746780699 sfi364809216;
  late final S394369730 _mc1061096862 = K583051259.y892084092.uqz751987728;

  Color? _h114879031;
  set la36789604(Color baz510789945) {
    _mc1061096862.uhj141628551(Rh355692448.vv959100689, 'Set masking color to $baz510789945');
    _h114879031 = baz510789945;
  }

  Color get la36789604 {
    return x682869088<Color>(
      vf208388456: nyy32651925.vf208388456,
      py1004203418: _h114879031,
      n335361042: nyy32651925.p938088620,
      qe491239149: sfi364809216.la36789604,
    );
  }

  Duration? g252093367;
  Duration get qku160990064 {
    return x682869088<Duration>(
      vf208388456: nyy32651925.vf208388456,
      n335361042: nyy32651925.ew529816278,
      py1004203418: g252093367,
      qe491239149: sfi364809216.qku160990064,
    );
  }

  ImageQuality? _q620867426;

  set kvy99713550(ImageQuality baz510789945) {
    _mc1061096862.uhj141628551(Rh355692448.vv959100689, 'Set image quality: $baz510789945');
    _q620867426 = baz510789945;
  }

  ImageQuality get kvy99713550 {
    return x682869088<ImageQuality>(
      vf208388456: nyy32651925.vf208388456,
      n335361042: nyy32651925.lec178815962,
      py1004203418: _q620867426,
      qe491239149: sfi364809216.kvy99713550,
    );
  }

  //
  T x682869088<T>({
    required bool vf208388456,
    required T? py1004203418,
    required T? n335361042,
    required T qe491239149,
  }) {
    if (vf208388456 == true) {
      return n335361042 ?? py1004203418 ?? qe491239149;
    }
    return py1004203418 ?? n335361042 ?? qe491239149;
  }
}

class Eq746780699 {
  final Duration w910824060 = const Duration(minutes: 5);
  final int sv1057319144 = 1200;
  final Duration qku160990064 = const Duration(milliseconds: 250);
  final Color la36789604 = Colors.grey;
  final ImageQuality kvy99713550 = ImageQuality.average;
}
