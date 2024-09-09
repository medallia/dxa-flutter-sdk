//
import 'package:flutter/cupertino.dart';
import 'package:medallia_dxa/src/gyu401265148.dart';

enum AutoMaskingTypeEnum {
  button,
  dialog,
  image,
  inputText,
  text,
  icons,
  platformViews,
  magnifier,
  _zvf694467538,
  all,
}

@immutable
class Azj734482330 {
  final AutoMaskingTypeEnum h897299702;
  late final Fx271733013 de77179250;
  Azj734482330({
    required this.h897299702,
  }) {
    switch (h897299702) {
      case AutoMaskingTypeEnum.all:
        de77179250 = const Ad889758706();
        break;
      case AutoMaskingTypeEnum._zvf694467538:
        de77179250 = U832751213();
        break;
      case AutoMaskingTypeEnum.button:
        de77179250 = const E70428678();
        break;
      case AutoMaskingTypeEnum.dialog:
        de77179250 = const If1034042021();
        break;
      case AutoMaskingTypeEnum.image:
        de77179250 = const S1036290899();
        break;
      case AutoMaskingTypeEnum.inputText:
        de77179250 = const Ocg944495676();
        break;
      case AutoMaskingTypeEnum.text:
        de77179250 = const Z486714692();
        break;
      case AutoMaskingTypeEnum.icons:
        de77179250 = const D315586868();
        break;
      case AutoMaskingTypeEnum.platformViews:
        de77179250 = const X362815360();
        break;
      case AutoMaskingTypeEnum.magnifier:
        de77179250 = const Ea426878604();
        break;
      default:
        throw UnimplementedError();
    }
  }
  Azj734482330.maskWidget() : h897299702 = AutoMaskingTypeEnum._zvf694467538 {
    de77179250 = U832751213();
  }

  @override
  bool operator ==(covariant Azj734482330 r304490667) {
    if (identical(this, r304490667)) return true;

    return r304490667.h897299702 == h897299702;
  }

  @override
  int get hashCode => h897299702.hashCode;

  @override
  String toString() => 'AutoMaskingType(autoMaskingTypeEnum: $h897299702)';
}
