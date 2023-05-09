import 'package:decibel_sdk/src/features/autoMasking/auto_masking_class.dart';
import 'package:decibel_sdk/src/features/manual_tracking/manual_tracking.dart';
import 'package:decibel_sdk/src/features/tracking/tracking.dart';
import 'package:decibel_sdk/src/utility/dependency_injector.dart';
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:decibel_sdk/src/utility/logger_sdk.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class ManualRouteObserver extends RouteObserver<PageRoute<dynamic>>
    with RouteAnimationTransitionHandler {
  ManualRouteObserver(
    this._logger,
  );
  final LoggerSDK _logger;
  Logger get logger => _logger.routeObserverLogger;
  late final Tracking tracking = DependencyInjector.instance.tracking;
  late final ManualTracking manualTracking =
      DependencyInjector.instance.manualTracking;
  late final AutoMasking autoMasking = DependencyInjector.instance.autoMasking;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    logger.d('didPush');

    if (route is ModalRoute) {
      _handleRouteAnimationTransition(route, (bool transitioning) {
        tracking.isPageTransitioning = transitioning;
      });
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
    if (newRoute is ModalRoute) {
      _handleRouteAnimationTransition(newRoute, (bool transitioning) {
        tracking.isPageTransitioning = transitioning;
      });
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
    if (route is ModalRoute) {
      route.animation?.addStatusListener((status) {
        _animationListener(status, route, (bool transitioning) {
          tracking.isPageTransitioning = transitioning;
        });
      });
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

mixin RouteAnimationTransitionHandler {
  void _handleRouteAnimationTransition(
    ModalRoute route,
    Function(bool) transitionFlag,
  ) {
    if (route.animation != null) {
      if (route.animation?.status != AnimationStatus.completed &&
          route.animation?.status != AnimationStatus.dismissed) {
        transitionFlag(true);
      }
      route.animation?.addStatusListener((status) {
        _animationListener(status, route, transitionFlag);
      });
    }
  }

  void _animationListener(
    AnimationStatus status,
    ModalRoute route,
    Function(bool) transitionFlag,
  ) {
    if (status == AnimationStatus.completed ||
        status == AnimationStatus.dismissed) {
      transitionFlag(false);
      route.animation?.removeStatusListener((status) {
        _animationListener(status, route, transitionFlag);
      });
    } else {
      transitionFlag(true);
    }
  }
}
