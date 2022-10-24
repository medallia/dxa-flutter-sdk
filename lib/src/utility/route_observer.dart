import 'package:decibel_sdk/src/features/session_replay.dart';
import 'package:decibel_sdk/src/features/tracking.dart';
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:decibel_sdk/src/widgets/screen_widget/screen_widget.dart';
import 'package:flutter/material.dart';

class CustomRouteObserver {
  static final RouteObserver<ModalRoute<void>> screenWidgetRouteObserver =
      RouteObserver<ModalRoute<void>>();
  static final RouteObserver generalRouteObserver = MyRouteObserver();
}

class MyRouteObserver extends RouteObserver<PageRoute<dynamic>> {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint("ro - didPush");

    if (route is ModalRoute) {
      route.animation?.addStatusListener((status) {
        _animationListener(status, route);
      });
    }
    if (route is PopupRoute) {
      if (previousRoute != null) {
        final BuildContext previousContext =
            (previousRoute as PageRoute).subtreeContext!;

        WidgetsBindingNullSafe.instance!.addPostFrameCallback((timeStamp) {
          final BuildContext currentContext = route.subtreeContext!;
          // check if the popup has a screenwidget
          currentContext.visitChildElements((element) {
            if (element.containsScreenWidget()) {
              return;
            } else {
              previousContext.visitChildElements((previousElement) {
                if (previousElement.containsScreenWidget()) {
                  // WidgetsBindingNullSafe.instance!.addPostFrameCallback((timeStamp) {
                  final BuildContext dialogContext = route.subtreeContext!;
                  final ScreenVisited screenVisited = Tracking
                      .instance.visitedScreensList.last
                      .getDialogScreenVisited(
                    route.hashCode.toString(),
                    dialogContext,
                  );

                  Tracking.instance.startScreen(screenVisited);
                  // });
                }
              });
            }
          });
        });
      }
    }
    super.didPush(route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    debugPrint("ro - didReplace");

    if (newRoute is ModalRoute) {
      newRoute.animation?.addStatusListener((status) {
        _animationListener(status, newRoute);
      });
    }
    if (oldRoute != null) {
      checkForDialogPopOrRemove(oldRoute);
    }
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint("ro - didPop");

    if (route is ModalRoute) {
      route.animation?.addStatusListener((status) {
        _animationListener(status, route);
      });
    }
    checkForDialogPopOrRemove(route);

    super.didPop(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    debugPrint("ro - didRemove");

    if (route is ModalRoute) {
      route.animation?.addStatusListener((status) {
        _animationListener(status, route);
      });
    }

    super.didRemove(route, previousRoute);
  }

  void _animationListener(AnimationStatus status, ModalRoute route) {
    if (route.offstage) return;
    if (status == AnimationStatus.completed ||
        status == AnimationStatus.dismissed) {
      debugPrint("Transitioning false");
      SessionReplay.instance.isPageTransitioning = false;
      route.animation?.removeStatusListener((status) {
        _animationListener(status, route);
      });
    } else {
      debugPrint("Transitioning true");

      SessionReplay.instance.isPageTransitioning = true;
    }
  }

  void checkForDialogPopOrRemove(Route dialogRoute) {
    if (dialogRoute is PopupRoute) {
      final BuildContext currentContext = dialogRoute.subtreeContext!;
      // check if the popup has a screenwidget
      currentContext.visitChildElements((element) {
        if (element.containsScreenWidget()) {
          return;
        } else {
          debugPrint("pop dialog route: ${dialogRoute.runtimeType}");
          Tracking.instance.endScreen(dialogRoute.hashCode.toString());
        }
      });
    }
  }
}
