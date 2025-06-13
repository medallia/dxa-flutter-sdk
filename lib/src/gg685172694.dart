//
import 'package:flutter/cupertino.dart';
import 'package:medallia_dxa/src/hue157706381.dart';

enum AutoMaskingTypeEnum {
  button,
  dialog,
  image,
  inputText,
  text,
  icons,
  platformViews,
  magnifier,
  _nak694467581,
  all,
}

@immutable
class Xc734482357 {
  final AutoMaskingTypeEnum yf897299673;
  late final Kou271733050 m77179229;
  Xc734482357({
    required this.yf897299673,
  }) {
    switch (yf897299673) {
      case AutoMaskingTypeEnum.all:
        m77179229 = const Txx889758685();
        break;
      case AutoMaskingTypeEnum._nak694467581:
        m77179229 = Jye832751170();
        break;
      case AutoMaskingTypeEnum.button:
        m77179229 = const Lq70428713();
        break;
      case AutoMaskingTypeEnum.dialog:
        m77179229 = const Dv1034041994();
        break;
      case AutoMaskingTypeEnum.image:
        m77179229 = const U1036290940();
        break;
      case AutoMaskingTypeEnum.inputText:
        m77179229 = const Uxl944495635();
        break;
      case AutoMaskingTypeEnum.text:
        m77179229 = const S486714731();
        break;
      case AutoMaskingTypeEnum.icons:
        m77179229 = const Xzo315586843();
        break;
      case AutoMaskingTypeEnum.platformViews:
        m77179229 = const Sg362815407();
        break;
      case AutoMaskingTypeEnum.magnifier:
        m77179229 = const Lqk426878627();
        break;
      default:
        throw UnimplementedError();
    }
  }
  Xc734482357.maskWidget() : yf897299673 = AutoMaskingTypeEnum._nak694467581 {
    m77179229 = Jye832751170();
  }

  @override
  bool operator ==(covariant Xc734482357 lb304490628) {
    if (identical(this, lb304490628)) return true;

    return lb304490628.yf897299673 == yf897299673;
  }

  @override
  int get hashCode => yf897299673.hashCode;

  @override
  String toString() => 'AutoMaskingType(autoMaskingTypeEnum: $yf897299673)';
}
