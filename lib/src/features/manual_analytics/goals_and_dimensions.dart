import 'dart:async';

import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/features/config/medallia_dxa_config.dart';
import 'package:medallia_dxa/src/messages.dart';
import 'package:medallia_dxa/src/utility/completer_wrappers.dart';
import 'package:medallia_dxa/src/utility/logger_sdk.dart';

class GoalsAndDimensions with TrackingCompleter {
  GoalsAndDimensions(this._medalliaDxaConfig, this._api, this._logger);

  final MedalliaDxaConfig _medalliaDxaConfig;
  final MedalliaDxaNativeApi _api;
  final LoggerSDK _logger;
  Logger get logger => _logger.manualAnalyticsLogger;

  ///Set custom dimension with string
  Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) async {
    if (!_medalliaDxaConfig.trackingAllowed) return;
    await endScreenTasksCompleterWrapper(
      taskToComplete: () async {
        await waitForNewScreenIfThereNoneActive();

        final dimension =
            DimensionStringMessage(dimensionName: dimensionName, value: value);

        logger.d('🟠 sendDimensionWithString - $dimension');
        await _api.sendDimensionWithString(dimension);
      },
    );
  }

  ///Set custom dimension with number
  Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) async {
    if (!_medalliaDxaConfig.trackingAllowed) return;
    await endScreenTasksCompleterWrapper(
      taskToComplete: () async {
        await waitForNewScreenIfThereNoneActive();

        final dimension =
            DimensionNumberMessage(dimensionName: dimensionName, value: value);

        logger.d('🟠 sendDimensionWithNumber - $dimension');
        await _api.sendDimensionWithNumber(dimension);
      },
    );
  }

  ///Set custom dimension with bool
  Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) async {
    if (!_medalliaDxaConfig.trackingAllowed) return;
    await endScreenTasksCompleterWrapper(
      taskToComplete: () async {
        await waitForNewScreenIfThereNoneActive();

        final dimension =
            DimensionBoolMessage(dimensionName: dimensionName, value: value);

        logger.d('🟠 sendDimensionWithBool - $dimension');
        await _api.sendDimensionWithBool(dimension);
      },
    );
  }

  ///Send goals
  Future<void> sendGoal(
    String goalName, [
    double? value,
  ]) async {
    if (!_medalliaDxaConfig.trackingAllowed) return;
    await endScreenTasksCompleterWrapper(
      taskToComplete: () async {
        await waitForNewScreenIfThereNoneActive();

        final goal = GoalMessage(goal: goalName, value: value);

        logger.d('🟠 sendGoal - $goal');
        await _api.sendGoal(goal);
      },
    );
  }
}
