import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/features/tracking/route_tree_constructor.dart';
import 'package:medallia_dxa/src/messages.dart';
import 'package:medallia_dxa/src/utility/extensions.dart';
import 'package:medallia_dxa/src/utility/placeholder_image.dart';

@immutable
class ScreenVisited {
  final String id;
  final String name;
  final int timestamp;
  final int? endTimestamp;
  final bool isTabBar;
  final List<DxaRoute> dxaRoutePath;
  final List<DxaRoute> allDetectedDxaRoutes;
  final bool isDialog;

  final bool recordingAllowed;
  final bool trackingAllowed;
  final PlaceholderTypeEnum? placeholderTypeEnum;
  final List<ScreenShotTaken> screenshotTakenList;

  //Dxa Routes that should not be masked
  List<DxaRoute> get forbiddenDxaRoutes {
    return allDetectedDxaRoutes
        .where((e) => !dxaRoutePath.contains(e))
        .toList();
  }

  bool get isElementTreeDirty => dxaRoutePath.last.isRouteSubtreeContextDirty;

  Element get rootElementForAutomasking =>
      WidgetsBindingNullSafe.instance!.renderViewElement!;

  bool get areAllModalRoutes =>
      dxaRoutePath.every((element) => element.route is ModalRoute);

  final bool finished;
  int get uniqueId => id.hashCode ^ timestamp.hashCode;

  ScreenVisited({
    required this.id,
    required this.name,
    required this.timestamp,
    required this.dxaRoutePath,
    required this.allDetectedDxaRoutes,
    required this.endTimestamp,
    required this.finished,
    required this.isDialog,
    required this.isTabBar,
    required this.recordingAllowed,
    required this.trackingAllowed,
    required this.placeholderTypeEnum,
  }) : screenshotTakenList = [];

  ScreenVisited.standard({
    required this.id,
    required this.name,
    required this.timestamp,
    required this.dxaRoutePath,
    required this.allDetectedDxaRoutes,
    required this.recordingAllowed,
    required this.trackingAllowed,
    required this.placeholderTypeEnum,
    this.endTimestamp,
  })  : finished = false,
        isDialog = false,
        isTabBar = false,
        screenshotTakenList = [];

  ///Used by [getScreenVisitedAsFinished] to get a finished version
  ///of a ScreenVisited object
  const ScreenVisited.finished({
    required this.id,
    required this.timestamp,
    required this.name,
    required this.endTimestamp,
    required this.dxaRoutePath,
    required this.allDetectedDxaRoutes,
    required this.isDialog,
    required this.isTabBar,
    required this.recordingAllowed,
    required this.trackingAllowed,
    required this.screenshotTakenList,
    required this.placeholderTypeEnum,
  }) : finished = true;

  ScreenVisitedFinished getScreenVisitedAsFinished(int endTimestamp) {
    return ScreenVisitedFinished(
      id: id,
      name: name,
      dxaRoutePath: dxaRoutePath,
      allDetectedDxaRoutes: allDetectedDxaRoutes,
      timestamp: timestamp,
      endTimestamp: endTimestamp,
      isDialog: isDialog,
      isTabBar: isTabBar,
      recordingAllowed: recordingAllowed,
      trackingAllowed: trackingAllowed,
      placeholderTypeEnum: placeholderTypeEnum,
      screenshotTakenList: screenshotTakenList,
    );
  }

  //Facilitates the reopening of a screen where everything is the same except
  //for the start timestamp, and therefore the uniqueId will also change
  ScreenVisited getScreenVisitedWithNewStartTimeStamp(int startTimeStamp) {
    return ScreenVisited(
      id: id,
      name: name,
      timestamp: startTimeStamp,
      dxaRoutePath: dxaRoutePath,
      allDetectedDxaRoutes: allDetectedDxaRoutes,
      endTimestamp: endTimestamp,
      finished: finished,
      isDialog: isDialog,
      isTabBar: isTabBar,
      recordingAllowed: recordingAllowed,
      trackingAllowed: trackingAllowed,
      placeholderTypeEnum: placeholderTypeEnum,
    );
  }

  @override
  String toString() {
    return 'ScreenVisited(id: $id, uniqueid $uniqueId, name: $name, timestamp: $timestamp, endTimestamp: $endTimestamp, isTabBar: $isTabBar, finished: $finished)';
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

@immutable
class ScreenVisitedFinished extends ScreenVisited {
  @override
  int get endTimestamp => super.endTimestamp!;
  const ScreenVisitedFinished({
    required String id,
    required int timestamp,
    required String name,
    required int endTimestamp,
    required List<DxaRoute> dxaRoutePath,
    required List<DxaRoute> allDetectedDxaRoutes,
    required bool isDialog,
    required bool isTabBar,
    required bool recordingAllowed,
    required bool trackingAllowed,
    required List<ScreenShotTaken> screenshotTakenList,
    required PlaceholderTypeEnum? placeholderTypeEnum,
  }) : super.finished(
          id: id,
          timestamp: timestamp,
          name: name,
          endTimestamp: endTimestamp,
          dxaRoutePath: dxaRoutePath,
          allDetectedDxaRoutes: allDetectedDxaRoutes,
          isDialog: isDialog,
          isTabBar: isTabBar,
          recordingAllowed: recordingAllowed,
          trackingAllowed: trackingAllowed,
          screenshotTakenList: screenshotTakenList,
          placeholderTypeEnum: placeholderTypeEnum,
        );
}
