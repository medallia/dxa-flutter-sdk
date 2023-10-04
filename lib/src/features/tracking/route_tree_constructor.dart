// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:medallia_dxa/src/features/config/medallia_dxa_config.dart';
import 'package:medallia_dxa/src/features/tracking/route_observer.dart';

import 'package:medallia_dxa/src/features/tracking/screen_visited.dart';
import 'package:medallia_dxa/src/utility/extensions.dart';
import 'package:medallia_dxa/src/utility/logger_sdk.dart';

typedef RouteList = List<DxaRoute>;

///This module tracks all changes triggered by the observers in the Navigators
///and the router, so it can notify the tracking modules of all the possible
///routes that are the candidates to track. It does that by creating and then
///constantly updating the route tree
class RouteTreeConstructor {
  RouteTreeConstructor({
    required MedalliaDxaConfig config,
    required WidgetsBinding widgetsBindingInstance,
    required Future<void> Function(List<ScreenVisited>, {bool isBackground})
        startScreen,
    required ScreenVisited Function({
      required String id,
      required String name,
      required List<DxaRoute> dxaRoutePath,
      required List<DxaRoute> allDetectedDxaRoutes,
    })
        createScreenVisited,
    required LoggerSDK loggerSDK,
  })  : _config = config,
        _widgetsBindingInstance = widgetsBindingInstance,
        _startScreen = startScreen,
        _createScreenVisited = createScreenVisited,
        _loggerSDK = loggerSDK;
  final MedalliaDxaConfig _config;
  final LoggerSDK _loggerSDK;
  final WidgetsBinding _widgetsBindingInstance;
  final Future<void> Function(List<ScreenVisited>, {bool isBackground})
      _startScreen;
  final ScreenVisited Function({
    required String id,
    required String name,
    required List<DxaRoute> dxaRoutePath,
    required List<DxaRoute> allDetectedDxaRoutes,
  }) _createScreenVisited;
  final List<RouteObserver> _routeObserversUsed = [];
  final Map<TransitionRoute, AnimationStatus> routesWithActiveAnimation =
      <TransitionRoute, AnimationStatus>{};
  bool get routerProvided => _routerDelegate != null;
  final String placeholderForUnnamedDxaRoute = 'dxa_route_name_not_provided';

  ///Each navigator's hashcode with its routes, constantly updated
  final Map<int, RouteList> _mapOfNavigatorsWithTheirListOfRoutes = {};
  String? lastRouterDelegatePath;

  ///This is the path that is most likely the current one, it gets updated
  ///thanks to the observers on the navigators. The routes which have been
  ///updated last are the current routes that should be tracked. But in apps
  ///that use setups with a Stack (or similar widgets) to control the visibility
  ///of multiple navigators, that is no longer true. Just by changing the order
  ///in a Stack's children, the current route in focus can change without the
  ///observers being triggered, so the SDK is blind to these changes.
  ///That's why the RouteTreeConstructor class sends a list of potential
  ///candidates to the tracking module, it's impossible to know which is really
  ///the route in focus just by listening to Navigator(s) and Router changes.
  ///The tracking module will choose which is route to track by checking which
  ///candidate is the one being painted once the navigator(s) are settled.
  final List<DxaRoute> _currentDxaRoutePath = [];
  void _setCurrentDxaRoutePath(List<DxaRoute> dxaRoutePath) {
    if (dxaRoutePath.isEmpty) return;
    if (dxaRoutePath == _currentDxaRoutePath) return;
    _currentDxaRoutePath.clear();
    _currentDxaRoutePath.addAll(dxaRoutePath);
    sendPotentialScreenVisitedToTrackingModule();
  }

  List<DxaRoute> _getAllDetectedDxaRoutes() {
    final List<DxaRoute> listOfRoutes = [];

    _mapOfNavigatorsWithTheirListOfRoutes
        .forEach((navigatorHashcode, routesOfNavigator) {
      for (final route in routesOfNavigator) {
        listOfRoutes.add(route);
      }
    });
    return listOfRoutes;
  }

