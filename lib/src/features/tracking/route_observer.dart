import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/features/tracking/route_tree_constructor.dart';

import 'package:medallia_dxa/src/features/tracking/tracking.dart';
import 'package:medallia_dxa/src/utility/dependency_injector.dart';
import 'package:medallia_dxa/src/utility/logger_sdk.dart';

class RouteAnimationObserver extends TransitionRouteAnimationObserverClasses {
  RouteAnimationObserver(this._logger, RouteTreeConstructor customRouteObserver)
      : super(
          customRouteObserver,
        );

  final LoggerSDK _logger;

  Logger get logger => _logger.routeObserverLogger;
  bool get isSdkRunning => DependencyInjector.instance.config.isSdkRunning;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    logger.d('didPush - ${route.settings.name}- $route - $previousRoute');

    if (route is TransitionRoute) {
      if (route.animation != null) {
        route.animation!.addStatusListener((status) {
          _animationListener(status, route);
        });
        _animationListener(route.animation!.status, route);
      }
    }
    routeTreeConstructor.pushedRoute(route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    logger.d('didReplace - ${newRoute?.settings.name}- $newRoute - $oldRoute');

    if (newRoute is TransitionRoute) {
      if (newRoute.animation != null) {
        newRoute.animation!.addStatusListener((status) {
          _animationListener(status, newRoute);
        });
        _animationListener(newRoute.animation!.status, newRoute);
      }
    }
    routeTreeConstructor.replacedRoute(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    logger.d('didPop - ${route.settings.name}- $route - $previousRoute');

    routeTreeConstructor.poppedRoute(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
    logger.d('didRemove - ${route.settings.name}- $route - $previousRoute');

    routeTreeConstructor.removedRoute(route, previousRoute);
  }
}

abstract class TransitionRouteAnimationObserverClasses
    extends RouteObserver<Route<dynamic>> {
  late final Tracking tracking = DependencyInjector.instance.tracking;
  final RouteTreeConstructor routeTreeConstructor;
  TransitionRouteAnimationObserverClasses(
    this.routeTreeConstructor,
  );
  void _animationListener(AnimationStatus status, TransitionRoute route) {
    _statusChanged(route, status);
    tracking.isRouteAnimating = _isAnyRouteAnimating();
  }

  void _statusChanged(TransitionRoute route, AnimationStatus status) {
    if (status == AnimationStatus.dismissed ||
        status == AnimationStatus.completed) {
      routeTreeConstructor.routesWithActiveAnimation.remove(route);
    } else {
      if (route.controller != null &&
          route.controller!.toStringDetails().contains('silenced')) {
        return;
      }
      routeTreeConstructor.routesWithActiveAnimation.update(
        route,
        (value) => status,
        ifAbsent: () => status,
      );
    }
  }

  bool _isAnyRouteAnimating() {
    return routeTreeConstructor.routesWithActiveAnimation.isNotEmpty;
  }
}
