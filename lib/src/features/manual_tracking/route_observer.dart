part of '../tracking/route_observer.dart';

class ManualRouteObserver extends TransitionRouteAnimationObserverClasses {
  ManualRouteObserver(
    this._logger,
    CustomRouteObserver customRouteObserver,
  ) : super(
          customRouteObserver,
        );
  final LoggerSDK _logger;
  Logger get logger => _logger.routeObserverLogger;

  late final ManualTracking manualTracking =
      DependencyInjector.instance.manualTracking;
  late final AutoMasking autoMasking = DependencyInjector.instance.autoMasking;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    logger.d('didPush');
    if (route is TransitionRoute) {
      if (route.animation != null) {
        route.animation!.addStatusListener((status) {
          _animationListener(status, route);
        });
        _animationListener(route.animation!.status, route);
      }
    }
    if (route is ModalRoute) {
      WidgetsBindingNullSafe.instance!.addPostFrameCallback((timeStamp) {
        if (route is PopupRoute) {
          manualTracking.dialogContext = route.subtreeContext!;
        } else {
          manualTracking.dialogContext = null;
        }
        manualTracking.rootElementForAutomasking =
            route.subtreeContext! as Element;
        autoMasking.clear();
      });
    }
    super.didPush(route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    logger.d('didReplace');
    if (newRoute is TransitionRoute) {
      if (newRoute.animation != null) {
        newRoute.animation!.addStatusListener((status) {
          _animationListener(status, newRoute);
        });
        _animationListener(newRoute.animation!.status, newRoute);
      }
    }
    if (newRoute is ModalRoute) {
      WidgetsBindingNullSafe.instance!.addPostFrameCallback((timeStamp) {
        if (newRoute is PopupRoute) {
          manualTracking.dialogContext = newRoute.subtreeContext;
        } else {
          manualTracking.dialogContext = null;
        }
        manualTracking.rootElementForAutomasking =
            newRoute.subtreeContext! as Element;
        autoMasking.clear();
      });
    }

    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    logger.d('didRemove');
    autoMasking.clear();
    if (route is TransitionRoute) {
      if (route.animation != null) {
        route.animation!.addStatusListener((status) {
          _animationListener(status, route);
        });
        _animationListener(route.animation!.status, route);
      }
    }

    super.didRemove(route, previousRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    logger.d('didPop');
    autoMasking.clear();
    if (previousRoute == null) {
      super.didPop(route, previousRoute);
      return;
    }
    if (previousRoute is PopupRoute) {
      manualTracking.dialogContext = previousRoute.subtreeContext;
    } else {
      manualTracking.dialogContext = null;
    }
    if (previousRoute is ModalRoute) {
      manualTracking.rootElementForAutomasking =
          previousRoute.subtreeContext as Element?;
    }
    super.didPop(route, previousRoute);
  }
}
