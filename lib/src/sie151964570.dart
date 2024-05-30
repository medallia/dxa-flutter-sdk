import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/e143257236.dart';
import 'package:medallia_dxa/src/y401265365.dart';
import 'package:medallia_dxa/src/e255041954.dart';
import 'package:medallia_dxa/src/jx604850096.dart';

class Nk808717493 with RenderObjectAutoMaskGetter {
  Nk808717493({required Kq394370033 pqt238917655}) : _jy1061096621 = pqt238917655;
  final Kq394370033 _jy1061096621;
  final Set<RenderObject> je582723404 = Set.of({});
  //
  static final Set<Bs734481587> _tf418508643 = {
    Bs734481587(hb897300447: AutoMaskingTypeEnum.platformViews),
    Bs734481587(hb897300447: AutoMaskingTypeEnum.inputText),
  };
  Set<Bs734481587> _b509463992 = Set.from(
    _tf418508643,
  );
  Set<Bs734481587> get ksb970049636 => _b509463992;
  set ksb970049636(Set<Bs734481587> zak510789642) {
    if (zak510789642.contains(
      Bs734481587(hb897300447: AutoMaskingTypeEnum.all),
    )) {
      if (zak510789642.length > 1) {
        throw ArgumentError('''
AutoMaskingType.all cannot be selected
along with other AutoMaskingType enums
''');
      }
      final Set<Bs734481587> pmp495951009 =
          (zak510789642.first.kq77179483 as H889757915).mdd613593558();
      _b509463992 = pmp495951009;
      return;
    }

    _b509463992.addAll(zak510789642);
    _jy1061096621.fbr141628852(
      Df355692179.pyv959100450,
      'Automatic masking configuration: $ksb970049636',
    );
  }

  void mr652363728(Set<Bs734481587> fd352813302) {
    if (fd352813302.contains(
      Bs734481587(hb897300447: AutoMaskingTypeEnum.all),
    )) {
      _b509463992 = {};
      return;
    }

    _b509463992.removeAll(fd352813302);
  }

  Set<RenderObject> s535479207({
    required BuildContext yy506136022,
    required List<BuildContext> cwf539557472,
  }) {
    final Set<Bs734481587> jk232016054 =
        Set.from(ksb970049636);

    //
    jk232016054.add(Bs734481587.maskWidget());
    je582723404.addAll(
      ray791787063(
        yy506136022: yy506136022,
        ksb970049636: jk232016054,
        cwf539557472: cwf539557472,
      ),
    );
    return je582723404;
  }

  void rj916995293() {
    je582723404.clear();
  }
}

mixin RenderObjectAutoMaskGetter {
  Set<RenderObject> ray791787063({
    required BuildContext yy506136022,
    required Set<Bs734481587> ksb970049636,
    required List<BuildContext> cwf539557472,
  }) {
    final Set<RenderObject> em761529735 = Set.of({});

    void w272939223(Element bt235757856) {
      bt235757856.visitChildElements((jl412700622) {
        if (jl412700622.widget is UnmaskWidget) {
          return;
        }

        //
        if (cwf539557472.contains(jl412700622)) {
          return;
        }
        //
        //
        final bool ay971810394 = ksb970049636.any((dz828748036) {
          if (dz828748036.kq77179483.jua650036348(jl412700622.widget)) {
            return true;
          }
          //
          //
          //
          return dz828748036.kq77179483.n252567651(jl412700622.widget);
        });
        if (ay971810394) {
          if (jl412700622.renderObject != null) {
            em761529735.add(jl412700622.renderObject!);
          }
          return;
        } else {
          w272939223(jl412700622);
        }
      });
    }

    w272939223(yy506136022 as Element);
    return em761529735;
  }
}
