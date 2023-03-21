import 'package:flutter/material.dart';

class FlutterSdkMock {
  final List<void Function(Duration)> postFrameCallbacks = [];

  void addPostFrameCallback(void Function(Duration timestamps) function) {
    postFrameCallbacks.add(function);
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
}
