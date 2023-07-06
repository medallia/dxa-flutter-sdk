import 'package:decibel_sdk/src/decibel_config.dart';
import 'package:decibel_sdk/src/features/autoMasking/auto_masking_class.dart';
import 'package:decibel_sdk/src/features/event_channel/classes/live_configuration.dart';
import 'package:decibel_sdk/src/features/event_channel/classes/performance_metrics.dart';
import 'package:decibel_sdk/src/features/event_channel/event_channel_manager.dart';
import 'package:decibel_sdk/src/features/frame_tracking.dart';
import 'package:decibel_sdk/src/features/manual_analytics/goals_and_dimensions.dart';
import 'package:decibel_sdk/src/features/manual_analytics/http_errors.dart';
import 'package:decibel_sdk/src/features/manual_tracking/manual_tracking.dart';
import 'package:decibel_sdk/src/features/session_replay.dart';
import 'package:decibel_sdk/src/features/tracking/route_observer.dart';
import 'package:decibel_sdk/src/features/tracking/screen_visited.dart';
import 'package:decibel_sdk/src/features/tracking/tracking.dart';
import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/global_settings.dart';
import 'package:decibel_sdk/src/utility/logger_sdk.dart';
import 'package:decibel_sdk/src/utility/placeholder_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:logger/logger.dart';
import 'package:mockito/annotations.dart';

import 'test_files/frame_tracking_test.dart' as frame_tracking_test;
import 'test_files/initial_config_test.dart' as initial_config_test;
import 'test_files/session_replay_test.dart' as session_replay_test;

//Generated with Flutter 3.7.0
@GenerateNiceMocks([
  MockSpec<MedalliaDxaNativeApi>(),
  MockSpec<MedalliaDxaConfig>(),
  MockSpec<SessionReplay>(),
  MockSpec<ScreenshotTaker>(),
  MockSpec<GoalsAndDimensions>(),
  MockSpec<AutoMasking>(),
  MockSpec<HttpErrors>(),
  MockSpec<LoggerSDK>(),

  MockSpec<FrameTracking>(),
  MockSpec<PlaceholderImageConfig>(),
  MockSpec<Tracking>(),
  MockSpec<ManualTracking>(),
  MockSpec<PerformanceMetrics>(),
  MockSpec<LiveConfiguration>(),
  MockSpec<EventChannelManager>(),
  MockSpec<CustomRouteObserver>(),

  MockSpec<ScreenVisited>(),
  MockSpec<GlobalSettings>(
    unsupportedMembers: {#returnCorrectConfig},
  ),
  //Third parties
  MockSpec<Logger>(),
  //Flutter classes
  MockSpec<BuildContext>(),

  MockSpec<SchedulerBinding>(),
])
void main() {
  frame_tracking_test.main();
  initial_config_test.main();
  session_replay_test.main();
}
