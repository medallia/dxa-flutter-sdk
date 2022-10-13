import 'dart:async';
import 'package:flutter/foundation.dart';

class FrameTracking {
  FrameTracking({required this.postFrameCallback});
  final void Function(void Function(Duration)) postFrameCallback;
  final StreamController<Duration> newFrameStreamController =
      StreamController();
  @visibleForTesting
  bool alreadyWaiting = false;
  void waitForNextFrame() {
    if (alreadyWaiting) return;

    alreadyWaiting = true;
    postFrameCallback((Duration timeStamp) {
      alreadyWaiting = false;
      newFrameStreamController.add(timeStamp);
    });
  }
}
