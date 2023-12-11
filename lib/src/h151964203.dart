import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/s143257381.dart';
import 'package:medallia_dxa/src/f401265508.dart';
import 'package:medallia_dxa/src/pa255041555.dart';
import 'package:medallia_dxa/src/xee604849665.dart';

class Sf808717572 with RenderObjectAutoMaskGetter {
  Sf808717572({required N394369600 x238918054}) : _o1061096732 = x238918054;
  final N394369600 _o1061096732;
  Logger get n613849030 => _o1061096732.i328710889;
  final Set<RenderObject> wf582723325 = Set.of({});
  //
  static final Set<Wy734481666> _i418508498 = {
    Wy734481666(wvq897300078: AutoMaskingTypeEnum.webView),
    Wy734481666(wvq897300078: AutoMaskingTypeEnum.inputText),
  };
  Set<Wy734481666> _de509463561 = Set.from(
    _i418508498,
  );
  Set<Wy734481666> get y970050005 => _de509463561;
  set y970050005(Set<Wy734481666> u510790075) {
    if (u510790075.contains(
      Wy734481666(wvq897300078: AutoMaskingTypeEnum.all),
    )) {
      if (u510790075.length > 1) {
        throw ArgumentError('''
AutoMaskingType.all cannot be selected
along with other AutoMaskingType enums
''');
      }
      final Set<Wy734481666> ev495951120 =
          (u510790075.first.ywo77179882 as Nst889758058).pfr613593191();
      _de509463561 = ev495951120;
      return;
    }

    if (u510790075.contains(
      Wy734481666(wvq897300078: AutoMaskingTypeEnum.none),
    )) {
      if (u510790075.length > 1) {
        throw ArgumentError('''
AutoMaskingType.none cannot be selected
along with other AutoMaskingType enums
''');
      }
      _de509463561 = {
        Wy734481666(wvq897300078: AutoMaskingTypeEnum.none),
      };
      return;
    }
    _de509463561.addAll(u510790075);
    n613849030.d('After setAutoMaskingTypeSet $y970050005');
  }

  void chv652363361(Set<Wy734481666> ymc352813383) {
    if (ymc352813383.contains(
      Wy734481666(wvq897300078: AutoMaskingTypeEnum.none),
    )) {
      return;
    }
    if (ymc352813383.contains(
      Wy734481666(wvq897300078: AutoMaskingTypeEnum.all),
    )) {
      _de509463561 = {};
      return;
    }

    _de509463561.removeAll(ymc352813383);
    n613849030.d('After  Unmasking $y970050005');
  }

  Set<RenderObject> c535478806({
    required BuildContext p506135655,
    required List<BuildContext> o539557841,
  }) {
    n613849030.d('set AutoMasking $y970050005');

    final Set<Wy734481666> e232016135 = Set.from(y970050005)
      ..remove(Wy734481666(wvq897300078: AutoMaskingTypeEnum.none));

    //
    e232016135.add(Wy734481666.maskWidget());
    wf582723325.addAll(
      ym791787398(
        p506135655: p506135655,
        y970050005: e232016135,
        o539557841: o539557841,
      ),
    );
    n613849030.d('renderObjectsToMask $wf582723325');
    return wf582723325;
  }

  void zc916995436() {
    n613849030.d('renderObjectsToMask clear');
    wf582723325.clear();
  }
}

mixin RenderObjectAutoMaskGetter {
  Set<RenderObject> ym791787398({
    required BuildContext p506135655,
    required Set<Wy734481666> y970050005,
    required List<BuildContext> o539557841,
  }) {
    final Set<RenderObject> xy761529398 = Set.of({});

    void yo272939366(Element ajk235757713) {
      ajk235757713.visitChildElements((jnk412700287) {
        if (jnk412700287.widget is UnmaskWidget) {
          return;
        }

        //
        if (o539557841.contains(jnk412700287)) {
          return;
        }
        //
        //
        final bool ugd971810795 = y970050005.any((kd828747957) {
          if (kd828747957.ywo77179882.uka650036685(jnk412700287.widget)) {
            return true;
          }
          //
          //
          //
          return kd828747957.ywo77179882.aah252568018(jnk412700287.widget);
        });
        if (ugd971810795) {
          if (jnk412700287.renderObject != null) {
            xy761529398.add(jnk412700287.renderObject!);
          }
          return;
        } else {
          yo272939366(jnk412700287);
        }
      });
    }

    yo272939366(p506135655 as Element);
    return xy761529398;
  }
}
