// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:medallia_dxa/src/features/autoMasking/auto_masking_widgets.dart';

enum AutoMaskingTypeEnum {
  button,
  dialog,
  image,
  inputText,
  text,
  icons,
  webView,
  _manual,
  all,
  none
}

@immutable
class AutoMaskingType {
  final AutoMaskingTypeEnum enumType;
  late final AutoMaskWidgets automaskWidgetType;
  AutoMaskingType({
    required this.enumType,
  }) {
    switch (enumType) {
      case AutoMaskingTypeEnum.all:
        automaskWidgetType = const AllAutomaskWidgets();
        break;
      case AutoMaskingTypeEnum.none:
        automaskWidgetType = const NoAutomaskWidgets();
        break;
      case AutoMaskingTypeEnum._manual:
        automaskWidgetType = AutomaskMaskWidget();
        break;
      case AutoMaskingTypeEnum.button:
        automaskWidgetType = const ButtonAutomaskWidgets();
        break;
      case AutoMaskingTypeEnum.dialog:
        automaskWidgetType = const DialogAutomaskWidgets();
        break;
      case AutoMaskingTypeEnum.image:
        automaskWidgetType = const ImageAutomaskWidgets();
        break;
      case AutoMaskingTypeEnum.inputText:
        automaskWidgetType = const InputTextAutomaskWidgets();
        break;
      case AutoMaskingTypeEnum.text:
        automaskWidgetType = const TextAutomaskWidgets();
        break;
      case AutoMaskingTypeEnum.icons:
        automaskWidgetType = const IconAutomaskWidgets();
        break;
      case AutoMaskingTypeEnum.webView:
        automaskWidgetType = const WebviewAutomaskWidgets();
        break;
      default:
        throw UnimplementedError();
    }
  }
  AutoMaskingType.maskWidget() : enumType = AutoMaskingTypeEnum._manual {
    automaskWidgetType = AutomaskMaskWidget();
  }

  @override
  bool operator ==(covariant AutoMaskingType other) {
    if (identical(this, other)) return true;

    return other.enumType == enumType;
  }

  @override
  int get hashCode => enumType.hashCode;

  @override
  String toString() => 'AutoMaskingType(autoMaskingTypeEnum: $enumType)';
}
