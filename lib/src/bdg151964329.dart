import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/m143257511.dart';
import 'package:medallia_dxa/src/lac401265638.dart';
import 'package:medallia_dxa/src/rn255041681.dart';
import 'package:medallia_dxa/src/ork604849795.dart';

class G808717702 with RenderObjectAutoMaskGetter {
  G808717702({required S394369730 th238917924}) : _mc1061096862 = th238917924;
  final S394369730 _mc1061096862;
  final Set<RenderObject> p582723199 = Set.of({});
  //
  static final Set<O734481792> _xf418508368 = {
    O734481792(pw897300204: AutoMaskingTypeEnum.platformViews),
    O734481792(pw897300204: AutoMaskingTypeEnum.inputText),
    O734481792(pw897300204: AutoMaskingTypeEnum.magnifier),
  };
  Set<O734481792> _wc509463691 = Set.from(
    _xf418508368,
  );
  Set<O734481792> get w970049879 => _wc509463691;
  set w970049879(Set<O734481792> baz510789945) {
    if (baz510789945.contains(
      O734481792(pw897300204: AutoMaskingTypeEnum.all),
    )) {
      if (baz510789945.length > 1) {
        throw ArgumentError('''
AutoMaskingType.all cannot be selected
along with other AutoMaskingType enums
''');
      }
      final Set<O734481792> o495951250 =
          (baz510789945.first.p77179752 as Lmi889758184).yfo613593317();
      _wc509463691 = o495951250;
      return;
    }

    _wc509463691.addAll(baz510789945);
    _mc1061096862.uhj141628551(
      Rh355692448.vv959100689,
      'Automatic masking configuration: $w970049879',
    );
  }

  void pvo652363491(Set<O734481792> w352813509) {
    if (w352813509.contains(
      O734481792(pw897300204: AutoMaskingTypeEnum.all),
    )) {
      _wc509463691 = {};
      return;
    }

    _wc509463691.removeAll(w352813509);
  }

  Set<RenderObject> yt535478932({
    required BuildContext zi506135781,
    required List<BuildContext> uc539557715,
  }) {
    final Set<O734481792> nz232016261 =
        Set.from(w970049879);

    //
    nz232016261.add(O734481792.maskWidget());
    p582723199.addAll(
      o791787268(
        zi506135781: zi506135781,
        w970049879: nz232016261,
        uc539557715: uc539557715,
      ),
    );
    return p582723199;
  }

  void cy916995566() {
    p582723199.clear();
  }
}

mixin RenderObjectAutoMaskGetter {
  Set<RenderObject> o791787268({
    required BuildContext zi506135781,
    required Set<O734481792> w970049879,
    required List<BuildContext> uc539557715,
  }) {
    final Set<RenderObject> a761529524 = Set.of({});

    void dts272939492(Element nv235757587) {
      nv235757587.visitChildElements((w412700413) {
        if (w412700413.widget is UnmaskWidget) {
          return;
        }

        //
        if (uc539557715.contains(w412700413)) {
          return;
        }
        //
        //
        final bool l971810665 = w970049879.any((l828747831) {
          if (l828747831.p77179752.fgh650036559(w412700413.widget)) {
            return true;
          }
          //
          //
          //
          return l828747831.p77179752.x252567888(w412700413.widget);
        });
        if (l971810665) {
          if (w412700413.renderObject != null) {
            a761529524.add(w412700413.renderObject!);
          }
          return;
        } else {
          dts272939492(w412700413);
        }
      });
    }

    dts272939492(zi506135781 as Element);
    return a761529524;
  }
}
