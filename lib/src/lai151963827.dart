import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/ua143257021.dart';
import 'package:medallia_dxa/src/gyu401265148.dart';
import 'package:medallia_dxa/src/yyq255042187.dart';
import 'package:medallia_dxa/src/m604849305.dart';

class Sdw808718236 with RenderObjectAutoMaskGetter {
  Sdw808718236({required Nfs394369240 i238918462}) : _gi1061097348 = i238918462;
  final Nfs394369240 _gi1061097348;
  final Set<RenderObject> mh582722661 = Set.of({});
  //
  static final Set<Azj734482330> _ws418507850 = {
    Azj734482330(h897299702: AutoMaskingTypeEnum.platformViews),
    Azj734482330(h897299702: AutoMaskingTypeEnum.inputText),
    Azj734482330(h897299702: AutoMaskingTypeEnum.magnifier),
  };
  Set<Azj734482330> _zd509464209 = Set.from(
    _ws418507850,
  );
  Set<Azj734482330> get n970050381 => _zd509464209;
  set n970050381(Set<Azj734482330> u510790435) {
    if (u510790435.contains(
      Azj734482330(h897299702: AutoMaskingTypeEnum.all),
    )) {
      if (u510790435.length > 1) {
        throw ArgumentError('''
AutoMaskingType.all cannot be selected
along with other AutoMaskingType enums
''');
      }
      final Set<Azj734482330> j495951752 =
          (u510790435.first.de77179250 as Ad889758706).ybk613593855();
      _zd509464209 = j495951752;
      return;
    }

    _zd509464209.addAll(u510790435);
    _gi1061097348.ieh141629085(
      Cu355691962.sv959100171,
      'Automatic masking configuration: $n970050381',
    );
  }

  void ehm652363001(Set<Azj734482330> crq352814047) {
    if (crq352814047.contains(
      Azj734482330(h897299702: AutoMaskingTypeEnum.all),
    )) {
      _zd509464209 = {};
      return;
    }

    _zd509464209.removeAll(crq352814047);
  }

  Set<RenderObject> x535478414({
    required BuildContext s506136319,
    required List<BuildContext> g539557193,
  }) {
    final Set<Azj734482330> utm232016799 =
        Set.from(n970050381);

    //
    utm232016799.add(Azj734482330.maskWidget());
    mh582722661.addAll(
      bb791786782(
        s506136319: s506136319,
        n970050381: utm232016799,
        g539557193: g539557193,
      ),
    );
    return mh582722661;
  }

  void w916996084() {
    mh582722661.clear();
  }
}

mixin RenderObjectAutoMaskGetter {
  Set<RenderObject> bb791786782({
    required BuildContext s506136319,
    required Set<Azj734482330> n970050381,
    required List<BuildContext> g539557193,
  }) {
    final Set<RenderObject> yo761530030 = Set.of({});

    void nf272940030(Element tdo235758089) {
      tdo235758089.visitChildElements((uw412699879) {
        if (uw412699879.widget is UnmaskWidget) {
          return;
        }

        //
        if (g539557193.contains(uw412699879)) {
          return;
        }
        //
        //
        final bool i971810163 = n970050381.any((ezo828748333) {
          if (ezo828748333.de77179250.zf650037077(uw412699879.widget)) {
            return true;
          }
          //
          //
          //
          return ezo828748333.de77179250.aw252568394(uw412699879.widget);
        });
        if (i971810163) {
          if (uw412699879.renderObject != null) {
            yo761530030.add(uw412699879.renderObject!);
          }
          return;
        } else {
          nf272940030(uw412699879);
        }
      });
    }

    nf272940030(s506136319 as Element);
    return yo761530030;
  }
}
