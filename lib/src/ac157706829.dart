import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/gss685171990.dart';

abstract class Uw271733754<T> {
  final Set<Type> w511866790;

  const Uw271733754({required this.w511866790});

  bool cn252567973(Object i887422768) {
    assert(T != dynamic, '''
AutomaskWidgets must have a Widget family to check for subtypes,
if there is no family to check then use AutoMaskWidgetWithoutFamily''');
    return i887422768 is T;
  }

  @mustCallSuper
  bool c650036666(Widget tra971403682) {
    return w511866790.contains(tra971403682.runtimeType);
  }
}

class Qmj889757981 extends Uw271733754 {
  const Qmj889757981() : super(w511866790: const {});
  Set<Hgy734481781> tf613593104() {
    final Set<Hgy734481781> ets604699407 = {};

    for (final bq412700168 in AutoMaskingTypeEnum.values) {
      if (bq412700168 == AutoMaskingTypeEnum.all) continue;
      ets604699407.add(Hgy734481781(l897299993: bq412700168));
    }
    return ets604699407;
  }
}

//
class Dg832750722 extends Uw271733754<L337505016> {
  Dg832750722()
      : super(
          w511866790: {
            MaskWidget,
          },
        );
}

class Ui70429417 extends Uw271733754<ButtonStyleButton> {
  const Ui70429417()
      : super(
          w511866790: const {
            IconButton,
            BackButton,
            CloseButton,
            FloatingActionButton,
            CupertinoButton,
          },
        );
}

class Uer486715307 extends Uw271733754<L337505016> {
  const Uer486715307() : super(w511866790: const {Text, RichText});
}

class Z315587547 extends Uw271733754<L337505016> {
  const Z315587547() : super(w511866790: const {Icon});
}

class Zoh1036290492
    extends Uw271733754<L337505016> {
  const Zoh1036290492() : super(w511866790: const {Image});

  @override
  bool c650036666(Widget tra971403682) {
    if (super.c650036666(tra971403682)) return true;
    if (tra971403682.runtimeType == DecoratedBox) {
      final DecoratedBox e436044808 = tra971403682 as DecoratedBox;
      if (e436044808.decoration.runtimeType == BoxDecoration) {
        return (e436044808.decoration as BoxDecoration).image != null;
      }
    }
    return false;
  }
}

class Gsp944496339
    extends Uw271733754<L337505016> {
  const Gsp944496339() : super(w511866790: const {EditableText});
}

class T1034041418
    extends Uw271733754<L337505016> {
  const T1034041418() : super(w511866790: const {Dialog});
}

class Waj362814831
    extends Uw271733754<L337505016> {
  const Waj362814831()
      : super(
          w511866790: const {
            PlatformViewLink,
            UiKitView,
            AndroidView,
            AndroidViewSurface,
          },
        );
}

class Pp426878051 extends Uw271733754<L337505016> {
  const Pp426878051() : super(w511866790: const {RawMagnifier});
}

//
abstract class L337505016 extends Widget {}
