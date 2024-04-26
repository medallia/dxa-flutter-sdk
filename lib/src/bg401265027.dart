import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/mzd143257026.dart';
import 'package:webview_flutter/webview_flutter.dart';

abstract class Hl271733098<T> {
  final Set<Type> hcm511866166;

  const Hl271733098({required this.hcm511866166});

  bool kan252568373(Object cwi887422368) {
    assert(T != dynamic, '''
AutomaskWidgets must have a Widget family to check for subtypes,
if there is no family to check then use AutoMaskWidgetWithoutFamily''');
    return cwi887422368 is T;
  }

  @mustCallSuper
  bool ew650037034(Widget xeu971404082) {
    return hcm511866166.contains(xeu971404082.runtimeType);
  }
}

class Jg889758605 extends Hl271733098 {
  const Jg889758605() : super(hcm511866166: const {});
  Set<Vxc734482405> vew613593728() {
    final Set<Vxc734482405> t604699039 = {};

    for (final r412699800 in AutoMaskingTypeEnum.values) {
      if (r412699800 == AutoMaskingTypeEnum.none) continue;
      if (r412699800 == AutoMaskingTypeEnum.all) continue;
      t604699039.add(Vxc734482405(ao897299593: r412699800));
    }
    return t604699039;
  }
}

class S802340290 extends Hl271733098<Ymz337504360> {
  S802340290() : super(hcm511866166: {MaskWidget});
}

class Nxm70428793 extends Hl271733098<ButtonStyleButton> {
  const Nxm70428793()
      : super(
          hcm511866166: const {
            IconButton,
            BackButton,
            CloseButton,
            FloatingActionButton,
            CupertinoButton,
          },
        );
}

class Bb486714683 extends Hl271733098<Ymz337504360> {
  const Bb486714683() : super(hcm511866166: const {Text, RichText});
}

class Jh315586891 extends Hl271733098<Ymz337504360> {
  const Jh315586891() : super(hcm511866166: const {Icon});
}

class Z1036290860
    extends Hl271733098<Ymz337504360> {
  const Z1036290860() : super(hcm511866166: const {Image});

  @override
  bool ew650037034(Widget xeu971404082) {
    if (super.ew650037034(xeu971404082)) return true;
    if (xeu971404082.runtimeType == DecoratedBox) {
      final DecoratedBox rw436045464 = xeu971404082 as DecoratedBox;
      if (rw436045464.decoration.runtimeType == BoxDecoration) {
        return (rw436045464.decoration as BoxDecoration).image != null;
      }
    }
    return false;
  }
}

class Xkb944495683
    extends Hl271733098<Ymz337504360> {
  const Xkb944495683() : super(hcm511866166: const {EditableText});
}

class Hvm1034042074
    extends Hl271733098<Ymz337504360> {
  const Hvm1034042074() : super(hcm511866166: const {Dialog});
}

class Vw617736835
    extends Hl271733098<Ymz337504360> {
  const Vw617736835() : super(hcm511866166: const {WebView});
}

class Ic355512866 extends Hl271733098<Ymz337504360> {
  const Ic355512866() : super(hcm511866166: const {});
}

//
abstract class Ymz337504360 extends Widget {}
