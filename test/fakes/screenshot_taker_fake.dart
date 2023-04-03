import 'package:decibel_sdk/src/features/session_replay.dart';
import 'package:decibel_sdk/src/features/tracking/screen_visited.dart';
import 'package:flutter/foundation.dart';
import 'package:mockito/mockito.dart';

class FakeScreenshotTaker extends Fake implements ScreenshotTaker {
  @override
  Future<ByteData?> captureImage({
    required ScreenVisited screenVisited,
    required VoidCallback uiChangedReset,
    required VoidCallback forceScreeshotNextFrame,
  }) async {
    uiChangedReset();
    return ByteData(3);
  }

  ///An error happens when toImage throws
  Future<ByteData?> captureImageError({
    required ScreenVisited screenVisited,
    required VoidCallback uiChangedReset,
    required VoidCallback forceScreeshotNextFrame,
  }) async {
    await captureImage(
      screenVisited: screenVisited,
      uiChangedReset: uiChangedReset,
      forceScreeshotNextFrame: forceScreeshotNextFrame,
    );
    forceScreeshotNextFrame();
    return null;
  }
}
