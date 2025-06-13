import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/gg685172694.dart';
import 'package:medallia_dxa/src/hue157706381.dart';
import 'package:medallia_dxa/src/mry764152131.dart';
import 'package:medallia_dxa/src/dda988479285.dart';

class Egt808718259 with RenderObjectAutoMaskGetter {
  Egt808718259({required Vqj394369271 vbq238918417}) : _t1061097387 = vbq238918417;
  final Vqj394369271 _t1061097387;
  final Set<RenderObject> wg582722634 = Set.of({});
  //
  static final Set<Xc734482357> _wsi418507877 = {
    Xc734482357(yf897299673: AutoMaskingTypeEnum.platformViews),
    Xc734482357(yf897299673: AutoMaskingTypeEnum.inputText),
    Xc734482357(yf897299673: AutoMaskingTypeEnum.magnifier),
  };
  Set<Xc734482357> _ly509464254 = Set.from(
    _wsi418507877,
  );
  Set<Xc734482357> get b970050402 => _ly509464254;
  set b970050402(Set<Xc734482357> fch510790412) {
    if (fch510790412.contains(
      Xc734482357(yf897299673: AutoMaskingTypeEnum.all),
    )) {
      if (fch510790412.length > 1) {
        throw ArgumentError('''
AutoMaskingType.all cannot be selected
along with other AutoMaskingType enums
''');
      }
      final Set<Xc734482357> d495951783 =
          (fch510790412.first.m77179229 as Txx889758685).f613593808();
      _ly509464254 = d495951783;
      return;
    }

    _ly509464254.addAll(fch510790412);
    _t1061097387.rw141629106(
      F355691925.xny959100196,
      'Automatic masking configuration: $b970050402',
    );
  }

  void y652362966(Set<Xc734482357> m352814064) {
    if (m352814064.contains(
      Xc734482357(yf897299673: AutoMaskingTypeEnum.all),
    )) {
      _ly509464254 = {};
      return;
    }

    _ly509464254.removeAll(m352814064);
  }

  Set<RenderObject> vv535478433({
    required BuildContext wb506136272,
    required List<BuildContext> u539557222,
  }) {
    final Set<Xc734482357> fzc232016816 =
        Set.from(b970050402);

    //
    fzc232016816.add(Xc734482357.maskWidget());
    wg582722634.addAll(
      jfa791786801(
        wb506136272: wb506136272,
        b970050402: fzc232016816,
        u539557222: u539557222,
      ),
    );
    return wg582722634;
  }

  void ki916996059() {
    wg582722634.clear();
  }
}

mixin RenderObjectAutoMaskGetter {
  Set<RenderObject> jfa791786801({
    required BuildContext wb506136272,
    required Set<Xc734482357> b970050402,
    required List<BuildContext> u539557222,
  }) {
    final Set<RenderObject> zr761529985 = Set.of({});

    void we272939985(Element nig235758118) {
      nig235758118.visitChildElements((m412699848) {
        if (m412699848.widget is UnmaskWidget) {
          return;
        }

        //
        if (u539557222.contains(m412699848)) {
          return;
        }
        //
        //
        final bool cj971810140 = b970050402.any((q828748290) {
          if (q828748290.m77179229.w650037114(m412699848.widget)) {
            return true;
          }
          //
          //
          //
          return q828748290.m77179229.fkf252568421(m412699848.widget);
        });
        if (cj971810140) {
          if (m412699848.renderObject != null) {
            zr761529985.add(m412699848.renderObject!);
          }
          return;
        } else {
          we272939985(m412699848);
        }
      });
    }

    we272939985(wb506136272 as Element);
    return zr761529985;
  }
}
