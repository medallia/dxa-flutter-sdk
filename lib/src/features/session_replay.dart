import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:decibel_sdk/src/features/autoMasking/auto_masking_class.dart';
import 'package:decibel_sdk/src/features/frame_tracking.dart';
import 'package:decibel_sdk/src/features/tracking.dart';
import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/placeholder_image.dart';
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SessionReplay {
  SessionReplay._internal() {
    _timer = Timer.periodic(const Duration(milliseconds: 250), (_) async {
      await maybeTakeScreenshot();
    });
    autoMasking = AutoMasking();
    _frameTracking = FrameTracking(
      postFrameCallback: WidgetsBindingNullSafe.instance!.addPostFrameCallback,
    )..newFrameStreamController.stream.listen((timeStamp) {
        _didUiChange = true;
      });
    placeholderImageConfig = PlaceholderImageConfig.instance;
  }
  static final _instance = SessionReplay._internal();
  static SessionReplay get instance => _instance;
  late final FrameTracking _frameTracking;
  late final AutoMasking autoMasking;
  late final PlaceholderImageConfig placeholderImageConfig;
  final DecibelSdkApi _apiInstance = DecibelSdkApi();
  final _maskColor = Paint()..color = Colors.grey;
  ScreenshotMessage? lastScreenshotSent;
  bool alreadyWaitingForPostFrameCallback = false;
  bool get currentlyTracking =>
      Tracking.instance.visitedUnfinishedScreensList.isNotEmpty;
  bool get recordingAllowedInThisScreen => currentTrackedSreen.recordingAllowed;

  ScreenVisited get currentTrackedSreen {
    return Tracking.instance.visitedUnfinishedScreensList.last;
  }

  late Timer _timer;
  bool _didUiChange = false;
  bool get didUiChange => _didUiChange;
  set didUiChange(bool change) {
    _didUiChange = change;
    if (!change) {
      _frameTracking.waitForNextFrame();
    }
  }

  void _forceScreenshotNextFrame() {
    if (alreadyWaitingForPostFrameCallback) return;
    alreadyWaitingForPostFrameCallback = true;
    WidgetsBindingNullSafe.instance!.addPostFrameCallback((_) async {
      alreadyWaitingForPostFrameCallback = false;
      await forceTakeScreenshot();
    });
  }

  BuildContext? get getCurrentContext => currentTrackedSreen.getCurrentContext;

  Future<void> newScreen() async {
    didUiChange = true;
    try {
      final bool isNotTabbar = Tracking.instance.visitedScreensList.isEmpty ||
          !Tracking.instance.visitedScreensList.last.isTabBar;
      if (isNotTabbar) {
        await forceTakeScreenshot();
      }
    } finally {}
  }

  void start() {
    if (_timer.isActive) return;
    _timer = Timer.periodic(const Duration(milliseconds: 250), (_) async {
      await maybeTakeScreenshot();
    });
  }

  void stop() {
    _timer.cancel();
  }

  void clearMasks() {
    autoMasking.clear();
  }

  Future<void> maybeTakeScreenshot() async {
    if (didUiChange) {
      await forceTakeScreenshot();
    }
  }

  Future<void> forceTakeScreenshot() async {
    if (!currentlyTracking) return;

    if (!recordingAllowedInThisScreen) {
      return _sendOnePlaceholderImageForThisScreen(getCurrentContext!);
    }
    if (!Tracking.instance.isPageTransitioning && getCurrentContext != null) {
      await _captureImage(getCurrentContext!);
    } else {
      _forceScreenshotNextFrame();
    }
  }

  Future<void> _captureImage(BuildContext context) async {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;
    final double height = size.height;
    final recorder = ui.PictureRecorder();
    final canvas = Canvas(
      recorder,
      Rect.fromLTWH(0, 0, width, height),
    );
    final renderObject = context.findRenderObject();

    late Set<Rect> manualMaskCoordinates;

    if (renderObject != null) {
      final Rect frame = renderObject.globalPaintBounds;

      final ScreenVisited screenVisited = currentTrackedSreen;
      final Offset newPosition = Offset(0, frame.top);
      final int startFocusTime = DateTime.now().millisecondsSinceEpoch;

      late ui.Image image;
      autoMasking.setAutoMasking(context);
      manualMaskCoordinates =
          _saveMaskPosition(currentTrackedSreen.listOfMasks);
      try {
        didUiChange = false;

        image = await (renderObject as RenderRepaintBoundary).toImage();
      } catch (_) {
        _forceScreenshotNextFrame();
        return;
      }
      canvas.drawImage(image, newPosition, Paint());
      _paintMaskWithCoordinates(canvas, manualMaskCoordinates);

      final resultImage =
          await recorder.endRecording().toImage(width.toInt(), height.toInt());
      final resultImageData =
          await resultImage.toByteData(format: ui.ImageByteFormat.png);
      final int screenShotId = screenVisited.uniqueId;
      final String screenShotName = screenVisited.name;
      screenVisited.screenshotTakenList.add(
        ScreenShotTaken(startFocusTime: startFocusTime),
      );
      if (resultImageData != null) {
        await _sendScreenshot(
          resultImageData.buffer.asUint8List(),
          screenShotId,
          screenShotName,
          startFocusTime,
        );
      }
    }
  }

  Future<void> _sendScreenshot(
    Uint8List screenshotData,
    int screenId,
    String screenName,
    int startFocusTime,
  ) async {
    final ScreenshotMessage screenshotMessage = ScreenshotMessage()
      ..screenshotData = screenshotData
      ..screenId = screenId
      ..screenName = screenName
      ..startFocusTime = startFocusTime;
    lastScreenshotSent = screenshotMessage;
    await _apiInstance.saveScreenshot(screenshotMessage);
  }

  ///Resends the last screenshot to native (with a new focusTime) only
  ///if there's been a second or more without any new screenshots
  Future<void> closeScreenVideo() async {
    if (lastScreenshotSent != null &&
        DateTime.now().millisecondsSinceEpoch -
                lastScreenshotSent!.startFocusTime! >
            1000) {
      final int startFocusTime = DateTime.now().millisecondsSinceEpoch;
      final ScreenshotMessage screenShotMessage = lastScreenshotSent!;
      lastScreenshotSent = null;
      await _sendScreenshot(
        screenShotMessage.screenshotData!,
        screenShotMessage.screenId!,
        screenShotMessage.screenName!,
        startFocusTime,
      );
    }
  }

  Future<void> _sendOnePlaceholderImageForThisScreen(
    BuildContext context,
  ) async {
    if (currentTrackedSreen.screenshotTakenList.isNotEmpty) return;
    final ByteData byteData = await placeholderImageConfig.getPlaceholderImage(
        context, PlaceholderType.replayDisabled);
    final int startFocusTime = DateTime.now().millisecondsSinceEpoch;
    currentTrackedSreen.screenshotTakenList.add(
      ScreenShotTaken(startFocusTime: startFocusTime),
    );
    await _sendScreenshot(
      byteData.buffer.asUint8List(),
      currentTrackedSreen.uniqueId,
      currentTrackedSreen.name,
      startFocusTime,
    );
  }

  Set<Rect> _saveMaskPosition(List<GlobalKey> widgetsToMaskList) {
    final Set<Rect> coordinates = {};

    for (final globalKey in widgetsToMaskList) {
      final RenderObject? renderObject = globalKey.renderObject;
      //TODO: this is used for tabbars because they share masks references,
      //research how to avoid this
      if (renderObject == null) continue;
      coordinates.addAll(_getMaskCoordinates(renderObject));
    }
    autoMasking.renderObjectsToMask
        .removeWhere((element) => element.attached == false);
    for (final renderObject in autoMasking.renderObjectsToMask) {
      coordinates.addAll(_getMaskCoordinates(renderObject));
    }
    autoMasking.renderObjectsToMask
        .removeWhere((element) => element.attached == false);
    for (final renderObject in autoMasking.renderObjectsToMask) {
      coordinates.addAll(_getMaskCoordinates(renderObject));
    }
    return coordinates;
  }

  Set<Rect> _getMaskCoordinates(RenderObject renderObject) {
    final Set<Rect> coordinates = {};
    renderObject.globalPaintBounds.let((it) {
      coordinates.add(it);
    });
    return coordinates;
  }

  void _paintMaskWithCoordinates(Canvas canvas, Set<Rect> coordinates) {
    for (final coordinate in coordinates) {
      canvas.drawRect(coordinate, _maskColor);
    }
  }
}
