import 'package:decibel_sdk/src/features/session_replay.dart';
import 'package:decibel_sdk/src/features/tracking.dart';
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:decibel_sdk/src/utility/route_observer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
part 'mask_widget.dart';

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({
    required this.child,
    required this.screenName,
    this.tabController,
    this.tabNames,
  })  : assert(tabController != null ? tabNames != null : tabNames == null,
            'You either have to provide both tab related arguments, or none'),
        assert(tabNames == null || tabNames.length > 0),
        assert(tabController != null
            ? tabController.length == tabNames?.length
            : true);
  final Widget child;
  final String screenName;
  final TabController? tabController;
  final List<String>? tabNames;
  @override
  Widget build(BuildContext context) {
    final bool isInsideAnotherScreenWidget =
        context.getElementForInheritedWidgetOfExactType<
                _ScreenWidgetInheritedWidget>() !=
            null;
    return isInsideAnotherScreenWidget
        ? child
        : _ScreenWidgetInheritedWidget(
            child: _ActiveScreenWidget(
              screenName: screenName,
              tabController: tabController,
              tabNames: tabNames,
              child: child,
            ),
          );
  }
}

class _ActiveScreenWidget extends StatefulWidget {
  const _ActiveScreenWidget({
    required this.child,
    required this.screenName,
    this.tabController,
    this.tabNames,
  });

  final Widget child;
  final String screenName;
  final TabController? tabController;
  final List<String>? tabNames;

  @override
  State<StatefulWidget> createState() => _ActiveScreenWidgetState();
}

class _ActiveScreenWidgetState extends State<_ActiveScreenWidget>
    with WidgetsBindingObserver, RouteAware {
  final GlobalKey _globalKey = GlobalKey();
  ModalRoute<Object?>? route;

  // Defining an internal function to be able to remove the listener
  Future<void> _tabControllerListener() async {
    await Tracking.instance
        .tabControllerListener(widget.tabController!, widget.tabNames!);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    CustomRouteObserver.screenWidgetRouteObserver
        .subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void initState() {
    super.initState();

    SessionReplay.instance.stop();
    SessionReplay.instance.widgetsToMaskList.clear();
    WidgetsBindingNullSafe.instance!
      ..addObserver(this)
      ..addPostFrameCallback((_) async {
        route = ModalRoute.of(context);
        assert(
          route is! PopupRoute<dynamic>,
          '''ScreenWidget should not be used to wrap widgets in Popup Routes, 
          theses Popups are detected automatically and considered part of the 
          ScreenWidget that launched them.''',
        );
        // route?.animation?.addStatusListener(_animationListener);
      });
    widget.tabController?.addListener(_tabControllerListener);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        break;
      case AppLifecycleState.paused:
        break;
      default:
    }
  }

  @override
  void dispose() {
    CustomRouteObserver.screenWidgetRouteObserver.unsubscribe(this);
    WidgetsBindingNullSafe.instance!.removeObserver(this);
    widget.tabController?.removeListener(_tabControllerListener);
    super.dispose();
  }

  @override
  void didPush() {
    callWhenIsCurrentRoute();
  }

  @override
  void didPopNext() {
    WidgetsBindingNullSafe.instance!.addPostFrameCallback((timeStamp) {
      ///Check needed for implementations where instead of replacing the route
      ///with pushReplacement the implementation is like this:
      /// ```dart
      /// Navigator.of(context).pop();
      /// Navigator.of(context).push();
      /// ```
      route = ModalRoute.of(context);
      if (route?.isCurrent ?? false) {
        callWhenIsCurrentRoute();
      }
    });
  }

  @override
  void didPop() {
    callWhenIsNotCurrentRoute();
  }

  @override
  void didPushNext() {
    callWhenIsNotCurrentRoute();
  }

  void callWhenIsNotCurrentRoute() {
    SessionReplay.instance.stop();
  }

  Future<void> callWhenIsCurrentRoute() async {
    late String currentScreenName;

    if (widget.tabController != null) {
      currentScreenName = widget.tabNames![widget.tabController!.index];
    } else {
      currentScreenName = widget.screenName;
    }

    SessionReplay.instance.captureKey = _globalKey;

    if (Tracking.instance.visitedScreensList.isNotEmpty &&
        Tracking.instance.visitedScreensList.last.name != currentScreenName) {
      await Tracking.instance
          .endScreen(Tracking.instance.visitedScreensList.last);
    }

    if (Tracking.instance.visitedScreensList.isEmpty ||
        Tracking.instance.visitedScreensList.last.name != currentScreenName) {
      await Tracking.instance
          .startScreen(currentScreenName, tabBarNames: widget.tabNames);
    }

    await SessionReplay.instance.start();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: _globalKey,
      child: Material(child: Ink(child: widget.child)),
    );
  }
}

///Inherited Widget created to check with [getElementForInheritedWidgetOfExactType]
///if the current ScreenWidget is inside another ScreenWidget.
///This is a more performant alternative to using [findAncestorWidgetOfExactType]
///without an InheritedWidget.
class _ScreenWidgetInheritedWidget extends InheritedWidget {
  const _ScreenWidgetInheritedWidget({
    required _ActiveScreenWidget child,
  })  : _child = child,
        super(child: child);
  final _ActiveScreenWidget _child;
  static _ScreenWidgetInheritedWidget? of(BuildContext context) {
    final _ScreenWidgetInheritedWidget? result = context
        .dependOnInheritedWidgetOfExactType<_ScreenWidgetInheritedWidget>();
    return result;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}

//Serves as a wrapper for the TabBar body and allows MaskWidget
//to search for it in case there is a TabBar
class ScreenWidgetTabBar extends InheritedWidget {
  ScreenWidgetTabBar({Key? key, required Widget child})
      : super(
          key: key,
          child: Ink(
            child: child,
          ),
        );

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}
