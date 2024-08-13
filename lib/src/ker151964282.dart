import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/llu143257460.dart';
import 'package:medallia_dxa/src/hto401265461.dart';
import 'package:medallia_dxa/src/ex255041602.dart';
import 'package:medallia_dxa/src/fx604849744.dart';

class Mf808717653 with RenderObjectAutoMaskGetter {
  Mf808717653({required Bcw394369553 fcv238918135}) : _q1061096781 = fcv238918135;
  final Bcw394369553 _q1061096781;
  final Set<RenderObject> q582723244 = Set.of({});
  //
  static final Set<Rnt734481747> _gk418508419 = {
    Rnt734481747(ufi897300031: AutoMaskingTypeEnum.platformViews),
    Rnt734481747(ufi897300031: AutoMaskingTypeEnum.inputText),
    Rnt734481747(ufi897300031: AutoMaskingTypeEnum.magnifier),
  };
  Set<Rnt734481747> _n509463640 = Set.from(
    _gk418508419,
  );
  Set<Rnt734481747> get m970049924 => _n509463640;
  set m970049924(Set<Rnt734481747> wvb510790122) {
    if (wvb510790122.contains(
      Rnt734481747(ufi897300031: AutoMaskingTypeEnum.all),
    )) {
      if (wvb510790122.length > 1) {
        throw ArgumentError('''
AutoMaskingType.all cannot be selected
along with other AutoMaskingType enums
''');
      }
      final Set<Rnt734481747> v495951169 =
          (wvb510790122.first.ma77179835 as Uws889758011).tj613593142();
      _n509463640 = v495951169;
      return;
    }

    _n509463640.addAll(wvb510790122);
    _q1061096781.r141628500(
      Ym355692403.in959100866,
      'Automatic masking configuration: $m970049924',
    );
  }

  void kfw652363312(Set<Rnt734481747> p352813334) {
    if (p352813334.contains(
      Rnt734481747(ufi897300031: AutoMaskingTypeEnum.all),
    )) {
      _n509463640 = {};
      return;
    }

    _n509463640.removeAll(p352813334);
  }

  Set<RenderObject> ie535478855({
    required BuildContext t506135606,
    required List<BuildContext> ayv539557760,
  }) {
    final Set<Rnt734481747> ri232016214 =
        Set.from(m970049924);

    //
    ri232016214.add(Rnt734481747.maskWidget());
    q582723244.addAll(
      ro791787479(
        t506135606: t506135606,
        m970049924: ri232016214,
        ayv539557760: ayv539557760,
      ),
    );
    return q582723244;
  }

  void yr916995389() {
    q582723244.clear();
  }
}

mixin RenderObjectAutoMaskGetter {
  Set<RenderObject> ro791787479({
    required BuildContext t506135606,
    required Set<Rnt734481747> m970049924,
    required List<BuildContext> ayv539557760,
  }) {
    final Set<RenderObject> yk761529447 = Set.of({});

    void e272939319(Element rt235757760) {
      rt235757760.visitChildElements((c412700206) {
        if (c412700206.widget is UnmaskWidget) {
          return;
        }

        //
        if (ayv539557760.contains(c412700206)) {
          return;
        }
        //
        //
        final bool r971810746 = m970049924.any((wl828748004) {
          if (wl828748004.ma77179835.jl650036636(c412700206.widget)) {
            return true;
          }
          //
          //
          //
          return wl828748004.ma77179835.zf252567939(c412700206.widget);
        });
        if (r971810746) {
          if (c412700206.renderObject != null) {
            yk761529447.add(c412700206.renderObject!);
          }
          return;
        } else {
          e272939319(c412700206);
        }
      });
    }

    e272939319(t506135606 as Element);
    return yk761529447;
  }
}
