import 'package:decibel_sdk/src/features/config/decibel_config.dart';
import 'package:decibel_sdk/src/features/autoMasking/auto_masking_class.dart';
import 'package:decibel_sdk/src/features/event_channel/event_channel_manager.dart';
import 'package:decibel_sdk/src/features/frame_tracking.dart';
import 'package:decibel_sdk/src/features/manual_tracking/manual_tracking.dart';
import 'package:decibel_sdk/src/features/session_replay.dart';
import 'package:decibel_sdk/src/features/tracking/route_observer.dart';
import 'package:decibel_sdk/src/features/tracking/tracking.dart';
import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/global_settings.dart';
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
    required EventChannelManager eventChannelManager,
    required GlobalSettings globalSettings,
    required CustomRouteObserver customRouteObserver,
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
        eventChannelManager: eventChannelManager,
        globalSettings: globalSettings,
        customRouteObserver: customRouteObserver);
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
    required this.eventChannelManager,
    required this.globalSettings,
    required this.customRouteObserver,
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
  final EventChannelManager eventChannelManager;
  final GlobalSettings globalSettings;
  final CustomRouteObserver customRouteObserver;
}
