import 'package:decibel_sdk/src/features/autoMasking/auto_masking_widgets.dart';
import 'package:decibel_sdk/src/utility/enums.dart';
import 'package:decibel_sdk/src/utility/enums.dart' as enums;
import 'package:flutter/material.dart';

class AutoMasking with RenderObjectAutoMaskGetter {
  final Set<RenderObject> renderObjectsToMask = Set.of({});
  Set<enums.AutoMaskingType> _autoMaskingTypeSet =
      Set.unmodifiable({enums.AutoMaskingType.none});
  Set<enums.AutoMaskingType> get autoMaskingTypeSet => _autoMaskingTypeSet;
  set autoMaskingTypeSet(Set<enums.AutoMaskingType> value) {
    if (value.contains(enums.AutoMaskingType.all)) {
      if (value.length > 1) {
        throw ArgumentError('''
AutoMaskingType.all cannot be selected
along with other AutoMaskingType enums
''');
      }
      final Set<AutoMaskingType> allEnumsSet =
          (value.first.autoMaskWidgets as AllAutomaskWidgets).getAllTypes();
      _autoMaskingTypeSet = allEnumsSet;
      return;
    }

    if (value.contains(enums.AutoMaskingType.none) || value.isEmpty) {
      if (value.length > 1) {
        throw ArgumentError('''
AutoMaskingType.none cannot be selected
along with other AutoMaskingType enums
''');
      }
      _autoMaskingTypeSet = {enums.AutoMaskingType.none};
      return;
    }
    _autoMaskingTypeSet = value;
  }

  void setAutoMasking(BuildContext context) {
    if (autoMaskingTypeSet.contains(enums.AutoMaskingType.none)) {
      return;
    }
    renderObjectsToMask
        .addAll(getRenderObjectsByAutoMaskingType(context, autoMaskingTypeSet));
  }

  void clear() {
    renderObjectsToMask.clear();
  }
}

mixin RenderObjectAutoMaskGetter {
  Set<RenderObject> getRenderObjectsByAutoMaskingType(
      BuildContext context, Set<AutoMaskingType<AutoMaskWidgets>> widgetTypes) {
    final Set<RenderObject> renderObjectList = Set.of({});

    void findChild(Element parentElement) {
      parentElement.visitChildElements((element) {
        //check if the element has a widget of the same type we
        //want to mask
        final bool typeCheck = widgetTypes.any((type) {
          if (type.autoMaskWidgets.widgets
              .contains(element.widget.runtimeType)) {
            return true;
          }
          //check if the widget that matches a subtype
          //of a family of widgets we want to mask. e.g. a custom
          //button
          return type.autoMaskWidgets.isSubtype(element.widget);
        });
        if (typeCheck) {
          if (element.renderObject != null) {
            renderObjectList.add(element.renderObject!);
          }
          return;
        } else {
          findChild(element);
        }
      });
    }

    findChild(context as Element);
    return renderObjectList;
  }
}
