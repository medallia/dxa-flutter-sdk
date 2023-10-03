// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/features/autoMasking/auto_masking_class.dart';
import 'package:medallia_dxa/src/features/config/medallia_dxa_config.dart';
import 'package:medallia_dxa/src/features/event_channel/classes/performance_metrics.dart';
import 'package:medallia_dxa/src/features/frame_tracking.dart';
import 'package:medallia_dxa/src/features/session_replay/screenshot_taker.dart';
import 'package:medallia_dxa/src/features/tracking/screen_visited.dart';
import 'package:medallia_dxa/src/features/tracking/tracking.dart';
import 'package:medallia_dxa/src/messages.dart';
import 'package:medallia_dxa/src/utility/completer_wrappers.dart';
import 'package:medallia_dxa/src/utility/dependency_injector.dart';
import 'package:medallia_dxa/src/utility/extensions.dart';
import 'package:medallia_dxa/src/utility/global_settings.dart';
import 'package:medallia_dxa/src/utility/logger_sdk.dart';
import 'package:medallia_dxa/src/utility/placeholder_image.dart';

class SessionReplay with TaskCompleter, TrackingCompleter {
  SessionReplay(
    this._medalliaDxaConfig,
    this._logger,
    this._frameTracking,
    this.autoMasking,
    this._placeholderImageConfig,
    this.widgetsBindingInstance,
    this.schedulerBindingInstance,
    this.screenshotTaker,
    this._nativeApiInstance,
    this._performanceMetrics,
    this._globalSettings,
  ) {
    timer = Timer.periodic(_globalSettings.frameRateInMiliseconds, (_) async {
      await tryToTakeScreenshotIfUiHasChanged();
    });
    _frameTracking.newFrameStreamController.stream.listen((timeStamp) {
      didUiChangeValue = true;
    });
  }

  final MedalliaDxaConfig _medalliaDxaConfig;
  final LoggerSDK _logger;
  Logger get logger => _logger.sessionReplayLogger;
  final FrameTracking _frameTracking;
  final AutoMasking autoMasking;
  final PlaceholderImageConfig _placeholderImageConfig;
  final MedalliaDxaNativeApi _nativeApiInstance;
  final ScreenshotTaker screenshotTaker;
  final WidgetsBinding widgetsBindingInstance;
  final SchedulerBinding schedulerBindingInstance;
  final PerformanceMetrics _performanceMetrics;
  final GlobalSettings _globalSettings;
  late final Tracking _tracking = DependencyInjector.instance.tracking;
  @visibleForTesting
  late Timer timer;
  bool _alreadyWaitingForPostFrameCallback = false;
  bool _waitingForEndOfFrame = false;
  bool get _currentlyTracking => _tracking.visitedUnfinishedScreen != null;

  ///Don't use this variable across asynchronous gaps, it could change
  ScreenVisited get _currentTrackedScreen {
    return _tracking.visitedUnfinishedScreen!;
  }

  @visibleForTesting
  bool didUiChangeValue = false;
  @visibleForTesting
  bool get didUiChange => didUiChangeValue;
  set didUiChange(bool change) {
    didUiChangeValue = change;
    if (!change) {
      _frameTracking.waitForNextFrame();
    }
  }

  void _forceScreenshotNextFrame() {
    if (_alreadyWaitingForPostFrameCallback) return;
    _alreadyWaitingForPostFrameCallback = true;
    widgetsBindingInstance.addPostFrameCallback((_) async {
      _alreadyWaitingForPostFrameCallback = false;
      await _tryToTakeScreenshot();
    });
  }

  Future<void> newScreen() async {
    didUiChange = true;
    await tryToTakeScreenshotIfUiHasChanged();
  }

  Future<void> sendPlaceholderImage() async {
    await _tryToTakeScreenshot();
  }

