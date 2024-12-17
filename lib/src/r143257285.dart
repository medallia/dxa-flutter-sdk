//
import 'package:flutter/cupertino.dart';
import 'package:medallia_dxa/src/b401265284.dart';

enum AutoMaskingTypeEnum {
  button,
  dialog,
  image,
  inputText,
  text,
  icons,
  platformViews,
  magnifier,
  _iws694466730,
  all,
}

@immutable
class Ntc734481634 {
  final AutoMaskingTypeEnum fpi897300366;
  late final V271733357 r77179402;
  Ntc734481634({
    required this.fpi897300366,
  }) {
    switch (fpi897300366) {
      case AutoMaskingTypeEnum.all:
        r77179402 = const Fx889757834();
        break;
      case AutoMaskingTypeEnum._iws694466730:
        r77179402 = Cnm832750869();
        break;
      case AutoMaskingTypeEnum.button:
        r77179402 = const Cef70429566();
        break;
      case AutoMaskingTypeEnum.dialog:
        r77179402 = const Sqe1034041821();
        break;
      case AutoMaskingTypeEnum.image:
        r77179402 = const Voe1036290091();
        break;
      case AutoMaskingTypeEnum.inputText:
        r77179402 = const Aso944496452();
        break;
      case AutoMaskingTypeEnum.text:
        r77179402 = const G486714940();
        break;
      case AutoMaskingTypeEnum.icons:
        r77179402 = const Ksm315587148();
        break;
      case AutoMaskingTypeEnum.platformViews:
        r77179402 = const L362814712();
        break;
      case AutoMaskingTypeEnum.magnifier:
        r77179402 = const E426878452();
        break;
      default:
        throw UnimplementedError();
    }
  }
  Ntc734481634.maskWidget() : fpi897300366 = AutoMaskingTypeEnum._iws694466730 {
    r77179402 = Cnm832750869();
  }

  @override
  bool operator ==(covariant Ntc734481634 g304491475) {
    if (identical(this, g304491475)) return true;

    return g304491475.fpi897300366 == fpi897300366;
  }

  @override
  int get hashCode => fpi897300366.hashCode;

  @override
  String toString() => 'AutoMaskingType(autoMaskingTypeEnum: $fpi897300366)';
}
