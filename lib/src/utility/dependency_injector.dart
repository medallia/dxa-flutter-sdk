import 'package:medallia_dxa/src/features/autoMasking/auto_masking_class.dart';
import 'package:medallia_dxa/src/features/config/medallia_dxa_config.dart';
import 'package:medallia_dxa/src/features/event_channel/event_channel_manager.dart';
import 'package:medallia_dxa/src/features/frame_tracking.dart';
import 'package:medallia_dxa/src/features/session_replay/session_replay.dart';
import 'package:medallia_dxa/src/features/tracking/route_tree_constructor.dart';
import 'package:medallia_dxa/src/features/tracking/tracking.dart';
import 'package:medallia_dxa/src/messages.dart';
import 'package:medallia_dxa/src/utility/global_settings.dart';
import 'package:medallia_dxa/src/utility/logger_sdk.dart';
import 'package:medallia_dxa/src/utility/placeholder_image.dart';

class DependencyInjector {
  factory DependencyInjector({
    required MedalliaDxaConfig config,
    required Tracking tracking,
    required SessionReplay sessionReplay,
    required LoggerSDK loggerSdk,
    required AutoMasking autoMasking,
    required PlaceholderImageConfig placeholderImageConfig,
    required FrameTracking frameTracking,
    required MedalliaDxaNativeApi nativeApi,
    required EventChannelManager eventChannelManager,
    required GlobalSettings globalSettings,
    required RouteTreeConstructor routeTreeConstructor,
  }) {
    return _instance = DependencyInjector._(
      config: config,
      tracking: tracking,
      sessionReplay: sessionReplay,
      loggerSdk: loggerSdk,
      autoMasking: autoMasking,
      placeholderImageConfig: placeholderImageConfig,
      frameTracking: frameTracking,
      nativeApi: nativeApi,
      eventChannelManager: eventChannelManager,
      globalSettings: globalSettings,
      routeTreeConstructor: routeTreeConstructor,
    );
  }
  DependencyInjector._({
    required this.config,
    required this.tracking,
    required this.sessionReplay,
    required this.loggerSdk,
    required this.autoMasking,
    required this.placeholderImageConfig,
    required this.frameTracking,
    required this.nativeApi,
    required this.eventChannelManager,
    required this.globalSettings,
    required this.routeTreeConstructor,
  });
  static late DependencyInjector _instance;

  static DependencyInjector get instance => _instance;

  final MedalliaDxaConfig config;
  final Tracking tracking;
  final SessionReplay sessionReplay;
  final LoggerSDK loggerSdk;
  final AutoMasking autoMasking;
  final PlaceholderImageConfig placeholderImageConfig;
  final FrameTracking frameTracking;
  final MedalliaDxaNativeApi nativeApi;
  final EventChannelManager eventChannelManager;
  final GlobalSettings globalSettings;
  final RouteTreeConstructor routeTreeConstructor;
}
