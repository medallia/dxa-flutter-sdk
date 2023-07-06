// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import 'package:decibel_sdk/src/features/autoMasking/auto_masking_class.dart';
import 'package:decibel_sdk/src/features/manual_tracking/manual_tracking.dart';
import 'package:decibel_sdk/src/features/tracking/screen_visited.dart';
import 'package:decibel_sdk/src/features/tracking/tracking.dart';
import 'package:decibel_sdk/src/utility/dependency_injector.dart';
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:decibel_sdk/src/utility/logger_sdk.dart';

part '../manual_tracking/route_observer.dart';

class CustomRouteObserver {
  CustomRouteObserver(this.routeObserverOtherNavigators);
  //TODO
  //static final RouteObserver manualTrackingRouteObserver =
  // ManualRouteObserver(LoggerSDK.instance);
  final List<RouteObserver> _routeObserversUsed = [];
  final List<RouteObserver> _routeObserverForScreenWidgetDispatched = [];
  final Map<TransitionRoute, AnimationStatus> _routesWithActiveAnimation =
      <TransitionRoute, AnimationStatus>{};
  final Map<Route, Set<RouteAware>> routesAScreenWidgetHasSubscribedTo = {};
  final RouteObserverOtherNavigators routeObserverOtherNavigators;
  Route? rootRoute;
  bool rootNotFound = true;
  RouteObserver<TransitionRoute<void>>
      get _screenWidgetAndMaskWidgetRouteObserver {
    return RouteObserver<TransitionRoute<void>>();
  }

  RouteObserver get _manualTracikingRouteObserver {
    return ManualRouteObserver(LoggerSDK.instance, this);
  }

  RouteObserver get _automaticTrackingRouteObserver {
    return RouteAnimationObserver(
      LoggerSDK.instance,
      this,
    );
  }

  List<RouteObserver> getNewObservers({required bool automaticTracking}) {
    _routeObserversUsed.removeWhere((element) => element.navigator == null);
    late final List<RouteObserver> newRouteObservers;
    if (automaticTracking) {
      newRouteObservers = [
        _screenWidgetAndMaskWidgetRouteObserver,
        _automaticTrackingRouteObserver
      ];
    } else {
      newRouteObservers = [
        _screenWidgetAndMaskWidgetRouteObserver,
        _manualTracikingRouteObserver
      ];
    }
    _routeObserversUsed.addAll(newRouteObservers);
    return newRouteObservers;
  }

  RouteObserver? observerToSubscribeFromWidget(
    NavigatorState widgetNavigator, {
    bool isScreenWidget = false,
  }) {
    final List<RouteObserver> widgetRouteObserverList = _routeObserversUsed
        .where((element) => element is! RouteAnimationObserver)
        .toList();
    final Iterable<RouteObserver> matchingNavigators =
        widgetRouteObserverList.where((element) {
      final NavigatorState? navigatorFromTheObserver = element.navigator;
      if (navigatorFromTheObserver != null) {
        return navigatorFromTheObserver == widgetNavigator;
      }
      return false;
    });
    if (matchingNavigators.isEmpty) {
      return null;
    }
    if (matchingNavigators.length > 1) {
      return null;
    }
    if (isScreenWidget) {
      _routeObserverForScreenWidgetDispatched.add(matchingNavigators.single);
    }
    return matchingNavigators.single;
  }

  bool isThisObserverUsedInAWidget(NavigatorObserver observer) {
    return _routeObserverForScreenWidgetDispatched.contains(observer);
  }

  void removeObserverFromObserversForWidgetDispatchList(
    RouteObserver observer,
  ) {
    _routeObserverForScreenWidgetDispatched.remove(observer);
  }

  void thisWidgetHasSubscribedToThisRoute(RouteAware widget, Route route) {
    if (routesAScreenWidgetHasSubscribedTo.containsKey(route)) {
      routesAScreenWidgetHasSubscribedTo.update(route, (value) {
        value.add(widget);
        return value;
      });
    } else {
      routesAScreenWidgetHasSubscribedTo.putIfAbsent(route, () => {widget});
    }
  }

  void thisWidgetHasUnsubscribedToThisRoute(RouteAware widget, Route route) {
    if (!routesAScreenWidgetHasSubscribedTo.containsKey(route)) return;
    final leftoverSubscribedWidgets =
        routesAScreenWidgetHasSubscribedTo.update(route, (value) {
      value.remove(widget);
      return value;
    });
    if (leftoverSubscribedWidgets.isEmpty) {
      routesAScreenWidgetHasSubscribedTo.remove(route);
    }
  }

  bool hasAWidgetSubscribedToThisRoute(Route route) {
    if (routesAScreenWidgetHasSubscribedTo.containsKey(route)) {
      return routesAScreenWidgetHasSubscribedTo[route]!.isNotEmpty;
    }
    return false;
  }
}

class RouteAnimationObserver extends TransitionRouteAnimationObserverClasses {
  RouteAnimationObserver(this._logger, CustomRouteObserver customRouteObserver)
      : super(
          customRouteObserver,
        );

  final LoggerSDK _logger;
  Logger get logger => _logger.routeObserverLogger;
  bool get isSdkRunning => DependencyInjector.instance.config.isSdkRunning;
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (!isSdkRunning) return;
    logger.d('didPush');
    if (previousRoute == null && _customRouteObserver.rootNotFound) {
      _customRouteObserver.rootRoute = route;
      _customRouteObserver.rootNotFound = false;
    }

