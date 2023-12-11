//
import 'package:flutter/cupertino.dart';
import 'package:medallia_dxa/src/f401265508.dart';

enum AutoMaskingTypeEnum {
  button,
  dialog,
  image,
  inputText,
  text,
  icons,
  webView,
  _us694466890,
  all,
  none
}

@immutable
class Wy734481666 {
  final AutoMaskingTypeEnum wvq897300078;
  late final Sqx271733645 ywo77179882;
  Wy734481666({
    required this.wvq897300078,
  }) {
    switch (wvq897300078) {
      case AutoMaskingTypeEnum.all:
        ywo77179882 = const Nst889758058();
        break;
      case AutoMaskingTypeEnum.none:
        ywo77179882 = const V355512517();
        break;
      case AutoMaskingTypeEnum._us694466890:
        ywo77179882 = Lj802340645();
        break;
      case AutoMaskingTypeEnum.button:
        ywo77179882 = const O70429342();
        break;
      case AutoMaskingTypeEnum.dialog:
        ywo77179882 = const V1034041405();
        break;
      case AutoMaskingTypeEnum.image:
        ywo77179882 = const Zvd1036290507();
        break;
      case AutoMaskingTypeEnum.inputText:
        ywo77179882 = const B944496292();
        break;
      case AutoMaskingTypeEnum.text:
        ywo77179882 = const O486715356();
        break;
      case AutoMaskingTypeEnum.icons:
        ywo77179882 = const Qm315587500();
        break;
      case AutoMaskingTypeEnum.webView:
        ywo77179882 = const D617736292();
        break;
      default:
        throw UnimplementedError();
    }
  }
  Wy734481666.maskWidget() : wvq897300078 = AutoMaskingTypeEnum._us694466890 {
    ywo77179882 = Lj802340645();
  }

  @override
  bool operator ==(covariant Wy734481666 sz304491059) {
    if (identical(this, sz304491059)) return true;

    return sz304491059.wvq897300078 == wvq897300078;
  }

  @override
  int get hashCode => wvq897300078.hashCode;

  @override
  String toString() => 'AutoMaskingType(autoMaskingTypeEnum: $wvq897300078)';
}
