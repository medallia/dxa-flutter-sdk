import 'package:logger/logger.dart';
import 'package:medallia_dxa/src/features/config/medallia_dxa_config.dart';
import 'package:medallia_dxa/src/messages.dart';
import 'package:medallia_dxa/src/utility/completer_wrappers.dart';
import 'package:medallia_dxa/src/utility/logger_sdk.dart';

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
    await endScreenTasksCompleterWrapper(
      taskToComplete: () async {
        await waitForNewScreenIfThereNoneActive();
        logger.d('🟠 sendStatusCode - $statusCode');
        await _api.sendHttpError(statusCode);
      },
    );
  }
}
