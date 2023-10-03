import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/utility/logger_sdk.dart';

class FrameTracking {
  FrameTracking({required this.postFrameCallback, required LoggerSDK loggerSDK})
      : _logger = loggerSDK;
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
