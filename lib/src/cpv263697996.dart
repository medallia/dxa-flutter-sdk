import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:medallia_dxa/src/szs7917082.dart';
import 'package:medallia_dxa/src/ws974258329.dart';
import 'package:medallia_dxa/src/ns879958122.dart';
import 'package:medallia_dxa/src/gj337065160.dart';
import 'package:medallia_dxa/src/t439716067.dart';
import 'package:medallia_dxa/src/u336048474.dart';

//Mfn739167591
class B427178535 with DisposeListeners {
  B427178535({
    required this.j946289977,
    required this.kut32651407,
    required this.wtl385126478,
    required this.aaq507880560,
  }) {
    _qnk191948080 = _lx975615009.receiveBroadcastStream().listen(
      _pai437534577,
      onError: (dynamic c153120476) {
        debugPrint('${_lx975615009.name} error: $c153120476');
      },
    );
  }

  final Egl344142330 j946289977;
  final V1013316861 kut32651407;
  final B153257085 wtl385126478;
  final H859069801 aaq507880560;

  //
  final Map<Mfn739167591, Map<String, dynamic>> _uxu775544755 = {};
  late StreamSubscription _qnk191948080;
  static const _lx975615009 = EventChannel('multiplatform.flutter.streamChannel');

  void _pai437534577(dynamic xse515236901) {
    late final Map<String, dynamic> hhp853121088;
    try {
      hhp853121088 = Map.castFrom<Object?, Object?, String, dynamic>(xse515236901);
    } catch (e) {
      assert(() {
        throw Sif901570282('Data should be Map<String, dynamic>');
      }());
      return;
    }
    final Mfn739167591? sxb685191372 =
        _qwy588752172(hhp853121088['eventChannelId']);
    //
    if (aaq507880560.ner378495100) {
      if (sxb685191372 is! V1013316861) {
        return;
      }
    }
    if (sxb685191372 == null) return;

    //
    //
    //
    if (!aaq507880560.s993778742 &&
        sxb685191372 is! V1013316861) {
      _uxu775544755.update(
        sxb685191372,
        (_c594035910) => hhp853121088,
        ifAbsent: () => hhp853121088,
      );
      return;
    }
    if (aaq507880560.s993778742) {
      _tu25572727();
    }
    _kg97636441(hhp853121088, sxb685191372);
  }

  void _tu25572727() {
    for (final b768265894 in _uxu775544755.entries) {
      _kg97636441(b768265894.value, b768265894.key);
    }
    _uxu775544755.clear();
  }

  void _kg97636441(
    Map<String, dynamic> hqc481947664,
    Mfn739167591 sxb685191372,
  ) {
    sxb685191372.tsc1015924605(hqc481947664);
  }

  Mfn739167591? _qwy588752172(String qk691969287) {
    switch (qk691969287) {
      case Egl344142330.qk691969287:
        return j946289977;
      case V1013316861.qk691969287:
        return kut32651407;
      case B153257085.qk691969287:
        return wtl385126478;
      default:
        return null;
    }
  }

  void _hf2109216() {
    _qnk191948080.cancel();
  }

  @override
  void r326102455() {
    _hf2109216();
  }
}

abstract class Mfn739167591 {
  void tsc1015924605(Map<String, dynamic> hqc481947664);
}
