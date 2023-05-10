// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:convert';

import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:flutter/services.dart';

import 'package:decibel_sdk/src/features/event_channel/event_channel_manager.dart';

class PerformanceMetrics implements EventChannelClass {
  double? _cpuUsage;
  double? _memoryUsage;
  double? _batteryLevel;
  String? _stresstedTypeNative;
  PerformanceMetricsStresstedType? _stresstedType =
      PerformanceMetricsStresstedType.none;
  bool get isDeviceStressed =>
      _stresstedType != PerformanceMetricsStresstedType.none;
  static const String jsonKey = 'performance_metrics';

  @override
  void updateFromJson(Map<String, dynamic> jsonData) {
    final Map<String, dynamic> json = jsonData[jsonKey] as Map<String, dynamic>;
    _cpuUsage = (json['cpuUsage'] as num?)?.toDouble();
    _memoryUsage = (json['memoryUsage'] as num?)?.toDouble();
    _batteryLevel = (json['batteryLevel'] as num?)?.toDouble();
    _stresstedTypeNative = json['isStressed'] as String?;
    if (_stresstedTypeNative != null) {
      _stresstedType =
          translateDeviceStressedStringToEnum(_stresstedTypeNative!);
    }
  }

  @override
  String toString() {
    return 'PerformanceMetrics(cpuUsage: $_cpuUsage, memoryUsage: $_memoryUsage, batteryLevel: $_batteryLevel, isStressedNative: $_stresstedTypeNative)';
  }

  PerformanceMetricsStresstedType translateDeviceStressedStringToEnum(
    String isStressedNative,
  ) {
    switch (isStressedNative) {
      case 'none':
        return PerformanceMetricsStresstedType.none;
      case 'memory':
        return PerformanceMetricsStresstedType.memory;
      case 'cpu':
        return PerformanceMetricsStresstedType.cpu;
      case 'battery':
        return PerformanceMetricsStresstedType.battery;
      default:
        return PerformanceMetricsStresstedType.none;
    }
  }
}

enum PerformanceMetricsStresstedType {
  none,
  memory,
  cpu,
  battery,
}
