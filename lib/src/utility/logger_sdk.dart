import 'package:logger/logger.dart';

class LoggerSDK {
  LoggerSDK({required this.isSdkRunning});
  final bool Function() isSdkRunning;
  void all() {
    enabled = true;
    tracking = true;
    sessionReplay = true;
    frameTracking = true;
    routeObserver = true;
    autoMasking = true;
    screenWidget = true;
    maskWidget = true;
    manualAnalytics = true;
    cleanLoggers();
  }

  void selected({
    bool enabled = false,
    bool tracking = false,
    bool sessionReplay = false,
    bool frameTracking = false,
    bool routeObserver = false,
    bool autoMasking = false,
    bool screenWidget = false,
    bool maskWidget = false,
    bool manualAnalytics = false,
  }) {
    this.enabled = enabled;
    this.tracking = tracking;
    this.sessionReplay = sessionReplay;
    this.frameTracking = frameTracking;
    this.routeObserver = routeObserver;
    this.autoMasking = autoMasking;
    this.screenWidget = screenWidget;
    this.maskWidget = maskWidget;
    this.manualAnalytics = manualAnalytics;
    cleanLoggers();
  }

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
        isSdkRunning: () {
          return isSdkRunning();
        },
      ),
    );
  }
}

class ModuleLogFilter extends DevelopmentFilter {
  ModuleLogFilter({
    required this.enabled,
    required this.moduleEnabled,
    required this.isSdkRunning,
  });
  final bool enabled;
  final bool moduleEnabled;
  final bool Function() isSdkRunning;
  @override
  bool shouldLog(LogEvent event) {
    if (!isSdkRunning()) return false;
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
