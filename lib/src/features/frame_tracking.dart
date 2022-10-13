import 'dart:async';

class FrameTracking {
  FrameTracking({required this.postFrameCallback});
  final void Function(void Function(Duration)) postFrameCallback;
  final StreamController<Duration> newFrameStreamController =
      StreamController();
  bool _alreadyWaiting = false;
  void waitForNextFrame() {
    if (_alreadyWaiting) return;

    _alreadyWaiting = true;
    postFrameCallback((Duration timeStamp) {
      _alreadyWaiting = false;
      newFrameStreamController.add(timeStamp);
    });
  }
}
