import 'package:logger/logger.dart';

class Gy394369191 {
  Gy394369191({required this.mk740509224});
  final bool Function() mk740509224;
  void uzp92491817() {
    i454204160 = true;
    ucv653426641 = true;
    s522100662 = true;
    gx674120500 = true;
    xm784773737 = true;
    lmb594444625 = true;
    ao424272500 = true;
    b870832376 = true;
    ea915507179 = true;
    yzf770199881();
  }

  void oa473608945({
    bool i454204160 = false,
    bool ucv653426641 = false,
    bool s522100662 = false,
    bool gx674120500 = false,
    bool xm784773737 = false,
    bool lmb594444625 = false,
    bool ao424272500 = false,
    bool b870832376 = false,
    bool ea915507179 = false,
  }) {
    this.i454204160 = i454204160;
    this.ucv653426641 = ucv653426641;
    this.s522100662 = s522100662;
    this.gx674120500 = gx674120500;
    this.xm784773737 = xm784773737;
    this.lmb594444625 = lmb594444625;
    this.ao424272500 = ao424272500;
    this.b870832376 = b870832376;
    this.ea915507179 = ea915507179;
    yzf770199881();
  }

  void d129784315() {
    oa473608945();
  }

  bool i454204160 = false;
  bool ucv653426641 = false;
  bool s522100662 = false;
  bool gx674120500 = false;
  bool xm784773737 = false;
  bool lmb594444625 = false;
  bool ao424272500 = false;
  bool b870832376 = false;
  bool ea915507179 = false;
  Logger? _ruh944024287;
  Logger? _o480796783;
  Logger? _nlj575536476;
  Logger? _xik779181954;
  Logger? _am33397928;
  Logger? _w396877586;
  Logger? _ix704490811;
  Logger? _ff567252599;

  void yzf770199881() {
    _ruh944024287 = null;
    _o480796783 = null;
    _nlj575536476 = null;
    _xik779181954 = null;
    _am33397928 = null;
    _w396877586 = null;
    _ix704490811 = null;
    _ff567252599 = null;
  }

  Logger get rs738247650 =>
      _ruh944024287 ??= _wp515174305(ao424272500);
  Logger get no709688813 => _o480796783 ??= _wp515174305(b870832376);
  Logger get e326301165 {
    return _nlj575536476 ??= _wp515174305(ucv653426641);
  }

  Logger get iy897253436 {
    return _xik779181954 ??= _wp515174305(s522100662);
  }

  Logger get wuw141300200 {
    return _am33397928 ??= _wp515174305(gx674120500);
  }

  Logger get tqo1022949731 {
    return _w396877586 ??= _wp515174305(xm784773737);
  }

  Logger get p328710158 {
    return _ix704490811 ??= _wp515174305(lmb594444625);
  }

  Logger get c171605158 {
    return _ff567252599 ??= _wp515174305(ea915507179);
  }

  Logger _wp515174305(bool kx277521214) {
    return Logger(
      printer: G136276666(),
      filter: B890514269(
        i454204160: i454204160,
        kx277521214: kx277521214,
        mk740509224: () {
          return mk740509224();
        },
      ),
    );
  }
}

class B890514269 extends DevelopmentFilter {
  B890514269({
    required this.i454204160,
    required this.kx277521214,
    required this.mk740509224,
  });
  final bool i454204160;
  final bool kx277521214;
  final bool Function() mk740509224;
  @override
  bool shouldLog(LogEvent s768265945) {
    if (!mk740509224()) return false;
    if (!super.shouldLog(s768265945)) return false;
    if (!i454204160) return false;
    if (!kx277521214) return false;
    return true;
  }
}

class G136276666 extends PrettyPrinter {
  @override
  List<String> log(LogEvent s768265945) {
    late List<String> qls1041246875;
    qls1041246875 = super.log(s768265945);
    qls1041246875.insert(0, 'DXA - Flutter');
    return qls1041246875;
  }
}
