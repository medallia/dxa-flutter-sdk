library initial_config_test;

import 'package:decibel_sdk/decibel_sdk.dart';
import 'package:decibel_sdk/src/decibel_config.dart';
import 'package:decibel_sdk/src/features/autoMasking/auto_masking_enums.dart';
import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
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
  late dynamic Function(
    String yaml,
  ) loadYaml;
  late AssetBundle assetBundleMock;
  const String version = '1';
  const int account = 0;
  const int property = 0;

  setUpAll(() {
    WidgetsFlutterBinding.ensureInitialized();

    mockApi = MockMedalliaDxaNativeApi();
    mockGoalsAndDimensions = MockGoalsAndDimensions();
    mockSessionReplay = MockSessionReplay();
    mockAutoMasking = MockAutoMasking();
    mockHttpErrors = MockHttpErrors();
    mockLoggerSDK = MockLoggerSDK();
    loadYaml = (yaml) => YamlMap.wrap({'version': version});
    assetBundleMock = MockAssetBundle();
    medalliaDxaConfig = MedalliaDxaConfig.testing(
      mockApi,
      loadYaml,
      mockGoalsAndDimensions,
      assetBundleMock,
      mockSessionReplay,
      mockHttpErrors,
      mockLoggerSDK,
    );
    when(mockSessionReplay.autoMasking).thenReturn(mockAutoMasking);
  });

  group('initalize method', () {
    // setUpAll(() {});

    test('''
WHEN getSessionId is called 
AND the medalliaDxaConfig.initalize method has not been called
THEN the method throws an assertion error
    ''', () async {
      expect(
        () async {
          await medalliaDxaConfig.getSessionId();
        },
        throwsAssertionError,
      );
    });
    test('''
WHEN getWebViewProperties is called 
AND the medalliaDxaConfig.initalize method has not been called
THEN the method throws an assertion error
    ''', () async {
      expect(
        () async {
          await medalliaDxaConfig.getWebViewProperties();
        },
        throwsAssertionError,
      );
    });

    test(
      '''
      WHEN the initalize method is called with the corresponding parameters
      AND consent is all
      AND the version in the pubspec is '1'
      THEN the properties in the sessionMessage should match these
      AND the the initialize method from MedalliaDxaNativeApi should be called with
      the sessionMessage
      AND the method start() should be called''',
      () async {
        final consents = [MedalliaDxaCustomerConsentType.all];
        await medalliaDxaConfig.initialize(account, property, consents);

        //get SessionMessage sent to the Api
        final SessionMessage sessionMessage =
            verify(mockApi.initialize(captureAny)).captured.single
                as SessionMessage;

        expect(sessionMessage.account, 0);
        expect(sessionMessage.property, 0);
        expect(sessionMessage.version, '1');
        expect(sessionMessage.consents, consents.toIndexList());
        verify(mockSessionReplay.start());
      },
    );
    test('''
WHEN getSessionId is called
AND the initialize method has been called before
THEN the _api method is called
AND it returns a Future of type nullable string 
    ''', () async {
      expect(medalliaDxaConfig.getSessionId(), isA<Future<String>>());
      verify(mockApi.getSessionId());
    });
    test('''
WHEN getWebViewProperties is called
AND the initialize method has been called before
THEN the _api method is called
AND it returns a Future of type string 
    ''', () async {
      expect(medalliaDxaConfig.getWebViewProperties(), isA<Future<String?>>());
      verify(mockApi.getWebViewProperties());
    });
  });

  group('enable consents', () {
    test('''
WHEN set enable consents is called
AND the consent parameters list includes .none
THEN the MedalliaDxaNativeApi method setEnableConsents is called
AND the method start from sessionReplay is NOT called
AND the method stop from sessionReplay is called''', () async {
      final consents = [
        MedalliaDxaCustomerConsentType.all,
        MedalliaDxaCustomerConsentType.none
      ];
      await medalliaDxaConfig.setEnableConsents(consents);
      verifyNever(mockSessionReplay.start());
      verify(mockSessionReplay.stop());
    });
    test('''
WHEN set enable consents is called
AND the consent parameters list includes .all
AND it doens't include .none
THEN the MedalliaDxaNativeApi method setEnableConsents is called
AND the method start from sessionReplay is called''', () async {
      final consents = [
        MedalliaDxaCustomerConsentType.all,
        MedalliaDxaCustomerConsentType.tracking
      ];
      await medalliaDxaConfig.setEnableConsents(consents);
      verify(mockSessionReplay.start());
    });
    test('''
WHEN set enable consents is called
AND the consent parameters list includes .recordAndTracking
THEN the MedalliaDxaNativeApi method setEnableConsents is called
AND the method start from sessionReplay is called''', () async {
      final consents = [
        MedalliaDxaCustomerConsentType.recordingAndTracking,
      ];
      await medalliaDxaConfig.setEnableConsents(consents);
      verify(mockSessionReplay.start());
    });
  });
  group('disable consents', () {
    test('''
WHEN set disable consents is called
AND the consent parameters list includes .none
AND it doens't include .all
THEN the MedalliaDxaNativeApi method setDisableConsents is called
AND the method stop from sessionReplay is not called''', () async {
      final consents = [MedalliaDxaCustomerConsentType.none];
      await medalliaDxaConfig.setDisableConsents(consents);
      verifyNever(mockSessionReplay.stop());
    });
    test('''
WHEN set disable consents is called
AND the consent parameters list includes .all
THEN the MedalliaDxaNativeApi method setDisableConsents is called
AND the method stop from sessionReplay is called''', () async {
      final consents = [
        MedalliaDxaCustomerConsentType.none,
        MedalliaDxaCustomerConsentType.all
      ];
      await medalliaDxaConfig.setDisableConsents(consents);
      verify(mockSessionReplay.stop());
    });
    test('''
WHEN set disable consents is called
AND the consent parameters list includes .recordAndTracking
THEN the MedalliaDxaNativeApi method setEnableConsents is called
AND the method stop from sessionReplay is called''', () async {
      final consents = [
        MedalliaDxaCustomerConsentType.recordingAndTracking,
      ];
      await medalliaDxaConfig.setDisableConsents(consents);
      verify(mockSessionReplay.stop());
    });
  });

  group('set dimensions and sendGoal', () {
    test('''
WHEN setDimensionsWithString is called
THEN the _goalsAndDimensions method is called
    ''', () async {
      const String dimensionName = 'dimensionName';
      const String dimensionValue = 'dimensionValue';
      await medalliaDxaConfig.setDimensionWithString(
          dimensionName, dimensionValue);
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
      await medalliaDxaConfig.setDimensionWithNumber(
          dimensionName, dimensionValue);
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
      await medalliaDxaConfig.setDimensionWithBool(dimensionName,
          value: dimensionValue);
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
      await medalliaDxaConfig.sendGoal(goalName, goalValue);
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
      medalliaDxaConfig.setAutoMasking(setOfEnums);
      verify(
        mockAutoMasking.autoMaskingTypeSet = {
          const AutoMaskingType(
            autoMaskingTypeEnum: AutoMaskingTypeEnum.button,
          ),
          const AutoMaskingType(
            autoMaskingTypeEnum: AutoMaskingTypeEnum.dialog,
          ),
          const AutoMaskingType(
            autoMaskingTypeEnum: AutoMaskingTypeEnum.image,
          ),
          const AutoMaskingType(
            autoMaskingTypeEnum: AutoMaskingTypeEnum.inputText,
          ),
          const AutoMaskingType(
            autoMaskingTypeEnum: AutoMaskingTypeEnum.text,
          ),
          const AutoMaskingType(
            autoMaskingTypeEnum: AutoMaskingTypeEnum.icons,
          ),
          const AutoMaskingType(
            autoMaskingTypeEnum: AutoMaskingTypeEnum.webView,
          ),
          const AutoMaskingType(
            autoMaskingTypeEnum: AutoMaskingTypeEnum.all,
          ),
          const AutoMaskingType(
            autoMaskingTypeEnum: AutoMaskingTypeEnum.none,
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
      medalliaDxaConfig.enableAllLogs();
      verify(mockLoggerSDK.all());
    });
    test('''
WHEN enableSelectedLogs is called 
THEN the loggerSDK selected() method is called with the appropiate arguments

    ''', () async {
      medalliaDxaConfig.enableSelectedLogs(tracking: true, autoMasking: true);
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
        ),
      );
    });
  });
  group('sendDataOverWifiOnly', () {
    test('''
WHEN sendHttpError is called 
THEN the _api method  is called

    ''', () async {
      medalliaDxaConfig.sendDataOverWifiOnly();
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
      await medalliaDxaConfig.sendHttpError(statusCode);
      verify(mockHttpErrors.sendStatusCode(statusCode));
    });
  });
}