    if (route is TransitionRoute) {
      if (route.animation != null) {
        route.animation!.addStatusListener((status) {
          _animationListener(status, route);
        });
        _animationListener(route.animation!.status, route);
      }
    }
    if (route is PopupRoute) {
      if (previousRoute != null && previousRoute is PageRoute) {
        logger.d('is PageRoute');

        final BuildContext previousContext = previousRoute.subtreeContext!;

        WidgetsBindingNullSafe.instance!.addPostFrameCallback((timeStamp) {
          final BuildContext currentContext = route.subtreeContext!;
          // check if the popup has a screenwidget
          currentContext.visitChildElements((element) {
            if (element.containsScreenWidget()) {
              logger.d('currentElement containsScreenWidget');

              return;
            } else {
              previousContext.visitChildElements((previousElement) {
                if (previousElement.containsScreenWidget()) {
                  logger.d('previousElement containsScreenWidget');
                  ;
                  final BuildContext dialogContext = route.subtreeContext!;
                  final ScreenVisited? screenVisited = tracking
                      .lastUntrackedOrTrackedScreenVisited
                      ?.getAutomaticPopupScreenVisited(
                    route.hashCode.toString(),
                    dialogContext,
                  );
                  if (screenVisited != null) {
                    tracking.startScreen(screenVisited);
                  }
                }
              });
            }
          });
        });
      }
    }
    if (previousRoute != null) {
      checkForRootNavigator(previousRoute, inRoute: false);
    }
    super.didPush(route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    if (!isSdkRunning) return;
    logger.d('didReplace');
    //check if the old route is root route to update root route
    if (_customRouteObserver.rootRoute == oldRoute) {
      _customRouteObserver.rootRoute = newRoute;
    }
    if (newRoute is TransitionRoute) {
      if (newRoute.animation != null) {
        newRoute.animation!.addStatusListener((status) {
          _animationListener(status, newRoute);
        });
        _animationListener(newRoute.animation!.status, newRoute);
      }
    }
    if (oldRoute != null) {
      checkForDialogPopOrRemove(oldRoute);
    }
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (!isSdkRunning) return;
    logger.d('didPop');

    checkForDialogPopOrRemove(route);
    if (previousRoute != null) {
      checkForRootNavigator(previousRoute, inRoute: true);
    }
    super.didPop(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    if (!isSdkRunning) return;
    logger.d('didRemove');

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

  void checkForDialogPopOrRemove(Route dialogRoute) {
    if (dialogRoute is PopupRoute) {
      final BuildContext currentContext = dialogRoute.subtreeContext!;
      // check if the popup has a screenwidget
      currentContext.visitChildElements((element) {
        if (element.containsScreenWidget()) {
          return;
        } else {
          tracking.endScreen(dialogRoute.hashCode.toString());
        }
      });
    }
  }

  void checkForRootNavigator(Route route, {required bool inRoute}) {
    final List<NavigatorObserver>? observersFromPreviousRoute =
        route.navigator?.widget.observers;
    if (observersFromPreviousRoute != null) {
      bool observerFlag = false;
      for (final observer in observersFromPreviousRoute) {
        observerFlag =
            _customRouteObserver.isThisObserverUsedInAWidget(observer);
        if (observerFlag) break;
      }
      if (!observerFlag) {
        if (inRoute) {
          _customRouteObserver.routeObserverOtherNavigators.inRoute();
        } else {
          _customRouteObserver.routeObserverOtherNavigators.outsideRoute();
        }
      } else {
        if (inRoute &&
            _customRouteObserver.rootRoute == route &&
            !_customRouteObserver.hasAWidgetSubscribedToThisRoute(route)) {
          _customRouteObserver.routeObserverOtherNavigators.inRoute();
        }
      }
    }
  }
}

abstract class RouteAwareOtherNavigators {
  Route? get routeGetter;
  void inRoute() {}
  void outsideRoute() {}
}

class RouteObserverOtherNavigators {
  final LinkedHashSet<RouteAwareOtherNavigators> _listeners = LinkedHashSet();

  void subscribe(RouteAwareOtherNavigators routeAware) {
    _listeners.add(routeAware);
  }

  void unsubscribe(RouteAware routeAware) {
    _listeners.remove(routeAware);
  }

  void inRoute() {
    int ncurrent = 0;

    for (var i = _listeners.length - 1; i >= 0; i--) {
      final routeAware = _listeners.elementAt(i);

      if (routeAware.routeGetter != null && routeAware.routeGetter!.isCurrent) {
        if (ncurrent < 1) {
          routeAware.inRoute();
        }
        ncurrent++;
      }
    }
  }

  void outsideRoute() {
    for (final routeAware in _listeners) {
      routeAware.outsideRoute();
    }
  }
}

abstract class TransitionRouteAnimationObserverClasses
    extends RouteObserver<TransitionRoute<dynamic>> {
  late final Tracking tracking = DependencyInjector.instance.tracking;
  final CustomRouteObserver _customRouteObserver;
  TransitionRouteAnimationObserverClasses(
    this._customRouteObserver,
  );
  void _animationListener(AnimationStatus status, TransitionRoute route) {
    _statusChanged(route, status);
    tracking.isRouteAnimating = _isAnyRouteAnimating();
  }

  void _statusChanged(TransitionRoute route, AnimationStatus status) {
    if (status == AnimationStatus.dismissed ||
        status == AnimationStatus.completed) {
      _customRouteObserver._routesWithActiveAnimation.remove(route);
    } else {
      _customRouteObserver._routesWithActiveAnimation.update(
        route,
        (value) => status,
        ifAbsent: () => status,
      );
    }
  }

  bool _isAnyRouteAnimating() {
    return _customRouteObserver._routesWithActiveAnimation.isNotEmpty;
  }
}