  ///When this method is called, it creates the list of potential ScreenVisited,
  ///one of them is built with [_currentDxaRoutePath], which is the most likely
  ///candidate, and the rest are build using [_getDxaRoutePathCandidates].
  ///All screen visited candidates are sent to the tracking module.
  void sendPotentialScreenVisitedToTrackingModule() {
    if (!_config.isSdkRunning) return;
    final List<DxaRoute> allDetectedDxaRoutes = _getAllDetectedDxaRoutes();

    String? routerDelegatePath;

    if (routerProvided) {
      routerDelegatePath = _routerDelegateNameCallback!();
    }

    lastRouterDelegatePath = routerDelegatePath;

    final List<List<DxaRoute>> dxaRoutePathCandidates = [_currentDxaRoutePath];
    if (_currentDxaRoutePath.last.isOpaque) {
      dxaRoutePathCandidates.addAll(
        _getDxaRoutePathCandidates(
          topNavigatorHashcode:
              _currentDxaRoutePath.first.navigatorOwnerHashcode,
          ignoreThisLeafRoute: _currentDxaRoutePath.last,
        ),
      );
    }

    final List<ScreenVisited> screenVisitedCandidates = [];
    for (final dxaRoutePath in dxaRoutePathCandidates) {
      final DxaRoute dxaRouteLeaf = dxaRoutePath.last;
      String? screenVisitCandidateName = routerDelegatePath ??
          dxaRouteLeaf.name.let((name) {
            return name == '/' ? homeScreenName : name;
          });
      if (screenVisitCandidateName == null && dxaRouteLeaf.isPopupRoute) {
        screenVisitCandidateName = _getNameFormParentRoute(dxaRouteLeaf);
      }
      _createScreenVisited(
        id: dxaRoutePath.hashCode.toString(),
        name: screenVisitCandidateName ?? placeholderForUnnamedDxaRoute,
        dxaRoutePath: dxaRoutePath,
        allDetectedDxaRoutes: allDetectedDxaRoutes,
      ).let((screenVisited) => screenVisitedCandidates.add(screenVisited));
    }
    _startScreen(screenVisitedCandidates);
  }

  RouterDelegate? _routerDelegate;
  void setRouterDelegate(RouterDelegate routerDelegate) {
    if (_routerDelegate != null) return;
    _routerDelegate = routerDelegate;
    _routerDelegate!.addListener(() {
      ///After every change in routerDelegate, we need to wait until these
      ///changes are applied to the Element tree, because
      ///[_getNavigatorHashcodeList] walks the tree.
      _widgetsBindingInstance.addPostFrameCallback((timeStamp) {
        if (lastRouterDelegatePath != _routerDelegateNameCallback!()) {
          if (_currentDxaRoutePath.isEmpty) return;
          final navigatorHashCodeList = _getNavigatorHashcodeList(
            _currentDxaRoutePath.last.route.navigator!,
          );
          _updateRoutePath(navigatorHashCodeList.first);
        }
      });
    });
  }

  String Function()? _routerDelegateNameCallback;
  void setRouterDelegateNameCallback(
    String Function() routerDelegateNameCallback,
  ) {
    if (_routerDelegateNameCallback != null) return;
    _routerDelegateNameCallback = routerDelegateNameCallback;
  }

  String homeScreenName = 'Home';

  RouteObserver get _automaticTrackingRouteObserver {
    return RouteAnimationObserver(
      _loggerSDK,
      this,
    );
  }

  RouteObserver getNewObservers() {
    final RouteObserver newRouteObserver = _automaticTrackingRouteObserver;

    _routeObserversUsed.add(newRouteObserver);
    return newRouteObserver;
  }

