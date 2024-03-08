import 'package:logger/logger.dart';

class Par394369403 {
  Par394369403({required this.r740509684});
  final bool Function() r740509684;
  void caf92492277() {
    da454204124 = true;
    dq653426189 = true;
    cj522100330 = true;
    dz674120424 = true;
    mp784774069 = true;
    j594444429 = true;
    t424272808 = true;
    nk870832420 = true;
    kzu915506743 = true;
    r770199701();
  }

  void q473609005({
    bool da454204124 = false,
    bool dq653426189 = false,
    bool cj522100330 = false,
    bool dz674120424 = false,
    bool mp784774069 = false,
    bool j594444429 = false,
    bool t424272808 = false,
    bool nk870832420 = false,
    bool kzu915506743 = false,
  }) {
    this.da454204124 = da454204124;
    this.dq653426189 = dq653426189;
    this.cj522100330 = cj522100330;
    this.dz674120424 = dz674120424;
    this.mp784774069 = mp784774069;
    this.j594444429 = j594444429;
    this.t424272808 = t424272808;
    this.nk870832420 = nk870832420;
    this.kzu915506743 = kzu915506743;
    r770199701();
  }

  void o129783847() {
    q473609005();
  }

  bool da454204124 = false;
  bool dq653426189 = false;
  bool cj522100330 = false;
  bool dz674120424 = false;
  bool mp784774069 = false;
  bool j594444429 = false;
  bool t424272808 = false;
  bool nk870832420 = false;
  bool kzu915506743 = false;
  Logger? _yi944024323;
  Logger? _nv480797107;
  Logger? _smp575536256;
  Logger? _hc779181662;
  Logger? _emn33398132;
  Logger? _t396877518;
  Logger? _a704490727;
  Logger? _kom567252907;

  void r770199701() {
    _yi944024323 = null;
    _nv480797107 = null;
    _smp575536256 = null;
    _hc779181662 = null;
    _emn33398132 = null;
    _t396877518 = null;
    _a704490727 = null;
    _kom567252907 = null;
  }

  Logger get v738247230 =>
      _yi944024323 ??= _pu515174013(t424272808);
  Logger get ln709688369 => _nv480797107 ??= _pu515174013(nk870832420);
  Logger get wao326300721 {
    return _smp575536256 ??= _pu515174013(dq653426189);
  }

  Logger get vmm897253856 {
    return _hc779181662 ??= _pu515174013(cj522100330);
  }

  Logger get lwk141299764 {
    return _emn33398132 ??= _pu515174013(dz674120424);
  }

  Logger get v1022949567 {
    return _t396877518 ??= _pu515174013(mp784774069);
  }

  Logger get v328710610 {
    return _a704490727 ??= _pu515174013(j594444429);
  }

  Logger get q171605370 {
    return _kom567252907 ??= _pu515174013(kzu915506743);
  }

  Logger _pu515174013(bool klz277521122) {
    return Logger(
      printer: T136276838(),
      filter: D890514049(
        da454204124: da454204124,
        klz277521122: klz277521122,
        r740509684: () {
          return r740509684();
        },
      ),
    );
  }
}

class D890514049 extends DevelopmentFilter {
  D890514049({
    required this.da454204124,
    required this.klz277521122,
    required this.r740509684,
  });
  final bool da454204124;
  final bool klz277521122;
  final bool Function() r740509684;
  @override
  bool shouldLog(LogEvent se768265989) {
    if (!r740509684()) return false;
    if (!super.shouldLog(se768265989)) return false;
    if (!da454204124) return false;
    if (!klz277521122) return false;
    return true;
  }
}

class T136276838 extends PrettyPrinter {
  @override
  List<String> log(LogEvent se768265989) {
    late List<String> jg1041247047;
    jg1041247047 = super.log(se768265989);
    jg1041247047.insert(0, 'DXA - Flutter');
    return jg1041247047;
  }
}
