library initial_config_test;

import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medallia_dxa/src/features/session_replay/session_replay.dart';
import 'package:medallia_dxa/src/features/tracking/screen_visited.dart';
import 'package:medallia_dxa/src/messages.dart';
import 'package:medallia_dxa/src/utility/dependency_injector.dart';
import 'package:medallia_dxa/src/utility/placeholder_image.dart';
import 'package:mockito/mockito.dart';

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
  late MockPerformanceMetrics mockPerformanceMetrics;
  late MockEventChannelManager mockEventChannelManager;
  late MockScreenshotTaker mockScreenshotTaker;
  late MockScreenVisited mockScreenVisited;
  late MockScreenVisitedFinished mockScreenVisitedFinished;
  late MockDxaRoute mockDxaRoute;
  late MockGlobalSettings mockGlobalSettings;

  late SessionReplay sessionReplay;
  //Third party
  late MockLogger mockLogger;
  //Flutter
  late FakeWidgetsBinding fakeWidgetsBinding;
  late MockSchedulerBinding mockSchedulerBinding;
  late MockBuildContext mockBuildContext;
  late MockRouteTreeConstructor mockRouteTreeConstructor;

  setUp(() {
    WidgetsFlutterBinding.ensureInitialized();

    mockNativeApi = MockMedalliaDxaNativeApi();
    mockMedalliaDxaConfig = MockMedalliaDxaConfig();

    mockAutoMasking = MockAutoMasking();
    mockLoggerSDK = MockLoggerSDK();
    mockLogger = MockLogger();
    mockScreenshotTaker = MockScreenshotTaker();
    mockScreenVisited = MockScreenVisited();
    mockScreenVisitedFinished = MockScreenVisitedFinished();
    mockDxaRoute = MockDxaRoute();
    mockFrameTracking = MockFrameTracking();
    mockPlaceholderImageConfig = MockPlaceholderImageConfig();
    mockTracking = MockTracking();
    mockPerformanceMetrics = MockPerformanceMetrics();
    mockEventChannelManager = MockEventChannelManager();
    fakeWidgetsBinding = FakeWidgetsBinding();
    mockSchedulerBinding = MockSchedulerBinding();
    mockBuildContext = MockBuildContext();
    mockGlobalSettings = MockGlobalSettings();
    mockRouteTreeConstructor = MockRouteTreeConstructor();

    //this is needed here because the sessionReplay constructor uses it
    when(mockFrameTracking.newFrameStreamController)
        .thenReturn(StreamController());
    when(mockGlobalSettings.frameRateInMiliseconds)
        .thenReturn(const Duration(milliseconds: 250));
    //
    sessionReplay = SessionReplay(
      mockMedalliaDxaConfig,
      mockLoggerSDK,
      mockFrameTracking,
      mockAutoMasking,
      mockPlaceholderImageConfig,
      fakeWidgetsBinding,
      mockSchedulerBinding,
      mockScreenshotTaker,
      mockNativeApi,
      mockPerformanceMetrics,
      mockGlobalSettings,
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
      eventChannelManager: mockEventChannelManager,
      globalSettings: mockGlobalSettings,
      routeTreeConstructor: mockRouteTreeConstructor,
    );
    when(mockLoggerSDK.sessionReplayLogger).thenReturn(mockLogger);
    when(mockGlobalSettings.maxReplayDurationPerScreen)
        .thenReturn(const Duration(minutes: 5));
    when(mockGlobalSettings.maxScreenshotCount).thenReturn(1200);

    //setUp for capture image.
    when(
      mockScreenshotTaker.captureImage(
        forceScreeshotNextFrame: anyNamed('forceScreeshotNextFrame'),
        uiChangedReset: anyNamed('uiChangedReset'),
        screenVisited: anyNamed('screenVisited'),
        screenSizeCallback: anyNamed('screenSizeCallback'),
      ),
    ).thenAnswer((realInvocation) {
      //Before returning the value of the captueed image, we make sure we call
      //the method passed as uiChangedReset.
      realInvocation.namedArguments;
      final uiChangedReset = realInvocation
          .namedArguments[const Symbol('uiChangedReset')] as VoidCallback;
      uiChangedReset.call();
      return Future.value(ByteData(3));
    });
    //we stop the Timer so we control the framerate calls (maybeTakeScreenshot)
    sessionReplay.stopPeriodicTimer();
  });
  final List<void Function()> stubsToAllowTakeScreenshot = [
    () {
      when(mockSchedulerBinding.schedulerPhase)
          .thenReturn(SchedulerPhase.postFrameCallbacks);
    },
    () {
      when(mockScreenVisited.isElementTreeDirty).thenReturn(false);
    },
    () {
      when(mockTracking.newScreenIsEnqued).thenReturn(false);
    },
    () {
      when(mockTracking.areThereOngoingAnimations).thenReturn(false);
    },
    () {
      when(mockScreenVisited.dxaRoutePath).thenReturn([mockDxaRoute]);
      when(mockDxaRoute.isThisRoutePainted).thenReturn(true);
      when(mockDxaRoute.routeContext).thenReturn(mockBuildContext);
    },
    () {
      sessionReplay.didUiChangeValue = true;
    },
    () {
      //This will trigger a placeholder image even when the stub
      //[mockMedalliaDxaConfig.recordingAllowed).thenReturn(true)] is not called
      //Keep this stub at the end of the list together with the stub mentioned.
      when(mockScreenVisited.recordingAllowed).thenReturn(true);
    },
    () {
      //This will trigger a placeholder image even when the stub
      //[mockScreenVisited.recordingAllowed).thenReturn(true)] is not called
      //Keep this stub at the end of the list together with the stub mentioned.
      when(mockMedalliaDxaConfig.recordingAllowed).thenReturn(true);
    },
    () {
      when(mockMedalliaDxaConfig.isSdkRunning).thenReturn(true);
    }
  ];
  void setVariablesToAllowTakeScreenshot() {
    for (final stub in stubsToAllowTakeScreenshot) {
      stub();
    }
  }

  void setupMocksForTakeScreenshot() {
    when(mockTracking.visitedUnfinishedScreen).thenReturn(mockScreenVisited);
    // when(mockScreenVisited.getCurrentContext).thenReturn(mockBuildContext);
    when(mockScreenVisited.timestamp)
        .thenReturn(DateTime.now().millisecondsSinceEpoch);
  }

  ///Call to takeScreenshot, and then verify that a screenshot has NOT been sent
  ///using the nativeApi. Placeholder Images included.
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

  ///Call to takeScreenshot, and then verify that a screenshot has NOT been taken
  ///Placeholder Images don't count
  Future<void> verifyNeverScreenshotIsTaken() async {
    await sessionReplay.tryToTakeScreenshotIfUiHasChanged();
    verifyNever(
      mockScreenshotTaker.captureImage(
        forceScreeshotNextFrame: anyNamed('forceScreeshotNextFrame'),
        uiChangedReset: anyNamed('uiChangedReset'),
        screenVisited: anyNamed('screenVisited'),
        screenSizeCallback: anyNamed('screenSizeCallback'),
      ),
    );
  }

  Future<void> verifyScreenshotIsTaken() async {
    await sessionReplay.tryToTakeScreenshotIfUiHasChanged();
    verify(
      mockScreenshotTaker.captureImage(
        forceScreeshotNextFrame: anyNamed('forceScreeshotNextFrame'),
        uiChangedReset: anyNamed('uiChangedReset'),
        screenVisited: anyNamed('screenVisited'),
        screenSizeCallback: anyNamed('screenSizeCallback'),
      ),
    );
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

      ///we call one at a time every stub needed to pass the checks in order
      ///to take a screenshot, and every iteration we check that indeed the
      ///method hasn't been called until all stubs are called.
      for (var i = 0; i < stubsToAllowTakeScreenshot.length; i++) {
        stubsToAllowTakeScreenshot[i].call();
        //once the last one is called, the screenshot should be taken
        if (i == stubsToAllowTakeScreenshot.length - 1) break;
        await verifyNeverScreenshotIsTaken();
      }

      await verifyScreenshotIsTaken();
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
      when(mockTracking.areThereOngoingAnimations).thenReturn(true);
      //AND the SDK is trying to take a screenshot
      await sessionReplay.tryToTakeScreenshotIfUiHasChanged();
      //THEN no screenshot should be taken.
      verifyNever(mockNativeApi.saveScreenshot(any));
      //WHEN it is no longer transitioning
      when(mockTracking.areThereOngoingAnimations).thenReturn(false);
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
      when(mockTracking.areThereOngoingAnimations).thenReturn(true);
      //AND the SDK is trying to take multiple screenshots

      await sessionReplay.tryToTakeScreenshotIfUiHasChanged();
      await sessionReplay.tryToTakeScreenshotIfUiHasChanged();
      await sessionReplay.tryToTakeScreenshotIfUiHasChanged();
      //THEN no screenshot should be taken.
      verifyNever(mockNativeApi.saveScreenshot(any));
      //WHEN it is no longer transitioning
      when(mockTracking.areThereOngoingAnimations).thenReturn(false);
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
      when(mockPlaceholderImageConfig.getPlaceholderImage(any))
          .thenAnswer((realInvocation) => ByteData(3));

      //recording is not allowed in a specific screen
      when(mockScreenVisited.recordingAllowed).thenReturn(false);

      // WHEN tryToTakeScreenshotIfUiHasChanged
      await sessionReplay.tryToTakeScreenshotIfUiHasChanged();

      //THEN getPlaceholderImage is called with a PlaceholderType of enum replayDisabled
      expect(
        (verify(
          mockPlaceholderImageConfig.getPlaceholderImage(
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
THEN getPlaceholderImage is called''', () async {
      setVariablesToAllowTakeScreenshot();
      setupMocksForTakeScreenshot();
      when(mockPlaceholderImageConfig.getPlaceholderImage(any))
          .thenAnswer((realInvocation) => ByteData(3));
      when(mockScreenVisited.screenshotTakenList).thenReturn([
        ScreenShotTaken(
          screenshotMessage: ScreenshotMessage(
            screenId: 0,
            screenName: 'screenName',
            screenshotData: ByteData(3).buffer.asUint8List(),
            startFocusTime: DateTime.now().millisecondsSinceEpoch,
          ),
          isPlaceholder: false,
        )
      ]);
      //recording is not allowed in a specific screen
      when(mockScreenVisited.recordingAllowed).thenReturn(false);

      // WHEN tryToTakeScreenshotIfUiHasChanged
      await sessionReplay.tryToTakeScreenshotIfUiHasChanged();

      //THEN getPlaceholderImage is not called
      verify(mockPlaceholderImageConfig.getPlaceholderImage(any)).called(1);
      verify(mockNativeApi.saveScreenshot(any)).called(1);
    });

    group('close screen video', () {
      test('''
WHEN close screen video is called
AND dxa config has recording disabled
THEN a placeholder image with no permissions text will be sent to native
''', () async {
        //setup to create place holder image

        //WHEN close screen video is called
        //AND last screenshot is null
        await sessionReplay.closeScreenVideoWithPlaceholderImageIfNecessary(
          mockScreenVisitedFinished,
        );

        //THEN no screenshot is sent to native
        verify(mockNativeApi.saveScreenshot(any)).called(1);
        verify(
          mockPlaceholderImageConfig.getPlaceholderImage(
            any,
          ),
        ).called(1);

        //WHEN last screenshoot is not null
        when(mockScreenVisited.screenshotTakenList).thenReturn([
          ScreenShotTaken(
            isPlaceholder: false,
            screenshotMessage: ScreenshotMessage(
              screenshotData: ByteData(3).buffer.asUint8List(),
              screenId: 0,
              screenName: 'screenName',
              //AND has a startFocusTime bigger than 1 second
              startFocusTime: DateTime.now().millisecondsSinceEpoch - 2000,
            ),
          ),
        ]);
        //(not exceeding isCurrentScreenOverMaxDuration)
        when(mockScreenVisited.timestamp)
            .thenReturn(DateTime.now().millisecondsSinceEpoch - 10000);
        when(mockScreenVisited.endTimestamp)
            .thenReturn(DateTime.now().millisecondsSinceEpoch);
        when(mockMedalliaDxaConfig.recordingAllowed).thenReturn(false);
        await sessionReplay.closeScreenVideoWithPlaceholderImageIfNecessary(
          mockScreenVisitedFinished,
        );
        expect(
          (verify(
            mockPlaceholderImageConfig.getPlaceholderImage(
              captureAny,
            ),
          ).captured.single as PlaceholderType)
              .placeholderTypeEnum,
          PlaceholderTypeEnum.noPermission,
        );

        //THEN a screenshot will be sent to native
        verify(mockNativeApi.saveScreenshot(any)).called(1);
      });
      test('''
WHEN close screen video is called
AND no screenshot is taken in this screen
AND recording is allowed
THEN a getPlaceholderImage with noPreviewAvailable is sent to native
''', () async {
        //setup to create place holder image

        //WHEN close screen video is called
        //AND no screenshot is taken in this screen
        //AND recording is allowed
        when(mockMedalliaDxaConfig.recordingAllowed).thenReturn(true);
        await sessionReplay.closeScreenVideoWithPlaceholderImageIfNecessary(
          mockScreenVisitedFinished,
        );

        //THEN a getPlaceholderImage with noPreviewAvailable is sent to native
        verify(mockNativeApi.saveScreenshot(any)).called(1);
        expect(
          (verify(
            mockPlaceholderImageConfig.getPlaceholderImage(
              captureAny,
            ),
          ).captured.single as PlaceholderType)
              .placeholderTypeEnum,
          PlaceholderTypeEnum.noPreviewAvailable,
        );
      });
      test('''
WHEN close screen video is called
AND last screenshoot is not null
AND recording is Allowed
THEN a screenshot will NOT be sent to native
''', () async {
        // last screenshoot is not null
        when(mockScreenVisitedFinished.screenshotTakenList).thenReturn(
          [
            ScreenShotTaken(
              isPlaceholder: false,
              screenshotMessage: ScreenshotMessage(
                screenshotData: ByteData(3).buffer.asUint8List(),
                screenId: 0,
                screenName: 'screenName',
                //has a startFocusTime smaller than 1 second
                startFocusTime: DateTime.now().millisecondsSinceEpoch - 100,
              ),
            )
          ],
        );

        //AND recording is Allowed
        when(mockMedalliaDxaConfig.recordingAllowed).thenReturn(true);
        await sessionReplay.closeScreenVideoWithPlaceholderImageIfNecessary(
          mockScreenVisitedFinished,
        );
        //THEN a screenshot will NOT be sent to native
        verifyNever(mockNativeApi.saveScreenshot(any));
      });
      test('''
WHEN close screen video is called
AND recording is NOT allowed
AND the screenshots for the screen has surpased the limit (1200)
THEN a screenshot will NOT be sent to native
 ''', () async {
        //recording is NOT allowed
        when(mockMedalliaDxaConfig.recordingAllowed).thenReturn(false);
        final ScreenShotTaken screenShotTaken = ScreenShotTaken(
          isPlaceholder: false,
          screenshotMessage: ScreenshotMessage(
            screenshotData: ByteData(3).buffer.asUint8List(),
            screenId: 0,
            screenName: 'screenName',
            startFocusTime: DateTime.now().millisecondsSinceEpoch,
          ),
        );
        //limit is 1200
        final List<ScreenShotTaken> screenshotListWithMaxScreenshotCount =
            List.filled(1201, screenShotTaken, growable: true);
        //AND the screenshots for the screen has surpased the limit (1200)
        when(mockScreenVisitedFinished.screenshotTakenList)
            .thenReturn(screenshotListWithMaxScreenshotCount);

        await sessionReplay.closeScreenVideoWithPlaceholderImageIfNecessary(
          mockScreenVisitedFinished,
        );
        //AND a screenshot will be sent to native
        verifyNever(mockNativeApi.saveScreenshot(any));
      });
    });
  });
}
