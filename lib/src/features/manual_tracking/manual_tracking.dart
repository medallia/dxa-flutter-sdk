// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:decibel_sdk/src/features/tracking/screen_visited.dart';
import 'package:decibel_sdk/src/features/tracking/tracking.dart';
import 'package:decibel_sdk/src/utility/dependency_injector.dart';
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:decibel_sdk/src/utility/placeholder_image.dart';
import 'package:flutter/widgets.dart';

class ManualTracking {
  late final GlobalKey captureKey;
  late final bool enabled;
  late final Tracking tracking = DependencyInjector.instance.tracking;
  final List<GlobalKey<State<StatefulWidget>>> listOfMasks =
      List.empty(growable: true);
  BuildContext? dialogContext;
  Element? rootElementForAutomasking;
  int screenCounter = 0;
  void startNewScreen(String name) {
    assert(() {
      if (!enabled) {
        throw UnsupportedError(
          '''
startNewScreen is not supported when the DXA SDK is working in automatic tracking mode''',
        );
      }
      return true;
    }());

    final ScreenVisitedManual newScreenVisited = ScreenVisitedManual(
      id: screenCounter.toString(),
      name: name,
      timestamp: DateTime.now().millisecondsSinceEpoch,
      listOfMasks: listOfMasks,
      captureKey: captureKey,
      endTimestamp: null,
      finished: false,
      isDialog: false,
      isTabBar: false,
      dialogContext: dialogContext,
      enableAutomaticPopupRecording: false,
      enableAutomaticMasking: true,
      enableAutomaticPopupTracking: true,
      recordingAllowed: true,
      trackingAllowed: true,
      placeholderTypeEnum: null,
    );
    tracking.startScreen(newScreenVisited);
  }
}

class ScreenVisitedManual extends ScreenVisited {
  ScreenVisitedManual({
    required String id,
    required String name,
    required int timestamp,
    required List<GlobalKey<State<StatefulWidget>>> listOfMasks,
    required GlobalKey<State<StatefulWidget>> captureKey,
    required int? endTimestamp,
    required bool finished,
    required bool isDialog,
    required bool isTabBar,
    required BuildContext? dialogContext,
    required bool enableAutomaticPopupRecording,
    required bool enableAutomaticMasking,
    required bool enableAutomaticPopupTracking,
    required bool recordingAllowed,
    required bool trackingAllowed,
    required PlaceholderTypeEnum? placeholderTypeEnum,
  }) : super(
          id: id,
          name: name,
          timestamp: timestamp,
          listOfMasks: listOfMasks,
          captureKey: captureKey,
          endTimestamp: endTimestamp,
          finished: finished,
          isDialog: isDialog,
          isTabBar: isTabBar,
          dialogContext: dialogContext,
          enableAutomaticPopupRecording: enableAutomaticPopupRecording,
          enableAutomaticPopupTracking: enableAutomaticPopupTracking,
          enableAutomaticMasking: enableAutomaticMasking,
          recordingAllowed: recordingAllowed,
          trackingAllowed: trackingAllowed,
          placeholderTypeEnum: placeholderTypeEnum,
        ) {
    //Every time a new ScreenVisitedManual is created, we increase the counter
    DependencyInjector.instance.manualTracking.screenCounter++;
  }

  @override
  BuildContext? get getCurrentContext {
    // if (!isDialog) return captureKey.currentContext;
    return DependencyInjector.instance.manualTracking.dialogContext ??
        captureKey.currentContext;
  }

  @override
  Element get rootElementForAutomasking =>
      DependencyInjector.instance.manualTracking.rootElementForAutomasking ??
      getCurrentContext! as Element;

  @override
  Size getSize(RenderObject renderObject) {
    final Rect rect = renderObject.globalPaintBounds;
    return Size(rect.width, rect.height);
  }

  //Facilitates the reopening of a screen where everything is the same except
  //for the start timestamp, and therefore the uniqueId will also change
  @override
  ScreenVisitedManual getScreenVisitedWithNewStartTimeStamp(
    int startTimeStamp,
  ) {
    return ScreenVisitedManual(
      id: id,
      name: name,
      timestamp: startTimeStamp,
      listOfMasks: listOfMasks,
      captureKey: captureKey,
      endTimestamp: endTimestamp,
      finished: finished,
      isDialog: isDialog,
      isTabBar: isTabBar,
      dialogContext: dialogContext,
      enableAutomaticPopupRecording: enableAutomaticPopupRecording,
      enableAutomaticMasking: enableAutomaticMasking,
      enableAutomaticPopupTracking: enableAutomaticPopupTracking,
      recordingAllowed: recordingAllowed,
      trackingAllowed: trackingAllowed,
      placeholderTypeEnum: placeholderTypeEnum,
    );
  }
}