  void startPeriodicTimer() {
    if (timer.isActive) return;
    timer = Timer.periodic(_globalSettings.frameRateInMiliseconds, (_) async {
      await tryToTakeScreenshotIfUiHasChanged();
    });
  }

  void stopPeriodicTimer() {
    timer.cancel();
  }

  void updateFrameRate() {
    stopPeriodicTimer();
    startPeriodicTimer();
  }

  void clearMasks() {
    autoMasking.clear();
  }

  Future<void> tryToTakeScreenshotIfUiHasChanged() async {
    if (!didUiChange) return;
    return _tryToTakeScreenshot();
  }

  Future<void> _tryToTakeScreenshot() async {
    if (!_medalliaDxaConfig.isSdkRunning) return;
    if (!_currentlyTracking) return;
    if (newScreenIsEnqued) {
      _forceScreenshotNextFrame();
      return;
    }
    final ScreenVisited currentTrackedScreen = _currentTrackedScreen;
    if (!currentTrackedScreen.dxaRoutePath.last.isThisRoutePainted) {
      tracking.currentTrackedScreenHasANonPaintedRoute();
      return;
    }

    if (currentTrackedScreen.dxaRoutePath.last.isModalRoute &&
        currentTrackedScreen.dxaRoutePath.last.routeContext == null) {
      _forceScreenshotNextFrame();
      return;
    }
    if (currentTrackedScreen.isCurrentScreenOverMaxDuration) return;
    if (currentTrackedScreen.isCurrentScreenOverMaxScreenshotCount) return;
    if (!_medalliaDxaConfig.recordingAllowed) {
      return _sendOnePlaceholderImageForThisScreen(
        screenVisited: currentTrackedScreen,
        placeholderType: PlaceholderType(
          placeholderTypeEnum: PlaceholderTypeEnum.noPermission,
        ),
      );
    }
    if (!currentTrackedScreen.recordingAllowed) {
      final PlaceholderTypeEnum placeholderTypeEnum =
          currentTrackedScreen.placeholderTypeEnum ??
              PlaceholderTypeEnum.replayDisabled;
      return _sendOnePlaceholderImageForThisScreen(
        screenVisited: currentTrackedScreen,
        placeholderType: PlaceholderType(
          placeholderTypeEnum: placeholderTypeEnum,
        ),
      );
    }
    if (_performanceMetrics.isDeviceStressed) {
      return _sendOnePlaceholderImageForThisScreen(
        screenVisited: currentTrackedScreen,
        placeholderType: PlaceholderType(
          placeholderTypeEnum: _performanceMetrics.getPlaceholderType,
        ),
      );
    }

    if (_tracking.areThereOngoingAnimations) {
      return _forceScreenshotNextFrame();
    }
    if (_waitingForEndOfFrame) return;

    ///No need to wait for the endOfFrame when we are in other phases.
    ///Also ensures this is not called in other phases where a frame may not
    ///be scheduled
    if (schedulerBindingInstance.schedulerPhase == SchedulerPhase.idle) {
      _waitingForEndOfFrame = true;
      await widgetsBindingInstance.endOfFrame;
      _waitingForEndOfFrame = false;
      if (!_currentlyTracking) return;
      if (_tracking.areThereOngoingAnimations) {
        return _forceScreenshotNextFrame();
      }
    }
    if (!isFrameTimeWindowSafe) {
      _forceScreenshotNextFrame();
      return;
    }
    if (screenshotPending > 0) {
      return;
    }
    final int screenShotId = currentTrackedScreen.uniqueId;
    final String screenShotName = currentTrackedScreen.name;
    final int startFocusTime = DateTime.now().millisecondsSinceEpoch;
    final ByteData? resultImageData = await screenshotTaker.captureImage(
      screenVisited: currentTrackedScreen,
      uiChangedReset: () => didUiChange = false,
      forceScreeshotNextFrame: _forceScreenshotNextFrame,
      screenSizeCallback: (size) => _placeholderImageConfig.lastSize = size,
    );
    if (resultImageData == null) return;
    await _sendScreenshot(
      resultImageData.buffer.asUint8List(),
      screenShotId,
      screenShotName,
      startFocusTime,
      currentTrackedScreen,
    );
  }

