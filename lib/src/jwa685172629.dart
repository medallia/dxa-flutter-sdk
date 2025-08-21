//
import 'package:flutter/cupertino.dart';
import 'package:medallia_dxa/src/emj157706446.dart';

enum AutoMaskingTypeEnum {
  button,
  dialog,
  image,
  inputText,
  text,
  icons,
  platformViews,
  magnifier,
  _tng694467518,
  all,
}

@immutable
class Rac734482422 {
  final AutoMaskingTypeEnum zr897299610;
  late final Xyn271733113 el77179166;
  Rac734482422({
    required this.zr897299610,
  }) {
    switch (zr897299610) {
      case AutoMaskingTypeEnum.all:
        el77179166 = const E889758622();
        break;
      case AutoMaskingTypeEnum._tng694467518:
        el77179166 = Ncb832751105();
        break;
      case AutoMaskingTypeEnum.button:
        el77179166 = const Zam70428778();
        break;
      case AutoMaskingTypeEnum.dialog:
        el77179166 = const Qgb1034042057();
        break;
      case AutoMaskingTypeEnum.image:
        el77179166 = const Z1036290879();
        break;
      case AutoMaskingTypeEnum.inputText:
        el77179166 = const Ypo944495696();
        break;
      case AutoMaskingTypeEnum.text:
        el77179166 = const Ww486714664();
        break;
      case AutoMaskingTypeEnum.icons:
        el77179166 = const Ty315586904();
        break;
      case AutoMaskingTypeEnum.platformViews:
        el77179166 = const Hr362815468();
        break;
      case AutoMaskingTypeEnum.magnifier:
        el77179166 = const Kq426878688();
        break;
      default:
        throw UnimplementedError();
    }
  }
  Rac734482422.maskWidget() : zr897299610 = AutoMaskingTypeEnum._tng694467518 {
    el77179166 = Ncb832751105();
  }

  @override
  bool operator ==(covariant Rac734482422 s304490695) {
    if (identical(this, s304490695)) return true;

    return s304490695.zr897299610 == zr897299610;
  }

  @override
  int get hashCode => zr897299610.hashCode;

  @override
  String toString() => 'AutoMaskingType(autoMaskingTypeEnum: $zr897299610)';
}
