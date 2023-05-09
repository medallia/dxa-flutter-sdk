import 'package:decibel_sdk/src/decibel_config.dart';
import 'package:decibel_sdk/src/features/autoMasking/auto_masking_class.dart';
import 'package:decibel_sdk/src/features/frame_tracking.dart';
import 'package:decibel_sdk/src/features/manual_tracking/manual_tracking.dart';
import 'package:decibel_sdk/src/features/session_replay.dart';
import 'package:decibel_sdk/src/features/tracking/tracking.dart';
import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/logger_sdk.dart';
import 'package:decibel_sdk/src/utility/placeholder_image.dart';

class DependencyInjector {
  factory DependencyInjector({
    required MedalliaDxaConfig config,
    required Tracking tracking,
    required ManualTracking manualTracking,
    required SessionReplay sessionReplay,
    required LoggerSDK loggerSdk,
    required AutoMasking autoMasking,
    required PlaceholderImageConfig placeholderImageConfig,
    required FrameTracking frameTracking,
    required MedalliaDxaNativeApi nativeApi,
  }) {
    return _instance = DependencyInjector._(
      config: config,
      tracking: tracking,
      manualTracking: manualTracking,
      sessionReplay: sessionReplay,
      loggerSdk: loggerSdk,
      autoMasking: autoMasking,
      placeholderImageConfig: placeholderImageConfig,
      frameTracking: frameTracking,
      nativeApi: nativeApi,
    );
  }
  DependencyInjector._({
    required this.config,
    required this.tracking,
    required this.manualTracking,
    required this.sessionReplay,
    required this.loggerSdk,
    required this.autoMasking,
    required this.placeholderImageConfig,
    required this.frameTracking,
    required this.nativeApi,
  });
  static late DependencyInjector _instance;

  static DependencyInjector get instance => _instance;

  final MedalliaDxaConfig config;
  final Tracking tracking;
  final ManualTracking manualTracking;
  final SessionReplay sessionReplay;
  final LoggerSDK loggerSdk;
  final AutoMasking autoMasking;
  final PlaceholderImageConfig placeholderImageConfig;
  final FrameTracking frameTracking;
  final MedalliaDxaNativeApi nativeApi;
}
