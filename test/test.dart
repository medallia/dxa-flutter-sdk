import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/features/autoMasking/auto_masking_class.dart';
import 'package:medallia_dxa/src/features/config/medallia_dxa_config.dart';
import 'package:medallia_dxa/src/features/event_channel/classes/live_configuration.dart';
import 'package:medallia_dxa/src/features/event_channel/classes/performance_metrics.dart';
import 'package:medallia_dxa/src/features/event_channel/event_channel_manager.dart';
import 'package:medallia_dxa/src/features/frame_tracking.dart';
import 'package:medallia_dxa/src/features/manual_analytics/goals_and_dimensions.dart';
import 'package:medallia_dxa/src/features/manual_analytics/http_errors.dart';
import 'package:medallia_dxa/src/features/session_replay/screenshot_taker.dart';
import 'package:medallia_dxa/src/features/session_replay/session_replay.dart';
import 'package:medallia_dxa/src/features/tracking/route_tree_constructor.dart';
import 'package:medallia_dxa/src/features/tracking/screen_visited.dart';
import 'package:medallia_dxa/src/features/tracking/tracking.dart';
import 'package:medallia_dxa/src/messages.dart';
import 'package:medallia_dxa/src/utility/global_settings.dart';
import 'package:medallia_dxa/src/utility/logger_sdk.dart';
import 'package:medallia_dxa/src/utility/placeholder_image.dart';
import 'package:mockito/annotations.dart';

import 'test_files/frame_tracking_test.dart' as frame_tracking_test;
import 'test_files/initial_config_test.dart' as initial_config_test;
import 'test_files/session_replay_test.dart' as session_replay_test;

//Generated with Flutter 3.3.10
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
  MockSpec<PerformanceMetrics>(),
  MockSpec<LiveConfiguration>(),
  MockSpec<EventChannelManager>(),
  MockSpec<ScreenVisited>(),
  MockSpec<ScreenVisitedFinished>(),
  MockSpec<GlobalSettings>(
    unsupportedMembers: {#returnCorrectConfig},
  ),
  MockSpec<RouteTreeConstructor>(),
  MockSpec<DxaRoute>(),
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
