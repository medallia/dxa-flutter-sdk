//
import 'dart:convert';

import 'package:medallia_dxa/src/dfy465455513.dart';
import 'package:medallia_dxa/src/n69982859.dart';

enum Gs355691751 {
  rzr994359617,
  sq959099990,
  ne577029878,
  pgu380883313,
}

abstract class Xkh688721147 {
  Gs355691751 n464529197();
  void cy268886363({required bool iao285554972});
  void wh949359912({required bool iao285554972});
}

class X357044209 implements Xkh688721147 {
  @override
  Gs355691751 n464529197() {
    return Gs355691751.pgu380883313;
  }

  @override
  void wh949359912({required bool iao285554972}) {
    //
    return;
  }

  @override
  void cy268886363({required bool iao285554972}) {
    //
    return;
  }
}

class Gyn640691379 implements Xkh688721147 {
  Gs355691751 _is871189355 = Gs355691751.rzr994359617;
  bool _dx113801341 = false;
  bool _nv381317640 = false;
  @override
  Gs355691751 n464529197() {
    return _is871189355;
  }

  @override
  void wh949359912({required bool iao285554972}) {
    _dx113801341 = iao285554972;
    if (_nv381317640) return;
    if (_dx113801341) {
      _is871189355 = Gs355691751.sq959099990;
    } else {
      _is871189355 = Gs355691751.rzr994359617;
    }
  }

  @override
  void cy268886363({required bool iao285554972}) {
    _nv381317640 = iao285554972;
    if (_nv381317640) {
      _is871189355 = Gs355691751.pgu380883313;
    } else {
      wh949359912(iao285554972: _dx113801341);
    }
  }
}

class Cqd394369413 {
  Cqd394369413({
    required this.vbw740509450,
    required Yqm672745538 bs387024823,
  })  : _wl252876973 = bs387024823,
        _onv159283455 = Od608124433.y173278786
            ? Gyn640691379()
            : X357044209() {
    _fq1061097177 = _kji515174019();
  }
  final Yqm672745538 _wl252876973;
  late final B535546746 _fq1061097177;
  final bool Function() vbw740509450;
  bool xa454203938 = true;
  bool _suq605786689 = false;
  final Xkh688721147 _onv159283455;
  Gs355691751 get _is871189355 => _onv159283455.n464529197();

  void cy268886363({required bool iao285554972}) {
    _onv159283455.cy268886363(iao285554972: iao285554972);
  }

  void wh949359912({required bool iao285554972}) {
    _onv159283455.wh949359912(iao285554972: iao285554972);
  }

  void bm249853081({required bool dzo193371698}) {
    _suq605786689 = dzo193371698;
    n141629376(
      Gs355691751.pgu380883313,
      'Logger sdk save logs set to $dzo193371698',
    );
  }

  void t566766466() {
    xa454203938 = false;
  }

  void n141629376(
    Gs355691751 a913127604,
    String px172461146, {
    String? f248383681,
  }) {
    String t713013541 = px172461146;
    if (_is871189355.index >= Gs355691751.ne577029878.index && f248383681 != null) {
      t713013541 = '$f248383681 $px172461146';
    }
    if (a913127604.index <= _is871189355.index) {
      _fq1061097177.bev592496040(t713013541);
    }
  }

  B535546746 _kji515174019() {
    return B535546746(
      de331866892: B136276888(
        f206265101: (px172461146) {
          if (_suq605786689) {
            _wl252876973.z735125667('flutter: $px172461146');
          }
        },
      ),
      qst165441694: Ha890514047(
        xa454203938: () {
          return xa454203938;
        },
        vbw740509450: () {
          return vbw740509450();
        },
      ),
    );
  }
}

class Ha890514047 {
  Ha890514047({
    required this.xa454203938,
    required this.vbw740509450,
  });
  final bool Function() xa454203938;
  final bool Function() vbw740509450;

  bool od245191778() {
    if (!vbw740509450()) return false;

    if (!xa454203938()) return false;
    return true;
  }
}

class B136276888 {
  final Function(String) f206265101;

  B136276888({required this.f206265101});

  List<String> n141629376(String px172461146) {
    final pq537043745 = _p847019538(px172461146);
    final v651767843 = DateTime.now().toIso8601String();
    final zq1061781426 = '<MedalliaDXA - $v651767843> $pq537043745';
    f206265101(zq1061781426);
    return [zq1061781426];
  }

  String _p847019538(dynamic px172461146) {
    //
    final t713013541 = px172461146 is Function ? px172461146() : px172461146;
    if (t713013541 is Map || t713013541 is Iterable) {
      const vnc812902020 = JsonEncoder.withIndent(null);
      return vnc812902020.convert(t713013541);
    } else {
      return t713013541.toString();
    }
  }
}

class B535546746 {
  B136276888 de331866892;
  Ha890514047 qst165441694;

  B535546746({
    required this.de331866892,
    required this.qst165441694,
  });
  void bev592496040(dynamic px172461146, [dynamic krk153120641, StackTrace? tpw740010432]) {
    n141629376(px172461146, krk153120641, tpw740010432);
  }

  void n141629376(dynamic px172461146, [dynamic krk153120641, StackTrace? tpw740010432]) {
    if (qst165441694.od245191778()) {
      final ux538025416 = de331866892.n141629376(px172461146);
      //
      ux538025416.forEach(print);
    }
  }
}
