import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/pdz143257096.dart';
import 'package:webview_flutter/webview_flutter.dart';

abstract class Hny271733408<T> {
  final Set<Type> uig511866620;

  const Hny271733408({required this.uig511866620});

  bool qzp252567807(Object fpo887422570) {
    assert(T != dynamic, '''
AutomaskWidgets must have a Widget family to check for subtypes,
if there is no family to check then use AutoMaskWidgetWithoutFamily''');
    return fpo887422570 is T;
  }

  @mustCallSuper
  bool ind650036448(Widget d971403512) {
    return uig511866620.contains(d971403512.runtimeType);
  }
}

class F889757767 extends Hny271733408 {
  const F889757767() : super(uig511866620: const {});
  Set<Jvf734481455> p613593418() {
    final Set<Jvf734481455> sb604699221 = {};

    for (final element in AutoMaskingTypeEnum.values) {
      if (element == AutoMaskingTypeEnum.none) continue;
      if (element == AutoMaskingTypeEnum.all) continue;
      sb604699221.add(Jvf734481455(a897300291: element));
    }
    return sb604699221;
  }
}

class U802340360 extends Hny271733408<X337505186> {
  U802340360() : super(uig511866620: {MaskWidget});
}

class Sak70429619 extends Hny271733408<ButtonStyleButton> {
  const Sak70429619()
      : super(
          uig511866620: const {
            IconButton,
            BackButton,
            CloseButton,
            FloatingActionButton,
            CupertinoButton,
          },
        );
}

class W486715121 extends Hny271733408<X337505186> {
  const W486715121() : super(uig511866620: const {Text, RichText});
}

class Z315587201 extends Hny271733408<X337505186> {
  const Z315587201() : super(uig511866620: const {Icon});
}

class Ju1036290278
    extends Hny271733408<X337505186> {
  const Ju1036290278() : super(uig511866620: const {Image});

  @override
  bool ind650036448(Widget d971403512) {
    if (super.ind650036448(d971403512)) return true;
    if (d971403512.runtimeType == DecoratedBox) {
      final DecoratedBox kk436045138 = d971403512 as DecoratedBox;
      if (kk436045138.decoration.runtimeType == BoxDecoration) {
        return (kk436045138.decoration as BoxDecoration).image != null;
      }
    }
    return false;
  }
}

class Rgz944496521
    extends Hny271733408<X337505186> {
  const Rgz944496521() : super(uig511866620: const {EditableText});
}

class Zrd1034041616
    extends Hny271733408<X337505186> {
  const Zrd1034041616() : super(uig511866620: const {Dialog});
}

class Yxw617736521
    extends Hny271733408<X337505186> {
  const Yxw617736521() : super(uig511866620: const {WebView});
}

class Yu355512808 extends Hny271733408<X337505186> {
  const Yu355512808() : super(uig511866620: const {});
}

//
abstract class X337505186 extends Widget {}
