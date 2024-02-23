//
import 'package:flutter/cupertino.dart';
import 'package:medallia_dxa/src/a401265069.dart';

enum AutoMaskingTypeEnum {
  button,
  dialog,
  image,
  inputText,
  text,
  icons,
  webView,
  _etl694467459,
  all,
  none
}

@immutable
class Sqy734482379 {
  final AutoMaskingTypeEnum vks897299623;
  late final Qs271733060 kx77179171;
  Sqy734482379({
    required this.vks897299623,
  }) {
    switch (vks897299623) {
      case AutoMaskingTypeEnum.all:
        kx77179171 = const B889758627();
        break;
      case AutoMaskingTypeEnum.none:
        kx77179171 = const Iz355512844();
        break;
      case AutoMaskingTypeEnum._etl694467459:
        kx77179171 = L802340332();
        break;
      case AutoMaskingTypeEnum.button:
        kx77179171 = const Yo70428759();
        break;
      case AutoMaskingTypeEnum.dialog:
        kx77179171 = const P1034042100();
        break;
      case AutoMaskingTypeEnum.image:
        kx77179171 = const N1036290818();
        break;
      case AutoMaskingTypeEnum.inputText:
        kx77179171 = const Zn944495725();
        break;
      case AutoMaskingTypeEnum.text:
        kx77179171 = const Mst486714645();
        break;
      case AutoMaskingTypeEnum.icons:
        kx77179171 = const J315586917();
        break;
      case AutoMaskingTypeEnum.webView:
        kx77179171 = const Vv617736877();
        break;
      default:
        throw UnimplementedError();
    }
  }
  Sqy734482379.maskWidget() : vks897299623 = AutoMaskingTypeEnum._etl694467459 {
    kx77179171 = L802340332();
  }

  @override
  bool operator ==(covariant Sqy734482379 ll304490746) {
    if (identical(this, ll304490746)) return true;

    return ll304490746.vks897299623 == vks897299623;
  }

  @override
  int get hashCode => vks897299623.hashCode;

  @override
  String toString() => 'AutoMaskingType(autoMaskingTypeEnum: $vks897299623)';
}
