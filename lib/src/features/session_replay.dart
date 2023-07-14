// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:decibel_sdk/src/features/config/decibel_config.dart';
import 'package:decibel_sdk/src/features/autoMasking/auto_masking_class.dart';
import 'package:decibel_sdk/src/features/event_channel/classes/performance_metrics.dart';
import 'package:decibel_sdk/src/features/frame_tracking.dart';
import 'package:decibel_sdk/src/features/tracking/screen_visited.dart';
import 'package:decibel_sdk/src/features/tracking/tracking.dart';
import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/completer_wrappers.dart';
import 'package:decibel_sdk/src/utility/dependency_injector.dart';
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:decibel_sdk/src/utility/global_settings.dart';
import 'package:decibel_sdk/src/utility/logger_sdk.dart';
import 'package:decibel_sdk/src/utility/placeholder_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:logger/logger.dart';

class SessionReplay with TaskCompleter {
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
      this._globalSettings) {
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
    final ScreenVisited currentTrackedScreen = _currentTrackedScreen;
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

    if (_tracking.areThereOngoingAnimations ||
        !currentTrackedScreen.widgetInTheTree) {
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
      if (_tracking.areThereOngoingAnimations ||
          !currentTrackedScreen.widgetInTheTree) {
        return _forceScreenshotNextFrame();
      }
    }
    if (!isFrameTimeWindowSafe) {
      _forceScreenshotNextFrame();
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
  Future<void> closeScreenVideo(ScreenVisited screenVisited) async {
    if (screenVisited.isCurrentScreenOverMaxScreenshotCount) return;
    if (!_medalliaDxaConfig.recordingAllowed) {
      return _sendOnePlaceholderImageForThisScreen(
        screenVisited: screenVisited,
        placeholderType: PlaceholderType(
          placeholderTypeEnum: PlaceholderTypeEnum.noPermission,
        ),
      );
    }
    if (screenVisited.screenshotTakenList.isEmpty) {
      return _sendOnePlaceholderImageForThisScreen(
        screenVisited: screenVisited,
        placeholderType: PlaceholderType(
          placeholderTypeEnum: PlaceholderTypeEnum.noPreviewAvailable,
        ),
      );
    }
    final ScreenShotTaken lastScreenshotTaken =
        screenVisited.screenshotTakenList.last;
    if (DateTime.now().millisecondsSinceEpoch -
            lastScreenshotTaken.screenshotMessage.startFocusTime >
        1000) {
      late int startFocusTime;
      if (screenVisited.isCurrentScreenOverMaxDuration) {
        startFocusTime = screenVisited.maximumDurationForLastScreenshot;
      } else {
        startFocusTime = screenVisited.endTimestamp! - 500;
      }

      final ScreenshotMessage screenShotMessage =
          screenVisited.screenshotTakenList.last.screenshotMessage;

      return _sendScreenshot(
        screenShotMessage.screenshotData,
        screenShotMessage.screenId,
        screenShotMessage.screenName,
        startFocusTime,
        screenVisited,
      );
    }
  }

  Future<void> _sendOnePlaceholderImageForThisScreen({
    required ScreenVisited screenVisited,
    required PlaceholderType placeholderType,
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
        screenVisited.getCurrentContext,
        placeholderType,
      );

      final int startFocusTime = DateTime.now().millisecondsSinceEpoch;

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

class ScreenshotTaker with TrackingCompleter {
  final AutoMasking autoMasking;
  final MedalliaDxaConfig medalliaDxaConfig;
  Paint get _maskColor =>
      Paint()..color = DependencyInjector.instance.globalSettings.maskColor;
  final Paint _borderColor = Paint()
    ..color = const Color.fromARGB(255, 255, 255, 255)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  ScreenshotTaker({
    required this.autoMasking,
    required this.medalliaDxaConfig,
  });

  Future<ByteData?> captureImage({
    required ScreenVisited screenVisited,
    required VoidCallback uiChangedReset,
    required VoidCallback forceScreeshotNextFrame,
    required Function(Size) screenSizeCallback,
  }) async {
    final renderObject = screenVisited.getCurrentContext?.findRenderObject();
    if (renderObject != null) {
      final Size size = screenVisited.getSize(renderObject);
      screenSizeCallback(size);
      final double width = size.width;
      final double height = size.height;
      final recorder = ui.PictureRecorder();

      late Set<RectAndRotation> manualMaskCoordinates;

      final Rect frame = renderObject.globalPaintBounds;
      final Offset offset = Offset(frame.left, frame.top);

      late ui.Image image;
      if (screenVisited.enableAutomaticMasking) {
        autoMasking.setAutoMasking(screenVisited.rootElementForAutomasking);
      }
      manualMaskCoordinates =
          _saveMaskPosition(screenVisited.listOfMasks, renderObject, offset);

      return endScreenTasksCompleterWrapper<ByteData?>(() async {
        try {
          uiChangedReset();

          image = await (renderObject as RenderRepaintBoundary).toImage();
        } catch (_) {
          forceScreeshotNextFrame();
          return null;
        }
        final canvas = Canvas(
          recorder,
        );
        canvas.drawImage(image, offset, Paint());
        _paintMaskWithCoordinates(canvas, manualMaskCoordinates);

        final resultImage = await recorder.endRecording().toImage(
              width.toInt(),
              height.toInt(),
            );
        final resultImageData =
            await resultImage.toByteData(format: ui.ImageByteFormat.png);

        return resultImageData;
      });
    }
    return null;
  }

  Set<RectAndRotation> _saveMaskPosition(
    List<GlobalKey> widgetsToMaskList,
    RenderObject ancestor,
    Offset offset,
  ) {
    final Set<RectAndRotation> coordinates = {};

    for (final globalKey in widgetsToMaskList) {
      final RenderObject? renderObject = globalKey.renderObject;
      //TODO: this is used for tabbars because they share masks references,
      //research how to avoid this
      if (renderObject == null) continue;
      coordinates.addAll(_getMaskCoordinates(renderObject, ancestor, offset));
    }
    autoMasking.renderObjectsToMask
        .removeWhere((element) => element.attached == false);
    for (final renderObject in autoMasking.renderObjectsToMask) {
      coordinates.addAll(_getMaskCoordinates(renderObject, ancestor, offset));
    }
    return coordinates;
  }

  Set<RectAndRotation> _getMaskCoordinates(
    RenderObject renderObject,
    RenderObject ancestor,
    Offset offset,
  ) {
    final Set<RectAndRotation> coordinates = {};
    renderObject.globalPaintBoundsWithAncestor(ancestor).let((it) {
      coordinates
          .add(RectAndRotation(it.rect.shift(offset), it.cosine, it.sine));
    });
    return coordinates;
  }

  void _paintMaskWithCoordinates(
      Canvas canvas, Set<RectAndRotation> coordinates) {
    for (final coordinate in coordinates) {
      final path = Path();
      final rect = coordinate.rect;
      final width = rect.right - rect.left;
      final height = rect.bottom - rect.top;

      final xcosine = width * coordinate.cosine;
      final xsine = width * coordinate.sine;
      final ysine = height * coordinate.sine;
      final ycosine = height * coordinate.cosine;

      //Point1
      path.moveTo(rect.left, rect.top);
      //Point2
      path.lineTo(rect.left + xcosine, rect.top + xsine);
      //Point3
      path.lineTo(
        rect.left + xcosine - ysine,
        rect.top + xsine + ycosine,
      );
      //Point4
      path.lineTo(rect.left - ysine, rect.top + ycosine);
      //
      path.close();
      canvas.drawPath(path, _maskColor);
      //   canvas.drawRect(
      //   coordinate,
      //   _borderColor,
      // );
      canvas.drawPath(path, _borderColor);
    }
  }
}