  Future<void> _sendScreenshot(
    Uint8List screenshotData,
    int screenId,
    String screenName,
    int startFocusTime,
    ScreenVisited screenVisited, {
    bool isPlaceholder = false,
  }) async {
    final ScreenshotMessage screenshotMessage = ScreenshotMessage(
      screenshotData: screenshotData,
      screenId: screenId,
      screenName: screenName,
      startFocusTime: startFocusTime,
    );

    screenVisited.screenshotTakenList.add(
      ScreenShotTaken(
        screenshotMessage: screenshotMessage,
        isPlaceholder: isPlaceholder,
      ),
    );
    logger.d(
      'Save screenshot - screenName: $screenName - screenId: $screenId - startFocusTime: $startFocusTime',
    );
    await _nativeApiInstance.saveScreenshot(screenshotMessage);
  }

  ///Resends the last screenshot to native (with a new focusTime) only
  ///if there's been a second or more without any new screenshots
  Future<void> closeScreenVideoWithPlaceholderImageIfNecessary(
    ScreenVisitedFinished screenVisited,
  ) async {
    if (screenVisited.isCurrentScreenOverMaxScreenshotCount) return;
    final int timestampForPlaceholerImage = screenVisited.endTimestamp - 500;
    if (!_medalliaDxaConfig.recordingAllowed) {
      return _sendOnePlaceholderImageForThisScreen(
        screenVisited: screenVisited,
        placeholderType: PlaceholderType(
          placeholderTypeEnum: PlaceholderTypeEnum.noPermission,
        ),
        customTimeStamp: timestampForPlaceholerImage,
      );
    }
    if (screenVisited.screenshotTakenList.isEmpty) {
      return _sendOnePlaceholderImageForThisScreen(
        screenVisited: screenVisited,
        placeholderType: PlaceholderType(
          placeholderTypeEnum: PlaceholderTypeEnum.noPreviewAvailable,
        ),
        customTimeStamp: timestampForPlaceholerImage,
      );
    }
  }

  Future<void> _sendOnePlaceholderImageForThisScreen({
    required ScreenVisited screenVisited,
    required PlaceholderType placeholderType,
    int? customTimeStamp,
  }) async {
    await waitForFunctionCompleter(
      _sendOnePlaceholderImageForThisScreen.hashCode,
    );
    return functionCompleterWrapper(
        _sendOnePlaceholderImageForThisScreen.hashCode, () async {
      //We don't want to put another placeholder image if the last screenshot
      //was already a placeholder image
      if (screenVisited.screenshotTakenList.isNotEmpty &&
          screenVisited.screenshotTakenList.last.isPlaceholder) return;
      final ByteData byteData =
          await _placeholderImageConfig.getPlaceholderImage(
        placeholderType,
      );

      final int startFocusTime =
          customTimeStamp ?? DateTime.now().millisecondsSinceEpoch;

      logger.d(
        '''
      _sendOnePlaceholderImageForThisScreen - 
      screenName: ${screenVisited.name} - 
      screenId: ${screenVisited.uniqueId} -
      text: ${placeholderType.getPlaceholderText()}
      ''',
      );

      await _sendScreenshot(
        byteData.buffer.asUint8List(),
        screenVisited.uniqueId,
        screenVisited.name,
        startFocusTime,
        screenVisited,
        isPlaceholder: true,
      );
    });
  }

  bool get isFrameTimeWindowSafe {
    bool safeZone = true;
    try {
      schedulerBindingInstance.currentFrameTimeStamp;
    } catch (e) {
      if (schedulerBindingInstance.hasScheduledFrame) {
        safeZone = false;
      }
    }
    return safeZone;
  }
}
