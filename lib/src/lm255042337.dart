import 'package:logger/logger.dart';

class Tiy394369394 {
  Tiy394369394({required this.f740509693});
  final bool Function() f740509693;
  void w92492284() {
    j454204117 = true;
    sp653426180 = true;
    axe522100323 = true;
    ff674120417 = true;
    wq784774076 = true;
    rns594444420 = true;
    fwy424272801 = true;
    tl870832429 = true;
    hoj915506750 = true;
    is770199708();
  }

  void bw473608996({
    bool j454204117 = false,
    bool sp653426180 = false,
    bool axe522100323 = false,
    bool ff674120417 = false,
    bool wq784774076 = false,
    bool rns594444420 = false,
    bool fwy424272801 = false,
    bool tl870832429 = false,
    bool hoj915506750 = false,
  }) {
    this.j454204117 = j454204117;
    this.sp653426180 = sp653426180;
    this.axe522100323 = axe522100323;
    this.ff674120417 = ff674120417;
    this.wq784774076 = wq784774076;
    this.rns594444420 = rns594444420;
    this.fwy424272801 = fwy424272801;
    this.tl870832429 = tl870832429;
    this.hoj915506750 = hoj915506750;
    is770199708();
  }

  void x129783854() {
    bw473608996();
  }

  bool j454204117 = false;
  bool sp653426180 = false;
  bool axe522100323 = false;
  bool ff674120417 = false;
  bool wq784774076 = false;
  bool rns594444420 = false;
  bool fwy424272801 = false;
  bool tl870832429 = false;
  bool hoj915506750 = false;
  Logger? _up944024330;
  Logger? _q480797114;
  Logger? _mua575536265;
  Logger? _knb779181655;
  Logger? _v33398141;
  Logger? _qqu396877511;
  Logger? _o704490734;
  Logger? _qca567252898;

  void is770199708() {
    _up944024330 = null;
    _q480797114 = null;
    _mua575536265 = null;
    _knb779181655 = null;
    _v33398141 = null;
    _qqu396877511 = null;
    _o704490734 = null;
    _qca567252898 = null;
  }

  Logger get d738247223 =>
      _up944024330 ??= _ec515174004(fwy424272801);
  Logger get o709688376 => _q480797114 ??= _ec515174004(tl870832429);
  Logger get f326300728 {
    return _mua575536265 ??= _ec515174004(sp653426180);
  }

  Logger get y897253865 {
    return _knb779181655 ??= _ec515174004(axe522100323);
  }

  Logger get nat141299773 {
    return _v33398141 ??= _ec515174004(ff674120417);
  }

  Logger get lp1022949558 {
    return _qqu396877511 ??= _ec515174004(wq784774076);
  }

  Logger get cvl328710619 {
    return _o704490734 ??= _ec515174004(rns594444420);
  }

  Logger get bk171605363 {
    return _qca567252898 ??= _ec515174004(hoj915506750);
  }

  Logger _ec515174004(bool sqg277521131) {
    return Logger(
      printer: Yaj136276847(),
      filter: R890514056(
        j454204117: j454204117,
        sqg277521131: sqg277521131,
        f740509693: () {
          return f740509693();
        },
      ),
    );
  }
}

class R890514056 extends DevelopmentFilter {
  R890514056({
    required this.j454204117,
    required this.sqg277521131,
    required this.f740509693,
  });
  final bool j454204117;
  final bool sqg277521131;
  final bool Function() f740509693;
  @override
  bool shouldLog(LogEvent mww768265996) {
    if (!f740509693()) return false;
    if (!super.shouldLog(mww768265996)) return false;
    if (!j454204117) return false;
    if (!sqg277521131) return false;
    return true;
  }
}

class Yaj136276847 extends PrettyPrinter {
  @override
  List<String> log(LogEvent mww768265996) {
    late List<String> k1041247054;
    k1041247054 = super.log(mww768265996);
    k1041247054.insert(0, 'DXA - Flutter');
    return k1041247054;
  }
}
