import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/gg685172694.dart';

abstract class Kou271733050<T> {
  final Set<Type> nyq511866214;

  const Kou271733050({required this.nyq511866214});

  bool fkf252568421(Object yy887422448) {
    assert(T != dynamic, '''
AutomaskWidgets must have a Widget family to check for subtypes,
if there is no family to check then use AutoMaskWidgetWithoutFamily''');
    return yy887422448 is T;
  }

  @mustCallSuper
  bool w650037114(Widget kb971404130) {
    return nyq511866214.contains(kb971404130.runtimeType);
  }
}

class Txx889758685 extends Kou271733050 {
  const Txx889758685() : super(nyq511866214: const {});
  Set<Xc734482357> f613593808() {
    final Set<Xc734482357> d604699087 = {};

    for (final m412699848 in AutoMaskingTypeEnum.values) {
      if (m412699848 == AutoMaskingTypeEnum.all) continue;
      d604699087.add(Xc734482357(yf897299673: m412699848));
    }
    return d604699087;
  }
}

//
class Jye832751170 extends Kou271733050<Elj337504312> {
  Jye832751170()
      : super(
          nyq511866214: {
            MaskWidget,
          },
        );
}

class Lq70428713 extends Kou271733050<ButtonStyleButton> {
  const Lq70428713()
      : super(
          nyq511866214: const {
            IconButton,
            BackButton,
            CloseButton,
            FloatingActionButton,
            CupertinoButton,
          },
        );
}

class S486714731 extends Kou271733050<Elj337504312> {
  const S486714731() : super(nyq511866214: const {Text, RichText});
}

class Xzo315586843 extends Kou271733050<Elj337504312> {
  const Xzo315586843() : super(nyq511866214: const {Icon});
}

class U1036290940
    extends Kou271733050<Elj337504312> {
  const U1036290940() : super(nyq511866214: const {Image});

  @override
  bool w650037114(Widget kb971404130) {
    if (super.w650037114(kb971404130)) return true;
    if (kb971404130.runtimeType == DecoratedBox) {
      final DecoratedBox tfm436045512 = kb971404130 as DecoratedBox;
      if (tfm436045512.decoration.runtimeType == BoxDecoration) {
        return (tfm436045512.decoration as BoxDecoration).image != null;
      }
    }
    return false;
  }
}

class Uxl944495635
    extends Kou271733050<Elj337504312> {
  const Uxl944495635() : super(nyq511866214: const {EditableText});
}

class Dv1034041994
    extends Kou271733050<Elj337504312> {
  const Dv1034041994() : super(nyq511866214: const {Dialog});
}

class Sg362815407
    extends Kou271733050<Elj337504312> {
  const Sg362815407()
      : super(
          nyq511866214: const {
            PlatformViewLink,
            UiKitView,
            AndroidView,
            AndroidViewSurface,
          },
        );
}

class Lqk426878627 extends Kou271733050<Elj337504312> {
  const Lqk426878627() : super(nyq511866214: const {RawMagnifier});
}

//
abstract class Elj337504312 extends Widget {}
