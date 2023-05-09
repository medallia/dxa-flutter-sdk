import 'package:logger/logger.dart';

class LoggerSDK {
  static final LoggerSDK _instance = LoggerSDK._internal();
  static LoggerSDK get instance => _instance;
  void all({
    bool enabled = true,
    bool tracking = true,
    bool sessionReplay = true,
    bool frameTracking = true,
    bool routeObserver = true,
    bool autoMasking = true,
    bool screenWidget = true,
    bool maskWidget = true,
    bool manualAnalytics = true,
  }) {
    _instance.enabled = enabled;
    _instance.tracking = tracking;
    _instance.sessionReplay = sessionReplay;
    _instance.frameTracking = frameTracking;
    _instance.routeObserver = routeObserver;
    _instance.autoMasking = autoMasking;
    _instance.screenWidget = screenWidget;
    _instance.maskWidget = maskWidget;
    _instance.manualAnalytics = manualAnalytics;
    cleanLoggers();
  }

  void selected({
    required bool enabled,
    required bool tracking,
    required bool sessionReplay,
    required bool frameTracking,
    required bool routeObserver,
    required bool autoMasking,
    required bool screenWidget,
    required bool maskWidget,
    required bool manualAnalytics,
  }) {
    _instance.enabled = enabled;
    _instance.tracking = tracking;
    _instance.sessionReplay = sessionReplay;
    _instance.frameTracking = frameTracking;
    _instance.routeObserver = routeObserver;
    _instance.autoMasking = autoMasking;
    _instance.screenWidget = screenWidget;
    _instance.maskWidget = maskWidget;
    _instance.manualAnalytics = manualAnalytics;
    cleanLoggers();
  }

  LoggerSDK._internal();

  bool enabled = false;
  bool tracking = false;
  bool sessionReplay = false;
  bool frameTracking = false;
  bool routeObserver = false;
  bool autoMasking = false;
  bool screenWidget = false;
  bool maskWidget = false;
  bool manualAnalytics = false;
  Logger? _screenWidgetLogger;
  Logger? _maskWidgetLogger;
  Logger? _trackingLogger;
  Logger? _sessionReplayLogger;
  Logger? _frameTrackingLogger;
  Logger? _routeObserverLogger;
  Logger? _autoMaskingLogger;
  Logger? _manualAnalyticsLogger;

  void cleanLoggers() {
    _screenWidgetLogger = null;
    _maskWidgetLogger = null;
    _trackingLogger = null;
    _sessionReplayLogger = null;
    _frameTrackingLogger = null;
    _routeObserverLogger = null;
    _autoMaskingLogger = null;
    _manualAnalyticsLogger = null;
  }

  Logger get screenWidgetLogger =>
      _screenWidgetLogger ??= _plainLogger(screenWidget);
  Logger get maskWidgetLogger => _maskWidgetLogger ??= _plainLogger(maskWidget);
  Logger get trackingLogger {
    return _trackingLogger ??= _plainLogger(tracking);
  }

  Logger get sessionReplayLogger {
    return _sessionReplayLogger ??= _plainLogger(sessionReplay);
  }

  Logger get frameTrackingLogger {
    return _frameTrackingLogger ??= _plainLogger(frameTracking);
  }

  Logger get routeObserverLogger {
    return _routeObserverLogger ??= _plainLogger(routeObserver);
  }

  Logger get autoMaskingLogger {
    return _autoMaskingLogger ??= _plainLogger(autoMasking);
  }

  Logger get manualAnalyticsLogger {
    return _manualAnalyticsLogger ??= _plainLogger(manualAnalytics);
  }

  Logger _plainLogger(bool moduleEnabled) {
    return Logger(
      printer: CustomPrinter(),
      filter: ModuleLogFilter(
        enabled: enabled,
        moduleEnabled: moduleEnabled,
      ),
    );
  }
}

class ModuleLogFilter extends DevelopmentFilter {
  ModuleLogFilter({required this.enabled, required this.moduleEnabled});
  final bool enabled;
  final bool moduleEnabled;
  @override
  bool shouldLog(LogEvent event) {
    if (!super.shouldLog(event)) return false;
    if (!enabled) return false;
    if (!moduleEnabled) return false;
    return true;
  }
}

class CustomPrinter extends PrettyPrinter {
  @override
  List<String> log(LogEvent event) {
    late List<String> prettyOutput;
    prettyOutput = super.log(event);
    prettyOutput.insert(0, 'DXA - Flutter');
    return prettyOutput;
  }
}
