// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:decibel_sdk/src/features/autoMasking/auto_masking_widgets.dart';

enum AutoMaskingTypeEnum {
  button,
  dialog,
  image,
  inputText,
  text,
  icons,
  webView,

  all,
  none
}

class AutoMaskingType {
  final AutoMaskingTypeEnum autoMaskingTypeEnum;
  const AutoMaskingType({
    required this.autoMaskingTypeEnum,
  });

  AutoMaskWidgets get getAutoMaskingType {
    switch (autoMaskingTypeEnum) {
      case AutoMaskingTypeEnum.all:
        return const AllAutomaskWidgets();
      case AutoMaskingTypeEnum.none:
        return const NoAutomaskWidgets();
      case AutoMaskingTypeEnum.button:
        return const ButtonAutomaskWidgets();
      case AutoMaskingTypeEnum.dialog:
        return const DialogAutomaskWidgets();
      case AutoMaskingTypeEnum.image:
        return const ImageAutomaskWidgets();
      case AutoMaskingTypeEnum.inputText:
        return const InputTextAutomaskWidgets();
      case AutoMaskingTypeEnum.text:
        return const TextAutomaskWidgets();
      case AutoMaskingTypeEnum.icons:
        return const IconAutomaskWidgets();
      case AutoMaskingTypeEnum.webView:
        return const WebviewAutomaskWidgets();
      default:
        throw UnimplementedError();
    }
  }

  @override
  bool operator ==(covariant AutoMaskingType other) {
    if (identical(this, other)) return true;

    return other.autoMaskingTypeEnum == autoMaskingTypeEnum;
  }

  @override
  int get hashCode => autoMaskingTypeEnum.hashCode;
}
