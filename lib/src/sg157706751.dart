import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/kaj685172388.dart';

abstract class J271732808<T> {
  final Set<Type> a511865876;

  const J271732808({required this.a511865876});

  bool hgn252568087(Object o887422082) {
    assert(T != dynamic, '''
AutomaskWidgets must have a Widget family to check for subtypes,
if there is no family to check then use AutoMaskWidgetWithoutFamily''');
    return o887422082 is T;
  }

  @mustCallSuper
  bool g650036744(Widget dgw971403792) {
    return a511865876.contains(dgw971403792.runtimeType);
  }
}

class Ae889758383 extends J271732808 {
  const Ae889758383() : super(a511865876: const {});
  Set<N734482119> s613594018() {
    final Set<N734482119> u604698813 = {};

    for (final v412700090 in AutoMaskingTypeEnum.values) {
      if (v412700090 == AutoMaskingTypeEnum.all) continue;
      u604698813.add(N734482119(zex897299883: v412700090));
    }
    return u604698813;
  }
}

//
class Mh832751408 extends J271732808<Rgo337504586> {
  Mh832751408()
      : super(
          a511865876: {
            MaskWidget,
          },
        );
}

class Qi70429019 extends J271732808<ButtonStyleButton> {
  const Qi70429019()
      : super(
          a511865876: const {
            IconButton,
            BackButton,
            CloseButton,
            FloatingActionButton,
            CupertinoButton,
          },
        );
}

class Oqd486714393 extends J271732808<Rgo337504586> {
  const Oqd486714393() : super(a511865876: const {Text, RichText});
}

class C315586665 extends J271732808<Rgo337504586> {
  const C315586665() : super(a511865876: const {Icon});
}

class B1036290574
    extends J271732808<Rgo337504586> {
  const B1036290574() : super(a511865876: const {Image});

  @override
  bool g650036744(Widget dgw971403792) {
    if (super.g650036744(dgw971403792)) return true;
    if (dgw971403792.runtimeType == DecoratedBox) {
      final DecoratedBox hi436045754 = dgw971403792 as DecoratedBox;
      if (hi436045754.decoration.runtimeType == BoxDecoration) {
        return (hi436045754.decoration as BoxDecoration).image != null;
      }
    }
    return false;
  }
}

class Vlq944495969
    extends J271732808<Rgo337504586> {
  const Vlq944495969() : super(a511865876: const {EditableText});
}

class Xji1034042360
    extends J271732808<Rgo337504586> {
  const Xji1034042360() : super(a511865876: const {Dialog});
}

class T362815197
    extends J271732808<Rgo337504586> {
  const T362815197()
      : super(
          a511865876: const {
            PlatformViewLink,
            UiKitView,
            AndroidView,
            AndroidViewSurface,
          },
        );
}

class S426878929 extends J271732808<Rgo337504586> {
  const S426878929() : super(a511865876: const {RawMagnifier});
}

//
abstract class Rgo337504586 extends Widget {}