  ///Used for keeping tracked of nested routes (see [pushedRoute])
  List<NavigatorState> _getNavigatorsTree(NavigatorState navigatorState) {
    final List<NavigatorState> navigatorsTree = [];
    void recursive(NavigatorState navigatorState) {
      navigatorsTree.add(navigatorState);

      final context = navigatorState.context;

      context.visitAncestorElements((element) {
        final NavigatorState? state = Navigator.maybeOf(element);
        if (state == null) return false;
        recursive(state);
        return false;
      });
    }

    recursive(navigatorState);
    return navigatorsTree.reversed.toList();
  }

  NavigatorState? _getTopNavigator(BuildContext context) {
    return Navigator.maybeOf(context, rootNavigator: true);
  }

  void _cleanupNavigators() {
    _mapOfNavigatorsWithTheirListOfRoutes.removeWhere((key, value) {
      value.removeWhere((element) {
        return element.route.navigator == null;
      });
      if (value.isEmpty) return true;
      return false;
    });
  }

  ///Create all possible dxaRoute paths by finding all leaf routes, which are
  ///the ones that don't have a nested navigator, and then finding its parent
  ///routes so we have the whole path. The ignoreThisLeafRoute is used to skip
  ///the path that we already have on [_currentDxaRoutePath].
  List<List<DxaRoute>> _getDxaRoutePathCandidates({
    required int topNavigatorHashcode,
    required DxaRoute ignoreThisLeafRoute,
  }) {
    final List<List<DxaRoute>> dxaRoutePathCandidates = [];
    final List<DxaRoute> leafRoutes = [];
    final List<DxaRoute> routesWithNestedNavigators = [];

    //Find the leaf routes
    _mapOfNavigatorsWithTheirListOfRoutes.forEach((key, value) {
      final DxaRoute potentialLeaf = value.last;
      if (potentialLeaf == ignoreThisLeafRoute) return;
      potentialLeaf.nestedNavigatorsHashcode.isEmpty.let((isEmpty) {
        if (isEmpty) {
          leafRoutes.add(potentialLeaf);
        } else {
          routesWithNestedNavigators.add(potentialLeaf);
        }
      });
    });

    //build the leaf routes path
    for (final leafRoute in leafRoutes) {
      final leafRoutePath = [leafRoute];

      void findParentRoute(DxaRoute route) {
        final int ownerNavigatorHashcode = route.navigatorOwnerHashcode;
        final int index = routesWithNestedNavigators.indexWhere(
          (element) =>
              element.nestedNavigatorsHashcode.contains(ownerNavigatorHashcode),
        );
        if (index == -1) {
          dxaRoutePathCandidates.add(leafRoutePath);
          return;
        }
        final DxaRoute parentDxaRoute = routesWithNestedNavigators.firstWhere(
          (element) =>
              element.nestedNavigatorsHashcode.contains(ownerNavigatorHashcode),
        );
        leafRoutePath.insert(0, parentDxaRoute);
        findParentRoute(parentDxaRoute);
      }

      findParentRoute(leafRoute);
    }
    return dxaRoutePathCandidates;
  }

  void _updateRoutePath(int topNavigatorHashcode) {
    final List<DxaRoute> routesPath = [];
    void recursive(DxaRoute dxaRoute) {
      routesPath.add(dxaRoute);
      if (dxaRoute.nestedNavigatorsHashcode.isEmpty) {
        _setCurrentDxaRoutePath(List.from(routesPath));
      } else {
        final rootRoute = _mapOfNavigatorsWithTheirListOfRoutes[
                dxaRoute.nestedNavigatorsHashcode.last]!
            .last;
        recursive(rootRoute);
      }
    }

    final List<DxaRoute> routesForRootNavigator =
        _mapOfNavigatorsWithTheirListOfRoutes[topNavigatorHashcode]!;
    final rootRoute = routesForRootNavigator.last;
    // routesPath.add(rootRoute);
    recursive(rootRoute);
  }

  List<int> _getNavigatorHashcodeList(NavigatorState navigatorState) {
    final List<NavigatorState> navigatorsStateTree =
        _getNavigatorsTree(navigatorState);
    final List<int> navigatorsHashcodeList =
        navigatorsStateTree.map((e) => e.hashCode).toList();
    return navigatorsHashcodeList;
  }

