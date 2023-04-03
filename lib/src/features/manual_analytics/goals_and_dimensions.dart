import 'dart:async';

import 'package:decibel_sdk/src/features/tracking/tracking.dart';
import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/completer_wrappers.dart';
import 'package:flutter/material.dart';

class GoalsAndDimensions with TrackingCompleter {
  GoalsAndDimensions(this._api);

  final MedalliaDxaNativeApi _api;

  ///Set custom dimension with string
  Future<void> setDimensionWithString(
    String dimensionName,
    String value,
  ) async {
    await endScreenTasksCompleterWrapper(() async {
      await waitForNewScreenIfThereNoneActive();

      final dimension =
          DimensionStringMessage(dimensionName: dimensionName, value: value);

      await _api.sendDimensionWithString(dimension);
    });
  }

  ///Set custom dimension with number
  Future<void> setDimensionWithNumber(
    String dimensionName,
    double value,
  ) async {
    await endScreenTasksCompleterWrapper(() async {
      await waitForNewScreenIfThereNoneActive();

      final dimension =
          DimensionNumberMessage(dimensionName: dimensionName, value: value);

      await _api.sendDimensionWithNumber(dimension);
    });
  }

  ///Set custom dimension with bool
  Future<void> setDimensionWithBool(
    String dimensionName, {
    required bool value,
  }) async {
    await endScreenTasksCompleterWrapper(() async {
      await waitForNewScreenIfThereNoneActive();

      final dimension =
          DimensionBoolMessage(dimensionName: dimensionName, value: value);

      await _api.sendDimensionWithBool(dimension);
    });
  }

  ///Send goals
  Future<void> sendGoal(
    String goalName, [
    double? value,
  ]) async {
    await endScreenTasksCompleterWrapper(() async {
      await waitForNewScreenIfThereNoneActive();

      final goal = GoalMessage(goal: goalName, value: value);
      await _api.sendGoal(goal);
    });
  }
}
