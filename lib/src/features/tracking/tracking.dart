// ignore_for_file: public_member_api_docs, sort_constructors_first, use_setters_to_change_properties
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/features/config/medallia_dxa_config.dart';
import 'package:medallia_dxa/src/features/event_channel/classes/live_configuration.dart';
import 'package:medallia_dxa/src/features/session_replay/session_replay.dart';
import 'package:medallia_dxa/src/features/tracking/route_tree_constructor.dart';
import 'package:medallia_dxa/src/features/tracking/screen_visited.dart';
import 'package:medallia_dxa/src/messages.dart';
import 'package:medallia_dxa/src/utility/completer_wrappers.dart';
import 'package:medallia_dxa/src/utility/dependency_injector.dart';
import 'package:medallia_dxa/src/utility/extensions.dart';
import 'package:medallia_dxa/src/utility/logger_sdk.dart';
import 'package:medallia_dxa/src/utility/placeholder_image.dart';

class Tracking with TrackingCompleter, WidgetsBindingObserver {
  Tracking(
    this.medalliaDxaConfig,
    this._logger,
    this._sessionReplay,
    this._liveConfiguration,
  ) {
    WidgetsBindingNullSafe.instance!.addObserver(this);
  }

  final MedalliaDxaConfig medalliaDxaConfig;
  final LoggerSDK _logger;
  final SessionReplay _sessionReplay;
  final LiveConfiguration _liveConfiguration;
  late final RouteTreeConstructor _routeTreeConstructor =
      DependencyInjector.instance.routeTreeConstructor;
  Logger get logger => _logger.trackingLogger;
  final MedalliaDxaNativeApi _apiInstance = MedalliaDxaNativeApi();
  final List<ScreenVisited> _visitedScreensList = [];
  final StreamController<ScreenVisited> newScreenSentToNativeStreamController =
      StreamController.broadcast();
  final List<CompleterOfPotentialHeavyTask> tasksBeforeEndScreenCompleterList =
      [];
  final List<Completer> startScreenEnquedCompleterList =
      List.empty(growable: true);
  final List<Completer> endScreenEnquedCompleterList =
      List.empty(growable: true);
  List<String> _trackingDisabledList = [];
  void setTrackingDisabledScreenList(List<String> trackingDisabledScreens) {
    _trackingDisabledList = trackingDisabledScreens;
  }

  List<String> _recordingDisabledList = [];
  void setRecordingDisabledScreenList(List<String> recordingDisabledScreens) {
    _recordingDisabledList = recordingDisabledScreens;
  }

  List<ScreenVisited> get visitedScreensList => _visitedScreensList;
  ScreenVisited? screenVisitedWhenAppWentToBackground;
  bool get areThereOngoingAnimations => isRouteAnimating;
  bool isRouteAnimating = false;

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

  void currentTrackedScreenHasANonPaintedRoute() {
    updateTracking();
  }

  void updateTracking() {
    _routeTreeConstructor.sendPotentialScreenVisitedToTrackingModule();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!medalliaDxaConfig.isSdkRunning) return;
    logger.d('didChangeAppLifecycleState $state');

    super.didChangeAppLifecycleState(state);

