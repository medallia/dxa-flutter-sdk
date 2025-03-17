import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/m143257511.dart';

abstract class Nt271733519<T> {
  final Set<Type> vxi511866707;

  const Nt271733519({required this.vxi511866707});

  bool x252567888(Object ksu887422917) {
    assert(T != dynamic, '''
AutomaskWidgets must have a Widget family to check for subtypes,
if there is no family to check then use AutoMaskWidgetWithoutFamily''');
    return ksu887422917 is T;
  }

  @mustCallSuper
  bool fgh650036559(Widget ojx971403607) {
    return vxi511866707.contains(ojx971403607.runtimeType);
  }
}

class Lmi889758184 extends Nt271733519 {
  const Lmi889758184() : super(vxi511866707: const {});
  Set<O734481792> yfo613593317() {
    final Set<O734481792> q604699642 = {};

    for (final w412700413 in AutoMaskingTypeEnum.values) {
      if (w412700413 == AutoMaskingTypeEnum.all) continue;
      q604699642.add(O734481792(pw897300204: w412700413));
    }
    return q604699642;
  }
}

//
class Db832750711 extends Nt271733519<Dk337504781> {
  Db832750711()
      : super(
          vxi511866707: {
            MaskWidget,
          },
        );
}

class Cdy70429212 extends Nt271733519<ButtonStyleButton> {
  const Cdy70429212()
      : super(
          vxi511866707: const {
            IconButton,
            BackButton,
            CloseButton,
            FloatingActionButton,
            CupertinoButton,
          },
        );
}

class Ktc486715230 extends Nt271733519<Dk337504781> {
  const Ktc486715230() : super(vxi511866707: const {Text, RichText});
}

class Yj315587374 extends Nt271733519<Dk337504781> {
  const Yj315587374() : super(vxi511866707: const {Icon});
}

class Ji1036290377
    extends Nt271733519<Dk337504781> {
  const Ji1036290377() : super(vxi511866707: const {Image});

  @override
  bool fgh650036559(Widget ojx971403607) {
    if (super.fgh650036559(ojx971403607)) return true;
    if (ojx971403607.runtimeType == DecoratedBox) {
      final DecoratedBox uqg436045053 = ojx971403607 as DecoratedBox;
      if (uqg436045053.decoration.runtimeType == BoxDecoration) {
        return (uqg436045053.decoration as BoxDecoration).image != null;
      }
    }
    return false;
  }
}

class Esz944496166
    extends Nt271733519<Dk337504781> {
  const Esz944496166() : super(vxi511866707: const {EditableText});
}

class Ntk1034041535
    extends Nt271733519<Dk337504781> {
  const Ntk1034041535() : super(vxi511866707: const {Dialog});
}

class Kmo362814874
    extends Nt271733519<Dk337504781> {
  const Kmo362814874()
      : super(
          vxi511866707: const {
            PlatformViewLink,
            UiKitView,
            AndroidView,
            AndroidViewSurface,
          },
        );
}

class W426878102 extends Nt271733519<Dk337504781> {
  const W426878102() : super(vxi511866707: const {RawMagnifier});
}

//
abstract class Dk337504781 extends Widget {}
