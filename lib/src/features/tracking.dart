// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:decibel_sdk/src/decibel_config.dart';
import 'package:decibel_sdk/src/features/session_replay.dart';
import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/completer_wrappers.dart';
import 'package:decibel_sdk/src/utility/dependency_injector.dart';
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:decibel_sdk/src/utility/logger_sdk.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class Tracking with TrackingCompleter {
  Tracking(this.medalliaDxaConfig, this._logger, this._sessionReplay);

  final MedalliaDxaConfig medalliaDxaConfig;
  final LoggerSDK _logger;
  final SessionReplay _sessionReplay;
  Logger get logger => _logger.trackingLogger;
  final MedalliaDxaNativeApi _apiInstance = MedalliaDxaNativeApi();
  final List<ScreenVisited> _visitedScreensList = [];
  final StreamController<ScreenVisited> newScreenSentToNativeStreamController =
      StreamController.broadcast();
  final List<Completer> tasksBeforeEndScreenCompleterList = [];
  Completer? endScreenCompleter;
  ScreenVisited? latestStartScreenCalled;
  List<ScreenVisited> get visitedScreensList => _visitedScreensList;
  ScreenVisited? screenVisitedWhenAppWentToBackground;
  int _transitioningPages = 0;
  bool get isPageTransitioning => _transitioningPages > 0;
  set isPageTransitioning(bool transitioning) {
    if (transitioning) {
      _transitioningPages++;
    } else {
      if (_transitioningPages == 0) return;
      _transitioningPages--;
    }
  }

  Size? _physicalSize;
  Size get physicalSize => _physicalSize!;
  set physicalSize(Size newPhysicalSize) {
    if (newPhysicalSize == _physicalSize) return;
    //The first time we initialize we don't want to trigger the method
    if (_physicalSize == null) {
      _physicalSize = newPhysicalSize;
    } else {
      _physicalSize = newPhysicalSize;
      closeThisScreenAndThenReopen();
    }
  }

  void _addVisitedScreenList(ScreenVisited screenVisited) {
    _visitedScreensList.add(screenVisited);
  }

  ScreenVisited? get visitedUnfinishedScreen {
    final List<ScreenVisited> unfinshedList =
        List<ScreenVisited>.from(visitedScreensList)
          ..removeWhere((element) => element.finished);
    if (unfinshedList.isEmpty) return null;
    return unfinshedList.single;
  }

  ScreenVisited createScreenVisited({
    required String id,
    required String name,
    required List<GlobalKey> listOfMasks,
    required GlobalKey captureKey,
    required bool recordingAllowed,
    required bool trackingAllowed,
    required bool enableAutomaticPopupRecording,
    required bool enableAutomaticPopupTracking,
    required bool enableAutomaticMasking,
    List<String>? tabBarNames,
    int? tabBarIndex,
  }) {
    assert(
      (tabBarNames != null && tabBarIndex != null) ||
          (tabBarNames == null && tabBarIndex == null),
    );

    final int timestamp = DateTime.now().millisecondsSinceEpoch;

    late ScreenVisited screenVisited;
    if (tabBarNames != null && tabBarIndex != null) {
      screenVisited = ScreenVisitedTabBar(
        id: id,
        timestamp: timestamp,
        name: name,
        captureKey: captureKey,
        tabBarNames: tabBarNames,
        tabIndex: tabBarIndex,
        listOfMasks: listOfMasks,
        recordingAllowed: recordingAllowed,
        trackingAllowed: trackingAllowed,
        enableAutomaticPopupRecording: enableAutomaticPopupRecording,
        enableAutomaticPopupTracking: enableAutomaticPopupTracking,
        enableAutomaticMasking: enableAutomaticMasking,
      );
    } else {
      screenVisited = ScreenVisited.standard(
        id: id,
        listOfMasks: listOfMasks,
        captureKey: captureKey,
        timestamp: timestamp,
        name: name,
        recordingAllowed: recordingAllowed,
        trackingAllowed: trackingAllowed,
        enableAutomaticPopupRecording: enableAutomaticPopupRecording,
        enableAutomaticPopupTracking: enableAutomaticPopupTracking,
        enableAutomaticMasking: enableAutomaticMasking,
      );
    }
    return screenVisited;
  }

  Future<void> startScreen(
    ScreenVisited screenVisited, {
    bool isBackground = false,
  }) async {
    if (!medalliaDxaConfig.trackingAllowed) return;
    if (!screenVisited.trackingAllowed) return;
    late bool backgroundFlag;
    //When returning from background there's the possibility that the screen
    //which went to background isn't the same as the one at the top of the
    //navigation stack. This checks if there is a screen that went to background
    //and hasn't returned, and if so then it notifies the native
    //SDK that it has returned from background (Only for iOS) and cleans
    //[screenVisitedWhenAppWentToBackground].
    if (screenVisitedWhenAppWentToBackground != null) {
      backgroundFlag = true;
      screenVisitedWhenAppWentToBackground = null;
    } else {
      backgroundFlag = isBackground;
    }
    latestStartScreenCalled = screenVisited;
    if (visitedUnfinishedScreen != null) {
      await endScreen(visitedUnfinishedScreen!.id);
      if (latestStartScreenCalled != screenVisited) {
        return;
      }
    }
    _addVisitedScreenList(
      screenVisited,
    );
    await endScreenCompleter?.future;
    logger.d(
      ' 🔵 Start Screen - name: ${screenVisited.name} - id: ${screenVisited.uniqueId}',
    );
    await _apiInstance.startScreen(
      StartScreenMessage(
        screenName: screenVisited.name,
        screenId: screenVisited.uniqueId,
        startTime: screenVisited.timestamp,
        isBackground: backgroundFlag,
      ),
    );
    print('⚪️ newScreenSentToNativeStreamController.add');
    newScreenSentToNativeStreamController.add(screenVisited);
    await _sessionReplay.newScreen();
  }

  Future<void> endScreen(
    String screenId, {
    bool isTabBar = false,
    bool isBackground = false,
  }) async {
    if (!medalliaDxaConfig.trackingAllowed) return;
    late ScreenVisited screenVisited;
    late ScreenVisited? potentialScreenVisited;
    if (isTabBar) {
      potentialScreenVisited =
          visitedUnfinishedScreen?.maybeScreenVisitedTabBar(screenId);
    } else {
      if (visitedUnfinishedScreen?.id == screenId) {
        potentialScreenVisited = visitedUnfinishedScreen;
      } else {
        potentialScreenVisited = null;
      }
    }
    //check to see if this screen has already been closed before
    //If not, we can start with the logic related to ending the screen
    if (potentialScreenVisited == null) return;
    _sessionReplay.clearMasks();
    final Completer endScreenToComplete = Completer();
    endScreenCompleter = endScreenToComplete;
    screenVisited = potentialScreenVisited;
    //find the visitedScreen which is not finished, to then get its finished
    //version and replace the original in the visitedScreensList
    final int index = visitedScreensList.indexOf(screenVisited);
    final int endTime = DateTime.now().millisecondsSinceEpoch;
    final ScreenVisited screenVisitedFinished =
        screenVisited.getScreenVisitedAsFinished(endTime);
    visitedScreensList[index] = screenVisitedFinished;

    final EndScreenMessage endScreenMessage = EndScreenMessage(
      screenName: screenVisitedFinished.name,
      screenId: screenVisitedFinished.uniqueId,
      endTime: screenVisitedFinished.endTimestamp!,
      isBackground: isBackground,
    );
    print('⚪️waitForEndScreenTasksCompleter');
    await waitForEndScreenTasksCompleter();
    await _sessionReplay.closeScreenVideo(screenVisitedFinished);

    logger.d(
      ' 🟡 End Screen - name: ${endScreenMessage.screenName} - id: ${endScreenMessage.screenId}',
    );
    await _apiInstance.endScreen(endScreenMessage);
    endScreenToComplete.complete();
  }

  Future<void> wentToBackground() async {
    //if we already have saved a screen saved when the app went to background,
    //it means that we should ignore calls to this method until the app returns
    //from background
    if (screenVisitedWhenAppWentToBackground != null) return;
    //No unfinished screens, so there's no possibility of ending any screen
    if (visitedUnfinishedScreen == null) return;
    screenVisitedWhenAppWentToBackground = visitedUnfinishedScreen;
    await endScreen(
      screenVisitedWhenAppWentToBackground!.id,
      isBackground: true,
    );
  }

  Future<void> returnFromBackground() async {
    //no screen to return to
    if (screenVisitedWhenAppWentToBackground == null) return;
    assert(visitedUnfinishedScreen == null);
    final ScreenVisited returnFormBackgroundScreenVIsited =
        screenVisitedWhenAppWentToBackground!
            .getScreenVisitedWithNewStartTimeStamp(
      DateTime.now().millisecondsSinceEpoch,
    );
    screenVisitedWhenAppWentToBackground = null;
    await startScreen(returnFormBackgroundScreenVIsited, isBackground: true);
  }

  Future<void> closeThisScreenAndThenReopen() async {
    final ScreenVisited? screenToClose = visitedUnfinishedScreen;

    if (screenToClose == null) return;
    await endScreen(screenToClose.id);
    final ScreenVisited screenToOpen =
        screenToClose.getScreenVisitedWithNewStartTimeStamp(
      DateTime.now().millisecondsSinceEpoch,
    );
    await startScreen(screenToOpen);
  }

  ///Listener for tabBar change of tab.
  ///Due to how the listener works, everytime a new tab is added as a screen,
  ///the SDK must check if there was another tab from this TabBar before.
  ///In normal screens the startScreen and endScreen are independent.
  Future<void> tabControllerListener({
    required String screenId,
    required String name,
    required List<GlobalKey> listOfMasks,
    required GlobalKey captureKey,
    required TabController tabController,
    required List<String> tabNames,
    required bool recordingAllowed,
    required bool trackingAllowed,
    required bool enableAutomaticPopupRecording,
    required bool enableAutomaticPopupTracking,
    required bool enableAutomaticMasking,
  }) async {
    //Temporary patch for issue https://github.com/flutter/flutter/issues/113020
    //Jira ticket DCBLMOB-1725
    if (!tabController.indexIsChanging) {
      await Future.delayed(const Duration(milliseconds: 200));
      if (tabController.indexIsChanging) {
        //needed because of multiple calls to this will mess up the number of
        //pages transitioning count
        if (isPageTransitioning != tabController.indexIsChanging) {
          isPageTransitioning = tabController.indexIsChanging;
        }
        return;
      }
    }
    //needed because of multiple calls to this will mess up the number of
    //pages transitioning count
    if (isPageTransitioning != tabController.indexIsChanging) {
      isPageTransitioning = tabController.indexIsChanging;
    }

    if (tabController.index != tabController.previousIndex &&
        !tabController.indexIsChanging) {
      //Find if this TabBarScreen (NOT the individual Tab) is the visited
      //unfinished screen and call endScreen on it if so.
      final bool isTabBarAndUnfinished =
          visitedUnfinishedScreen?.isTabBarWithId(screenId) ?? false;
      if (isTabBarAndUnfinished) {
        await endScreen(visitedUnfinishedScreen!.id, isTabBar: true);
      }

      final ScreenVisited screenVisited = createScreenVisited(
        id: screenId,
        name: name,
        listOfMasks: listOfMasks,
        captureKey: captureKey,
        tabBarNames: tabNames,
        tabBarIndex: tabController.index,
        recordingAllowed: recordingAllowed,
        trackingAllowed: trackingAllowed,
        enableAutomaticPopupRecording: enableAutomaticPopupRecording,
        enableAutomaticPopupTracking: enableAutomaticPopupTracking,
        enableAutomaticMasking: enableAutomaticMasking,
      );
      await startScreen(screenVisited);
    }
  }

  Future<void> manualTabBarIndexHandler({
    required String screenId,
    required String name,
    required List<GlobalKey> listOfMasks,
    required GlobalKey captureKey,
    required int manualIndex,
    required List<String> tabNames,
    required bool recordingAllowed,
    required bool trackingAllowed,
    required bool enableAutomaticPopupRecording,
    required bool enableAutomaticPopupTracking,
    required bool enableAutomaticMasking,
  }) async {
    final bool isTabBarAndUnfinished =
        visitedUnfinishedScreen?.isTabBarWithId(screenId) ?? false;
    if (isTabBarAndUnfinished) {
      await endScreen(visitedUnfinishedScreen!.id, isTabBar: true);
    }
    final ScreenVisited screenVisited = createScreenVisited(
      id: screenId,
      name: name,
      listOfMasks: listOfMasks,
      captureKey: captureKey,
      tabBarNames: tabNames,
      tabBarIndex: manualIndex,
      recordingAllowed: recordingAllowed,
      trackingAllowed: trackingAllowed,
      enableAutomaticPopupRecording: enableAutomaticPopupRecording,
      enableAutomaticPopupTracking: enableAutomaticPopupTracking,
      enableAutomaticMasking: enableAutomaticMasking,
    );
    await startScreen(screenVisited);
  }
}

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
  final int startFocusTime;
  const ScreenShotTaken({required this.startFocusTime});
}
