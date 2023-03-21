import 'package:decibel_sdk/src/features/tracking.dart';
import 'package:decibel_sdk/src/utility/dependency_injector.dart';
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:decibel_sdk/src/utility/route_observer.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
part '../mask_widget.dart';
part 'inherited_widgets.dart';

typedef ScreenWidgetBuilder = Widget Function(BuildContext context);

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({
    required this.child,
    required this.screenName,
    this.tabController,
    this.tabNames,
    this.recordingAllowed = true,
    this.enableAutomaticPopupRecording = true,
    this.enableAutomaticMasking = true,
  })  : isPopup = false,
        builder = null,
        initialIndex = null,
        assert(
          tabController != null ? tabNames != null : tabNames == null,
          'You either have to provide both tab related arguments, or none',
        ),
        assert(tabNames == null || tabNames.length > 0),
        assert(
          tabController != null
              ? tabController.length == tabNames?.length
              : true,
        );

  const ScreenWidget.popup({
    required this.child,
    required this.screenName,
    this.recordingAllowed = true,
    this.enableAutomaticPopupRecording = true,
    this.enableAutomaticMasking = true,
  })  : isPopup = true,
        tabController = null,
        tabNames = null,
        builder = null,
        initialIndex = null;

  const ScreenWidget.tabBar({
    required this.child,
    required this.screenName,
    required this.tabNames,
    required this.tabController,
    this.recordingAllowed = true,
    this.enableAutomaticPopupRecording = true,
    this.enableAutomaticMasking = true,
  })  : isPopup = false,
        builder = null,
        initialIndex = null;

  const ScreenWidget.manualTabBar({
    required this.builder,
    required this.screenName,
    required this.tabNames,
    required this.initialIndex,
    this.recordingAllowed = true,
    this.enableAutomaticPopupRecording = true,
    this.enableAutomaticMasking = true,
  })  : isPopup = false,
        tabController = null,
        child = null;

  final Widget? child;
  final ScreenWidgetBuilder? builder;
  final String screenName;
  final bool recordingAllowed;
  final TabController? tabController;
  final List<String>? tabNames;
  final int? initialIndex;

  ///Enables automatic screen replay for PopupRoutes without ScreenWidget
  final bool enableAutomaticPopupRecording;
  //Enables automatic masking for this screen
  final bool enableAutomaticMasking;
  final bool isPopup;

  static _ScreenWidgetManualTabBar? of(BuildContext context) =>
      _ScreenWidgetManualTabBar.of(context);

  bool get isSdkInitialized => DependencyInjector.instance.config.initialized;

  @override
  Widget build(BuildContext context) {
    if (!isSdkInitialized) {
      return child ?? builder!(context);
    }

    final bool isInsideAnotherScreenWidget =
        context.getElementForInheritedWidgetOfExactType<
                _ScreenWidgetInheritedWidget>() !=
            null;

    if (child != null && isInsideAnotherScreenWidget) {
      return child!;
    }
    final _ScreenWidgetInheritedWidget inheritedScreenWidget =
        _ScreenWidgetInheritedWidget(
      child: _ActiveScreenWidget(
        screenName: screenName,
        tabController: tabController,
        tabNames: tabNames,
        recordingAllowed: recordingAllowed,
        enableAutomaticPopupRecording: enableAutomaticPopupRecording,
        enableAutomaticMasking: enableAutomaticMasking,
        isPopup: isPopup,
        manualTabBarInitialIndex: initialIndex,
        builder: builder,
        child: child,
      ),
    );
    if (child != null) {
      return inheritedScreenWidget;
    } else {
      if (isInsideAnotherScreenWidget) throw UnimplementedError();
      return inheritedScreenWidget;
    }
  }
}

class _ActiveScreenWidget extends StatefulWidget {
  const _ActiveScreenWidget({
    required this.child,
    required this.builder,
    required this.screenName,
    required this.recordingAllowed,
    required this.enableAutomaticPopupRecording,
    required this.enableAutomaticMasking,
    required this.isPopup,
    required this.manualTabBarInitialIndex,
    this.tabController,
    this.tabNames,
  }) : assert(child != null || builder != null);

  final Widget? child;
  final ScreenWidgetBuilder? builder;
  final String screenName;
  final TabController? tabController;
  final List<String>? tabNames;
  final bool recordingAllowed;
  final bool enableAutomaticPopupRecording;
  final bool enableAutomaticMasking;
  final bool isPopup;
  final int? manualTabBarInitialIndex;

  @override
  State<StatefulWidget> createState() => _ActiveScreenWidgetState();
}

