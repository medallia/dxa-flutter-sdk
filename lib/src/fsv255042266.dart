import 'package:logger/logger.dart';

class A394369161 {
  A394369161({required this.zg740509190});
  final bool Function() zg740509190;
  void z92491783() {
    ror454204206 = true;
    vn653426687 = true;
    i522100632 = true;
    wo674120474 = true;
    g784773703 = true;
    h594444671 = true;
    g424272474 = true;
    dsx870832342 = true;
    wrr915507141 = true;
    v770199911();
  }

  void g473608927({
    bool ror454204206 = false,
    bool vn653426687 = false,
    bool i522100632 = false,
    bool wo674120474 = false,
    bool g784773703 = false,
    bool h594444671 = false,
    bool g424272474 = false,
    bool dsx870832342 = false,
    bool wrr915507141 = false,
  }) {
    this.ror454204206 = ror454204206;
    this.vn653426687 = vn653426687;
    this.i522100632 = i522100632;
    this.wo674120474 = wo674120474;
    this.g784773703 = g784773703;
    this.h594444671 = h594444671;
    this.g424272474 = g424272474;
    this.dsx870832342 = dsx870832342;
    this.wrr915507141 = wrr915507141;
    v770199911();
  }

  void axp129784277() {
    g473608927();
  }

  bool ror454204206 = false;
  bool vn653426687 = false;
  bool i522100632 = false;
  bool wo674120474 = false;
  bool g784773703 = false;
  bool h594444671 = false;
  bool g424272474 = false;
  bool dsx870832342 = false;
  bool wrr915507141 = false;
  Logger? _hb944024305;
  Logger? _z480796737;
  Logger? _ebd575536498;
  Logger? _wcy779181996;
  Logger? _zx33397894;
  Logger? _ss396877628;
  Logger? _ggo704490773;
  Logger? _xb567252569;

  void v770199911() {
    _hb944024305 = null;
    _z480796737 = null;
    _ebd575536498 = null;
    _wcy779181996 = null;
    _zx33397894 = null;
    _ss396877628 = null;
    _ggo704490773 = null;
    _xb567252569 = null;
  }

  Logger get id738247628 =>
      _hb944024305 ??= _icv515174287(g424272474);
  Logger get ac709688771 => _z480796737 ??= _icv515174287(dsx870832342);
  Logger get ved326301123 {
    return _ebd575536498 ??= _icv515174287(vn653426687);
  }

  Logger get gcu897253394 {
    return _wcy779181996 ??= _icv515174287(i522100632);
  }

  Logger get c141300166 {
    return _zx33397894 ??= _icv515174287(wo674120474);
  }

  Logger get eby1022949709 {
    return _ss396877628 ??= _icv515174287(g784773703);
  }

  Logger get cvw328710176 {
    return _ggo704490773 ??= _icv515174287(h594444671);
  }

  Logger get vg171605128 {
    return _xb567252569 ??= _icv515174287(wrr915507141);
  }

  Logger _icv515174287(bool jto277521168) {
    return Logger(
      printer: Xa136276628(),
      filter: H890514291(
        ror454204206: ror454204206,
        jto277521168: jto277521168,
        zg740509190: () {
          return zg740509190();
        },
      ),
    );
  }
}

class H890514291 extends DevelopmentFilter {
  H890514291({
    required this.ror454204206,
    required this.jto277521168,
    required this.zg740509190,
  });
  final bool ror454204206;
  final bool jto277521168;
  final bool Function() zg740509190;
  @override
  bool shouldLog(LogEvent lzd768265975) {
    if (!zg740509190()) return false;
    if (!super.shouldLog(lzd768265975)) return false;
    if (!ror454204206) return false;
    if (!jto277521168) return false;
    return true;
  }
}

class Xa136276628 extends PrettyPrinter {
  @override
  List<String> log(LogEvent lzd768265975) {
    late List<String> m1041246901;
    m1041246901 = super.log(lzd768265975);
    m1041246901.insert(0, 'DXA - Flutter');
    return m1041246901;
  }
}
