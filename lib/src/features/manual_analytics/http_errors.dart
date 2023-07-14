import 'package:decibel_sdk/src/features/config/decibel_config.dart';
import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/completer_wrappers.dart';
import 'package:decibel_sdk/src/utility/logger_sdk.dart';
import 'package:logger/logger.dart';

class HttpErrors with TrackingCompleter {
  HttpErrors(this._medalliaDxaConfig, this._api, this._logger);

  final MedalliaDxaConfig _medalliaDxaConfig;
  final MedalliaDxaNativeApi _api;
  final LoggerSDK _logger;
  Logger get logger => _logger.manualAnalyticsLogger;

  Future<void> sendStatusCode(
    int statusCode,
  ) async {
    if (!_medalliaDxaConfig.trackingAllowed) return;
    await endScreenTasksCompleterWrapper(() async {
      await waitForNewScreenIfThereNoneActive();
      logger.d('🟠 sendStatusCode - $statusCode');
      await _api.sendHttpError(statusCode);
    });
  }
}
