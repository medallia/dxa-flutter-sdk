import 'package:logger/logger.dart';

class N394369600 {
  N394369600({required this.vvn740508879});
  final bool Function() vvn740508879;
  void iwf92492494() {
    opw454203879 = true;
    c653425974 = true;
    c522100049 = true;
    ju674120147 = true;
    gf784773262 = true;
    ft594445238 = true;
    qfd424272019 = true;
    fc870832671 = true;
    yp915506444 = true;
    kue770200494();
  }

  void yez473608214({
    bool opw454203879 = false,
    bool c653425974 = false,
    bool c522100049 = false,
    bool ju674120147 = false,
    bool gf784773262 = false,
    bool ft594445238 = false,
    bool qfd424272019 = false,
    bool fc870832671 = false,
    bool yp915506444 = false,
  }) {
    this.opw454203879 = opw454203879;
    this.c653425974 = c653425974;
    this.c522100049 = c522100049;
    this.ju674120147 = ju674120147;
    this.gf784773262 = gf784773262;
    this.ft594445238 = ft594445238;
    this.qfd424272019 = qfd424272019;
    this.fc870832671 = fc870832671;
    this.yp915506444 = yp915506444;
    kue770200494();
  }

  bool opw454203879 = false;
  bool c653425974 = false;
  bool c522100049 = false;
  bool ju674120147 = false;
  bool gf784773262 = false;
  bool ft594445238 = false;
  bool qfd424272019 = false;
  bool fc870832671 = false;
  bool yp915506444 = false;
  Logger? _dtp944023608;
  Logger? _hkx480797320;
  Logger? _hic575537083;
  Logger? _d779181413;
  Logger? _qq33398351;
  Logger? _ig396877301;
  Logger? _e704491484;
  Logger? _gu567252112;

  void kue770200494() {
    _dtp944023608 = null;
    _hkx480797320 = null;
    _hic575537083 = null;
    _d779181413 = null;
    _qq33398351 = null;
    _ig396877301 = null;
    _e704491484 = null;
    _gu567252112 = null;
  }

  Logger get xr738246917 =>
      _dtp944023608 ??= _jb515173702(qfd424272019);
  Logger get ajv709689098 => _hkx480797320 ??= _jb515173702(fc870832671);
  Logger get utd326301450 {
    return _hic575537083 ??= _jb515173702(c653425974);
  }

  Logger get gz897254107 {
    return _d779181413 ??= _jb515173702(c522100049);
  }

  Logger get r141300495 {
    return _qq33398351 ??= _jb515173702(ju674120147);
  }

  Logger get zw1022950276 {
    return _ig396877301 ??= _jb515173702(gf784773262);
  }

  Logger get i328710889 {
    return _e704491484 ??= _jb515173702(ft594445238);
  }

  Logger get v171605569 {
    return _gu567252112 ??= _jb515173702(yp915506444);
  }

  Logger _jb515173702(bool bsc277520857) {
    return Logger(
      printer: Ovt136276061(),
      filter: L890513850(
        opw454203879: opw454203879,
        bsc277520857: bsc277520857,
        vvn740508879: () {
          return vvn740508879();
        },
      ),
    );
  }
}

class L890513850 extends DevelopmentFilter {
  L890513850({
    required this.opw454203879,
    required this.bsc277520857,
    required this.vvn740508879,
  });
  final bool opw454203879;
  final bool bsc277520857;
  final bool Function() vvn740508879;
  @override
  bool shouldLog(LogEvent yy768265278) {
    if (!vvn740508879()) return false;
    if (!super.shouldLog(yy768265278)) return false;
    if (!opw454203879) return false;
    if (!bsc277520857) return false;
    return true;
  }
}

class Ovt136276061 extends PrettyPrinter {
  @override
  List<String> log(LogEvent yy768265278) {
    late List<String> bya1041246332;
    bya1041246332 = super.log(yy768265278);
    bya1041246332.insert(0, 'DXA - Flutter');
    return bya1041246332;
  }
}
