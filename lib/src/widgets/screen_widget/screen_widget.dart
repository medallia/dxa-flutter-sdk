import 'package:decibel_sdk/src/features/tracking.dart';
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:decibel_sdk/src/utility/route_observer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
part '../mask_widget.dart';
part 'inherited_widgets.dart';

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
  int get screenId => _globalKey.hashCode;
  ModalRoute<Object?>? route;
  bool get isTabBar => widget.tabNames != null && widget.tabController != null;
  final List<GlobalKey> listOfMasks = [];
  // Defining an internal function to be able to remove the listener
  Future<void> _tabControllerListener() async {
    await Tracking.instance.tabControllerListener(
        screenId: screenId.toString(),
        name: widget.screenName,
        listOfMasks: listOfMasks,
        captureKey: _globalKey,
        tabController: widget.tabController!,
        tabNames: widget.tabNames!);
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
    WidgetsBindingNullSafe.instance!
      ..addObserver(this)
      ..addPostFrameCallback((_) async {
        route = ModalRoute.of(context);
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
    callWhenIsNotCurrentRoute();
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
    route = ModalRoute.of(context);
    if (route?.isCurrent ?? false) {
      callWhenIsCurrentRoute();
    }
  }

  @override
  void didPop() {
    callWhenIsNotCurrentRoute();
  }

  @override
  void didPushNext() {
    callWhenIsNotCurrentRoute();
  }

  Future<void> callWhenIsNotCurrentRoute() async {
    await Tracking.instance.endScreen(screenId.toString(), isTabBar: isTabBar);
  }

  Future<void> callWhenIsCurrentRoute() async {
    final ScreenVisited screenVisited = Tracking.instance.createScreenVisited(
      id: screenId.toString(),
      name: widget.screenName,
      listOfMasks: listOfMasks,
      captureKey: _globalKey,
      tabBarNames: widget.tabNames,
      tabBarIndex: widget.tabController?.index,
    );
    await Tracking.instance.startScreen(
      screenVisited,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _MaskList(
      listOfMasks: listOfMasks,
      child: RepaintBoundary(
        key: _globalKey,
        child: Material(child: Ink(child: widget.child)),
      ),
    );
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
