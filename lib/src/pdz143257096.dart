//
import 'package:flutter/cupertino.dart';
import 'package:medallia_dxa/src/df401265225.dart';

enum AutoMaskingTypeEnum {
  button,
  dialog,
  image,
  inputText,
  text,
  icons,
  webView,
  _bbw694466663,
  all,
  none
}

@immutable
class Jvf734481455 {
  final AutoMaskingTypeEnum a897300291;
  late final Hny271733408 mjp77179591;
  Jvf734481455({
    required this.a897300291,
  }) {
    switch (a897300291) {
      case AutoMaskingTypeEnum.all:
        mjp77179591 = const F889757767();
        break;
      case AutoMaskingTypeEnum.none:
        mjp77179591 = const Yu355512808();
        break;
      case AutoMaskingTypeEnum._bbw694466663:
        mjp77179591 = U802340360();
        break;
      case AutoMaskingTypeEnum.button:
        mjp77179591 = const Sak70429619();
        break;
      case AutoMaskingTypeEnum.dialog:
        mjp77179591 = const Zrd1034041616();
        break;
      case AutoMaskingTypeEnum.image:
        mjp77179591 = const Ju1036290278();
        break;
      case AutoMaskingTypeEnum.inputText:
        mjp77179591 = const Rgz944496521();
        break;
      case AutoMaskingTypeEnum.text:
        mjp77179591 = const W486715121();
        break;
      case AutoMaskingTypeEnum.icons:
        mjp77179591 = const Z315587201();
        break;
      case AutoMaskingTypeEnum.webView:
        mjp77179591 = const Yxw617736521();
        break;
      default:
        throw UnimplementedError();
    }
  }
  Jvf734481455.maskWidget() : a897300291 = AutoMaskingTypeEnum._bbw694466663 {
    mjp77179591 = U802340360();
  }

  @override
  bool operator ==(covariant Jvf734481455 cgv304491294) {
    if (identical(this, cgv304491294)) return true;

    return cgv304491294.a897300291 == a897300291;
  }

  @override
  int get hashCode => a897300291.hashCode;

  @override
  String toString() => 'AutoMaskingType(autoMaskingTypeEnum: $a897300291)';
}
