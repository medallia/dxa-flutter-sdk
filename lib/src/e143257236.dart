//
import 'package:flutter/cupertino.dart';
import 'package:medallia_dxa/src/y401265365.dart';

enum AutoMaskingTypeEnum {
  button,
  dialog,
  image,
  inputText,
  text,
  icons,
  platformViews,
  _v694466811,
  all,
}

@immutable
class Bs734481587 {
  final AutoMaskingTypeEnum hb897300447;
  late final Gly271733308 kq77179483;
  Bs734481587({
    required this.hb897300447,
  }) {
    switch (hb897300447) {
      case AutoMaskingTypeEnum.all:
        kq77179483 = const H889757915();
        break;
      case AutoMaskingTypeEnum._v694466811:
        kq77179483 = Npf802340500();
        break;
      case AutoMaskingTypeEnum.button:
        kq77179483 = const M70429487();
        break;
      case AutoMaskingTypeEnum.dialog:
        kq77179483 = const Kds1034041740();
        break;
      case AutoMaskingTypeEnum.image:
        kq77179483 = const Njk1036290170();
        break;
      case AutoMaskingTypeEnum.inputText:
        kq77179483 = const Ju944496405();
        break;
      case AutoMaskingTypeEnum.text:
        kq77179483 = const Jb486714989();
        break;
      case AutoMaskingTypeEnum.icons:
        kq77179483 = const Xvj315587101();
        break;
      case AutoMaskingTypeEnum.platformViews:
        kq77179483 = const H362814633();
        break;
      default:
        throw UnimplementedError();
    }
  }
  Bs734481587.maskWidget() : hb897300447 = AutoMaskingTypeEnum._v694466811 {
    kq77179483 = Npf802340500();
  }

  @override
  bool operator ==(covariant Bs734481587 lyu304491394) {
    if (identical(this, lyu304491394)) return true;

    return lyu304491394.hb897300447 == hb897300447;
  }

  @override
  int get hashCode => hb897300447.hashCode;

  @override
  String toString() => 'AutoMaskingType(autoMaskingTypeEnum: $hb897300447)';
}
