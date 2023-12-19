import 'package:logger/logger.dart';

class R394369739 {
  R394369739({required this.v740508740});
  final bool Function() v740508740;
  void qtd92492357() {
    cw454203756 = true;
    svj653426109 = true;
    wyr522100186 = true;
    e674120024 = true;
    c784773125 = true;
    a594445117 = true;
    e424271896 = true;
    mzf870832788 = true;
    fj915506567 = true;
    n770200357();
  }

  void g473608349({
    bool cw454203756 = false,
    bool svj653426109 = false,
    bool wyr522100186 = false,
    bool e674120024 = false,
    bool c784773125 = false,
    bool a594445117 = false,
    bool e424271896 = false,
    bool mzf870832788 = false,
    bool fj915506567 = false,
  }) {
    this.cw454203756 = cw454203756;
    this.svj653426109 = svj653426109;
    this.wyr522100186 = wyr522100186;
    this.e674120024 = e674120024;
    this.c784773125 = c784773125;
    this.a594445117 = a594445117;
    this.e424271896 = e424271896;
    this.mzf870832788 = mzf870832788;
    this.fj915506567 = fj915506567;
    n770200357();
  }

  bool cw454203756 = false;
  bool svj653426109 = false;
  bool wyr522100186 = false;
  bool e674120024 = false;
  bool c784773125 = false;
  bool a594445117 = false;
  bool e424271896 = false;
  bool mzf870832788 = false;
  bool fj915506567 = false;
  Logger? _yl944023731;
  Logger? _r480797187;
  Logger? _v575536944;
  Logger? _x779181550;
  Logger? _yf33398468;
  Logger? _pjd396877182;
  Logger? _j704491351;
  Logger? _e567251995;

  void n770200357() {
    _yl944023731 = null;
    _r480797187 = null;
    _v575536944 = null;
    _x779181550 = null;
    _yf33398468 = null;
    _pjd396877182 = null;
    _j704491351 = null;
    _e567251995 = null;
  }

  Logger get y738247054 =>
      _yl944023731 ??= _d515173837(e424271896);
  Logger get iw709689217 => _r480797187 ??= _d515173837(mzf870832788);
  Logger get a326301569 {
    return _v575536944 ??= _d515173837(svj653426109);
  }

  Logger get ezz897253968 {
    return _x779181550 ??= _d515173837(wyr522100186);
  }

  Logger get m141300612 {
    return _yf33398468 ??= _d515173837(e674120024);
  }

  Logger get em1022950159 {
    return _pjd396877182 ??= _d515173837(c784773125);
  }

  Logger get bt328710754 {
    return _j704491351 ??= _d515173837(a594445117);
  }

  Logger get hds171605706 {
    return _e567251995 ??= _d515173837(fj915506567);
  }

  Logger _d515173837(bool si277520722) {
    return Logger(
      printer: Djm136276182(),
      filter: Z890513713(
        cw454203756: cw454203756,
        si277520722: si277520722,
        v740508740: () {
          return v740508740();
        },
      ),
    );
  }
}

class Z890513713 extends DevelopmentFilter {
  Z890513713({
    required this.cw454203756,
    required this.si277520722,
    required this.v740508740,
  });
  final bool cw454203756;
  final bool si277520722;
  final bool Function() v740508740;
  @override
  bool shouldLog(LogEvent je768265397) {
    if (!v740508740()) return false;
    if (!super.shouldLog(je768265397)) return false;
    if (!cw454203756) return false;
    if (!si277520722) return false;
    return true;
  }
}

class Djm136276182 extends PrettyPrinter {
  @override
  List<String> log(LogEvent je768265397) {
    late List<String> vd1041246455;
    vd1041246455 = super.log(je768265397);
    vd1041246455.insert(0, 'DXA - Flutter');
    return vd1041246455;
  }
}
