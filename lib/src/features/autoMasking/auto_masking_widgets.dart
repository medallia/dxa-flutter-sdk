import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/features/autoMasking/auto_masking_enums.dart';
import 'package:webview_flutter/webview_flutter.dart';

abstract class AutoMaskWidgets<T> {
  final Set<Type> widgetTypeSet;

  const AutoMaskWidgets({required this.widgetTypeSet});

  bool isSubtype(Object statefulWidget) {
    assert(T != dynamic, '''
AutomaskWidgets must have a Widget family to check for subtypes,
if there is no family to check then use AutoMaskWidgetWithoutFamily''');
    return statefulWidget is T;
  }

  @mustCallSuper
  bool matchesWidgetType(Widget widget) {
    return widgetTypeSet.contains(widget.runtimeType);
  }
}

class AllAutomaskWidgets extends AutoMaskWidgets {
  const AllAutomaskWidgets() : super(widgetTypeSet: const {});
  Set<AutoMaskingType> getAllTypes() {
    final Set<AutoMaskingType> allWidgets = {};

    for (final element in AutoMaskingTypeEnum.values) {
      if (element == AutoMaskingTypeEnum.none) continue;
      if (element == AutoMaskingTypeEnum.all) continue;
      allWidgets.add(AutoMaskingType(enumType: element));
    }
    return allWidgets;
  }
}

class AutomaskMaskWidget extends AutoMaskWidgets<AutoMaskWidgetWithoutFamily> {
  AutomaskMaskWidget() : super(widgetTypeSet: {MaskWidget});
}

class ButtonAutomaskWidgets extends AutoMaskWidgets<ButtonStyleButton> {
  const ButtonAutomaskWidgets()
      : super(
          widgetTypeSet: const {
            IconButton,
            BackButton,
            CloseButton,
            FloatingActionButton,
            CupertinoButton,
          },
        );
}

class TextAutomaskWidgets extends AutoMaskWidgets<AutoMaskWidgetWithoutFamily> {
  const TextAutomaskWidgets() : super(widgetTypeSet: const {Text, RichText});
}

class IconAutomaskWidgets extends AutoMaskWidgets<AutoMaskWidgetWithoutFamily> {
  const IconAutomaskWidgets() : super(widgetTypeSet: const {Icon});
}

class ImageAutomaskWidgets
    extends AutoMaskWidgets<AutoMaskWidgetWithoutFamily> {
  const ImageAutomaskWidgets() : super(widgetTypeSet: const {Image});

  @override
  bool matchesWidgetType(Widget widget) {
    if (super.matchesWidgetType(widget)) return true;
    if (widget.runtimeType == DecoratedBox) {
      final DecoratedBox decoratedBox = widget as DecoratedBox;
      if (decoratedBox.decoration.runtimeType == BoxDecoration) {
        return (decoratedBox.decoration as BoxDecoration).image != null;
      }
    }
    return false;
  }
}

class InputTextAutomaskWidgets
    extends AutoMaskWidgets<AutoMaskWidgetWithoutFamily> {
  const InputTextAutomaskWidgets() : super(widgetTypeSet: const {EditableText});
}

class DialogAutomaskWidgets
    extends AutoMaskWidgets<AutoMaskWidgetWithoutFamily> {
  const DialogAutomaskWidgets() : super(widgetTypeSet: const {Dialog});
}

class WebviewAutomaskWidgets
    extends AutoMaskWidgets<AutoMaskWidgetWithoutFamily> {
  const WebviewAutomaskWidgets() : super(widgetTypeSet: const {WebView});
}

class NoAutomaskWidgets extends AutoMaskWidgets<AutoMaskWidgetWithoutFamily> {
  const NoAutomaskWidgets() : super(widgetTypeSet: const {});
}

//to help us check if there is a subtype
abstract class AutoMaskWidgetWithoutFamily extends Widget {}
