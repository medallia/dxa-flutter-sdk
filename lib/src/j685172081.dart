//
import 'package:flutter/cupertino.dart';
import 'package:medallia_dxa/src/fuq157706794.dart';

enum AutoMaskingTypeEnum {
  button,
  dialog,
  image,
  inputText,
  text,
  icons,
  platformViews,
  magnifier,
  _sqo694466906,
  all,
}

@immutable
class Mde734481682 {
  final AutoMaskingTypeEnum nh897300094;
  late final Bny271733661 wnf77179898;
  Mde734481682({
    required this.nh897300094,
  }) {
    switch (nh897300094) {
      case AutoMaskingTypeEnum.all:
        wnf77179898 = const Li889758074();
        break;
      case AutoMaskingTypeEnum._sqo694466906:
        wnf77179898 = Oud832750821();
        break;
      case AutoMaskingTypeEnum.button:
        wnf77179898 = const E70429326();
        break;
      case AutoMaskingTypeEnum.dialog:
        wnf77179898 = const C1034041389();
        break;
      case AutoMaskingTypeEnum.image:
        wnf77179898 = const Gr1036290523();
        break;
      case AutoMaskingTypeEnum.inputText:
        wnf77179898 = const Dv944496308();
        break;
      case AutoMaskingTypeEnum.text:
        wnf77179898 = const Cdm486715340();
        break;
      case AutoMaskingTypeEnum.icons:
        wnf77179898 = const Z315587516();
        break;
      case AutoMaskingTypeEnum.platformViews:
        wnf77179898 = const Rz362814728();
        break;
      case AutoMaskingTypeEnum.magnifier:
        wnf77179898 = const J426877956();
        break;
      default:
        throw UnimplementedError();
    }
  }
  Mde734481682.maskWidget() : nh897300094 = AutoMaskingTypeEnum._sqo694466906 {
    wnf77179898 = Oud832750821();
  }

  @override
  bool operator ==(covariant Mde734481682 ydy304491043) {
    if (identical(this, ydy304491043)) return true;

    return ydy304491043.nh897300094 == nh897300094;
  }

  @override
  int get hashCode => nh897300094.hashCode;

  @override
  String toString() => 'AutoMaskingType(autoMaskingTypeEnum: $nh897300094)';
}
