import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:decibel_sdk/features/tracking.dart';
import 'package:decibel_sdk/messages.dart';
import 'package:decibel_sdk/utility/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SessionReplay {
  SessionReplay._internal();
  static final _instance = SessionReplay._internal();
  static SessionReplay get instance => _instance;

  final DecibelSdkApi _apiInstance = DecibelSdkApi();
  final widgetsToMaskList = List<GlobalKey>.empty(growable: true);
  final _oldWidgetsList = List.empty(growable: true);
  final _newWidgetsList = List.empty(growable: true);
  final _maskColor = Paint()..color = Colors.grey;
  void Function(VoidCallback)? postFrameCallback;
  bool isPageTransitioning = false;
  GlobalKey? captureKey;
  Timer? _timer;

  void start() {
    if (_timer != null && _timer!.isActive) {
      _timer!.cancel();
    }
    _timer ??= Timer.periodic(const Duration(milliseconds: 250), (_) async {
      await maybeTakeScreenshot();
    });
  }

  void stop() {
    _timer?.cancel();
    _timer = null;
  }

  Future<void> maybeTakeScreenshot() async {
    if (!isPageTransitioning && _didUiChange()) {
      if (captureKey != null && captureKey!.currentContext != null) {
        await _captureImage(captureKey!.currentContext!);
      } else {
        postFrameCallback?.call(forceTakeScreenshot);
      }
    }
  }

  Future<void> forceTakeScreenshot() async {
    if (!isPageTransitioning &&
        captureKey != null &&
        captureKey!.currentContext != null) {
      _didUiChange(compare: false);
      await _captureImage(captureKey!.currentContext!);
    } else {
      Future.delayed(const Duration(milliseconds: 250), () async {
        await SessionReplay.instance.forceTakeScreenshot();
      });
    }
  }

  bool _didUiChange({bool compare = true}) {
    bool didUiChange = false;
    void findChildren(List<Element> list) {
      for (final child in list) {
        _newWidgetsList.add(child.widget);
        findChildren(child.children);
      }
    }

    if (WidgetsBinding.instance?.renderViewElement != null) {
      findChildren(WidgetsBinding.instance!.renderViewElement!.children);
      if (compare) {
        didUiChange = !listEquals(_oldWidgetsList, _newWidgetsList);
      }
      _oldWidgetsList.clear();
      _oldWidgetsList.addAll(_newWidgetsList);
      _newWidgetsList.clear();
    }
    return didUiChange;
  }

  Future<void> _captureImage(BuildContext context) async {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final recorder = ui.PictureRecorder();
    final canvas = Canvas(
      recorder,
      Rect.fromLTWH(0, 0, width, height),
    );
    try {
      final renderObject = context.findRenderObject();
      if (renderObject != null) {
        RenderBox box = context.findRenderObject() as RenderBox;
        Offset position = box.localToGlobal(Offset.zero);
        var newPosition = Offset(0, position.dy);
        late ui.Image image;
        try {
          image = await (renderObject as RenderRepaintBoundary).toImage();
        } catch (_) {
          postFrameCallback?.call(forceTakeScreenshot);
          return;
        }
        canvas.drawImage(image, newPosition, Paint());
        // Paint a rect in the widgets position to be masked
        final _previousCoordsList = List<Rect>.empty(growable: true);
        for (final globalKey in widgetsToMaskList) {
          if (globalKey.globalPaintBounds == null) {
            Future.delayed(const Duration(milliseconds: 100), () async {
              postFrameCallback?.call(forceTakeScreenshot);
            });

            return;
          }
          globalKey.globalPaintBounds?.let((it) {
            _previousCoordsList.add(it);
            canvas.drawRect(it, _maskColor);
          });
        }
        final resultImage = await recorder
            .endRecording()
            .toImage(width.toInt(), height.toInt());
        final resultImageData =
            await resultImage.toByteData(format: ui.ImageByteFormat.png);

        final _currentCoordsList = List<Rect>.empty(growable: true);

        for (final globalKey in widgetsToMaskList) {
          globalKey.globalPaintBounds?.let((it) {
            _currentCoordsList.add(it);
          });
        }
        // We compare these lists to check that the masks won't be misplaced
        if (resultImageData != null &&
            listEquals(_previousCoordsList, _currentCoordsList)) {
          if (!isPageTransitioning && _timer != null) {
            await _sendScreenshot(
              resultImageData.buffer.asUint8List(),
              Tracking.instance.visitedScreensList.last.id,
              Tracking.instance.visitedScreensList.last.name,
              DateTime.now().millisecondsSinceEpoch,
            );
          }
        }
      }
    } on Exception catch (_) {
      rethrow;
      //TODO: Handle exception
    }
  }

  Future<void> _sendScreenshot(
    Uint8List screenshotData,
    int screenId,
    String screenName,
    int startFocusTime,
  ) async {
    await _apiInstance.saveScreenshot(
      ScreenshotMessage()
        ..screenshotData = screenshotData
        ..screenId = screenId
        ..screenName = screenName
        ..startFocusTime = startFocusTime,
    );
  }
}
