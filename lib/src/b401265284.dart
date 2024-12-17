import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/r143257285.dart';

abstract class V271733357<T> {
  final Set<Type> y511866417;

  const V271733357({required this.y511866417});

  bool pl252567602(Object pu887422631) {
    assert(T != dynamic, '''
AutomaskWidgets must have a Widget family to check for subtypes,
if there is no family to check then use AutoMaskWidgetWithoutFamily''');
    return pu887422631 is T;
  }

  @mustCallSuper
  bool ra650036269(Widget zsy971403317) {
    return y511866417.contains(zsy971403317.runtimeType);
  }
}

class Fx889757834 extends V271733357 {
  const Fx889757834() : super(y511866417: const {});
  Set<Ntc734481634> lbs613593479() {
    final Set<Ntc734481634> kb604699288 = {};

    for (final aty412700575 in AutoMaskingTypeEnum.values) {
      if (aty412700575 == AutoMaskingTypeEnum.all) continue;
      kb604699288.add(Ntc734481634(fpi897300366: aty412700575));
    }
    return kb604699288;
  }
}

//
class Cnm832750869 extends V271733357<Rbr337505135> {
  Cnm832750869()
      : super(
          y511866417: {
            MaskWidget,
          },
        );
}

class Cef70429566 extends V271733357<ButtonStyleButton> {
  const Cef70429566()
      : super(
          y511866417: const {
            IconButton,
            BackButton,
            CloseButton,
            FloatingActionButton,
            CupertinoButton,
          },
        );
}

class G486714940 extends V271733357<Rbr337505135> {
  const G486714940() : super(y511866417: const {Text, RichText});
}

class Ksm315587148 extends V271733357<Rbr337505135> {
  const Ksm315587148() : super(y511866417: const {Icon});
}

class Voe1036290091
    extends V271733357<Rbr337505135> {
  const Voe1036290091() : super(y511866417: const {Image});

  @override
  bool ra650036269(Widget zsy971403317) {
    if (super.ra650036269(zsy971403317)) return true;
    if (zsy971403317.runtimeType == DecoratedBox) {
      final DecoratedBox z436045215 = zsy971403317 as DecoratedBox;
      if (z436045215.decoration.runtimeType == BoxDecoration) {
        return (z436045215.decoration as BoxDecoration).image != null;
      }
    }
    return false;
  }
}

class Aso944496452
    extends V271733357<Rbr337505135> {
  const Aso944496452() : super(y511866417: const {EditableText});
}

class Sqe1034041821
    extends V271733357<Rbr337505135> {
  const Sqe1034041821() : super(y511866417: const {Dialog});
}

class L362814712
    extends V271733357<Rbr337505135> {
  const L362814712()
      : super(
          y511866417: const {
            PlatformViewLink,
            UiKitView,
            AndroidView,
            AndroidViewSurface,
          },
        );
}

class E426878452 extends V271733357<Rbr337505135> {
  const E426878452() : super(y511866417: const {RawMagnifier});
}

//
abstract class Rbr337505135 extends Widget {}
