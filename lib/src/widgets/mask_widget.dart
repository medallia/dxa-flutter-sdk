part of './screen_widget.dart';

class MaskWidget extends StatefulWidget {
  const MaskWidget({required this.child});

  final Widget child;

  @override
  State<StatefulWidget> createState() => _MaskWidgetState();
}

class _MaskWidgetState extends State<MaskWidget> with RouteAware {
  late GlobalKey globalKey;

  @override
  void initState() {
    globalKey = GlobalKey();
    addMask(globalKey);

    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    CustomRouteObserver.screenWidgetRouteObserver
        .subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    removeMask(globalKey);
    CustomRouteObserver.screenWidgetRouteObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    addMask(globalKey);
  }

  @override
  void didPopNext() {
    WidgetsBindingNullSafe.instance!.addPostFrameCallback((timeStamp) {
      addMask(globalKey);
    });
  }

  @override
  void didPop() {
    removeMask(globalKey);
  }

  @override
  void didPushNext() {
    removeMask(globalKey);
  }

  void addMask(GlobalKey globalKey) {
    if (!SessionReplay.instance.widgetsToMaskList.contains(globalKey)) {
      SessionReplay.instance.widgetsToMaskList.add(globalKey);
    }
  }

  void removeMask(GlobalKey globalKey) {
    if (SessionReplay.instance.widgetsToMaskList.contains(globalKey)) {
      SessionReplay.instance.widgetsToMaskList.remove(globalKey);
    }
  }

  void _debugCheckTabBarConfiguration(BuildContext context) {
    if (kDebugMode) {
      final bool isInsideTabBar =
          _ScreenWidgetInheritedWidget.of(context)?._child.tabController !=
              null;
      if (isInsideTabBar) {
        final bool hasScreenWidgetTabBarParent =
            context.getElementForInheritedWidgetOfExactType<
                    ScreenWidgetTabBar>() !=
                null;
        assert(
          hasScreenWidgetTabBarParent,
          '''
          This Mask is inside a TabBar that is not configured 
          correctly, a ScreenWidgetTabBar needs to wrap the body of 
          the Scaffold''',
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    _debugCheckTabBarConfiguration(context);
    return Ink(
      child: KeyedSubtree(
        key: globalKey,
        child: widget.child,
      ),
    );
  }
}
