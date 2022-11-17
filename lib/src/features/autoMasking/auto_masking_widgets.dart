// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:decibel_sdk/decibel_sdk.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

abstract class AutoMaskWidgets<T> {
  final Set<Type> widgets;

  const AutoMaskWidgets({required this.widgets});

  bool isSubtype(Object statefulWidget) {
    assert(T != dynamic, '''
AutomaskWidgets must have a Widget family to check for subtypes,
if there is no family to check then use AutoMaskWidgetWithoutFamily''');
    return statefulWidget is T;
  }
}

class AllAutomaskWidgets extends AutoMaskWidgets {
  const AllAutomaskWidgets() : super(widgets: const {});
  Set<AutoMaskingType> getAllTypes() {
    final Set<AutoMaskingType> allWidgets = {};
    for (final element in AutoMaskingType.values) {
      if (element == AutoMaskingType.none) continue;
      if (element == AutoMaskingType.all) continue;
      allWidgets.add(element);
    }
    return allWidgets;
  }
}

class ButtonAutomaskWidgets extends AutoMaskWidgets<ButtonStyleButton> {
  const ButtonAutomaskWidgets()
      : super(widgets: const {
          IconButton,
          BackButton,
          CloseButton,
          FloatingActionButton,
          CupertinoButton,
        });
}

class TextAutomaskWidgets extends AutoMaskWidgets<AutoMaskWidgetWithoutFamily> {
  const TextAutomaskWidgets() : super(widgets: const {Text});
}

class IconAutomaskWidgets extends AutoMaskWidgets<AutoMaskWidgetWithoutFamily> {
  const IconAutomaskWidgets() : super(widgets: const {Icon});
}

class ImageAutomaskWidgets
    extends AutoMaskWidgets<AutoMaskWidgetWithoutFamily> {
  const ImageAutomaskWidgets() : super(widgets: const {Image});
}

class InputTextAutomaskWidgets
    extends AutoMaskWidgets<AutoMaskWidgetWithoutFamily> {
  const InputTextAutomaskWidgets() : super(widgets: const {EditableText});
}

class DialogAutomaskWidgets
    extends AutoMaskWidgets<AutoMaskWidgetWithoutFamily> {
  const DialogAutomaskWidgets() : super(widgets: const {Dialog});
}

class WebviewAutomaskWidgets
    extends AutoMaskWidgets<AutoMaskWidgetWithoutFamily> {
  const WebviewAutomaskWidgets() : super(widgets: const {WebView});
}

class NoAutomaskWidgets extends AutoMaskWidgets<AutoMaskWidgetWithoutFamily> {
  const NoAutomaskWidgets() : super(widgets: const {});
}

//to help us check if there is a subtype
abstract class AutoMaskWidgetWithoutFamily extends Widget {}
