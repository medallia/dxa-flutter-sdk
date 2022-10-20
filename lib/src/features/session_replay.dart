import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:decibel_sdk/src/features/autoMasking/auto_masking_class.dart';
import 'package:decibel_sdk/src/features/frame_tracking.dart';
import 'package:decibel_sdk/src/features/tracking.dart';
import 'package:decibel_sdk/src/messages.dart';
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
  }
  static final _instance = SessionReplay._internal();
  static SessionReplay get instance => _instance;
  late final FrameTracking _frameTracking;
  late final AutoMasking autoMasking;
  final DecibelSdkApi _apiInstance = DecibelSdkApi();
  // final widgetsToMaskList = List<GlobalKey>.empty(growable: true);
  final _maskColor = Paint()..color = Colors.grey;
  ScreenshotMessage? lastScreenshotSent;
  bool _isPageTransitioning = false;
  bool get isPageTransitioning => _isPageTransitioning;
  set isPageTransitioning(bool value) {
    _isPageTransitioning = value;
  }

  bool get currentlyTracking =>
      Tracking.instance.visitedUnfinishedScreensList.isNotEmpty;
  ScreenVisited get currentTrackedSreen {
    // if (Tracking.instance.visitedUnfinishedScreensList.isNotEmpty) {
    return Tracking.instance.visitedUnfinishedScreensList.last;
    // }
    // return null;
  }

  bool isInPopupRoute = false;
  GlobalKey? captureKey;
  BuildContext? popupRouteContext;
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
    WidgetsBindingNullSafe.instance!.addPostFrameCallback((_) async {
      await forceTakeScreenshot();
    });
  }

  BuildContext? get getCurrentContext =>
      !isInPopupRoute ? captureKey?.currentContext : popupRouteContext;

  Future<void> newScreen() async {
    didUiChange = true;
    // if (_timer != null && _timer!.isActive) {
    //   stop();
    // }
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
    // widgetsToMaskList.clear();
    autoMasking.clear();
  }

  Future<void> maybeTakeScreenshot() async {
    if (didUiChange) {
      await forceTakeScreenshot();
    }
  }

  Future<void> forceTakeScreenshot() async {
    if (!currentlyTracking) {
      return;
    }
    if (!isPageTransitioning && getCurrentContext != null) {
      await _captureImage(getCurrentContext!);
    } else {
      _forceScreenshotNextFrame();
    }
  }

  Future<void> _captureImage(BuildContext context) async {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final recorder = ui.PictureRecorder();
    final canvas = Canvas(
      recorder,
      Rect.fromLTWH(0, 0, width, height),
    );
    final renderObject = context.findRenderObject();

    late Set<Rect> manualMaskCoordinates;

    if (renderObject != null) {
      final Rect frame = renderObject.globalPaintBounds;

      final Offset newPosition = Offset(0, frame.top);
      final int screenShotId = currentTrackedSreen.uniqueId;
      final String screenShotName = currentTrackedSreen.name;
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

      if (resultImageData != null) {
        debugPrint(
            "screenshot - $screenShotId - $screenShotName - masks: ${manualMaskCoordinates.length}");
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

  Future<void> closeScreenVideo() async {
    if (lastScreenshotSent != null &&
        DateTime.now().millisecondsSinceEpoch -
                lastScreenshotSent!.startFocusTime! >
            1000) {
      final int startFocusTime = DateTime.now().millisecondsSinceEpoch;
      final ScreenshotMessage screenshotMessage = ScreenshotMessage()
        ..screenshotData = lastScreenshotSent!.screenshotData
        ..screenId = lastScreenshotSent!.screenId
        ..screenName = lastScreenshotSent!.screenName
        ..startFocusTime = startFocusTime;
      debugPrint(
        'close screenshot - ${lastScreenshotSent!.screenId} - ${lastScreenshotSent!.screenName}',
      );

      await _apiInstance.saveScreenshot(screenshotMessage);
    }
  }

  Set<Rect> _saveMaskPosition(List<GlobalKey> widgetsToMaskList) {
    final Set<Rect> coordinates = {};

    for (final globalKey in widgetsToMaskList) {
      final RenderObject? renderObject = globalKey.renderObject;
      if (renderObject == null) continue;
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
