import 'package:decibel_sdk/src/features/tracking/screen_visited.dart';
import 'package:decibel_sdk/src/features/tracking/tracking.dart';
import 'package:decibel_sdk/src/utility/dependency_injector.dart';
import 'package:decibel_sdk/src/utility/global_settings.dart';
import 'package:decibel_sdk/src/widgets/screen_widget/screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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
          //TODO: Commented out because there may be two Scaffolds.
          //Room for improvement.
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

extension ObjectExt<T> on T {
  R let<R>(R Function(T it) op) => op(this);
}

extension WidgetsBindingNullSafe on WidgetsBinding {
  static T? _ambiguate<T>(T? value) => value;

  static WidgetsBinding? get instance => _ambiguate(WidgetsBinding.instance)!;
}

extension SchedulerBindingNullSafe on SchedulerBinding {
  static T? _ambiguate<T>(T? value) => value;

  static SchedulerBinding? get instance => _ambiguate(WidgetsBinding.instance)!;
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

  int getIndex(String screenId) =>
      indexWhere((element) => element.id == screenId);

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
          //first conditional for when we have the screenId of the tab
          //second one for when we have only the id for the parent TabBar
          return (element as ScreenVisitedTabBar).id == screenId ||
              element.tabBarId == screenId;
        }
        return false;
      });
}

extension ScreenVisitedExt on ScreenVisited {
  bool get isCurrentScreenOverMaxDuration {
    return DateTime.now().millisecondsSinceEpoch - timestamp >
        DependencyInjector
            .instance.globalSettings.maxReplayDurationPerScreen.inMilliseconds;
  }

  bool get isCurrentScreenOverMaxScreenshotCount {
    return screenshotTakenList.length >=
        DependencyInjector.instance.globalSettings.maxScreenshotCount;
  }

  int get maximumDurationForLastScreenshot =>
      timestamp +
      DependencyInjector
          .instance.globalSettings.maxReplayDurationPerScreen.inMilliseconds;

  ///Checks if this screenVisited is the tab with the given a id or the parent
  ///TabBar of this screen has the same id
  bool isTabBarWithId(String screenId) {
    if (isTabBar) {
      //first conditional for when we have the screenId of the tab
      //second one for when we have only the id for the parent TabBar
      return (this as ScreenVisitedTabBar).id == screenId ||
          (this as ScreenVisitedTabBar).tabBarId == screenId;
    }
    return false;
  }

  ///If this screenVisited is a tabBar, it returns the screenVisited as a
  ///ScreenVisitedTabBar type
  ScreenVisitedTabBar? maybeScreenVisitedTabBar(String screenId) {
    final bool isTabBarWithId = this.isTabBarWithId(screenId);
    if (isTabBarWithId) {
      return this as ScreenVisitedTabBar;
    } else {
      return null;
    }
  }
}
