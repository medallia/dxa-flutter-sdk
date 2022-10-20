import 'package:decibel_sdk/src/features/session_replay.dart';
import 'package:decibel_sdk/src/utility/extensions.dart';
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

    if (route is! PopupRoute) {
      (route as ModalRoute).animation?.addStatusListener((status) {
        _animationListener(status, route);
      });
    }
    if (route is PopupRoute) {
      if (previousRoute != null) {
        final BuildContext context =
            (previousRoute as PageRoute).subtreeContext!;
        context.visitChildElements((element) {
          if (element.containsScreenWidget()) {
            WidgetsBindingNullSafe.instance!.addPostFrameCallback((timeStamp) {
              SessionReplay.instance.isInPopupRoute = true;
              SessionReplay.instance.popupRouteContext = route.subtreeContext!;
              SessionReplay.instance.newScreen();
            });
          }
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
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint("ro - didPop");

    if (route is! PopupRoute) {
      (route as ModalRoute).animation?.addStatusListener((status) {
        _animationListener(status, route);
      });
    }
    if (route is PopupRoute) {
      SessionReplay.instance.isInPopupRoute = false;
      SessionReplay.instance.popupRouteContext = null;
    }
    super.didPop(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    debugPrint("ro - didRemove");

    if (route is! PopupRoute) {
      (route as ModalRoute).animation?.addStatusListener((status) {
        _animationListener(status, route);
      });
    }
    super.didRemove(route, previousRoute);
  }

  void _animationListener(AnimationStatus status, ModalRoute route) {
    if (route.offstage) return;
    if (status == AnimationStatus.completed ||
        status == AnimationStatus.dismissed) {
      SessionReplay.instance.isPageTransitioning = false;
      route.animation?.removeStatusListener((status) {
        _animationListener(status, route);
      });
    } else {
      SessionReplay.instance.isPageTransitioning = true;
    }
  }
}
