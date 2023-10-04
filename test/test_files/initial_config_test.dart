library initial_config_test;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medallia_dxa/medallia_dxa.dart';
import 'package:medallia_dxa/src/features/autoMasking/auto_masking_enums.dart';
import 'package:medallia_dxa/src/features/config/medallia_dxa_config.dart';
import 'package:medallia_dxa/src/features/consents.dart';
import 'package:medallia_dxa/src/messages.dart';
import 'package:mockito/mockito.dart';
import 'package:yaml/yaml.dart';

import '../custom_mocks/asset_bundle_mock.dart';
import '../test.mocks.dart';

void main() {
  late MedalliaDxaConfig medalliaDxaConfig;
  late MockMedalliaDxaNativeApi mockApi;
  late MockGoalsAndDimensions mockGoalsAndDimensions;
  late MockSessionReplay mockSessionReplay;
  late MockAutoMasking mockAutoMasking;
  late MockHttpErrors mockHttpErrors;
  late MockLoggerSDK mockLoggerSDK;
  late MockFrameTracking mockFrameTracking;
  late MockPlaceholderImageConfig mockPlaceholderImageConfig;
  late MockTracking mockTracking;
  late MockLiveConfiguration mockLiveConfiguration;
  late MockEventChannelManager mockEventChannelManager;
  late MockGlobalSettings mockGlobalSettings;
  late MockRouteTreeConstructor mockRouteTreeConstructor;

  late dynamic Function(
    String yaml,
  ) loadYaml;
  late AssetBundle assetBundleMock;
  const String version = '1';
  const int account = 0;
  const int property = 0;
  late MedalliaDxaCustomerConsentType consents;
  setUpAll(() {
    consents = MedalliaDxaCustomerConsentType.recordingAndTracking;
    WidgetsFlutterBinding.ensureInitialized();
    mockApi = MockMedalliaDxaNativeApi();
    mockGoalsAndDimensions = MockGoalsAndDimensions();
    mockSessionReplay = MockSessionReplay();
    mockAutoMasking = MockAutoMasking();
    mockHttpErrors = MockHttpErrors();
    mockLoggerSDK = MockLoggerSDK();
    loadYaml = (yaml) => YamlMap.wrap({'version': version});
    assetBundleMock = MockAssetBundle();
    mockFrameTracking = MockFrameTracking();
    mockPlaceholderImageConfig = MockPlaceholderImageConfig();
    mockTracking = MockTracking();
    mockLiveConfiguration = MockLiveConfiguration();
    mockEventChannelManager = MockEventChannelManager();
    mockGlobalSettings = MockGlobalSettings();
    mockRouteTreeConstructor = MockRouteTreeConstructor();
    medalliaDxaConfig = MedalliaDxaConfig.testing(
      autoMasking: mockAutoMasking,
      eventChannelManager: mockEventChannelManager,
      frameTracking: mockFrameTracking,
      globalSettings: mockGlobalSettings,
      goalsAndDimensions: mockGoalsAndDimensions,
      httpErrors: mockHttpErrors,
      loadYaml: loadYaml,
      loggerSDK: mockLoggerSDK,
      nativeApi: mockApi,
      placeholderImageConfig: mockPlaceholderImageConfig,
      rootBundle: assetBundleMock,
      routeTreeConstructor: mockRouteTreeConstructor,
      sessionReplay: mockSessionReplay,
      tracking: mockTracking,
    );
    when(mockSessionReplay.autoMasking).thenReturn(mockAutoMasking);
    when(mockEventChannelManager.liveConfiguration)
        .thenReturn(mockLiveConfiguration);
  });

  group('initialize method', () {
    // setUpAll(() {});

    test('''
WHEN getSessionId is called 
AND the medalliaDxaConfig.initialize method has not been called
THEN the method throws an assertion error
    ''', () async {
      expect(
        () async {
          await medalliaDxaConfig.publicMethods.getSessionId();
        },
        throwsAssertionError,
      );
    });
    test('''
WHEN getWebViewProperties is called 
AND the medalliaDxaConfig.initialize method has not been called
THEN the method throws an assertion error
    ''', () async {
      expect(
        () async {
          await medalliaDxaConfig.publicMethods.getWebViewProperties();
        },
        throwsAssertionError,
      );
    });

    test(
      '''
      WHEN the initialize method is called with the corresponding parameters
      AND consent is recordingAndTracking
      AND the version in the pubspec is '1'
      THEN the properties in the sessionMessage should match these
      AND the the initialize method from MedalliaDxaNativeApi should be called with
      the sessionMessage
      AND the method start() should be called''',
      () async {
        await medalliaDxaConfig.initialize(
          dxaConfig: DxaConfig(
            property: property,
            account: account,
            consents: consents,
          ),
        );

        //get SessionMessage sent to the Api
        final SessionMessage sessionMessage =
            verify(mockApi.initialize(captureAny)).captured.single
                as SessionMessage;

        expect(sessionMessage.account, 0);
        expect(sessionMessage.property, 0);
        expect(sessionMessage.version, '1');
        expect(sessionMessage.consents, consents.integerValue());
        verify(mockSessionReplay.startPeriodicTimer());
      },
    );
    test('''
WHEN getSessionId is called
AND the initialize method has been called before
THEN the _api method is called
AND it returns a Future of type nullable string 
    ''', () async {
      expect(
        medalliaDxaConfig.publicMethods.getSessionId(),
        isA<Future<String>>(),
      );
      verify(mockApi.getSessionId());
    });
    test('''
WHEN getWebViewProperties is called
AND the initialize method has been called before
THEN the _api method is called
AND it returns a Future of type string 
    ''', () async {
      expect(
        medalliaDxaConfig.publicMethods.getWebViewProperties(),
        isA<Future<String?>>(),
      );
      verify(mockApi.getWebViewProperties());
    });
  });

  group('enable consents', () {
    test('''
WHEN set enable consents is called
AND the consent is .none
THEN the MedalliaDxaNativeApi method setEnableConsents is called
AND tracking allowed is false
AND the method start from sessionReplay is NOT called
AND the method stop from sessionReplay is called
AND tracking allowed is false''', () async {
      const consents = MedalliaDxaCustomerConsentType.none;
      await medalliaDxaConfig.publicMethods.setConsents(consents);
      final consentSentToNative = verify(
        mockApi.setConsents(captureAny),
      ).captured.single as int;
      expect(
        consentSentToNative,
        consents.integerValue(),
      );
      verifyNever(mockSessionReplay.startPeriodicTimer());
      verify(mockSessionReplay.stopPeriodicTimer());
      expect(medalliaDxaConfig.trackingAllowed, false);
    });
    test('''
WHEN set enable consents is called
AND the consent is .tracking
THEN the MedalliaDxaNativeApi method setEnableConsents is called
AND the method start from sessionReplay is NOT called
AND the method stop from sessionReplay is called
AND tracking allowed is true''', () async {
      const consents = MedalliaDxaCustomerConsentType.tracking;
      await medalliaDxaConfig.publicMethods.setConsents(consents);
      final consentSentToNative = verify(
        mockApi.setConsents(captureAny),
      ).captured.single as int;
      expect(
        consentSentToNative,
        consents.integerValue(),
      );
      verify(mockSessionReplay.stopPeriodicTimer());
      expect(medalliaDxaConfig.trackingAllowed, true);
    });
    test('''
WHEN set enable consents is called
AND the consent is .recordAndTracking
THEN the MedalliaDxaNativeApi method setEnableConsents is called
AND the method start from sessionReplay is called
AND tracking allowed is true''', () async {
      const consents = MedalliaDxaCustomerConsentType.recordingAndTracking;
      await medalliaDxaConfig.publicMethods.setConsents(consents);

      final consentSentToNative = verify(
        mockApi.setConsents(captureAny),
      ).captured.single as int;
      expect(
        consentSentToNative,
        consents.integerValue(),
      );
      verify(mockSessionReplay.startPeriodicTimer()).called(1);
      expect(medalliaDxaConfig.trackingAllowed, true);
    });
  });

  group('set dimensions and sendGoal', () {
    test('''
WHEN setDimensionsWithString is called
THEN the _goalsAndDimensions method is called
    ''', () async {
      const String dimensionName = 'dimensionName';
      const String dimensionValue = 'dimensionValue';
      await medalliaDxaConfig.publicMethods.setDimensionWithString(
        dimensionName,
        dimensionValue,
      );
      verify(
        mockGoalsAndDimensions.setDimensionWithString(
          dimensionName,
          dimensionValue,
        ),
      );
    });
    test('''
WHEN setDimensionsWithNumber is called
THEN the _goalsAndDimensions method is called
    ''', () async {
      const String dimensionName = 'dimensionName';
      const double dimensionValue = 1;
      await medalliaDxaConfig.publicMethods.setDimensionWithNumber(
        dimensionName,
        dimensionValue,
      );
      verify(
        mockGoalsAndDimensions.setDimensionWithNumber(
          dimensionName,
          dimensionValue,
        ),
      );
    });
    test('''
WHEN setDimensionsWithBool is called
THEN the _goalsAndDimensions method is called
    ''', () async {
      const String dimensionName = 'dimensionName';
      const bool dimensionValue = true;
      await medalliaDxaConfig.publicMethods.setDimensionWithBool(
        dimensionName,
        value: dimensionValue,
      );
      verify(
        mockGoalsAndDimensions.setDimensionWithBool(
          dimensionName,
          value: dimensionValue,
        ),
      );
    });
    test('''
WHEN sendGoal is called
THEN the _goalsAndDimensions method is called
    ''', () async {
      const String goalName = 'goalName';
      const double goalValue = 2;
      await medalliaDxaConfig.publicMethods.sendGoal(goalName, goalValue);
      verify(mockGoalsAndDimensions.sendGoal(goalName, goalValue));
    });
  });
  group('automasking', () {
    test('''
WHEN setAutoMasking is called with a set of every AutoMaskingTypEnum
THEN the method autoMaskingTypeSet is called
AND the parameter passed is a set of type AutoMaskingType
AND has honored every enum passed
    ''', () {
      final Set<AutoMaskingTypeEnum> setOfEnums = {
        AutoMaskingTypeEnum.button,
        AutoMaskingTypeEnum.dialog,
        AutoMaskingTypeEnum.image,
        AutoMaskingTypeEnum.inputText,
        AutoMaskingTypeEnum.text,
        AutoMaskingTypeEnum.icons,
        AutoMaskingTypeEnum.webView,
        AutoMaskingTypeEnum.all,
        AutoMaskingTypeEnum.none
      };
      medalliaDxaConfig.publicMethods.setAutoMasking(setOfEnums);
      verify(
        mockAutoMasking.autoMaskingTypeSet = {
          AutoMaskingType(
            enumType: AutoMaskingTypeEnum.button,
          ),
          AutoMaskingType(
            enumType: AutoMaskingTypeEnum.dialog,
          ),
          AutoMaskingType(
            enumType: AutoMaskingTypeEnum.image,
          ),
          AutoMaskingType(
            enumType: AutoMaskingTypeEnum.inputText,
          ),
          AutoMaskingType(
            enumType: AutoMaskingTypeEnum.text,
          ),
          AutoMaskingType(
            enumType: AutoMaskingTypeEnum.icons,
          ),
          AutoMaskingType(
            enumType: AutoMaskingTypeEnum.webView,
          ),
          AutoMaskingType(
            enumType: AutoMaskingTypeEnum.all,
          ),
          AutoMaskingType(
            enumType: AutoMaskingTypeEnum.none,
          )
        },
      ).called(1);
    });
  });

  group('logger', () {
    test('''
WHEN enableAllLogs is called 
THEN the loggerSDK all() method is called

    ''', () async {
      medalliaDxaConfig.publicMethods.enableAllLogs();
      verify(mockLoggerSDK.all());
    });
    test('''
WHEN enableSelectedLogs is called 
THEN the loggerSDK selected() method is called with the appropiate arguments

    ''', () async {
      medalliaDxaConfig.publicMethods
          .enableSelectedLogs(tracking: true, autoMasking: true);
      verify(
        mockLoggerSDK.selected(
          enabled: true,
          tracking: true,
          autoMasking: true,
          sessionReplay: false,
          frameTracking: false,
          routeObserver: false,
          screenWidget: false,
          maskWidget: false,
          manualAnalytics: false,
        ),
      );
    });
  });
  group('sendDataOverWifiOnly', () {
    test('''
WHEN sendHttpError is called 
THEN the _api method  is called

    ''', () async {
      medalliaDxaConfig.publicMethods.sendDataOverWifiOnly();
      verify(mockApi.sendDataOverWifiOnly());
    });
  });
  group('sendHttpError', () {
    test('''
WHEN sendHttpError is called with a statusCode integer
THEN the _httpErrors method sendStatusCode is called
AND has the statusCode passed as an argument
    ''', () async {
      const int statusCode = 500;
      await medalliaDxaConfig.publicMethods.sendHttpError(statusCode);
      verify(mockHttpErrors.sendStatusCode(statusCode));
    });
  });

  group('SDK block', () {
    test('''
WHEN the SDK is blocked
THEN the tracking and session replay are not allowed
AND all public method calls are blocks except for currentRouteObservers
AND all the blocked flag is correctly set

    ''', () async {
      await medalliaDxaConfig.blockSdk();
      expect(medalliaDxaConfig.blocked, true);
      expect(medalliaDxaConfig.isSdkRunning, false);
      expect(medalliaDxaConfig.trackingAllowed, false);
      expect(medalliaDxaConfig.recordingAllowed, false);

      //bloced public method call
      const int statusCode = 500;
      await medalliaDxaConfig.publicMethods.sendHttpError(statusCode);
      verifyNever(mockHttpErrors.sendStatusCode(statusCode));

      //only exception for public method calls
      medalliaDxaConfig.publicMethods.currentRouteObserver;
      verify(
        mockRouteTreeConstructor.getNewObservers(),
      );
    });
    test('''
WHEN the SDK is unblocked
THEN the tracking and session replay values are the ones set on initialize
AND public methods are not blocked

    ''', () async {
      await medalliaDxaConfig.unblockSdk();
      expect(medalliaDxaConfig.blocked, false);
      expect(medalliaDxaConfig.isSdkRunning, true);
      if (consents == MedalliaDxaCustomerConsentType.recordingAndTracking) {
        expect(medalliaDxaConfig.trackingAllowed, true);
        expect(medalliaDxaConfig.recordingAllowed, true);
      } else if (consents == MedalliaDxaCustomerConsentType.tracking) {
        expect(medalliaDxaConfig.trackingAllowed, true);
        expect(medalliaDxaConfig.recordingAllowed, false);
      } else {
        expect(medalliaDxaConfig.trackingAllowed, false);
        expect(medalliaDxaConfig.recordingAllowed, false);
      }

      //bloced public method call
      const int statusCode = 500;
      await medalliaDxaConfig.publicMethods.sendHttpError(statusCode);
      verify(mockHttpErrors.sendStatusCode(statusCode));

      //only exception for public method calls
      medalliaDxaConfig.publicMethods.currentRouteObserver;
      verify(
        mockRouteTreeConstructor.getNewObservers(),
      );
    });
  });
}
