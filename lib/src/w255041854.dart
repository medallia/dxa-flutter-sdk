import 'package:logger/logger.dart';

class Z394369901 {
  Z394369901({required this.oy740509154});
  final bool Function() oy740509154;
  void vit92492771() {
    yf454203594 = true;
    b653425691 = true;
    io522099836 = true;
    grq674119934 = true;
    jra784773539 = true;
    ug594444955 = true;
    kp424272318 = true;
    y870832946 = true;
    s915506209 = true;
    t770200195();
  }

  void hru473608507({
    bool yf454203594 = false,
    bool b653425691 = false,
    bool io522099836 = false,
    bool grq674119934 = false,
    bool jra784773539 = false,
    bool ug594444955 = false,
    bool kp424272318 = false,
    bool y870832946 = false,
    bool s915506209 = false,
  }) {
    this.yf454203594 = yf454203594;
    this.b653425691 = b653425691;
    this.io522099836 = io522099836;
    this.grq674119934 = grq674119934;
    this.jra784773539 = jra784773539;
    this.ug594444955 = ug594444955;
    this.kp424272318 = kp424272318;
    this.y870832946 = y870832946;
    this.s915506209 = s915506209;
    t770200195();
  }

  void px129784369() {
    hru473608507();
  }

  bool yf454203594 = false;
  bool b653425691 = false;
  bool io522099836 = false;
  bool grq674119934 = false;
  bool jra784773539 = false;
  bool ug594444955 = false;
  bool kp424272318 = false;
  bool y870832946 = false;
  bool s915506209 = false;
  Logger? _w944023829;
  Logger? _tjp480797605;
  Logger? _n575536790;
  Logger? _hzm779181128;
  Logger? _fsv33398626;
  Logger? _c396877016;
  Logger? _kr704491249;
  Logger? _veg567252413;

  void t770200195() {
    _w944023829 = null;
    _tjp480797605 = null;
    _n575536790 = null;
    _hzm779181128 = null;
    _fsv33398626 = null;
    _c396877016 = null;
    _kr704491249 = null;
    _veg567252413 = null;
  }

  Logger get gz738246696 =>
      _w944023829 ??= _ub515173483(kp424272318);
  Logger get sy709688871 => _tjp480797605 ??= _ub515173483(y870832946);
  Logger get dnd326301223 {
    return _n575536790 ??= _ub515173483(b653425691);
  }

  Logger get vka897254390 {
    return _hzm779181128 ??= _ub515173483(io522099836);
  }

  Logger get l141300258 {
    return _fsv33398626 ??= _ub515173483(grq674119934);
  }

  Logger get ep1022950057 {
    return _c396877016 ??= _ub515173483(jra784773539);
  }

  Logger get ccx328711108 {
    return _kr704491249 ??= _ub515173483(ug594444955);
  }

  Logger get d171605868 {
    return _veg567252413 ??= _ub515173483(s915506209);
  }

  Logger _ub515173483(bool msl277520628) {
    return Logger(
      printer: Qvc136276336(),
      filter: Kt890513559(
        yf454203594: yf454203594,
        msl277520628: msl277520628,
        oy740509154: () {
          return oy740509154();
        },
      ),
    );
  }
}

class Kt890513559 extends DevelopmentFilter {
  Kt890513559({
    required this.yf454203594,
    required this.msl277520628,
    required this.oy740509154,
  });
  final bool yf454203594;
  final bool msl277520628;
  final bool Function() oy740509154;
  @override
  bool shouldLog(LogEvent plr768265491) {
    if (!oy740509154()) return false;
    if (!super.shouldLog(plr768265491)) return false;
    if (!yf454203594) return false;
    if (!msl277520628) return false;
    return true;
  }
}

class Qvc136276336 extends PrettyPrinter {
  @override
  List<String> log(LogEvent plr768265491) {
    late List<String> wve1041246545;
    wve1041246545 = super.log(plr768265491);
    wve1041246545.insert(0, 'DXA - Flutter');
    return wve1041246545;
  }
}
