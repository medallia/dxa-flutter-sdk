import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/s143257381.dart';
import 'package:webview_flutter/webview_flutter.dart';

abstract class Sqx271733645<T> {
  final Set<Type> ued511866833;

  const Sqx271733645({required this.ued511866833});

  bool aah252568018(Object l887422791) {
    assert(T != dynamic, '''
AutomaskWidgets must have a Widget family to check for subtypes,
if there is no family to check then use AutoMaskWidgetWithoutFamily''');
    return l887422791 is T;
  }

  @mustCallSuper
  bool uka650036685(Widget hfn971403733) {
    return ued511866833.contains(hfn971403733.runtimeType);
  }
}

class Nst889758058 extends Sqx271733645 {
  const Nst889758058() : super(ued511866833: const {});
  Set<Wy734481666> pfr613593191() {
    final Set<Wy734481666> c604699512 = {};

    for (final element in AutoMaskingTypeEnum.values) {
      if (element == AutoMaskingTypeEnum.none) continue;
      if (element == AutoMaskingTypeEnum.all) continue;
      c604699512.add(Wy734481666(wvq897300078: element));
    }
    return c604699512;
  }
}

class Lj802340645 extends Sqx271733645<Pv337504911> {
  Lj802340645() : super(ued511866833: {MaskWidget});
}

class O70429342 extends Sqx271733645<ButtonStyleButton> {
  const O70429342()
      : super(
          ued511866833: const {
            IconButton,
            BackButton,
            CloseButton,
            FloatingActionButton,
            CupertinoButton,
          },
        );
}

class O486715356 extends Sqx271733645<Pv337504911> {
  const O486715356() : super(ued511866833: const {Text, RichText});
}

class Qm315587500 extends Sqx271733645<Pv337504911> {
  const Qm315587500() : super(ued511866833: const {Icon});
}

class Zvd1036290507
    extends Sqx271733645<Pv337504911> {
  const Zvd1036290507() : super(ued511866833: const {Image});

  @override
  bool uka650036685(Widget hfn971403733) {
    if (super.uka650036685(hfn971403733)) return true;
    if (hfn971403733.runtimeType == DecoratedBox) {
      final DecoratedBox mz436044927 = hfn971403733 as DecoratedBox;
      if (mz436044927.decoration.runtimeType == BoxDecoration) {
        return (mz436044927.decoration as BoxDecoration).image != null;
      }
    }
    return false;
  }
}

class B944496292
    extends Sqx271733645<Pv337504911> {
  const B944496292() : super(ued511866833: const {EditableText});
}

class V1034041405
    extends Sqx271733645<Pv337504911> {
  const V1034041405() : super(ued511866833: const {Dialog});
}

class D617736292
    extends Sqx271733645<Pv337504911> {
  const D617736292() : super(ued511866833: const {WebView});
}

class V355512517 extends Sqx271733645<Pv337504911> {
  const V355512517() : super(ued511866833: const {});
}

//
abstract class Pv337504911 extends Widget {}
