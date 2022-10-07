part of 'session_replay.dart';

class _FrameTracking {
  bool _alreadyWaiting = false;

  void waitForNextFrame() {
    if (_alreadyWaiting) return;
    if (SessionReplay.instance.uiChange) return;

    _alreadyWaiting = true;

    WidgetsBindingNullSafe.instance!.addPostFrameCallback((timeStamp) {
      _alreadyWaiting = false;
      SessionReplay.instance.uiChange = true;
    });
  }
}
