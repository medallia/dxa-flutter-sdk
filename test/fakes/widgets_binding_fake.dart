import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:mockito/mockito.dart';

class FakeWidgetsBinding extends Fake implements WidgetsBinding {
  final List<FrameCallback> postFrameCallbacks = <FrameCallback>[];

  @override
  void addPostFrameCallback(FrameCallback callback) {
    postFrameCallbacks.add(callback);
  }

  void invokeFrameCallback() {
    final List<void Function(Duration)> localPostFrameCallbacks =
        List<void Function(Duration)>.of(postFrameCallbacks);
    postFrameCallbacks.clear();

    for (final element in localPostFrameCallbacks) {
      element
          .call(Duration(milliseconds: DateTime.now().millisecondsSinceEpoch));
    }
  }

  Future<void> invokeFrameCallbackAndAwaitFutures() async {
    final List<void Function(Duration)> localPostFrameCallbacks =
        List<void Function(Duration)>.of(postFrameCallbacks);
    postFrameCallbacks.clear();

    for (final element in localPostFrameCallbacks) {
      if (element is Future<void> Function(Duration)) {
        await element.call(
            Duration(milliseconds: DateTime.now().millisecondsSinceEpoch));
        continue;
      }
      element
          .call(Duration(milliseconds: DateTime.now().millisecondsSinceEpoch));
    }
  }
}
