import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:medallia_dxa/src/features/event_channel/classes/live_configuration.dart';
import 'package:medallia_dxa/src/features/event_channel/classes/performance_metrics.dart';
import 'package:medallia_dxa/src/utility/dependency_injector.dart';

class EventChannelManager {
  EventChannelManager({
    required this.performanceMetrics,
    required this.liveConfiguration,
  }) {
    _eventChannelStreamSubscription = _channel.receiveBroadcastStream().listen(
      _listener,
      onError: (dynamic error) {
        debugPrint('${_channel.name} error: $error');
      },
    );
  }

  final PerformanceMetrics performanceMetrics;
  final LiveConfiguration liveConfiguration;
  late StreamSubscription _eventChannelStreamSubscription;
  static const _channel = EventChannel('multiplatform.flutter.streamChannel');

  void _listener(dynamic data) {
    if (data is! String) {
      debugPrint('Data should be a String');
      return;
    }
    final jsonDecoded = jsonDecode(data) as Map<String, dynamic>;
    final EventChannelClass? eventChannelClass =
        _findClassToSendData(jsonDecoded.keys.first);
    //when sdk is blocked, stop unless the data is going to liveconfig
    if (DependencyInjector.instance.config.blocked) {
      if (eventChannelClass is! LiveConfiguration) {
        return;
      }
    }
    if (eventChannelClass == null) return;
    _sendDataToClass(jsonDecoded, eventChannelClass);
  }

  void _sendDataToClass(
    Map<String, dynamic> jsonData,
    EventChannelClass eventChannelClass,
  ) {
    eventChannelClass.updateFromJson(jsonData);
  }

  EventChannelClass? _findClassToSendData(String jsonKey) {
    switch (jsonKey) {
      case PerformanceMetrics.jsonKey:
        return performanceMetrics;
      case LiveConfiguration.jsonKey:
        return liveConfiguration;
      default:
        return null;
    }
  }

  void stopEventChannel() {
    _eventChannelStreamSubscription.cancel();
  }
}

abstract class EventChannelClass {
  void updateFromJson(Map<String, dynamic> jsonData);
}
