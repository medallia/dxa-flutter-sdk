import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/features/autoMasking/auto_masking_enums.dart';
import 'package:medallia_dxa/src/features/autoMasking/auto_masking_widgets.dart';
import 'package:medallia_dxa/src/utility/logger_sdk.dart';

class AutoMasking with RenderObjectAutoMaskGetter {
  AutoMasking({required LoggerSDK loggerSDK}) : _logger = loggerSDK;
  final LoggerSDK _logger;
  Logger get logger => _logger.autoMaskingLogger;
  final Set<RenderObject> renderObjectsToMask = Set.of({});
  //Webbview and input text masking by default
  static final Set<AutoMaskingType> _defaultAutoMaskingTypeSet = {
    AutoMaskingType(enumType: AutoMaskingTypeEnum.webView),
    AutoMaskingType(enumType: AutoMaskingTypeEnum.inputText)
  };
  Set<AutoMaskingType> _autoMaskingTypeSet = Set.from(
    _defaultAutoMaskingTypeSet,
  );
  Set<AutoMaskingType> get autoMaskingTypeSet => _autoMaskingTypeSet;
  set autoMaskingTypeSet(Set<AutoMaskingType> value) {
    if (value.contains(
      AutoMaskingType(enumType: AutoMaskingTypeEnum.all),
    )) {
      if (value.length > 1) {
        throw ArgumentError('''
AutoMaskingType.all cannot be selected
along with other AutoMaskingType enums
''');
      }
      final Set<AutoMaskingType> allEnumsSet =
          (value.first.automaskWidgetType as AllAutomaskWidgets).getAllTypes();
      _autoMaskingTypeSet = allEnumsSet;
      return;
    }

    if (value.contains(
      AutoMaskingType(enumType: AutoMaskingTypeEnum.none),
    )) {
      if (value.length > 1) {
        throw ArgumentError('''
AutoMaskingType.none cannot be selected
along with other AutoMaskingType enums
''');
      }
      _autoMaskingTypeSet = {
        AutoMaskingType(enumType: AutoMaskingTypeEnum.none)
      };
      return;
    }
    _autoMaskingTypeSet.addAll(value);
    logger.d('After setAutoMaskingTypeSet ${autoMaskingTypeSet.toString()}');
  }

  void removeUnmaskedTypesFromAutoMaskingTypeSet(Set<AutoMaskingType> set) {
    if (set.contains(
      AutoMaskingType(enumType: AutoMaskingTypeEnum.none),
    )) {
      return;
    }
    if (set.contains(
      AutoMaskingType(enumType: AutoMaskingTypeEnum.all),
    )) {
      _autoMaskingTypeSet = {};
      return;
    }

    _autoMaskingTypeSet.removeAll(set);
    logger.d('After  Unmasking ${autoMaskingTypeSet.toString()}');
  }

  Set<RenderObject> getMaskedRenderObjectsWithinContexts({
    required BuildContext startContext,
    required List<BuildContext> stopContexts,
  }) {
    logger.d('set AutoMasking ${autoMaskingTypeSet.toString()}');

    final Set<AutoMaskingType> setWithMaskWidgets = Set.from(autoMaskingTypeSet)
      ..remove(AutoMaskingType(enumType: AutoMaskingTypeEnum.none));

    //always add the mask widgets
    setWithMaskWidgets.add(AutoMaskingType.maskWidget());
    renderObjectsToMask.addAll(
      getRenderObjectsByAutoMaskingType(
        startContext: startContext,
        autoMaskingTypeSet: setWithMaskWidgets,
        stopContexts: stopContexts,
      ),
    );
    logger.d('renderObjectsToMask ${renderObjectsToMask.toString()}');
    return renderObjectsToMask;
  }

  void clear() {
    logger.d('renderObjectsToMask clear');
    renderObjectsToMask.clear();
  }
}

mixin RenderObjectAutoMaskGetter {
  Set<RenderObject> getRenderObjectsByAutoMaskingType({
    required BuildContext startContext,
    required Set<AutoMaskingType> autoMaskingTypeSet,
    required List<BuildContext> stopContexts,
  }) {
    final Set<RenderObject> renderObjectList = Set.of({});

    void findChild(Element parentElement) {
      parentElement.visitChildElements((element) {
        //Context of the forbidden routes
        if (stopContexts.contains(element)) {
          return;
        }
        //check if the element has a widget of the same type we
        //want to mask
        final bool typeCheck = autoMaskingTypeSet.any((type) {
          if (type.automaskWidgetType.matchesWidgetType(element.widget)) {
            return true;
          }
          //check if the widget that matches a subtype
          //of a family of widgets we want to mask. e.g. a custom
          //button
          return type.automaskWidgetType.isSubtype(element.widget);
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

    findChild(startContext as Element);
    return renderObjectList;
  }
}
