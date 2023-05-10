import 'package:decibel_sdk/src/features/tracking/tracking.dart';
import 'package:decibel_sdk/src/utility/dependency_injector.dart';
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:decibel_sdk/src/widgets/screen_widget/screen_widget.dart';
import 'package:flutter/material.dart';

class ManualScreenTrackerWidget extends StatefulWidget {
  const ManualScreenTrackerWidget({Key? key, required this.child})
      : super(key: key);
  final Widget child;

  @override
  State<ManualScreenTrackerWidget> createState() =>
      _ManualScreenTrackerWidgetState();
}

class _ManualScreenTrackerWidgetState extends State<ManualScreenTrackerWidget>
    with WidgetsBindingObserver {
  final GlobalKey _globalKey = GlobalKey();
  late final Tracking tracking = DependencyInjector.instance.tracking;
  bool get isManualTrackingEnabled =>
      DependencyInjector.instance.manualTracking.enabled;
  @override
  void initState() {
    assert(() {
      if (!isManualTrackingEnabled) {
        throw UnsupportedError(
          '''
ManualTrackerWidget is not supported when the DXA SDK is working in automatic tracking mode''',
        );
      }
      return true;
    }());

    DependencyInjector.instance.manualTracking.captureKey = _globalKey;
    WidgetsBindingNullSafe.instance!.addObserver(this);

    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
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
  Widget build(BuildContext context) {
    return MaskList(
      listOfMasks: DependencyInjector.instance.manualTracking.listOfMasks,
      child: RepaintBoundary(key: _globalKey, child: widget.child),
    );
  }
}
