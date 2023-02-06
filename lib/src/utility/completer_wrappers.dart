import 'dart:async';

import 'package:decibel_sdk/src/features/tracking.dart';
import 'package:flutter/material.dart';

class TrackingCompleter {
  ///Wrapper for tasks that need completion before sending the endScreen to
  ///native
  Future<void> endScreenTasksCompleterWrapper(
      Future<void> Function() function) async {
    final Completer completer = Completer();
    Tracking.instance.tasksBeforeEndScreenCompleterList.add(completer);
    await function.call();
    completer.complete();
  }

  ///Waits until every task is completed.
  Future<void> waitForEndScreenTasksCompleter() async {
    await Future.wait(
      Tracking.instance.tasksBeforeEndScreenCompleterList.map((e) {
        return e.future;
      }),
    );

    Tracking.instance.tasksBeforeEndScreenCompleterList.clear();
  }

  FutureOr<void> waitForNewScreenIfThereNoneActive() async {
    if (Tracking.instance.visitedUnfinishedScreensList.isEmpty) {
      await Tracking.instance.newScreenVisitedStreamController.stream
          .asBroadcastStream()
          .first;
    } else {
      return;
    }
  }

  void debugCheckIfDefunct(BuildContext context) {
    assert(
      !(context as Element).debugIsDefunct,
      "This method shouldn't be called after the widget has been disposed",
    );
  }

  bool checkIfMounted(BuildContext context) {
    //In Flutter 3.7 we will also be able to check this for StatelessElements.
    if (context is StatefulElement) {
      return context.state.mounted;
    }
    return true;
  }
}
