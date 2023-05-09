import 'package:decibel_sdk/src/messages.dart';
import 'package:flutter/material.dart';

@immutable
class ScreenVisited {
  final String id;
  final String name;
  final int timestamp;
  final int? endTimestamp;
  final bool isTabBar;
  final GlobalKey captureKey;
  final List<GlobalKey> listOfMasks;
  final bool isDialog;
  final BuildContext? dialogContext;
  final bool enableAutomaticPopupRecording;
  final bool enableAutomaticPopupTracking;
  final bool recordingAllowed;
  final bool trackingAllowed;
  final List<ScreenShotTaken> screenshotTakenList;
  final bool enableAutomaticMasking;
  BuildContext? get getCurrentContext {
    if (!isDialog) return captureKey.currentContext;
    return dialogContext!;
  }

  bool get widgetInTheTree {
    return getCurrentContext != null;
  }

  Element get rootElementForAutomasking => getCurrentContext! as Element;

  final bool finished;
  int get uniqueId => id.hashCode ^ timestamp.hashCode;

  ScreenVisited({
    required this.id,
    required this.name,
    required this.timestamp,
    required this.listOfMasks,
    required this.captureKey,
    required this.endTimestamp,
    required this.finished,
    required this.isDialog,
    required this.isTabBar,
    required this.dialogContext,
    required this.enableAutomaticPopupRecording,
    required this.enableAutomaticPopupTracking,
    required this.enableAutomaticMasking,
    required this.recordingAllowed,
    required this.trackingAllowed,
  }) : screenshotTakenList = [];

  ScreenVisited.standard({
    required this.id,
    required this.name,
    required this.timestamp,
    required this.listOfMasks,
    required this.captureKey,
    required this.enableAutomaticPopupRecording,
    required this.enableAutomaticPopupTracking,
    required this.enableAutomaticMasking,
    required this.recordingAllowed,
    required this.trackingAllowed,
    this.endTimestamp,
  })  : finished = false,
        isDialog = false,
        isTabBar = false,
        dialogContext = null,
        screenshotTakenList = [];

  ///Used by [getScreenVisitedAsFinished] to get a finished version
  ///of a ScreenVisited object
  const ScreenVisited.finished({
    required this.id,
    required this.timestamp,
    required this.name,
    required this.endTimestamp,
    required this.listOfMasks,
    required this.captureKey,
    required this.isDialog,
    required this.isTabBar,
    required this.dialogContext,
    required this.enableAutomaticPopupRecording,
    required this.enableAutomaticPopupTracking,
    required this.recordingAllowed,
    required this.trackingAllowed,
    required this.screenshotTakenList,
    required this.enableAutomaticMasking,
  }) : finished = true;
  ScreenVisited.tabBarChild({
    required this.id,
    required this.name,
    required this.timestamp,
    required this.captureKey,
    required this.enableAutomaticPopupRecording,
    required this.enableAutomaticPopupTracking,
    required this.enableAutomaticMasking,
    required this.recordingAllowed,
    required this.trackingAllowed,
    this.listOfMasks = const [],
    this.endTimestamp,
  })  : finished = false,
        isDialog = false,
        isTabBar = true,
        dialogContext = null,
        screenshotTakenList = [];
  ScreenVisited.automaticPopup({
    required this.id,
    required this.timestamp,
    required this.name,
    required this.listOfMasks,
    required this.captureKey,
    required this.dialogContext,
    required this.recordingAllowed,
    required this.trackingAllowed,
    required this.enableAutomaticMasking,
    this.endTimestamp,
  })  : finished = false,
        isDialog = true,
        isTabBar = false,
        enableAutomaticPopupRecording = false,
        enableAutomaticPopupTracking = false,
        screenshotTakenList = [];

  ScreenVisited getScreenVisitedAsFinished(int endTimestamp) {
    return ScreenVisited.finished(
      id: id,
      name: name,
      listOfMasks: listOfMasks,
      captureKey: captureKey,
      timestamp: timestamp,
      endTimestamp: endTimestamp,
      isDialog: isDialog,
      isTabBar: isTabBar,
      dialogContext: dialogContext,
      enableAutomaticPopupRecording: enableAutomaticPopupRecording,
      enableAutomaticPopupTracking: enableAutomaticPopupTracking,
      recordingAllowed: recordingAllowed,
      trackingAllowed: trackingAllowed,
      screenshotTakenList: screenshotTakenList,
      enableAutomaticMasking: enableAutomaticMasking,
    );
  }

  //Facilitates the reopening of a screen where everything is the same except
  //for the start timestamp, and therefore the uniqueId will also change
  ScreenVisited getScreenVisitedWithNewStartTimeStamp(int startTimeStamp) {
    return ScreenVisited(
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
      enableAutomaticPopupTracking: enableAutomaticPopupTracking,
      recordingAllowed: recordingAllowed,
      trackingAllowed: trackingAllowed,
      enableAutomaticMasking: enableAutomaticMasking,
    );
  }

