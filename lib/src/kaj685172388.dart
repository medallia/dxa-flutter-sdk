//
import 'package:flutter/cupertino.dart';
import 'package:medallia_dxa/src/sg157706751.dart';

enum AutoMaskingTypeEnum {
  button,
  dialog,
  image,
  inputText,
  text,
  icons,
  platformViews,
  magnifier,
  _j694467215,
  all,
}

@immutable
class N734482119 {
  final AutoMaskingTypeEnum zex897299883;
  late final J271732808 u77178927;
  N734482119({
    required this.zex897299883,
  }) {
    switch (zex897299883) {
      case AutoMaskingTypeEnum.all:
        u77178927 = const Ae889758383();
        break;
      case AutoMaskingTypeEnum._j694467215:
        u77178927 = Mh832751408();
        break;
      case AutoMaskingTypeEnum.button:
        u77178927 = const Qi70429019();
        break;
      case AutoMaskingTypeEnum.dialog:
        u77178927 = const Xji1034042360();
        break;
      case AutoMaskingTypeEnum.image:
        u77178927 = const B1036290574();
        break;
      case AutoMaskingTypeEnum.inputText:
        u77178927 = const Vlq944495969();
        break;
      case AutoMaskingTypeEnum.text:
        u77178927 = const Oqd486714393();
        break;
      case AutoMaskingTypeEnum.icons:
        u77178927 = const C315586665();
        break;
      case AutoMaskingTypeEnum.platformViews:
        u77178927 = const T362815197();
        break;
      case AutoMaskingTypeEnum.magnifier:
        u77178927 = const S426878929();
        break;
      default:
        throw UnimplementedError();
    }
  }
  N734482119.maskWidget() : zex897299883 = AutoMaskingTypeEnum._j694467215 {
    u77178927 = Mh832751408();
  }

  @override
  bool operator ==(covariant N734482119 u304490998) {
    if (identical(this, u304490998)) return true;

    return u304490998.zex897299883 == zex897299883;
  }

  @override
  int get hashCode => zex897299883.hashCode;

  @override
  String toString() => 'AutoMaskingType(autoMaskingTypeEnum: $zex897299883)';
}
