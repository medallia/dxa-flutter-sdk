import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/gbe143256606.dart';
import 'package:webview_flutter/webview_flutter.dart';

abstract class C271732918<T> {
  final Set<Type> wpr511866090;

  const C271732918({required this.wpr511866090});

  bool gq252568297(Object u887422076) {
    assert(T != dynamic, '''
AutomaskWidgets must have a Widget family to check for subtypes,
if there is no family to check then use AutoMaskWidgetWithoutFamily''');
    return u887422076 is T;
  }

  @mustCallSuper
  bool xc650036982(Widget xk971404014) {
    return wpr511866090.contains(xk971404014.runtimeType);
  }
}

class I889758289 extends C271732918 {
  const I889758289() : super(wpr511866090: const {});
  Set<C734481977> csr613593948() {
    final Set<C734481977> e604698691 = {};

    for (final hpp412699972 in AutoMaskingTypeEnum.values) {
      if (hpp412699972 == AutoMaskingTypeEnum.none) continue;
      if (hpp412699972 == AutoMaskingTypeEnum.all) continue;
      e604698691.add(C734481977(er897299797: hpp412699972));
    }
    return e604698691;
  }
}

class Rw802339870 extends C271732918<Tje337504692> {
  Rw802339870() : super(wpr511866090: {MaskWidget});
}

class Gj70429093 extends C271732918<ButtonStyleButton> {
  const Gj70429093()
      : super(
          wpr511866090: const {
            IconButton,
            BackButton,
            CloseButton,
            FloatingActionButton,
            CupertinoButton,
          },
        );
}

class L486714599 extends C271732918<Tje337504692> {
  const L486714599() : super(wpr511866090: const {Text, RichText});
}

class Si315586711 extends C271732918<Tje337504692> {
  const Si315586711() : super(wpr511866090: const {Icon});
}

class Zbs1036290800
    extends C271732918<Tje337504692> {
  const Zbs1036290800() : super(wpr511866090: const {Image});

  @override
  bool xc650036982(Widget xk971404014) {
    if (super.xc650036982(xk971404014)) return true;
    if (xk971404014.runtimeType == DecoratedBox) {
      final DecoratedBox yb436045636 = xk971404014 as DecoratedBox;
      if (yb436045636.decoration.runtimeType == BoxDecoration) {
        return (yb436045636.decoration as BoxDecoration).image != null;
      }
    }
    return false;
  }
}

class Di944496031
    extends C271732918<Tje337504692> {
  const Di944496031() : super(wpr511866090: const {EditableText});
}

class D1034042118
    extends C271732918<Tje337504692> {
  const D1034042118() : super(wpr511866090: const {Dialog});
}

class Sa617737055
    extends C271732918<Tje337504692> {
  const Sa617737055() : super(wpr511866090: const {WebView});
}

class Amj355513342 extends C271732918<Tje337504692> {
  const Amj355513342() : super(wpr511866090: const {});
}

//
abstract class Tje337504692 extends Widget {}