class _ActiveScreenWidgetState extends State<_ActiveScreenWidget>
    with WidgetsBindingObserver, RouteAware {
  final GlobalKey _globalKey = GlobalKey();
  final List<GlobalKey> listOfMasks = [];
  late final Logger logger =
      DependencyInjector.instance.loggerSdk.screenWidgetLogger;
  late final Tracking tracking = DependencyInjector.instance.tracking;
  int get screenId => _globalKey.hashCode;
  bool get isTabBar => widget.tabNames != null && widget.tabController != null;
  ModalRoute<Object?>? route;
  int? currentIndex;

  Future<void> newScreenHandler(int index) async {
    logger.d('New Screen Handler index: $index');
    currentIndex = index;
    if (route?.isCurrent ?? false) {
      await tracking.manualTabBarIndexHandler(
        screenId: screenId.toString(),
        name: widget.screenName,
        listOfMasks: listOfMasks,
        captureKey: _globalKey,
        manualIndex: index,
        tabNames: widget.tabNames!,
        recordingAllowed: widget.recordingAllowed,
        enableAutomaticPopupRecording: widget.enableAutomaticPopupRecording,
        enableAutomaticMasking: widget.enableAutomaticMasking,
      );
    }
  }

  Widget get childOrBuilder {
    if (widget.child != null) return widget.child!;
    if (widget.builder != null) {
      return _ScreenWidgetManualTabBar(
        changeIndex: newScreenHandler,
        child: Builder(
          builder: (context) {
            return widget.builder!(context);
          },
        ),
      );
    }
    throw ArgumentError('child and builder cannot be both null');
  }

  // Defining an internal function to be able to remove the listener
  Future<void> _tabControllerListener() async {
    await tracking.tabControllerListener(
      screenId: screenId.toString(),
      name: widget.screenName,
      listOfMasks: listOfMasks,
      captureKey: _globalKey,
      tabController: widget.tabController!,
      tabNames: widget.tabNames!,
      recordingAllowed: widget.recordingAllowed,
      enableAutomaticPopupRecording: widget.enableAutomaticPopupRecording,
      enableAutomaticMasking: widget.enableAutomaticMasking,
    );
  }

  @override
  void didChangeDependencies() {
    logger.d('didChangeDependencies');

    super.didChangeDependencies();
    route = ModalRoute.of(context);
    CustomRouteObserver.screenWidgetRouteObserver.subscribe(this, route!);
  }

  @override
  void initState() {
    logger.d('initState');

    super.initState();
    tracking.physicalSize =
        WidgetsBindingNullSafe.instance!.window.physicalSize;
    WidgetsBindingNullSafe.instance!
      ..addObserver(this)
      ..addPostFrameCallback((_) async {
        route = ModalRoute.of(context);
        assert(
          widget.isPopup ? route is RawDialogRoute : route is! RawDialogRoute,
          route is RawDialogRoute
              ? 'Please use ScreenWidget.popup in screens with routes of type RawDialogRoutes'
              : "Don't use ScreenWidget.popup in screens whith routes different than type RawDialogRoutes",
        );
      });
    currentIndex = widget.manualTabBarInitialIndex;
    widget.tabController?.addListener(_tabControllerListener);
  }

  @override
  void didUpdateWidget(covariant _ActiveScreenWidget oldWidget) {
    logger.d('didUpdateWidget $oldWidget');

    if (oldWidget.manualTabBarInitialIndex != widget.manualTabBarInitialIndex &&
        widget.manualTabBarInitialIndex != currentIndex) {
      currentIndex = widget.manualTabBarInitialIndex;

      if (route?.isCurrent ?? false) {
        callWhenIsCurrentRoute();
      }
    } else {
      currentIndex = widget.manualTabBarInitialIndex;
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    logger.d('didChangeAppLifecycleState $state');

    super.didChangeAppLifecycleState(state);

    switch (state) {
      case AppLifecycleState.resumed:
        tracking.returnFromBackground();
        break;

      default:
        if (state == AppLifecycleState.paused ||
            state == AppLifecycleState.inactive) {
          tracking.wentToBackground();
        }
    }
  }

  @override
  void didChangeMetrics() {
    logger.d('didChangeMetrics');

    tracking.physicalSize =
        WidgetsBindingNullSafe.instance!.window.physicalSize;
    super.didChangeMetrics();
  }

  @override
  void dispose() {
    logger.d('dispose');

    callWhenIsNotCurrentRoute();
    CustomRouteObserver.screenWidgetRouteObserver.unsubscribe(this);
    WidgetsBindingNullSafe.instance!.removeObserver(this);
    widget.tabController?.removeListener(_tabControllerListener);
    super.dispose();
  }

  @override
  void didPush() {
    logger.d('didPush');

    callWhenIsCurrentRoute();
  }

  @override
  void didPopNext() {
    logger.d('didPopNext');

    route = ModalRoute.of(context);
    if (route?.isCurrent ?? false) {
      callWhenIsCurrentRoute();
    }
  }

  @override
  void didPop() {
    logger.d('didPop');

    callWhenIsNotCurrentRoute();
  }

  @override
  void didPushNext() {
    logger.d('didPushNext');
    callWhenIsNotCurrentRoute();
  }

  Future<void> callWhenIsNotCurrentRoute() async {
    logger.d(
      'callWhenIsNotCurrentRoute - screenId: $screenId - isTabBar: $isTabBar',
    );

    await tracking.endScreen(screenId.toString(), isTabBar: isTabBar);
  }

  Future<void> callWhenIsCurrentRoute() async {
    late final int? tabIndex;
    if (widget.tabController != null) {
      tabIndex = widget.tabController!.index;
    } else {
      tabIndex = currentIndex;
    }
    final ScreenVisited screenVisited = tracking.createScreenVisited(
      id: screenId.toString(),
      name: widget.screenName,
      listOfMasks: listOfMasks,
      captureKey: _globalKey,
      tabBarNames: widget.tabNames,
      tabBarIndex: tabIndex,
      recordingAllowed: widget.recordingAllowed,
      enableAutomaticPopupRecording: widget.enableAutomaticPopupRecording,
      enableAutomaticMasking: widget.enableAutomaticMasking,
    );

    logger.d(
      'callWhenIsCurrentRoute - screenVisited $screenVisited',
    );

    await tracking.startScreen(
      screenVisited,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _MaskList(
      listOfMasks: listOfMasks,
      child: RepaintBoundary(
        key: _globalKey,
        child: childOrBuilder,
      ),
    );
  }
}
