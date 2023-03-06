import 'package:decibel_sdk/src/features/autoMasking/auto_masking_class.dart';
import 'package:decibel_sdk/src/features/manual_analytics/goals_and_dimensions.dart';
import 'package:decibel_sdk/src/features/manual_analytics/http_errors.dart';
import 'package:decibel_sdk/src/features/session_replay.dart';
import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/logger_sdk.dart';
import 'package:mockito/annotations.dart';

import 'test_files/frame_tracking_test.dart' as frame_tracking_test;
import 'test_files/initial_config_test.dart' as initial_config_test;

@GenerateNiceMocks([
  MockSpec<MedalliaDxaNativeApi>(),
  MockSpec<SessionReplay>(),
  MockSpec<GoalsAndDimensions>(),
  MockSpec<AutoMasking>(),
  MockSpec<HttpErrors>(),
  MockSpec<LoggerSDK>(),
])
void main() {
  frame_tracking_test.main();
  initial_config_test.main();
}
