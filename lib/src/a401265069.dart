import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/imr143257068.dart';
import 'package:webview_flutter/webview_flutter.dart';

abstract class Qs271733060<T> {
  final Set<Type> e511866136;

  const Qs271733060({required this.e511866136});

  bool pjp252568347(Object f887422350) {
    assert(T != dynamic, '''
AutomaskWidgets must have a Widget family to check for subtypes,
if there is no family to check then use AutoMaskWidgetWithoutFamily''');
    return f887422350 is T;
  }

  @mustCallSuper
  bool zwp650036996(Widget yk971404060) {
    return e511866136.contains(yk971404060.runtimeType);
  }
}

class B889758627 extends Qs271733060 {
  const B889758627() : super(e511866136: const {});
  Set<Sqy734482379> dl613593774() {
    final Set<Sqy734482379> j604699057 = {};

    for (final yte412699830 in AutoMaskingTypeEnum.values) {
      if (yte412699830 == AutoMaskingTypeEnum.none) continue;
      if (yte412699830 == AutoMaskingTypeEnum.all) continue;
      j604699057.add(Sqy734482379(vks897299623: yte412699830));
    }
    return j604699057;
  }
}

class L802340332 extends Qs271733060<Apr337504326> {
  L802340332() : super(e511866136: {MaskWidget});
}

class Yo70428759 extends Qs271733060<ButtonStyleButton> {
  const Yo70428759()
      : super(
          e511866136: const {
            IconButton,
            BackButton,
            CloseButton,
            FloatingActionButton,
            CupertinoButton,
          },
        );
}

class Mst486714645 extends Qs271733060<Apr337504326> {
  const Mst486714645() : super(e511866136: const {Text, RichText});
}

class J315586917 extends Qs271733060<Apr337504326> {
  const J315586917() : super(e511866136: const {Icon});
}

class N1036290818
    extends Qs271733060<Apr337504326> {
  const N1036290818() : super(e511866136: const {Image});

  @override
  bool zwp650036996(Widget yk971404060) {
    if (super.zwp650036996(yk971404060)) return true;
    if (yk971404060.runtimeType == DecoratedBox) {
      final DecoratedBox lg436045494 = yk971404060 as DecoratedBox;
      if (lg436045494.decoration.runtimeType == BoxDecoration) {
        return (lg436045494.decoration as BoxDecoration).image != null;
      }
    }
    return false;
  }
}

class Zn944495725
    extends Qs271733060<Apr337504326> {
  const Zn944495725() : super(e511866136: const {EditableText});
}

class P1034042100
    extends Qs271733060<Apr337504326> {
  const P1034042100() : super(e511866136: const {Dialog});
}

class Vv617736877
    extends Qs271733060<Apr337504326> {
  const Vv617736877() : super(e511866136: const {WebView});
}

class Iz355512844 extends Qs271733060<Apr337504326> {
  const Iz355512844() : super(e511866136: const {});
}

//
abstract class Apr337504326 extends Widget {}
