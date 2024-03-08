//
import 'package:flutter/cupertino.dart';
import 'package:medallia_dxa/src/xa401264735.dart';

enum AutoMaskingTypeEnum {
  button,
  dialog,
  image,
  inputText,
  text,
  icons,
  webView,
  _t694467185,
  all,
  none
}

@immutable
class C734481977 {
  final AutoMaskingTypeEnum er897299797;
  late final C271732918 k77179089;
  C734481977({
    required this.er897299797,
  }) {
    switch (er897299797) {
      case AutoMaskingTypeEnum.all:
        k77179089 = const I889758289();
        break;
      case AutoMaskingTypeEnum.none:
        k77179089 = const Amj355513342();
        break;
      case AutoMaskingTypeEnum._t694467185:
        k77179089 = Rw802339870();
        break;
      case AutoMaskingTypeEnum.button:
        k77179089 = const Gj70429093();
        break;
      case AutoMaskingTypeEnum.dialog:
        k77179089 = const D1034042118();
        break;
      case AutoMaskingTypeEnum.image:
        k77179089 = const Zbs1036290800();
        break;
      case AutoMaskingTypeEnum.inputText:
        k77179089 = const Di944496031();
        break;
      case AutoMaskingTypeEnum.text:
        k77179089 = const L486714599();
        break;
      case AutoMaskingTypeEnum.icons:
        k77179089 = const Si315586711();
        break;
      case AutoMaskingTypeEnum.webView:
        k77179089 = const Sa617737055();
        break;
      default:
        throw UnimplementedError();
    }
  }
  C734481977.maskWidget() : er897299797 = AutoMaskingTypeEnum._t694467185 {
    k77179089 = Rw802339870();
  }

  @override
  bool operator ==(covariant C734481977 tt304490760) {
    if (identical(this, tt304490760)) return true;

    return tt304490760.er897299797 == er897299797;
  }

  @override
  int get hashCode => er897299797.hashCode;

  @override
  String toString() => 'AutoMaskingType(autoMaskingTypeEnum: $er897299797)';
}
