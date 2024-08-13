import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/llu143257460.dart';

abstract class A271733724<T> {
  final Set<Type> fw511866752;

  const A271733724({required this.fw511866752});

  bool zf252567939(Object t887422742) {
    assert(T != dynamic, '''
AutomaskWidgets must have a Widget family to check for subtypes,
if there is no family to check then use AutoMaskWidgetWithoutFamily''');
    return t887422742 is T;
  }

  @mustCallSuper
  bool jl650036636(Widget h971403652) {
    return fw511866752.contains(h971403652.runtimeType);
  }
}

class Uws889758011 extends A271733724 {
  const Uws889758011() : super(fw511866752: const {});
  Set<Rnt734481747> tj613593142() {
    final Set<Rnt734481747> ma604699433 = {};

    for (final c412700206 in AutoMaskingTypeEnum.values) {
      if (c412700206 == AutoMaskingTypeEnum.all) continue;
      ma604699433.add(Rnt734481747(ufi897300031: c412700206));
    }
    return ma604699433;
  }
}

//
class Xf832750756 extends A271733724<Zek337504990> {
  Xf832750756()
      : super(
          fw511866752: {
            MaskWidget,
          },
        );
}

class X70429391 extends A271733724<ButtonStyleButton> {
  const X70429391()
      : super(
          fw511866752: const {
            IconButton,
            BackButton,
            CloseButton,
            FloatingActionButton,
            CupertinoButton,
          },
        );
}

class X486715277 extends A271733724<Zek337504990> {
  const X486715277() : super(fw511866752: const {Text, RichText});
}

class Hf315587581 extends A271733724<Zek337504990> {
  const Hf315587581() : super(fw511866752: const {Icon});
}

class Tp1036290458
    extends A271733724<Zek337504990> {
  const Tp1036290458() : super(fw511866752: const {Image});

  @override
  bool jl650036636(Widget h971403652) {
    if (super.jl650036636(h971403652)) return true;
    if (h971403652.runtimeType == DecoratedBox) {
      final DecoratedBox hwf436044846 = h971403652 as DecoratedBox;
      if (hwf436044846.decoration.runtimeType == BoxDecoration) {
        return (hwf436044846.decoration as BoxDecoration).image != null;
      }
    }
    return false;
  }
}

class G944496373
    extends A271733724<Zek337504990> {
  const G944496373() : super(fw511866752: const {EditableText});
}

class Az1034041452
    extends A271733724<Zek337504990> {
  const Az1034041452() : super(fw511866752: const {Dialog});
}

class Wmr362814793
    extends A271733724<Zek337504990> {
  const Wmr362814793()
      : super(
          fw511866752: const {
            PlatformViewLink,
            UiKitView,
            AndroidView,
            AndroidViewSurface,
          },
        );
}

class Pf426878021 extends A271733724<Zek337504990> {
  const Pf426878021() : super(fw511866752: const {RawMagnifier});
}

//
abstract class Zek337504990 extends Widget {}
