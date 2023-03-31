library initial_config_test;

import 'dart:async';
import 'dart:typed_data';

import 'package:decibel_sdk/src/features/session_replay.dart';
import 'package:decibel_sdk/src/features/tracking/screen_visited.dart';
import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/constants.dart';
import 'package:decibel_sdk/src/utility/dependency_injector.dart';

import 'package:decibel_sdk/src/utility/placeholder_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../fakes/screenshot_taker_fake.dart';
import '../fakes/widgets_binding_fake.dart';
import '../test.mocks.dart';

void main() {
  late MockMedalliaDxaConfig mockMedalliaDxaConfig;
  late MockMedalliaDxaNativeApi mockNativeApi;
  late MockAutoMasking mockAutoMasking;
  late MockLoggerSDK mockLoggerSDK;

  late MockFrameTracking mockFrameTracking;
  late MockPlaceholderImageConfig mockPlaceholderImageConfig;
  late MockTracking mockTracking;

  late FakeScreenshotTaker fakeScreenshotTaker;
  late MockScreenVisited mockScreenVisited;

  late SessionReplay sessionReplay;
  //Third party
  late MockLogger mockLogger;
  //Flutter
  late FakeWidgetsBinding fakeWidgetsBinding;
  late MockSchedulerBinding mockSchedulerBinding;
  late MockBuildContext mockBuildContext;

  setUp(() {
    WidgetsFlutterBinding.ensureInitialized();

    mockNativeApi = MockMedalliaDxaNativeApi();
    mockMedalliaDxaConfig = MockMedalliaDxaConfig();

    mockAutoMasking = MockAutoMasking();
    mockLoggerSDK = MockLoggerSDK();
    mockLogger = MockLogger();
    fakeScreenshotTaker = FakeScreenshotTaker();
    mockScreenVisited = MockScreenVisited();
    mockFrameTracking = MockFrameTracking();
    mockPlaceholderImageConfig = MockPlaceholderImageConfig();
    mockTracking = MockTracking();

    when(mockFrameTracking.newFrameStreamController)
        .thenReturn(StreamController());

    fakeWidgetsBinding = FakeWidgetsBinding();
    mockSchedulerBinding = MockSchedulerBinding();
    mockBuildContext = MockBuildContext();

    sessionReplay = SessionReplay(
      mockMedalliaDxaConfig,
      mockLoggerSDK,
      mockFrameTracking,
      mockAutoMasking,
      mockPlaceholderImageConfig,
      fakeWidgetsBinding,
      mockSchedulerBinding,
      fakeScreenshotTaker,
      mockNativeApi,
    );

    DependencyInjector(
      config: mockMedalliaDxaConfig,
      autoMasking: mockAutoMasking,
      frameTracking: mockFrameTracking,
      loggerSdk: mockLoggerSDK,
      nativeApi: mockNativeApi,
      placeholderImageConfig: mockPlaceholderImageConfig,
      tracking: mockTracking,
      sessionReplay: sessionReplay,
    );
    when(mockLoggerSDK.sessionReplayLogger).thenReturn(mockLogger);

    //we stop the Timer so we control the framerate calls (maybeTakeScreenshot)
    sessionReplay.stopPeriodicTimer();
  });
  final List<void Function()> stubsToAllowTakeScreenshot = [
    () {
      when(mockSchedulerBinding.schedulerPhase)
          .thenReturn(SchedulerPhase.postFrameCallbacks);
    },
    () {
      when(mockScreenVisited.widgetInTheTree).thenReturn(true);
    },
    () {
      when(mockScreenVisited.recordingAllowed).thenReturn(true);
    },
    () {
      when(mockTracking.isPageTransitioning).thenReturn(false);
    },
    () {
      sessionReplay.didUiChangeValue = true;
    },
    () {
      when(mockMedalliaDxaConfig.recordingAllowed).thenReturn(true);
    },
  ];
  void setVariablesToAllowTakeScreenshot() {
    for (final stub in stubsToAllowTakeScreenshot) {
      stub();
    }
  }

  void setupMocksForTakeScreenshot() {
    when(mockTracking.visitedUnfinishedScreen).thenReturn(mockScreenVisited);
    when(mockScreenVisited.getCurrentContext).thenReturn(mockBuildContext);
    when(mockScreenVisited.timestamp)
        .thenReturn(DateTime.now().millisecondsSinceEpoch);
  }

  ///Call to takeScreenshot, and then verify that a screenshot has NOT been sent
  ///using the nativeApi
  Future<void> verifyNeverScreenshotIsSent() async {
    await sessionReplay.tryToTakeScreenshotIfUiHasChanged();
    verifyNever(mockNativeApi.saveScreenshot(any));
  }

  ///Call to takeScreenshot, and then verify that a screenshot has been sent
  ///using the nativeApi
  Future<void> verifyScreenshotIsSent() async {
    await sessionReplay.tryToTakeScreenshotIfUiHasChanged();
    verify(mockNativeApi.saveScreenshot(any)).called(1);
  }

  group('UI changes and frame calbbacks', () {
    test('''
WHEN the UI change flag is false
THEN no screenshot is sent.
WHEN a new Frame arrives
THEN the UI change flag is true
AND the screenshot is sent
AND UI change flag is changed to false
AND frameTracking awaits for next frame
    ''', () async {
      setupMocksForTakeScreenshot();
      setVariablesToAllowTakeScreenshot();
      //WHEN the UI change flag is false
      sessionReplay.didUiChangeValue = false;
      //THEN no screenshot is sent.
      await verifyNeverScreenshotIsSent();
      //WHEN a new Frame arrives
      mockFrameTracking.newFrameStreamController.add(Duration.zero);
      //THEN the UI change flag is true
      await Future(
        () {
          expect(sessionReplay.didUiChangeValue, true);
        },
      );
      // AND the screenshot is sent
      await verifyScreenshotIsSent();
      //AND UI change flag is changed to false
      expect(sessionReplay.didUiChangeValue, false);
      //AND frameTracking awaits for next frame
      verify(mockFrameTracking.waitForNextFrame()).called(1);
    });
    test('''
WHEN the the UI change flag is set to false
THEN a new frame is awaited
AND screenshot is not sent
UNTIL a new frame is rendered
THEN a screenshot is sent to native without having to call the take screenshot
method''', () async {
      setupMocksForTakeScreenshot();
      setVariablesToAllowTakeScreenshot();
      //WHEN the the UI change flag is set to false
      sessionReplay.didUiChange = false;
      //THEN a new frame is awaited
      verify(mockFrameTracking.waitForNextFrame()).called(1);
      //AND screenshot is not sent
      await verifyNeverScreenshotIsSent();
      //UNTIL a new frame is rendered
      mockFrameTracking.newFrameStreamController.add(Duration.zero);
      //THEN a screenshot is sent to native without having to call the take
      //screenshot method
      await Future.value(() {
        verify(mockNativeApi.saveScreenshot(any)).called(1);
      });
    });
  });
  group('Screenshot conditions', () {
    test('''
Set the stubs to allow screenshots one by one, 
checking every time that screenshot has not been sent 
until all stubs have been called. 
THEN the screenshot is sent''', () async {
      setupMocksForTakeScreenshot();

      await verifyNeverScreenshotIsSent();
      for (var i = 0; i < stubsToAllowTakeScreenshot.length; i++) {
        stubsToAllowTakeScreenshot[i].call();
        if (i == stubsToAllowTakeScreenshot.length - 1) break;
        await verifyNeverScreenshotIsSent();
      }

      await verifyScreenshotIsSent();
    });
    test('''
WHEN a page is transitioning
AND the SDK is trying to take a screenshot
THEN no screenshot should be taken.
WHEN it is no longer transitioning
AND the next frame is rendered
THEN the screenshot is sent to native without having to call the take screenshot
method''', () async {
      setupMocksForTakeScreenshot();
      setVariablesToAllowTakeScreenshot();
      when(mockScreenVisited.screenshotTakenList).thenReturn([]);
      //WHEN a page is transitioning
      when(mockTracking.isPageTransitioning).thenReturn(true);
      //AND the SDK is trying to take a screenshot
      await sessionReplay.tryToTakeScreenshotIfUiHasChanged();
      //THEN no screenshot should be taken.
      verifyNever(mockNativeApi.saveScreenshot(any));
      //WHEN it is no longer transitioning
      when(mockTracking.isPageTransitioning).thenReturn(false);
      //AND the next frame is rendered
      await fakeWidgetsBinding.invokeFrameCallbackAndAwaitFutures();
      //THEN the screenshot is sent to native without having to call the take screenshot method
      await Future.value(() async {
        verify(mockNativeApi.saveScreenshot(any)).called(1);
        expect(mockScreenVisited.screenshotTakenList.length, 1);
      });
    });
    test('''
WHEN a page is transitioning
AND the SDK is trying to take multiple screenshots
THEN no screenshot should be taken.
WHEN it is no longer transitioning
AND the next frame is rendered
THEN the screenshot is sent to native only ONCE without having to call the take screenshot
method''', () async {
      setupMocksForTakeScreenshot();
      setVariablesToAllowTakeScreenshot();
      when(mockScreenVisited.screenshotTakenList).thenReturn([]);

      //WHEN a page is transitioning
      when(mockTracking.isPageTransitioning).thenReturn(true);
      //AND the SDK is trying to take multiple screenshots

      await sessionReplay.tryToTakeScreenshotIfUiHasChanged();
      await sessionReplay.tryToTakeScreenshotIfUiHasChanged();
      await sessionReplay.tryToTakeScreenshotIfUiHasChanged();
      //THEN no screenshot should be taken.
      verifyNever(mockNativeApi.saveScreenshot(any));
      //WHEN it is no longer transitioning
      when(mockTracking.isPageTransitioning).thenReturn(false);
      //AND the next frame is rendered
      await fakeWidgetsBinding.invokeFrameCallbackAndAwaitFutures();
      //THEN the screenshot is sent to native only ONCE
      //without having to call the take screenshot method
      await Future.value(() async {
        verify(mockNativeApi.saveScreenshot(any)).called(1);
        expect(mockScreenVisited.screenshotTakenList.length, 1);
      });
    });
  });
  group('Basic logic', () {
    test(
      '''
WHEN clearMasks is called
THEN automasking.clear is called''',
      () {
        sessionReplay.clearMasks();
        verify(mockAutoMasking.clear()).called(1);
      },
    );
    test(
      '''
WHEN startPeriodicTimer is called
THEN the timer is active
AND WHEN stopPeriodicTimer is called
THEN the timer is not active''',
      () {
        expect(sessionReplay.timer.isActive, false);
        sessionReplay.startPeriodicTimer();
        expect(sessionReplay.timer.isActive, true);
        sessionReplay.stopPeriodicTimer();
        expect(sessionReplay.timer.isActive, false);
      },
    );
  });
  group('placeholder logic', () {
    test('''
WHEN tryToTakeScreenshotIfUiHasChanged
AND recording is not allowed in this screen
THEN getPlaceholderImage is called with a PlaceholderType of enum replayDisabled
AND a screenshot is sent to native''', () async {
      setVariablesToAllowTakeScreenshot();
      setupMocksForTakeScreenshot();
      when(mockPlaceholderImageConfig.getPlaceholderImage(any, any))
          .thenAnswer((realInvocation) => ByteData(3));

      //recording is not allowed in a specific screen
      when(mockScreenVisited.recordingAllowed).thenReturn(false);

      // WHEN tryToTakeScreenshotIfUiHasChanged
      await sessionReplay.tryToTakeScreenshotIfUiHasChanged();

      //THEN getPlaceholderImage is called with a PlaceholderType of enum replayDisabled
      expect(
        (verify(
          mockPlaceholderImageConfig.getPlaceholderImage(
            any,
            captureAny,
          ),
        ).captured.single as PlaceholderType)
            .placeholderTypeEnum,
        PlaceholderTypeEnum.replayDisabled,
      );

      //AND a screenshot is sent to native
      await Future.value(() {
        verify(mockNativeApi.saveScreenshot(any)).called(1);
      });
    });
    test('''
WHEN tryToTakeScreenshotIfUiHasChanged
AND recording is not allowed in this screen
AND screenshots are already save for this screens
THEN getPlaceholderImage is not called''', () async {
      setVariablesToAllowTakeScreenshot();
      setupMocksForTakeScreenshot();
      when(mockPlaceholderImageConfig.getPlaceholderImage(any, any))
          .thenAnswer((realInvocation) => ByteData(3));
      when(mockScreenVisited.screenshotTakenList).thenReturn([
        ScreenShotTaken(startFocusTime: DateTime.now().millisecondsSinceEpoch)
      ]);
      //recording is not allowed in a specific screen
      when(mockScreenVisited.recordingAllowed).thenReturn(false);

      // WHEN tryToTakeScreenshotIfUiHasChanged
      await sessionReplay.tryToTakeScreenshotIfUiHasChanged();

      //THEN getPlaceholderImage is not called
      verifyNever(mockPlaceholderImageConfig.getPlaceholderImage(any, any));
      verifyNever(mockNativeApi.saveScreenshot(any));
    });
    group('close screen video', () {
      test('''
WHEN close screen video is called
AND last screenshot is null
THEN no screenshot is sent to native.
WHEN last screenshoot is not null
AND has a startFocusTime bigger than 1 second
THEN last screenshot will be null
AND a screenshot will be sent to native
''', () async {
        //WHEN close screen video is called
        //AND last screenshot is null
        await sessionReplay.closeScreenVideo(mockScreenVisited);
        //THEN no screenshot is sent to native
        verifyNever(mockNativeApi.saveScreenshot(any));
        //WHEN last screenshoot is not null
        sessionReplay.lastScreenshotSent = ScreenshotMessage(
          screenshotData: ByteData(3).buffer.asUint8List(),
          screenId: 0,
          screenName: 'screenName',
          //AND has a startFocusTime bigger than 1 second
          startFocusTime: DateTime.now().millisecondsSinceEpoch - 2000,
        );
        //(not exceeding isCurrentScreenOverMaxDuration)
        when(mockScreenVisited.timestamp)
            .thenReturn(DateTime.now().millisecondsSinceEpoch - 10000);
        await sessionReplay.closeScreenVideo(mockScreenVisited);
        //THEN last screenshot will be null
        await Future.value(() {
          expect(sessionReplay.lastScreenshotSent, null);
        });
        //AND a screenshot will be sent to native
        verify(mockNativeApi.saveScreenshot(any)).called(1);
      });
      test('''
WHEN close screen video is called
AND last screenshoot is not null
AND has a startFocusTime smaller than 1 second
THEN last screenshot is not null
AND a screenshot will NOT be sent to native
''', () async {
        // last screenshoot is not null
        sessionReplay.lastScreenshotSent = ScreenshotMessage(
          screenshotData: ByteData(3).buffer.asUint8List(),
          screenId: 0,
          screenName: 'screenName',
          //has a startFocusTime smaller than 1 second
          startFocusTime: DateTime.now().millisecondsSinceEpoch - 100,
        );

        when(mockScreenVisited.timestamp)
            .thenReturn(DateTime.now().millisecondsSinceEpoch - 10000);
        await sessionReplay.closeScreenVideo(mockScreenVisited);

        //THEN last screenshot is not null
        await Future.value(() {
          expect(sessionReplay.lastScreenshotSent, isNotNull);
        });
        //AND a screenshot will NOT be sent to native
        verifyNever(mockNativeApi.saveScreenshot(any));
      });
      test('''
WHEN close screen video is called
AND last screenshoot is not null
AND has a startFocusTime bigger than 1 second
AND the timemstamp of the screen visited is bigger than the
constant for maximum replay duration per screen
THEN last screenhot is null
AND a screenshot will be sent to native
AND the start focus time will have a relative value of the maximum replay duration ''',
          () async {
        //last screenshoot is not null
        sessionReplay.lastScreenshotSent = ScreenshotMessage(
          screenshotData: ByteData(3).buffer.asUint8List(),
          screenId: 0,
          screenName: 'screenName',
          //AND has a startFocusTime bigger than 1 second
          startFocusTime: DateTime.now().millisecondsSinceEpoch - 2000,
        );
        //AND the timemstamp of the screen visited is bigger than the
        //constant for maximum replay duration per screen
        when(mockScreenVisited.timestamp).thenReturn(
          DateTime.now().millisecondsSinceEpoch -
              SDKConstants.maxReplayDurationPerScreen.inMilliseconds -
              1,
        );
        await sessionReplay.closeScreenVideo(mockScreenVisited);
        //THEN last screenhot is null

        await Future.value(() {
          expect(sessionReplay.lastScreenshotSent, null);
        });
        //AND a screenshot will be sent to native
        //AND the start focus time will have a relative value of the maximum
        //replay duration
        expect(
          (verify(mockNativeApi.saveScreenshot(captureAny)).captured.single
                  as ScreenshotMessage)
              .startFocusTime,
          mockScreenVisited.timestamp +
              SDKConstants.maxReplayDurationPerScreen.inMilliseconds,
        );
      });
    });
  });
}
