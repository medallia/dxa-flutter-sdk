import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/ie143256599.dart';
import 'package:medallia_dxa/src/nxx401264726.dart';
import 'package:medallia_dxa/src/lm255042337.dart';
import 'package:medallia_dxa/src/vfp604849459.dart';

class Qk808717878 with RenderObjectAutoMaskGetter {
  Qk808717878({required Tiy394369394 q238918292}) : _suc1061097006 = q238918292;
  final Tiy394369394 _suc1061097006;
  Logger get b613848308 => _suc1061097006.cvl328710619;
  final Set<RenderObject> l582723023 = Set.of({});
  //
  static final Set<Fye734481968> _ku418508256 = {
    Fye734481968(ieu897299804: AutoMaskingTypeEnum.webView),
    Fye734481968(ieu897299804: AutoMaskingTypeEnum.inputText),
  };
  Set<Fye734481968> _mqr509464379 = Set.from(
    _ku418508256,
  );
  Set<Fye734481968> get sv970050279 => _mqr509464379;
  set sv970050279(Set<Fye734481968> hy510790281) {
    if (hy510790281.contains(
      Fye734481968(ieu897299804: AutoMaskingTypeEnum.all),
    )) {
      if (hy510790281.length > 1) {
        throw ArgumentError('''
AutoMaskingType.all cannot be selected
along with other AutoMaskingType enums
''');
      }
      final Set<Fye734481968> xc495951394 =
          (hy510790281.first.xf77179096 as My889758296).pn613593941();
      _mqr509464379 = xc495951394;
      return;
    }

    if (hy510790281.contains(
      Fye734481968(ieu897299804: AutoMaskingTypeEnum.none),
    )) {
      if (hy510790281.length > 1) {
        throw ArgumentError('''
AutoMaskingType.none cannot be selected
along with other AutoMaskingType enums
''');
      }
      _mqr509464379 = {
        Fye734481968(ieu897299804: AutoMaskingTypeEnum.none),
      };
      return;
    }
    _mqr509464379.addAll(hy510790281);
    b613848308.d('After setAutoMaskingTypeSet $sv970050279');
  }

  void ir652363091(Set<Fye734481968> n352813685) {
    if (n352813685.contains(
      Fye734481968(ieu897299804: AutoMaskingTypeEnum.none),
    )) {
      return;
    }
    if (n352813685.contains(
      Fye734481968(ieu897299804: AutoMaskingTypeEnum.all),
    )) {
      _mqr509464379 = {};
      return;
    }

    _mqr509464379.removeAll(n352813685);
    b613848308.d('After  Unmasking $sv970050279');
  }

  Set<RenderObject> mv535478564({
    required BuildContext yq506136405,
    required List<BuildContext> q539557091,
  }) {
    b613848308.d('set AutoMasking $sv970050279');

    final Set<Fye734481968> w232016437 = Set.from(sv970050279)
      ..remove(Fye734481968(ieu897299804: AutoMaskingTypeEnum.none));

    //
    w232016437.add(Fye734481968.maskWidget());
    l582723023.addAll(
      qw791786676(
        yq506136405: yq506136405,
        sv970050279: w232016437,
        q539557091: q539557091,
      ),
    );
    b613848308.d('renderObjectsToMask $l582723023');
    return l582723023;
  }

  void fh916995678() {
    b613848308.d('renderObjectsToMask clear');
    l582723023.clear();
  }
}

mixin RenderObjectAutoMaskGetter {
  Set<RenderObject> qw791786676({
    required BuildContext yq506136405,
    required Set<Fye734481968> sv970050279,
    required List<BuildContext> q539557091,
  }) {
    final Set<RenderObject> qb761530116 = Set.of({});

    void cid272939604(Element sou235758499) {
      sou235758499.visitChildElements((ttm412699981) {
        if (ttm412699981.widget is UnmaskWidget) {
          return;
        }

        //
        if (q539557091.contains(ttm412699981)) {
          return;
        }
        //
        //
        final bool xgm971810009 = sv970050279.any((h828748679) {
          if (h828748679.xf77179096.k650036991(ttm412699981.widget)) {
            return true;
          }
          //
          //
          //
          return h828748679.xf77179096.jte252568288(ttm412699981.widget);
        });
        if (xgm971810009) {
          if (ttm412699981.renderObject != null) {
            qb761530116.add(ttm412699981.renderObject!);
          }
          return;
        } else {
          cid272939604(ttm412699981);
        }
      });
    }

    cid272939604(yq506136405 as Element);
    return qb761530116;
  }
}