  ///Gets the name of the route that precedes this one in the same navigator.
  String? _getNameFormParentRoute(DxaRoute childDxaRoute) {
    return _mapOfNavigatorsWithTheirListOfRoutes[
            childDxaRoute.navigatorOwnerHashcode]
        .let<String?>((dxaRoutePath) {
      final int? index = dxaRoutePath?.indexOf(childDxaRoute);
      if (index == null || index < 1) return null;
      return dxaRoutePath?[index - 1].name;
    });
  }

  void pushedRoute(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _cleanupNavigators();
    final DxaRoute dxaRoute = DxaRoute(
      route: route,
      nestedNavigatorsHashcode: [],
    );

    final List<int> navigatorsHashcodeList =
        _getNavigatorHashcodeList(route.navigator!);
    final RenderIndexedStack? renderIndexStack = route.navigator!.context
        .findAncestorRenderObjectOfType<RenderIndexedStack>();
    if (renderIndexStack != null) {
      renderIndexStack.index;
    }
    final int navigatorHashCode = route.navigator!.hashCode;

    //If this navigator doesn't exist in our map
    final List<DxaRoute> trackedRoutesForThisNavigator =
        _mapOfNavigatorsWithTheirListOfRoutes[navigatorHashCode] ??= [];

    if (previousRoute == null) {
      ///This means it's either the first route of the root navigator,
      ///or the first route of a new navigator.
      ///In the second case, we need to find which navigator is the ancestor of the one
      ///that has pushed this route. So we can add it as a nested navigator to the
      ///route of the parent navigator
      assert(route.isFirst);
      trackedRoutesForThisNavigator.add(dxaRoute);
      final index = navigatorsHashcodeList.indexOf(navigatorHashCode);
      //If this is false then this route is indeed the first one of the root navigator,
      //no more logic needed.
      if (navigatorsHashcodeList.length > 1) {
        //find the parent navigator
        final ancestorNavigatorHashcode = navigatorsHashcodeList[index - 1];
        //find the routes stack
        final List<DxaRoute> ancestorNavigatorRoutes =
            _mapOfNavigatorsWithTheirListOfRoutes[ancestorNavigatorHashcode]!;
        //Add the navigator as a nested navigator from the route that is active in
        //the previous navigator, the topmost one.
        ancestorNavigatorRoutes.last.nestedNavigatorsHashcode
            .add(navigatorHashCode);
      }
    } else {
      //There is a previous route, so we just need to add the current route after
      //the previousRoute.
      //Find the dxaRoute of the previousRoute, which should be in [trackedRoutesForThisNavigator]
      // so this route can bee inserted in the list just one position after.
      final indexForPreviousRoute = trackedRoutesForThisNavigator.indexWhere(
        (dxaRoute) => dxaRoute.hashCode == previousRoute.hashCode,
      );

      if (indexForPreviousRoute != -1) {
        trackedRoutesForThisNavigator.insert(
          indexForPreviousRoute + 1,
          dxaRoute,
        );
      }
    }

    _updateRoutePath(navigatorsHashcodeList.first);
  }

