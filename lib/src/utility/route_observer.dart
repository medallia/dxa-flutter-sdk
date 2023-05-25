// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:decibel_sdk/src/features/tracking/screen_visited.dart';
import 'package:decibel_sdk/src/features/tracking/tracking.dart';
import 'package:decibel_sdk/src/utility/dependency_injector.dart';
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:decibel_sdk/src/utility/logger_sdk.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class CustomRouteObserver {
  static final RouteObserver<ModalRoute<void>> screenWidgetRouteObserver =
      RouteObserver<ModalRoute<void>>();
  static final RouteObserver routeAnimationObserver =
      RouteAnimationObserver(LoggerSDK.instance);
}

class RouteAnimationObserver extends RouteObserver<PageRoute<dynamic>> {
  RouteAnimationObserver(this._logger);
  late final Tracking tracking = DependencyInjector.instance.tracking;
  final LoggerSDK _logger;
  Logger get logger => _logger.routeObserverLogger;
  final Map<TransitionRoute, AnimationStatus> _routesWithActiveAnimation =
      <TransitionRoute, AnimationStatus>{};

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    logger.d('didPush');
    if (route is TransitionRoute) {
      route.animation?.addStatusListener((status) {
        _animationListener(status, route);
      });
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
    super.didPush(route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    logger.d('didReplace');

    if (newRoute is TransitionRoute) {
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
    logger.d('didPop');

    checkForDialogPopOrRemove(route);

    super.didPop(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    logger.d('didRemove');

    if (route is TransitionRoute) {
      route.animation?.addStatusListener((status) {
        _animationListener(status, route);
      });
    }

    super.didRemove(route, previousRoute);
  }

  void _animationListener(AnimationStatus status, TransitionRoute route) {
    statusChanged(route, status);
    tracking.isRouteAnimating = isAnyRouteAnimating();
  }

  void statusChanged(TransitionRoute route, AnimationStatus status) {
    if (status == AnimationStatus.dismissed ||
        status == AnimationStatus.completed) {
      _routesWithActiveAnimation.remove(route);
    } else {
      _routesWithActiveAnimation.update(
        route,
        (value) => status,
        ifAbsent: () => status,
      );
    }
  }

  bool isAnyRouteAnimating() {
    return _routesWithActiveAnimation.isNotEmpty;
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
}
