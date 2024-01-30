//
import 'package:flutter/cupertino.dart';
import 'package:medallia_dxa/src/nxx401264726.dart';

enum AutoMaskingTypeEnum {
  button,
  dialog,
  image,
  inputText,
  text,
  icons,
  webView,
  _ae694467192,
  all,
  none
}

@immutable
class Fye734481968 {
  final AutoMaskingTypeEnum ieu897299804;
  late final Txg271732927 xf77179096;
  Fye734481968({
    required this.ieu897299804,
  }) {
    switch (ieu897299804) {
      case AutoMaskingTypeEnum.all:
        xf77179096 = const My889758296();
        break;
      case AutoMaskingTypeEnum.none:
        xf77179096 = const Rz355513335();
        break;
      case AutoMaskingTypeEnum._ae694467192:
        xf77179096 = Je802339863();
        break;
      case AutoMaskingTypeEnum.button:
        xf77179096 = const Hvv70429100();
        break;
      case AutoMaskingTypeEnum.dialog:
        xf77179096 = const Tcn1034042127();
        break;
      case AutoMaskingTypeEnum.image:
        xf77179096 = const Gf1036290809();
        break;
      case AutoMaskingTypeEnum.inputText:
        xf77179096 = const K944496022();
        break;
      case AutoMaskingTypeEnum.text:
        xf77179096 = const E486714606();
        break;
      case AutoMaskingTypeEnum.icons:
        xf77179096 = const Wu315586718();
        break;
      case AutoMaskingTypeEnum.webView:
        xf77179096 = const Xkr617737046();
        break;
      default:
        throw UnimplementedError();
    }
  }
  Fye734481968.maskWidget() : ieu897299804 = AutoMaskingTypeEnum._ae694467192 {
    xf77179096 = Je802339863();
  }

  @override
  bool operator ==(covariant Fye734481968 n304490753) {
    if (identical(this, n304490753)) return true;

    return n304490753.ieu897299804 == ieu897299804;
  }

  @override
  int get hashCode => ieu897299804.hashCode;

  @override
  String toString() => 'AutoMaskingType(autoMaskingTypeEnum: $ieu897299804)';
}
