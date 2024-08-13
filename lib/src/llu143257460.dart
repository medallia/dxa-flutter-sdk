//
import 'package:flutter/cupertino.dart';
import 'package:medallia_dxa/src/hto401265461.dart';

enum AutoMaskingTypeEnum {
  button,
  dialog,
  image,
  inputText,
  text,
  icons,
  platformViews,
  magnifier,
  _nc694466843,
  all,
}

@immutable
class Rnt734481747 {
  final AutoMaskingTypeEnum ufi897300031;
  late final A271733724 ma77179835;
  Rnt734481747({
    required this.ufi897300031,
  }) {
    switch (ufi897300031) {
      case AutoMaskingTypeEnum.all:
        ma77179835 = const Uws889758011();
        break;
      case AutoMaskingTypeEnum._nc694466843:
        ma77179835 = Xf832750756();
        break;
      case AutoMaskingTypeEnum.button:
        ma77179835 = const X70429391();
        break;
      case AutoMaskingTypeEnum.dialog:
        ma77179835 = const Az1034041452();
        break;
      case AutoMaskingTypeEnum.image:
        ma77179835 = const Tp1036290458();
        break;
      case AutoMaskingTypeEnum.inputText:
        ma77179835 = const G944496373();
        break;
      case AutoMaskingTypeEnum.text:
        ma77179835 = const X486715277();
        break;
      case AutoMaskingTypeEnum.icons:
        ma77179835 = const Hf315587581();
        break;
      case AutoMaskingTypeEnum.platformViews:
        ma77179835 = const Wmr362814793();
        break;
      case AutoMaskingTypeEnum.magnifier:
        ma77179835 = const Pf426878021();
        break;
      default:
        throw UnimplementedError();
    }
  }
  Rnt734481747.maskWidget() : ufi897300031 = AutoMaskingTypeEnum._nc694466843 {
    ma77179835 = Xf832750756();
  }

  @override
  bool operator ==(covariant Rnt734481747 uy304491106) {
    if (identical(this, uy304491106)) return true;

    return uy304491106.ufi897300031 == ufi897300031;
  }

  @override
  int get hashCode => ufi897300031.hashCode;

  @override
  String toString() => 'AutoMaskingType(autoMaskingTypeEnum: $ufi897300031)';
}
