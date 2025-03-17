//
import 'package:flutter/cupertino.dart';
import 'package:medallia_dxa/src/lac401265638.dart';

enum AutoMaskingTypeEnum {
  button,
  dialog,
  image,
  inputText,
  text,
  icons,
  platformViews,
  magnifier,
  _wdb694467016,
  all,
}

@immutable
class O734481792 {
  final AutoMaskingTypeEnum pw897300204;
  late final Nt271733519 p77179752;
  O734481792({
    required this.pw897300204,
  }) {
    switch (pw897300204) {
      case AutoMaskingTypeEnum.all:
        p77179752 = const Lmi889758184();
        break;
      case AutoMaskingTypeEnum._wdb694467016:
        p77179752 = Db832750711();
        break;
      case AutoMaskingTypeEnum.button:
        p77179752 = const Cdy70429212();
        break;
      case AutoMaskingTypeEnum.dialog:
        p77179752 = const Ntk1034041535();
        break;
      case AutoMaskingTypeEnum.image:
        p77179752 = const Ji1036290377();
        break;
      case AutoMaskingTypeEnum.inputText:
        p77179752 = const Esz944496166();
        break;
      case AutoMaskingTypeEnum.text:
        p77179752 = const Ktc486715230();
        break;
      case AutoMaskingTypeEnum.icons:
        p77179752 = const Yj315587374();
        break;
      case AutoMaskingTypeEnum.platformViews:
        p77179752 = const Kmo362814874();
        break;
      case AutoMaskingTypeEnum.magnifier:
        p77179752 = const W426878102();
        break;
      default:
        throw UnimplementedError();
    }
  }
  O734481792.maskWidget() : pw897300204 = AutoMaskingTypeEnum._wdb694467016 {
    p77179752 = Db832750711();
  }

  @override
  bool operator ==(covariant O734481792 wz304491185) {
    if (identical(this, wz304491185)) return true;

    return wz304491185.pw897300204 == pw897300204;
  }

  @override
  int get hashCode => pw897300204.hashCode;

  @override
  String toString() => 'AutoMaskingType(autoMaskingTypeEnum: $pw897300204)';
}