    switch (state) {
      case AppLifecycleState.resumed:
        _returnFromBackground();
        break;

      default:
        if (state == AppLifecycleState.paused ||
            state == AppLifecycleState.inactive) {
          _wentToBackground();
        }
    }
  }

  @override
  void didChangeMetrics() {
    if (!medalliaDxaConfig.isSdkRunning) return;
    logger.d('didChangeMetrics');

    tracking.physicalSize =
        WidgetsBindingNullSafe.instance!.window.physicalSize;

    super.didChangeMetrics();
  }

  ScreenVisited createScreenVisited({
    required String id,
    required String name,
    required List<DxaRoute> dxaRoutePath,
    required List<DxaRoute> allDetectedDxaRoutes,
  }) {
    PlaceholderTypeEnum? placeholderTypeEnum;
    late final bool trackingAllowed;
    late final bool recordingAllowed;

    _trackingDisabledList.contains(name).let((itContains) {
      trackingAllowed = !itContains;
    });
    _recordingDisabledList.contains(name).let((itContains) {
      recordingAllowed = !itContains;
    });

    bool trackingAllowedMerge = trackingAllowed;
    bool recordingAllowedMerge = recordingAllowed;

    final String screenNameLiveConfig = name;

    //Detect disabled tracking for screens in liveconfig
    if (_liveConfiguration
        .isThisScreenNameDisabledForTracking(screenNameLiveConfig)) {
      trackingAllowedMerge = false;
    }

    //Detect screen masking for screens in liveconfig
    if (_liveConfiguration
        .isThisScreenNameSetToBeMasked(screenNameLiveConfig)) {
      recordingAllowedMerge = false;
      placeholderTypeEnum = PlaceholderTypeEnum.liveConfig;
    }
    //this at the end to override because it has the higher priority
    if (!recordingAllowed) {
      placeholderTypeEnum = PlaceholderTypeEnum.replayDisabled;
    }

    final int timestamp = DateTime.now().millisecondsSinceEpoch;

    final ScreenVisited screenVisited = ScreenVisited.standard(
      id: id,
      dxaRoutePath: dxaRoutePath,
      allDetectedDxaRoutes: allDetectedDxaRoutes,
      timestamp: timestamp,
      name: name,
      recordingAllowed: recordingAllowedMerge,
      trackingAllowed: trackingAllowedMerge,
      placeholderTypeEnum: placeholderTypeEnum,
    );

    return screenVisited;
  }

  ///Manages calls to startScreen.
  ///Due to how Flutter navigation works, there's no way to be sure if a
  ///navigator has finished setting all its routes.
  ///If multiple calls are made, all calls that haven't finished will be
  ///canceled to give preference to the latest call.
  Future<void> startScreen(
    List<ScreenVisited> screenVisitedCandidates, {
    bool isBackground = false,
  }) async {
    final Completer cancelToken = Completer();
    await overridePendingStartScreen(
      (cancelToken) => startScreenQueued(
        screenVisitedCandidates,
        cancelToken,
        isBackground: isBackground,
      ),
      cancelToken,
    );
  }

  ///The method tries to determine which is the correct ScreenVisited by
  ///checking if the most deeply nested route is painted. There's a possibility
  ///of not having any painted routes, or having more than one, when the
  ///navigation still hasn't settled. In that case,
  ///the method calling this should wait one frame to see if it has settled by
  ///then.
  ScreenVisited _getScreenVisitedFromPotentialCandidates(
    List<ScreenVisited> screenVisitedCandidates,
  ) {
    ScreenVisited? foundCandidate;
    for (final candidate in screenVisitedCandidates) {
      if (candidate.dxaRoutePath.last.isThisRoutePainted) {
        if (foundCandidate != null) {
          throw StateError('Too Many Candidates');
        }
        foundCandidate = candidate;
      }
    }
    if (foundCandidate != null) return foundCandidate;
    throw StateError("Couldn't find painted route");
  }

  ///This method receives a list of potential ScreenVisited candidates, finds
  ///the correct one, and starts the process of calling endScreen and then
  ///sending the screen visited to native.
  ///
  ///A summary of the logic:
  ///
  ///1. To start, the method waits for the scheduled frame to finish if there's
  ///any. This gives [startScreen] some space to cancel this method if a new
  ///call arrives, which is very likely if at the start of the process there's
  ///already a new frame scheduled, that's why the cancel token is checked just
  ///after the await. Without this delay, the screen visited returned by
  ///[_getScreenVisitedFromPotentialCandidates] might be the previous because
  ///the changes made by the Navigator(s) haven't arrived to the end of the
  ///rendering pipeline.
  ///
  ///2. From the list of potential ScreenVisited, try to get the correct one,
  ///and retry after one frame if there's an error. An error might occur when
  ///the [_getScreenVisitedFromPotentialCandidates] doesn't find any.
  ///
  ///After this, the method continues with it's process, although there's still
  ///a chance of being canceled after the end screen method is finished.
  Future<void> startScreenQueued(
    List<ScreenVisited> screenVisitedCandidates,
    Completer cancelToken, {
    bool isBackground = false,
  }) async {
    //1.
    await waitForNextFrameIfScheduled();

    if (cancelToken.isCompleted) return;

    //2.
    ScreenVisited? screenVisited;
    while (screenVisited == null) {
      try {
        screenVisited =
            _getScreenVisitedFromPotentialCandidates(screenVisitedCandidates);
      } catch (e) {
        await waitForNextFrame();
        if (cancelToken.isCompleted) return;
      }
    }
    if (!medalliaDxaConfig.trackingAllowed) return;

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
    if (cancelToken.isCompleted) return;
    if (!screenVisited.trackingAllowed) {
      return;
    }
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
    bool isBackground = false,
  }) async {
    if (!medalliaDxaConfig.isSdkRunning) return;
    late ScreenVisited screenVisited;
    late ScreenVisited? potentialScreenVisited;

    if (visitedUnfinishedScreen?.id == screenId) {
      potentialScreenVisited = visitedUnfinishedScreen;
    } else {
      potentialScreenVisited = null;
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
    final int currentTime = DateTime.now().millisecondsSinceEpoch;
    final ScreenVisitedFinished screenVisitedFinished =
        screenVisited.getScreenVisitedAsFinished(currentTime);
    visitedScreensList[index] = screenVisitedFinished;

    final String screenNameEndMessage = screenVisitedFinished.name;
    final int screenIdEndMessage = screenVisitedFinished.uniqueId;
    final int endTimeEndMessage = screenVisitedFinished.endTimestamp;

    await waitForEndScreenTasksCompleter();

    late int screenRecordingEndTimeEndMessage;
    if (screenVisitedFinished.isCurrentScreenOverMaxDuration) {
      screenRecordingEndTimeEndMessage =
          screenVisitedFinished.maximumDurationForLastScreenshot;
    } else {
      screenRecordingEndTimeEndMessage = endTimeEndMessage;
      await _sessionReplay.closeScreenVideoWithPlaceholderImageIfNecessary(
        screenVisitedFinished,
      );
    }
    final EndScreenMessage endScreenMessage = EndScreenMessage(
      screenName: screenNameEndMessage,
      screenId: screenIdEndMessage,
      endTime: endTimeEndMessage,
      screenRecordingEndTime: screenRecordingEndTimeEndMessage,
      isBackground: isBackground,
    );
    logger.d(
      ' 🟡 End Screen - name: ${endScreenMessage.screenName} - id: ${endScreenMessage.screenId} - endTime ${endScreenMessage.endTime} - recordingEndTime ${endScreenMessage.screenRecordingEndTime}',
    );
    await _apiInstance.endScreen(endScreenMessage);
    endScreenToComplete.complete();
  }

  Future<void> closeCurrentScreen() async {
    if (visitedUnfinishedScreen == null) return;
    await endScreen(
      visitedUnfinishedScreen!.id,
    );
  }

  Future<void> _wentToBackground() async {
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

  Future<void> _returnFromBackground() async {
    //no screen to return to
    if (screenVisitedWhenAppWentToBackground == null) return;
    // assert(visitedUnfinishedScreen == null);
    final ScreenVisited returnFormBackgroundScreenVisited =
        screenVisitedWhenAppWentToBackground!
            .getScreenVisitedWithNewStartTimeStamp(
      DateTime.now().millisecondsSinceEpoch,
    );
    screenVisitedWhenAppWentToBackground = null;
    await startScreen([returnFormBackgroundScreenVisited], isBackground: true);
  }

  Future<void> closeThisScreenAndThenReopen() async {
    final ScreenVisited? screenToClose = visitedUnfinishedScreen;

    if (screenToClose == null) return;
    await endScreen(screenToClose.id);
    final ScreenVisited screenToOpen =
        screenToClose.getScreenVisitedWithNewStartTimeStamp(
      DateTime.now().millisecondsSinceEpoch,
    );
    await startScreen([screenToOpen]);
  }
}
