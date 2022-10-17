import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:decibel_sdk/src/features/autoMasking/auto_masking_class.dart';
import 'package:decibel_sdk/src/features/tracking.dart';
import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SessionReplay {
  SessionReplay._internal()
      : _frameTracking = _FrameTracking(),
        autoMasking = AutoMasking();
  static final _instance = SessionReplay._internal();
  static SessionReplay get instance => _instance;
  final _FrameTracking _frameTracking;
  final AutoMasking autoMasking;
  final DecibelSdkApi _apiInstance = DecibelSdkApi();
  final widgetsToMaskList = List<GlobalKey>.empty(growable: true);
  final _maskColor = Paint()..color = Colors.grey;
  ScreenshotMessage? lastScreenshotSent;
  bool _isPageTransitioning = false;
  bool get isPageTransitioning => _isPageTransitioning;
  set isPageTransitioning(bool value) {
    _isPageTransitioning = value;
  }

  bool isInPopupRoute = false;
  GlobalKey? captureKey;
  BuildContext? popupRouteContext;
  Timer? _timer;
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

  Future<void> start() async {
    didUiChange = true;
    if (_timer != null && _timer!.isActive) {
      stop();
    }
    try {
      final bool isNotTabbar = Tracking.instance.visitedScreensList.isEmpty ||
          !Tracking.instance.visitedScreensList.last.isTabBar;
      if (isNotTabbar) {
        await forceTakeScreenshot();
      }
    } finally {
      _timer ??= Timer.periodic(const Duration(milliseconds: 250), (_) async {
        await maybeTakeScreenshot();
      });
    }
  }

  void stop() {
    _timer?.cancel();
    _timer = null;
    autoMasking.clear();
  }

  Future<void> maybeTakeScreenshot() async {
    if (didUiChange) {
      await forceTakeScreenshot();
    }
  }

  Future<void> forceTakeScreenshot() async {
    if (_timer == null || !_timer!.isActive) {
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
      final int screenShotId = Tracking.instance.visitedScreensList.last.id;
      final String screenShotName =
          Tracking.instance.visitedScreensList.last.name;
      final int startFocusTime = DateTime.now().millisecondsSinceEpoch;
      final bool isTabBar = Tracking.instance.visitedScreensList.last.isTabBar;
      late ui.Image image;
      autoMasking.setAutoMasking(context);
      manualMaskCoordinates = _saveMaskPosition();
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

      await _apiInstance.saveScreenshot(screenshotMessage);
    }
  }

  Set<Rect> _saveMaskPosition() {
    final Set<Rect> coordinates = {};

    for (final globalKey in widgetsToMaskList) {
      final RenderObject renderObject = globalKey.renderObject!;

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
