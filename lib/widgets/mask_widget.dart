import 'package:decibel_sdk/decibel_sdk.dart';
import 'package:decibel_sdk/features/session_replay.dart';
import 'package:decibel_sdk/utility/constants.dart';
import 'package:flutter/widgets.dart';

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
    DecibelSdk.routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    removeMask(globalKey);
    DecibelSdk.routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    addMask(globalKey);
  }

  @override
  void didPopNext() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
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

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: globalKey,
      child: widget.child,
    );
  }
}
