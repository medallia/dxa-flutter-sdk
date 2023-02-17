library frame_tracking_test;

import 'package:decibel_sdk/src/features/frame_tracking.dart';
import 'package:flutter_test/flutter_test.dart';
import '../custom_mocks/flutter_sdk_mock.dart';

void main() {
  group('Frame tracking', () {
    late FrameTracking frameTracking;
    late FlutterSdkMock flutterSdkMock;
    late bool callbackCalled;

    setUpAll(() {
      flutterSdkMock = FlutterSdkMock();
      callbackCalled = false;
      frameTracking =
          FrameTracking(postFrameCallback: flutterSdkMock.addPostFrameCallback)
            ..newFrameStreamController.stream.listen((timeStamp) {
              callbackCalled = true;
            });
    });

    test(
      '''
WHEN Frame Tracking starts 
      THEN callbackCalled is false 
      AND alreadyWaiting is false
      AND there's zero (0) postFrameCallbacks''',
      () {
        expect(callbackCalled, false);
        expect(frameTracking.alreadyWaiting, false);
        expect(flutterSdkMock.postFrameCallbacks.length, 0);
      },
    );
    test(
      '''
WHEN waitForNextFrame is called
      AND frameCallback is not invoked by the Flutter SDK
      THEN callbackCalled stays false
      AND  alreadyWaiting changes to true
      AND there's one (1) postframecallback''',
      () {
        frameTracking.waitForNextFrame();
        expect(callbackCalled, false);
        expect(frameTracking.alreadyWaiting, true);
        expect(flutterSdkMock.postFrameCallbacks.length, 1);
      },
    );
    test(
      '''
WHEN waitForNextFrame is called again
      AND frameCallback is not invoked by the Flutter SDK
      THEN callbackCalled stays false
      AND  alreadyWaiting stays true
      AND there's still one (1) postframecallback''',
      () {
        frameTracking.waitForNextFrame();
        expect(callbackCalled, false);
        expect(frameTracking.alreadyWaiting, true);
        expect(flutterSdkMock.postFrameCallbacks.length, 1);
      },
    );
    test(
      '''
WHEN invokeFrameCallback is called by the Flutter SDK
      THEN  alreadyWaiting is false
      AND there's zero (0) post framecallbacks
      AND callbackCalled is true
    ''',
      () async {
        flutterSdkMock.invokeFrameCallback();

        expect(frameTracking.alreadyWaiting, false);
        expect(flutterSdkMock.postFrameCallbacks.length, 0);
        //needed for the stream to notify the listener
        await Future(
          () {
            expect(callbackCalled, true);
          },
        );
      },
    );
  });
}
