import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/ua143257021.dart';

abstract class Fx271733013<T> {
  final Set<Type> ttu511866185;

  const Fx271733013({required this.ttu511866185});

  bool aw252568394(Object fc887422431) {
    assert(T != dynamic, '''
AutomaskWidgets must have a Widget family to check for subtypes,
if there is no family to check then use AutoMaskWidgetWithoutFamily''');
    return fc887422431 is T;
  }

  @mustCallSuper
  bool zf650037077(Widget ic971404109) {
    return ttu511866185.contains(ic971404109.runtimeType);
  }
}

class Ad889758706 extends Fx271733013 {
  const Ad889758706() : super(ttu511866185: const {});
  Set<Azj734482330> ybk613593855() {
    final Set<Azj734482330> um604699104 = {};

    for (final uw412699879 in AutoMaskingTypeEnum.values) {
      if (uw412699879 == AutoMaskingTypeEnum.all) continue;
      um604699104.add(Azj734482330(h897299702: uw412699879));
    }
    return um604699104;
  }
}

//
class U832751213 extends Fx271733013<V337504279> {
  U832751213()
      : super(
          ttu511866185: {
            MaskWidget,
          },
        );
}

class E70428678 extends Fx271733013<ButtonStyleButton> {
  const E70428678()
      : super(
          ttu511866185: const {
            IconButton,
            BackButton,
            CloseButton,
            FloatingActionButton,
            CupertinoButton,
          },
        );
}

class Z486714692 extends Fx271733013<V337504279> {
  const Z486714692() : super(ttu511866185: const {Text, RichText});
}

class D315586868 extends Fx271733013<V337504279> {
  const D315586868() : super(ttu511866185: const {Icon});
}

class S1036290899
    extends Fx271733013<V337504279> {
  const S1036290899() : super(ttu511866185: const {Image});

  @override
  bool zf650037077(Widget ic971404109) {
    if (super.zf650037077(ic971404109)) return true;
    if (ic971404109.runtimeType == DecoratedBox) {
      final DecoratedBox q436045543 = ic971404109 as DecoratedBox;
      if (q436045543.decoration.runtimeType == BoxDecoration) {
        return (q436045543.decoration as BoxDecoration).image != null;
      }
    }
    return false;
  }
}

class Ocg944495676
    extends Fx271733013<V337504279> {
  const Ocg944495676() : super(ttu511866185: const {EditableText});
}

class If1034042021
    extends Fx271733013<V337504279> {
  const If1034042021() : super(ttu511866185: const {Dialog});
}

class X362815360
    extends Fx271733013<V337504279> {
  const X362815360()
      : super(
          ttu511866185: const {
            PlatformViewLink,
            UiKitView,
            AndroidView,
            AndroidViewSurface,
          },
        );
}

class Ea426878604 extends Fx271733013<V337504279> {
  const Ea426878604() : super(ttu511866185: const {RawMagnifier});
}

//
abstract class V337504279 extends Widget {}
