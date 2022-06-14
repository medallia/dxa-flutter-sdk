import 'package:decibel_sdk/decibel_sdk.dart';
import 'package:decibel_sdk/features/session_replay.dart';
import 'package:decibel_sdk/features/tracking.dart';
import 'package:decibel_sdk/utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreenWidget extends StatefulWidget {
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
  State<StatefulWidget> createState() => _ScreenWidgetState();
}

class _ScreenWidgetState extends State<ScreenWidget>
    with WidgetsBindingObserver, RouteAware {
  final GlobalKey _globalKey = GlobalKey();
  ModalRoute<Object?>? route;

  // Defining an internal function to be able to remove the listener
  void _animationListener(AnimationStatus status) {
    if (status == AnimationStatus.completed ||
        status == AnimationStatus.dismissed) {
      SessionReplay.instance.isPageTransitioning = false;
    } else {
      SessionReplay.instance.isPageTransitioning = true;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    DecibelSdk.routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void initState() {
    super.initState();

    SessionReplay.instance.stop();
    SessionReplay.instance.widgetsToMaskList.clear();
    SessionReplay.instance.postFrameCallback = (calback) {
      WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
        calback.call();
      });
      WidgetsBinding.instance!.ensureVisualUpdate();
    };
    WidgetsBinding.instance!
      ..addObserver(this)
      ..addPostFrameCallback((_) async {
        route = ModalRoute.of(context);
        route?.animation?.addStatusListener(_animationListener);
      });
    widget.tabController?.addListener(() => Tracking.instance
        .tabControllerListener(widget.tabController!, widget.tabNames!));
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
    DecibelSdk.routeObserver.unsubscribe(this);
    WidgetsBinding.instance!.removeObserver(this);
    route?.animation?.removeStatusListener(_animationListener);
    widget.tabController?.removeListener(() => Tracking.instance
        .tabControllerListener(widget.tabController!, widget.tabNames!));
    super.dispose();
  }

  @override
  void didPush() {
    callWhenIsCurrentRoute();
  }

  @override
  void didPopNext() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      callWhenIsCurrentRoute();
    });
    // WidgetsBinding.instance!.ensureVisualUpdate();
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

  void callWhenIsCurrentRoute() {
    late String currentScreenName;

    if (widget.tabController != null) {
      currentScreenName = widget.tabNames![widget.tabController!.index];
    } else {
      currentScreenName = widget.screenName;
    }

    SessionReplay.instance.captureKey = _globalKey;
    if (Tracking.instance.visitedScreensList.isNotEmpty) {
      Tracking.instance.endScreen(Tracking.instance.visitedScreensList.last);
    }
    Tracking.instance
        .startScreen(currentScreenName, tabBarNames: widget.tabNames);
    SessionReplay.instance.start();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: _globalKey,
      child: widget.child,
    );
  }
}
