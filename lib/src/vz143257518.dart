//
import 'package:flutter/cupertino.dart';
import 'package:medallia_dxa/src/on401265647.dart';

enum AutoMaskingTypeEnum {
  button,
  dialog,
  image,
  inputText,
  text,
  icons,
  webView,
  _ywx694467009,
  all,
  none
}

@immutable
class Ms734481801 {
  final AutoMaskingTypeEnum tm897300197;
  late final Du271733510 whg77179745;
  Ms734481801({
    required this.tm897300197,
  }) {
    switch (tm897300197) {
      case AutoMaskingTypeEnum.all:
        whg77179745 = const M889758177();
        break;
      case AutoMaskingTypeEnum.none:
        whg77179745 = const F355512398();
        break;
      case AutoMaskingTypeEnum._ywx694467009:
        whg77179745 = P802340782();
        break;
      case AutoMaskingTypeEnum.button:
        whg77179745 = const U70429205();
        break;
      case AutoMaskingTypeEnum.dialog:
        whg77179745 = const Wqt1034041526();
        break;
      case AutoMaskingTypeEnum.image:
        whg77179745 = const Ilv1036290368();
        break;
      case AutoMaskingTypeEnum.inputText:
        whg77179745 = const Pow944496175();
        break;
      case AutoMaskingTypeEnum.text:
        whg77179745 = const Bpb486715223();
        break;
      case AutoMaskingTypeEnum.icons:
        whg77179745 = const F315587367();
        break;
      case AutoMaskingTypeEnum.webView:
        whg77179745 = const Hmv617736431();
        break;
      default:
        throw UnimplementedError();
    }
  }
  Ms734481801.maskWidget() : tm897300197 = AutoMaskingTypeEnum._ywx694467009 {
    whg77179745 = P802340782();
  }

  @override
  bool operator ==(covariant Ms734481801 b304491192) {
    if (identical(this, b304491192)) return true;

    return b304491192.tm897300197 == tm897300197;
  }

  @override
  int get hashCode => tm897300197.hashCode;

  @override
  String toString() => 'AutoMaskingType(autoMaskingTypeEnum: $tm897300197)';
}
