//
import 'package:flutter/cupertino.dart';
import 'package:medallia_dxa/src/ac157706829.dart';

enum AutoMaskingTypeEnum {
  button,
  dialog,
  image,
  inputText,
  text,
  icons,
  platformViews,
  magnifier,
  _o694466877,
  all,
}

@immutable
class Hgy734481781 {
  final AutoMaskingTypeEnum l897299993;
  late final Uw271733754 e77179805;
  Hgy734481781({
    required this.l897299993,
  }) {
    switch (l897299993) {
      case AutoMaskingTypeEnum.all:
        e77179805 = const Qmj889757981();
        break;
      case AutoMaskingTypeEnum._o694466877:
        e77179805 = Dg832750722();
        break;
      case AutoMaskingTypeEnum.button:
        e77179805 = const Ui70429417();
        break;
      case AutoMaskingTypeEnum.dialog:
        e77179805 = const T1034041418();
        break;
      case AutoMaskingTypeEnum.image:
        e77179805 = const Zoh1036290492();
        break;
      case AutoMaskingTypeEnum.inputText:
        e77179805 = const Gsp944496339();
        break;
      case AutoMaskingTypeEnum.text:
        e77179805 = const Uer486715307();
        break;
      case AutoMaskingTypeEnum.icons:
        e77179805 = const Z315587547();
        break;
      case AutoMaskingTypeEnum.platformViews:
        e77179805 = const Waj362814831();
        break;
      case AutoMaskingTypeEnum.magnifier:
        e77179805 = const Pp426878051();
        break;
      default:
        throw UnimplementedError();
    }
  }
  Hgy734481781.maskWidget() : l897299993 = AutoMaskingTypeEnum._o694466877 {
    e77179805 = Dg832750722();
  }

  @override
  bool operator ==(covariant Hgy734481781 br304491076) {
    if (identical(this, br304491076)) return true;

    return br304491076.l897299993 == l897299993;
  }

  @override
  int get hashCode => l897299993.hashCode;

  @override
  String toString() => 'AutoMaskingType(autoMaskingTypeEnum: $l897299993)';
}
