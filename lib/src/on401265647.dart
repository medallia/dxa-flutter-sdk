import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/vz143257518.dart';
import 'package:webview_flutter/webview_flutter.dart';

abstract class Du271733510<T> {
  final Set<Type> pk511866714;

  const Du271733510({required this.pk511866714});

  bool yc252567897(Object o887422924) {
    assert(T != dynamic, '''
AutomaskWidgets must have a Widget family to check for subtypes,
if there is no family to check then use AutoMaskWidgetWithoutFamily''');
    return o887422924 is T;
  }

  @mustCallSuper
  bool p650036550(Widget i971403614) {
    return pk511866714.contains(i971403614.runtimeType);
  }
}

class M889758177 extends Du271733510 {
  const M889758177() : super(pk511866714: const {});
  Set<Ms734481801> cau613593324() {
    final Set<Ms734481801> ei604699635 = {};

    for (final element in AutoMaskingTypeEnum.values) {
      if (element == AutoMaskingTypeEnum.none) continue;
      if (element == AutoMaskingTypeEnum.all) continue;
      ei604699635.add(Ms734481801(tm897300197: element));
    }
    return ei604699635;
  }
}

class P802340782 extends Du271733510<Bwb337504772> {
  P802340782() : super(pk511866714: {MaskWidget});
}

class U70429205 extends Du271733510<ButtonStyleButton> {
  const U70429205()
      : super(
          pk511866714: const {
            IconButton,
            BackButton,
            CloseButton,
            FloatingActionButton,
            CupertinoButton,
          },
        );
}

class Bpb486715223 extends Du271733510<Bwb337504772> {
  const Bpb486715223() : super(pk511866714: const {Text, RichText});
}

class F315587367 extends Du271733510<Bwb337504772> {
  const F315587367() : super(pk511866714: const {Icon});
}

class Ilv1036290368
    extends Du271733510<Bwb337504772> {
  const Ilv1036290368() : super(pk511866714: const {Image});

  @override
  bool p650036550(Widget i971403614) {
    if (super.p650036550(i971403614)) return true;
    if (i971403614.runtimeType == DecoratedBox) {
      final DecoratedBox tfh436045044 = i971403614 as DecoratedBox;
      if (tfh436045044.decoration.runtimeType == BoxDecoration) {
        return (tfh436045044.decoration as BoxDecoration).image != null;
      }
    }
    return false;
  }
}

class Pow944496175
    extends Du271733510<Bwb337504772> {
  const Pow944496175() : super(pk511866714: const {EditableText});
}

class Wqt1034041526
    extends Du271733510<Bwb337504772> {
  const Wqt1034041526() : super(pk511866714: const {Dialog});
}

class Hmv617736431
    extends Du271733510<Bwb337504772> {
  const Hmv617736431() : super(pk511866714: const {WebView});
}

class F355512398 extends Du271733510<Bwb337504772> {
  const F355512398() : super(pk511866714: const {});
}

//
abstract class Bwb337504772 extends Widget {}
