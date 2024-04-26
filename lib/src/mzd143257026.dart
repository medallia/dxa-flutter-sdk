//
import 'package:flutter/cupertino.dart';
import 'package:medallia_dxa/src/bg401265027.dart';

enum AutoMaskingTypeEnum {
  button,
  dialog,
  image,
  inputText,
  text,
  icons,
  webView,
  _q694467501,
  all,
  none
}

@immutable
class Vxc734482405 {
  final AutoMaskingTypeEnum ao897299593;
  late final Hl271733098 qw77179149;
  Vxc734482405({
    required this.ao897299593,
  }) {
    switch (ao897299593) {
      case AutoMaskingTypeEnum.all:
        qw77179149 = const Jg889758605();
        break;
      case AutoMaskingTypeEnum.none:
        qw77179149 = const Ic355512866();
        break;
      case AutoMaskingTypeEnum._q694467501:
        qw77179149 = S802340290();
        break;
      case AutoMaskingTypeEnum.button:
        qw77179149 = const Nxm70428793();
        break;
      case AutoMaskingTypeEnum.dialog:
        qw77179149 = const Hvm1034042074();
        break;
      case AutoMaskingTypeEnum.image:
        qw77179149 = const Z1036290860();
        break;
      case AutoMaskingTypeEnum.inputText:
        qw77179149 = const Xkb944495683();
        break;
      case AutoMaskingTypeEnum.text:
        qw77179149 = const Bb486714683();
        break;
      case AutoMaskingTypeEnum.icons:
        qw77179149 = const Jh315586891();
        break;
      case AutoMaskingTypeEnum.webView:
        qw77179149 = const Vw617736835();
        break;
      default:
        throw UnimplementedError();
    }
  }
  Vxc734482405.maskWidget() : ao897299593 = AutoMaskingTypeEnum._q694467501 {
    qw77179149 = S802340290();
  }

  @override
  bool operator ==(covariant Vxc734482405 b304490708) {
    if (identical(this, b304490708)) return true;

    return b304490708.ao897299593 == ao897299593;
  }

  @override
  int get hashCode => ao897299593.hashCode;

  @override
  String toString() => 'AutoMaskingType(autoMaskingTypeEnum: $ao897299593)';
}
