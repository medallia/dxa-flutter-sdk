import 'dart:async';
import 'package:decibel_sdk/src/utility/logger_sdk.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class FrameTracking {
  FrameTracking({required this.postFrameCallback})
      : _logger = LoggerSDK.instance;
  final void Function(void Function(Duration)) postFrameCallback;
  final StreamController<Duration> newFrameStreamController =
      StreamController();
  @visibleForTesting
  bool alreadyWaiting = false;
  final LoggerSDK _logger;
  Logger get logger => _logger.frameTrackingLogger;

  void waitForNextFrame() {
    if (alreadyWaiting) return;
    logger.d('Waiting for next frame');
    alreadyWaiting = true;
    postFrameCallback((Duration timeStamp) {
      logger.d('New frame has arrived');
      alreadyWaiting = false;
      newFrameStreamController.add(timeStamp);
    });
  }
}
