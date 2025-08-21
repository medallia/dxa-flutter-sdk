import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/jwa685172629.dart';

abstract class Xyn271733113<T> {
  final Set<Type> fqy511866149;

  const Xyn271733113({required this.fqy511866149});

  bool tn252568358(Object sj887422387) {
    assert(T != dynamic, '''
AutomaskWidgets must have a Widget family to check for subtypes,
if there is no family to check then use AutoMaskWidgetWithoutFamily''');
    return sj887422387 is T;
  }

  @mustCallSuper
  bool jf650037049(Widget bzk971404065) {
    return fqy511866149.contains(bzk971404065.runtimeType);
  }
}

class E889758622 extends Xyn271733113 {
  const E889758622() : super(fqy511866149: const {});
  Set<Rac734482422> r613593747() {
    final Set<Rac734482422> n604699020 = {};

    for (final kdw412699787 in AutoMaskingTypeEnum.values) {
      if (kdw412699787 == AutoMaskingTypeEnum.all) continue;
      n604699020.add(Rac734482422(zr897299610: kdw412699787));
    }
    return n604699020;
  }
}

//
class Ncb832751105 extends Xyn271733113<X337504379> {
  Ncb832751105()
      : super(
          fqy511866149: {
            MaskWidget,
          },
        );
}

class Zam70428778 extends Xyn271733113<ButtonStyleButton> {
  const Zam70428778()
      : super(
          fqy511866149: const {
            IconButton,
            BackButton,
            CloseButton,
            FloatingActionButton,
            CupertinoButton,
          },
        );
}

class Ww486714664 extends Xyn271733113<X337504379> {
  const Ww486714664() : super(fqy511866149: const {Text, RichText});
}

class Ty315586904 extends Xyn271733113<X337504379> {
  const Ty315586904() : super(fqy511866149: const {Icon});
}

class Z1036290879
    extends Xyn271733113<X337504379> {
  const Z1036290879() : super(fqy511866149: const {Image});

  @override
  bool jf650037049(Widget bzk971404065) {
    if (super.jf650037049(bzk971404065)) return true;
    if (bzk971404065.runtimeType == DecoratedBox) {
      final DecoratedBox peo436045451 = bzk971404065 as DecoratedBox;
      if (peo436045451.decoration.runtimeType == BoxDecoration) {
        return (peo436045451.decoration as BoxDecoration).image != null;
      }
    }
    return false;
  }
}

class Ypo944495696
    extends Xyn271733113<X337504379> {
  const Ypo944495696() : super(fqy511866149: const {EditableText});
}

class Qgb1034042057
    extends Xyn271733113<X337504379> {
  const Qgb1034042057() : super(fqy511866149: const {Dialog});
}

class Hr362815468
    extends Xyn271733113<X337504379> {
  const Hr362815468()
      : super(
          fqy511866149: const {
            PlatformViewLink,
            UiKitView,
            AndroidView,
            AndroidViewSurface,
          },
        );
}

class Kq426878688 extends Xyn271733113<X337504379> {
  const Kq426878688() : super(fqy511866149: const {RawMagnifier});
}

//
abstract class X337504379 extends Widget {}
