part of 'screen_widget/screen_widget.dart';

class MaskWidget extends StatelessWidget {
  const MaskWidget({required this.child});
  bool get isSdkRunning => DependencyInjector.instance.config.isSdkRunning;

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return isSdkRunning ? _ActiveMaskWidget(child: child) : child;
  }
}

class _ActiveMaskWidget extends StatefulWidget {
  const _ActiveMaskWidget({required this.child});

  final Widget child;
  @override
  State<StatefulWidget> createState() => _ActiveMaskWidgetState();
}

class _ActiveMaskWidgetState extends State<_ActiveMaskWidget> with RouteAware {
  late GlobalKey globalKey;
  late List<GlobalKey> listOfMasks;
  late final Logger logger =
      DependencyInjector.instance.loggerSdk.maskWidgetLogger;
  late final CustomRouteObserver customRouteObserver =
      DependencyInjector.instance.customRouteObserver;
  RouteObserver? widgetRouteObserverForNavigator;
  ModalRoute<Object?>? route;
  @override
  void initState() {
    logger.d('initState - child runtimeType: ${widget.child.runtimeType}');

    globalKey = GlobalKey();

    super.initState();
    // addMask(globalKey);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final maybeListOfMasks = MaskList.of(context)?.listOfMasks;
    if (maybeListOfMasks == null) {
      listOfMasks = [];
      return;
    }
    listOfMasks = maybeListOfMasks;
    logger.d('didChangeDependencies - listsOfMasks $listOfMasks');

    route = ModalRoute.of(context);
    if (route == null) return;
    final NavigatorState? widgetNavigator = Navigator.maybeOf(context);
    if (widgetNavigator != null) {
      final observer =
          customRouteObserver.observerToSubscribeFromWidget(widgetNavigator);
      observer?.subscribe(this, route!);
      widgetRouteObserverForNavigator = observer;
    }
  }

  @override
  void dispose() {
    logger.d('dispose');

    removeMask(globalKey);
    widgetRouteObserverForNavigator?.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    logger.d('didPush');

    addMask(globalKey);
  }

  @override
  void didPopNext() {
    logger.d('didPopNext');

    addMask(globalKey);
  }

  @override
  void didPop() {
    logger.d('didPop');
  }

  @override
  void didPushNext() {
    logger.d('didPushNext');
  }

  void addMask(GlobalKey globalKey) {
    logger.d('addMask $globalKey');

    if (!listOfMasks.contains(globalKey)) {
      listOfMasks.add(globalKey);
    }
  }

  void removeMask(GlobalKey globalKey) {
    logger.d('removeMask $globalKey');

    if (listOfMasks.contains(globalKey)) {
      listOfMasks.remove(globalKey);
    }
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: globalKey,
      child: widget.child,
    );
  }
}
