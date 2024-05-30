import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/e143257236.dart';

abstract class Gly271733308<T> {
  final Set<Type> dse511866464;

  const Gly271733308({required this.dse511866464});

  bool n252567651(Object o887422710) {
    assert(T != dynamic, '''
AutomaskWidgets must have a Widget family to check for subtypes,
if there is no family to check then use AutoMaskWidgetWithoutFamily''');
    return o887422710 is T;
  }

  @mustCallSuper
  bool jua650036348(Widget cdy971403364) {
    return dse511866464.contains(cdy971403364.runtimeType);
  }
}

class H889757915 extends Gly271733308 {
  const H889757915() : super(dse511866464: const {});
  Set<Bs734481587> mdd613593558() {
    final Set<Bs734481587> kd604699337 = {};

    for (final jl412700622 in AutoMaskingTypeEnum.values) {
      if (jl412700622 == AutoMaskingTypeEnum.all) continue;
      kd604699337.add(Bs734481587(hb897300447: jl412700622));
    }
    return kd604699337;
  }
}

class Npf802340500 extends Gly271733308<Nt337505086> {
  Npf802340500() : super(dse511866464: {MaskWidget});
}

class M70429487 extends Gly271733308<ButtonStyleButton> {
  const M70429487()
      : super(
          dse511866464: const {
            IconButton,
            BackButton,
            CloseButton,
            FloatingActionButton,
            CupertinoButton,
          },
        );
}

class Jb486714989 extends Gly271733308<Nt337505086> {
  const Jb486714989() : super(dse511866464: const {Text, RichText});
}

class Xvj315587101 extends Gly271733308<Nt337505086> {
  const Xvj315587101() : super(dse511866464: const {Icon});
}

class Njk1036290170
    extends Gly271733308<Nt337505086> {
  const Njk1036290170() : super(dse511866464: const {Image});

  @override
  bool jua650036348(Widget cdy971403364) {
    if (super.jua650036348(cdy971403364)) return true;
    if (cdy971403364.runtimeType == DecoratedBox) {
      final DecoratedBox thm436045262 = cdy971403364 as DecoratedBox;
      if (thm436045262.decoration.runtimeType == BoxDecoration) {
        return (thm436045262.decoration as BoxDecoration).image != null;
      }
    }
    return false;
  }
}

class Ju944496405
    extends Gly271733308<Nt337505086> {
  const Ju944496405() : super(dse511866464: const {EditableText});
}

class Kds1034041740
    extends Gly271733308<Nt337505086> {
  const Kds1034041740() : super(dse511866464: const {Dialog});
}

class H362814633
    extends Gly271733308<Nt337505086> {
  const H362814633()
      : super(
          dse511866464: const {
            PlatformViewLink,
            UiKitView,
            AndroidView,
            AndroidViewSurface,
          },
        );
}

//
abstract class Nt337505086 extends Widget {}
