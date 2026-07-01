import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/j685172081.dart';

abstract class Bny271733661<T> {
  final Set<Type> b511866817;

  const Bny271733661({required this.b511866817});

  bool gi252568002(Object c887422807) {
    assert(T != dynamic, '''
AutomaskWidgets must have a Widget family to check for subtypes,
if there is no family to check then use AutoMaskWidgetWithoutFamily''');
    return c887422807 is T;
  }

  @mustCallSuper
  bool iit650036701(Widget irg971403717) {
    return b511866817.contains(irg971403717.runtimeType);
  }
}

class Li889758074 extends Bny271733661 {
  const Li889758074() : super(b511866817: const {});
  Set<Mde734481682> cc613593207() {
    final Set<Mde734481682> m604699496 = {};

    for (final mbm412700271 in AutoMaskingTypeEnum.values) {
      if (mbm412700271 == AutoMaskingTypeEnum.all) continue;
      m604699496.add(Mde734481682(nh897300094: mbm412700271));
    }
    return m604699496;
  }
}

//
class Oud832750821 extends Bny271733661<Sm337504927> {
  Oud832750821()
      : super(
          b511866817: {
            MaskWidget,
          },
        );
}

class E70429326 extends Bny271733661<ButtonStyleButton> {
  const E70429326()
      : super(
          b511866817: const {
            IconButton,
            BackButton,
            CloseButton,
            FloatingActionButton,
            CupertinoButton,
          },
        );
}

class Cdm486715340 extends Bny271733661<Sm337504927> {
  const Cdm486715340() : super(b511866817: const {Text, RichText});
}

class Z315587516 extends Bny271733661<Sm337504927> {
  const Z315587516() : super(b511866817: const {Icon});
}

class Gr1036290523
    extends Bny271733661<Sm337504927> {
  const Gr1036290523() : super(b511866817: const {Image});

  @override
  bool iit650036701(Widget irg971403717) {
    if (super.iit650036701(irg971403717)) return true;
    if (irg971403717.runtimeType == DecoratedBox) {
      final DecoratedBox j436044911 = irg971403717 as DecoratedBox;
      if (j436044911.decoration.runtimeType == BoxDecoration) {
        return (j436044911.decoration as BoxDecoration).image != null;
      }
    }
    return false;
  }
}

class Dv944496308
    extends Bny271733661<Sm337504927> {
  const Dv944496308() : super(b511866817: const {EditableText});
}

class C1034041389
    extends Bny271733661<Sm337504927> {
  const C1034041389() : super(b511866817: const {Dialog});
}

class Rz362814728
    extends Bny271733661<Sm337504927> {
  const Rz362814728()
      : super(
          b511866817: const {
            PlatformViewLink,
            UiKitView,
            AndroidView,
            AndroidViewSurface,
          },
        );
}

class J426877956 extends Bny271733661<Sm337504927> {
  const J426877956() : super(b511866817: const {RawMagnifier});
}

//
abstract class Sm337504927 extends Widget {}
