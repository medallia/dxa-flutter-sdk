// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:decibel_sdk/src/decibel_config.dart';
import 'package:decibel_sdk/src/features/session_replay.dart';
import 'package:decibel_sdk/src/features/tracking/screen_visited.dart';
import 'package:decibel_sdk/src/features/tracking/untracked_screens.dart';
import 'package:decibel_sdk/src/messages.dart';

import 'package:decibel_sdk/src/utility/completer_wrappers.dart';
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:decibel_sdk/src/utility/logger_sdk.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class Tracking with TrackingCompleter {
  Tracking(
    this.medalliaDxaConfig,
    this._logger,
    this._sessionReplay,
  ) {
    _untrackedScreens = UntrackedScreens(this);
  }

  final MedalliaDxaConfig medalliaDxaConfig;
  final LoggerSDK _logger;
  final SessionReplay _sessionReplay;
  late final UntrackedScreens _untrackedScreens;
  Logger get logger => _logger.trackingLogger;
  final MedalliaDxaNativeApi _apiInstance = MedalliaDxaNativeApi();
  final List<ScreenVisited> _visitedScreensList = [];
  final StreamController<ScreenVisited> newScreenSentToNativeStreamController =
      StreamController.broadcast();
  final List<Completer> tasksBeforeEndScreenCompleterList = [];
  final List<Completer> startScreenEnquedCompleterList =
      List.empty(growable: true);
  final List<Completer> endScreenEnquedCompleterList =
      List.empty(growable: true);
  List<ScreenVisited> get visitedScreensList => _visitedScreensList;
  ScreenVisited? screenVisitedWhenAppWentToBackground;
  int _transitioningPages = 0;
  ScreenVisited? get lastUntrackedOrTrackedScreenVisited =>
      _untrackedScreens.lastUntrackedOrTrackedScreenVisited;
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
    await startScreenTasksCompleterWrapper(
      () => startScreenQueued(screenVisited, isBackground: isBackground),
    );
  }

  Future<void> startScreenQueued(
    ScreenVisited screenVisited, {
    bool isBackground = false,
  }) async {
    if (!medalliaDxaConfig.trackingAllowed) return;
    if (!screenVisited.trackingAllowed) {
      _untrackedScreens.untrackedScreensList.add(screenVisited);
      return;
    }

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
    if (visitedUnfinishedScreen != null) {
      await endScreen(visitedUnfinishedScreen!.id);
    }
    await waitForEndScreenEnquedCompleter();
    _addVisitedScreenList(
      screenVisited,
    );

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
    final Completer endScreenToComplete = createEndScreenCompleter();
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
    await waitForEndScreenTasksCompleter();
    await _sessionReplay.closeScreenVideo(screenVisitedFinished);

    logger.d(
      ' 🟡 End Screen - name: ${endScreenMessage.screenName} - id: ${endScreenMessage.screenId} - endTime ${endScreenMessage.endTime}',
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
