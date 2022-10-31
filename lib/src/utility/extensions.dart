import 'package:decibel_sdk/src/features/tracking.dart';
import 'package:decibel_sdk/src/utility/enums.dart';
import 'package:decibel_sdk/src/widgets/screen_widget/screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension ElementExt on Element {
  List<Element> get children {
    final List<Element> _children = <Element>[];
    visitChildElements((Element element) => _children.add(element));
    return _children;
  }

  bool containsScreenWidget() {
    bool flag = false;
    int depth = 100;
    void findChild(Element parentElement) {
      parentElement.visitChildElements((element) {
        if (element.widget.runtimeType == ScreenWidget) {
          flag = true;
          return;
        } else {
          //Commented out because there may be two Scaffolds
          // if (element.widget.runtimeType == Scaffold) {
          //   return;
          // }
          if (depth > 0) {
            depth--;
            findChild(element);
          } else {
            return;
          }
        }
      });
    }

    findChild(this);
    return flag;
  }
}

extension GlobalKeyExt on GlobalKey {
  RenderObject? get renderObject {
    return currentContext?.findRenderObject();
  }
}

extension RenderObjectPaintBounds on RenderObject {
  Rect get globalPaintBounds {
    final translation = getTransformTo(null).getTranslation();
    final Size size = paintBounds.size;
    return Rect.fromLTWH(translation.x, translation.y, size.width, size.height);
  }
}

extension ListDecibelCustomerConsentTypeExt
    on List<DecibelCustomerConsentType> {
  List<int> toIndexList() {
    return map((consent) => consent.index).toList();
  }
}

extension ObjectExt<T> on T {
  R let<R>(R Function(T it) op) => op(this);
}

extension WidgetsBindingNullSafe on WidgetsBinding {
  static T? _ambiguate<T>(T? value) => value;

  static WidgetsBinding? get instance => _ambiguate(WidgetsBinding.instance)!;
}

extension ScreenVisitedFinder on List<ScreenVisited> {
  ScreenVisited? findWithId(String screenId) {
    final int index = getIndex(screenId);
    if (index != -1) {
      return this[index];
    } else {
      return null;
    }
  }

  int getIndex(String screenId) => indexWhere((element) {
        // if (element.isTabBar) {
        //   return (element as ScreenVisitedTabBar).tabBarId == screenId;
        // } else {
        return element.id == screenId;
        // }
      });
  ScreenVisitedTabBar? findTabBarWithId(String screenId) {
    final int index = getTabBarIndex(screenId);
    if (index != -1) {
      return this[index] as ScreenVisitedTabBar;
    } else {
      return null;
    }
  }

  int getTabBarIndex(String screenId) => indexWhere((element) {
        if (element.isTabBar) {
          return (element as ScreenVisitedTabBar).id == screenId ||
              element.tabBarId == screenId;
        }
        return false;
      });
}
