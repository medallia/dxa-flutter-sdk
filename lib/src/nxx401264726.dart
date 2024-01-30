import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/ie143256599.dart';
import 'package:webview_flutter/webview_flutter.dart';

abstract class Txg271732927<T> {
  final Set<Type> lyn511866083;

  const Txg271732927({required this.lyn511866083});

  bool jte252568288(Object un887422069) {
    assert(T != dynamic, '''
AutomaskWidgets must have a Widget family to check for subtypes,
if there is no family to check then use AutoMaskWidgetWithoutFamily''');
    return un887422069 is T;
  }

  @mustCallSuper
  bool k650036991(Widget e971404007) {
    return lyn511866083.contains(e971404007.runtimeType);
  }
}

class My889758296 extends Txg271732927 {
  const My889758296() : super(lyn511866083: const {});
  Set<Fye734481968> pn613593941() {
    final Set<Fye734481968> tvy604698698 = {};

    for (final ttm412699981 in AutoMaskingTypeEnum.values) {
      if (ttm412699981 == AutoMaskingTypeEnum.none) continue;
      if (ttm412699981 == AutoMaskingTypeEnum.all) continue;
      tvy604698698.add(Fye734481968(ieu897299804: ttm412699981));
    }
    return tvy604698698;
  }
}

class Je802339863 extends Txg271732927<I337504701> {
  Je802339863() : super(lyn511866083: {MaskWidget});
}

class Hvv70429100 extends Txg271732927<ButtonStyleButton> {
  const Hvv70429100()
      : super(
          lyn511866083: const {
            IconButton,
            BackButton,
            CloseButton,
            FloatingActionButton,
            CupertinoButton,
          },
        );
}

class E486714606 extends Txg271732927<I337504701> {
  const E486714606() : super(lyn511866083: const {Text, RichText});
}

class Wu315586718 extends Txg271732927<I337504701> {
  const Wu315586718() : super(lyn511866083: const {Icon});
}

class Gf1036290809
    extends Txg271732927<I337504701> {
  const Gf1036290809() : super(lyn511866083: const {Image});

  @override
  bool k650036991(Widget e971404007) {
    if (super.k650036991(e971404007)) return true;
    if (e971404007.runtimeType == DecoratedBox) {
      final DecoratedBox tn436045645 = e971404007 as DecoratedBox;
      if (tn436045645.decoration.runtimeType == BoxDecoration) {
        return (tn436045645.decoration as BoxDecoration).image != null;
      }
    }
    return false;
  }
}

class K944496022
    extends Txg271732927<I337504701> {
  const K944496022() : super(lyn511866083: const {EditableText});
}

class Tcn1034042127
    extends Txg271732927<I337504701> {
  const Tcn1034042127() : super(lyn511866083: const {Dialog});
}

class Xkr617737046
    extends Txg271732927<I337504701> {
  const Xkr617737046() : super(lyn511866083: const {WebView});
}

class Rz355513335 extends Txg271732927<I337504701> {
  const Rz355513335() : super(lyn511866083: const {});
}

//
abstract class I337504701 extends Widget {}
