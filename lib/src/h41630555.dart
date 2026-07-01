import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:medallia_dxa/src/ov17384723.dart';
import 'package:medallia_dxa/src/v359401512.dart';
import 'package:medallia_dxa/src/yy757553496.dart';
import 'package:medallia_dxa/src/gr715510415.dart';
import 'package:medallia_dxa/src/joh758138683.dart';
import 'package:medallia_dxa/src/e534491569.dart';

//H739168239
class G427178159 extends Hn142570963 {
  G427178159({
    required this.ku946290609,
    required this.dp32651783,
    required this.ubm385127110,
    required this.cdw507881208,
    required Pf404394043 xql421585525,
  }) : super(xql421585525) {
    _f191948728 = _e975615657.receiveBroadcastStream().listen(
      _hy437534201,
      onError: (dynamic w153119828) {
        debugPrint('${_e975615657.name} error: $w153119828');
      },
    );
  }

  final Sj344142706 ku946290609;
  final Uyh1013317237 dp32651783;
  final Oq153257717 ubm385127110;
  final Q859070433 cdw507881208;

  //
  final Map<H739168239, Map<String, dynamic>> _j775544123 = {};
  late StreamSubscription _f191948728;
  static const _e975615657 = EventChannel('medallia.dxa.streamChannel');

  void _hy437534201(dynamic qgl515237549) {
    late final Map<String, dynamic> s853121736;
    try {
      s853121736 = Map.castFrom<Object?, Object?, String, dynamic>(qgl515237549);
    } catch (e) {
      assert(() {
        throw J901569634('Data should be Map<String, dynamic>');
      }());
      return;
    }
    final H739168239? h685191748 =
        _c588752804(s853121736['eventChannelId']);
    //
    if (cdw507881208.w378495732) {
      if (h685191748 is! Uyh1013317237) {
        return;
      }
    }
    if (h685191748 == null) return;

    //
    //
    //
    if (!cdw507881208.wyt993779390 &&
        h685191748 is! Uyh1013317237) {
      _j775544123.update(
        h685191748,
        (_gjh594036302) => s853121736,
        ifAbsent: () => s853121736,
      );
      return;
    }
    if (cdw507881208.wyt993779390) {
      _gpl25573375();
    }
    _zt97637073(s853121736, h685191748);
  }

  void _gpl25573375() {
    for (final li768265262 in _j775544123.entries) {
      _zt97637073(li768265262.value, li768265262.key);
    }
    _j775544123.clear();
  }

  void _zt97637073(
    Map<String, dynamic> zu481948312,
    H739168239 h685191748,
  ) {
    h685191748.b1015924213(zu481948312);
  }

  H739168239? _c588752804(String mz691969935) {
    switch (mz691969935) {
      case Sj344142706.mz691969935:
        return ku946290609;
      case Uyh1013317237.mz691969935:
        return dp32651783;
      case Oq153257717.mz691969935:
        return ubm385127110;
      default:
        return null;
    }
  }

  void _om2108840() {
    _f191948728.cancel();
  }

  @override
  void az326102847() {
    _om2108840();
  }
}

abstract class H739168239 {
  void b1015924213(Map<String, dynamic> zu481948312);
}
