import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/completer_wrappers.dart';
import 'package:flutter/foundation.dart';

class HttpErrors with TrackingCompleter {
  HttpErrors(this._api);

  final DecibelSdkApi _api;

  ///Send goals
  Future<void> sendStatusCode(
    int statusCode,
  ) async {
    await endScreenTasksCompleterWrapper(() async {
      await waitForNewScreenIfThereNoneActive();
      await _api.sendHttpError(statusCode);
    });
  }
}