  void replacedRoute({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    _cleanupNavigators();

    if (newRoute == null) return;
    // printNavigatorPages(newRoute.navigator!.widget);

    final int navigatorHashCode = newRoute.navigator!.hashCode;
    final List<DxaRoute> trackedRoutesForThisNavigator =
        _mapOfNavigatorsWithTheirListOfRoutes[navigatorHashCode] ??= [];
    int oldRouteIndex = trackedRoutesForThisNavigator.length;

    DxaRoute? oldDxaRoute;
    if (oldRoute != null) {
      oldRouteIndex = trackedRoutesForThisNavigator
          .indexWhere((element) => element.hashCode == oldRoute.hashCode);
      if (oldRouteIndex != -1) {
        oldDxaRoute = trackedRoutesForThisNavigator[oldRouteIndex];
        trackedRoutesForThisNavigator.removeAt(oldRouteIndex);
      }
    }

    final DxaRoute newDxaRoute = DxaRoute(
      route: newRoute as ModalRoute,
      nestedNavigatorsHashcode: [],
    );
    trackedRoutesForThisNavigator.insert(oldRouteIndex, newDxaRoute);
    if (oldRouteIndex == 0) {
      assert(newDxaRoute.route.isFirst);
    }

    if (!_currentDxaRoutePath.contains(oldDxaRoute)) return;
    final NavigatorState topNavigator =
        _getTopNavigator(newRoute.navigator!.context) ?? newRoute.navigator!;
    _updateRoutePath(topNavigator.hashCode);
  }

  void poppedRoute(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _cleanupNavigators();

    final int navigatorHashCode = route.navigator!.hashCode;
    final List<DxaRoute>? trackedRoutesForThisNavigator =
        _mapOfNavigatorsWithTheirListOfRoutes[navigatorHashCode];

    trackedRoutesForThisNavigator
        ?.removeWhere((element) => element.hashCode == route.hashCode);

    final NavigatorState topNavigator =
        _getTopNavigator(route.navigator!.context) ?? route.navigator!;
    _updateRoutePath(topNavigator.hashCode);
  }

  void removedRoute(Route route, Route? previousRoute) {
    _cleanupNavigators();

    final int navigatorHashCode = route.navigator!.hashCode;
    final List<DxaRoute>? trackedRoutesForThisNavigator =
        _mapOfNavigatorsWithTheirListOfRoutes[navigatorHashCode];
    final DxaRoute dxaRoute = DxaRoute(
      route: route as ModalRoute,
      nestedNavigatorsHashcode: [],
    );
    //remove the dxaRoute from the tracked routes
    trackedRoutesForThisNavigator
        ?.removeWhere((element) => element.hashCode == route.hashCode);

    //If the removed route is not the current one, we don't update the routePath
    if (dxaRoute != _currentDxaRoutePath.last) return;
    final NavigatorState topNavigator =
        _getTopNavigator(route.navigator!.context) ?? route.navigator!;
    _updateRoutePath(topNavigator.hashCode);
  }
}

class DxaRoute {
  final Route route;
  final String? name;
  String? changedName;
  final Map<String, String> arguments;
  final List<int> nestedNavigatorsHashcode;
  final int navigatorOwnerHashcode;
  final BuildContext navigatorContext;

  DxaRoute({
    required this.route,
    required this.nestedNavigatorsHashcode,
  })  : name = route.settings.name,
        arguments = route.settings.arguments is Map<String, String>
            ? route.settings.arguments! as Map<String, String>
            : {},
        navigatorOwnerHashcode = route.navigator!.hashCode,
        navigatorContext = route.navigator!.context;

  BuildContext? get routeContext => (route as ModalRoute).subtreeContext;
  bool get isModalRoute => route is ModalRoute;
  bool get isPopupRoute => route is PopupRoute;
  bool get isOpaque => route is ModalRoute && (route as ModalRoute).opaque;
  bool get isRouteSubtreeContextDirty => (navigatorContext as Element).dirty;

  RenderObject? get routeRenderObject {
    return routeContext?.findRenderObject();
  }

  bool get isThisRoutePainted {
    final RenderObject? renderObject = routeRenderObject;
    if (renderObject == null) return false;
    if (!routeRenderObject!.isLayerAttached) {
      return false;
    }

    return renderObject.areAllAncestorsPainted;
  }

  @override
  bool operator ==(covariant DxaRoute other) {
    if (identical(this, other)) return true;

    return other.route == route &&
        other.name == name &&
        other.nestedNavigatorsHashcode == nestedNavigatorsHashcode;
  }

  @override
  int get hashCode => route.hashCode;

  @override
  String toString() {
    return 'DxaRoute(route: $route, name: $name, arguments: $arguments, nestedNavigatorsHashcode: $nestedNavigatorsHashcode)';
  }
}