  ScreenVisited getAutomaticPopupScreenVisited(
    String routeId,
    BuildContext dialogContext,
  ) {
    final int timestamp = DateTime.now().millisecondsSinceEpoch;
    return ScreenVisited.automaticPopup(
      id: routeId,
      name: '$name-dialog',
      timestamp: timestamp,
      listOfMasks: listOfMasks,
      captureKey: captureKey,
      dialogContext: dialogContext,
      recordingAllowed:
          recordingAllowed ? enableAutomaticPopupRecording : recordingAllowed,
      trackingAllowed:
          trackingAllowed ? enableAutomaticPopupTracking : trackingAllowed,
      enableAutomaticMasking: enableAutomaticMasking,
    );
  }

  Size getSize(RenderObject renderObject) {
    return MediaQuery.of(getCurrentContext!).size;
  }

  @override
  String toString() {
    return 'ScreenVisited(id: $id, uniqueid $uniqueId, name: $name, timestamp: $timestamp, endTimestamp: $endTimestamp, isTabBar: $isTabBar, finished: $finished)';
  }
}

///ScreenVisited version for screens that are tabBars.
///Used only when the TabBar Screen is still unfinished, when the finished version
///is used by calling [getScreenVisitedAsFinished] or [ScreenVisited.finished]
///it's then converted back to a ScreenVisited object.
@immutable
class ScreenVisitedTabBar extends ScreenVisited {
  final List<ScreenVisited> tabBarScreens;
  final String tabBarId;
  final String tabBarname;
  final int tabIndex;
  @override
  bool get isTabBar => true;
  factory ScreenVisitedTabBar({
    required String id,
    required int timestamp,
    required String name,
    required List<GlobalKey> listOfMasks,
    required GlobalKey captureKey,
    required List<String> tabBarNames,
    required int tabIndex,
    required bool recordingAllowed,
    required bool trackingAllowed,
    required bool enableAutomaticPopupRecording,
    required bool enableAutomaticPopupTracking,
    required bool enableAutomaticMasking,
  }) {
    final String tabName = tabBarNames[tabIndex];
    final String idWithTabName = '$id-$tabName';
    final List<ScreenVisited> tabBarScreens =
        tabBarNames.map<ScreenVisited>((name) {
      return ScreenVisited.tabBarChild(
        id: '$id-$name',
        timestamp: timestamp,
        name: name,
        captureKey: captureKey,
        recordingAllowed: recordingAllowed,
        trackingAllowed: trackingAllowed,
        enableAutomaticPopupRecording: enableAutomaticPopupRecording,
        enableAutomaticPopupTracking: enableAutomaticPopupTracking,
        enableAutomaticMasking: enableAutomaticMasking,
      );
    }).toList();

    return ScreenVisitedTabBar.internal(
      id: idWithTabName,
      tabBarId: id,
      timestamp: timestamp,
      captureKey: captureKey,
      name: tabName,
      tabBarScreens: tabBarScreens,
      tabIndex: tabIndex,
      tabBarname: name,
      listOfMasks: listOfMasks,
      recordingAllowed: recordingAllowed,
      trackingAllowed: trackingAllowed,
      enableAutomaticPopupRecording: enableAutomaticPopupRecording,
      enableAutomaticPopupTracking: enableAutomaticPopupTracking,
      enableAutomaticMasking: enableAutomaticMasking,
    );
  }
  ScreenVisitedTabBar.internal({
    required String id,
    required String name,
    required int timestamp,
    required GlobalKey<State<StatefulWidget>> captureKey,
    required this.tabBarScreens,
    required this.tabIndex,
    required this.tabBarId,
    required this.tabBarname,
    required bool recordingAllowed,
    required bool trackingAllowed,
    required bool enableAutomaticPopupRecording,
    required bool enableAutomaticPopupTracking,
    required List<GlobalKey<State<StatefulWidget>>> listOfMasks,
    required bool enableAutomaticMasking,
  }) : super.tabBarChild(
          id: id,
          name: name,
          timestamp: timestamp,
          captureKey: captureKey,
          recordingAllowed: recordingAllowed,
          trackingAllowed: trackingAllowed,
          enableAutomaticPopupRecording: enableAutomaticPopupRecording,
          enableAutomaticPopupTracking: enableAutomaticPopupTracking,
          listOfMasks: listOfMasks,
          enableAutomaticMasking: enableAutomaticMasking,
        );

  @override
  ScreenVisited getScreenVisitedWithNewStartTimeStamp(int startTimeStamp) {
    return ScreenVisitedTabBar.internal(
      id: id,
      name: name,
      timestamp: startTimeStamp,
      captureKey: captureKey,
      tabBarScreens: tabBarScreens,
      tabIndex: tabIndex,
      tabBarId: tabBarId,
      tabBarname: tabBarname,
      listOfMasks: listOfMasks,
      recordingAllowed: recordingAllowed,
      trackingAllowed: trackingAllowed,
      enableAutomaticPopupRecording: enableAutomaticPopupRecording,
      enableAutomaticPopupTracking: enableAutomaticPopupTracking,
      enableAutomaticMasking: enableAutomaticMasking,
    );
  }

  @override
  String toString() {
    return 'ScreenVisitedTabBar(id: $id, uniqueid $uniqueId, name: $name, tabBarId: $tabBarId, tabBarname: $tabBarname, tabIndex: $tabIndex)';
  }
}

@immutable
class ScreenShotTaken {
  final bool isPlaceholder;
  final ScreenshotMessage screenshotMessage;
  const ScreenShotTaken({
    required this.isPlaceholder,
    required this.screenshotMessage,
  });
}
