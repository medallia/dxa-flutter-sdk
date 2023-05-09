import 'dart:async';

import 'package:decibel_sdk/src/features/tracking/tracking.dart';
import 'package:decibel_sdk/src/utility/dependency_injector.dart';
import 'package:flutter/material.dart';

class TrackingCompleter {
  late final Tracking tracking = DependencyInjector.instance.tracking;

  Future<void> startScreenTasksCompleterWrapper(
    Future<void> Function() function,
  ) async {
    final List<Completer<dynamic>> startScreenEnqued =
        List.from(tracking.startScreenEnquedCompleterList);

    final Completer completer = Completer();
    tracking.startScreenEnquedCompleterList.add(completer);
    await Future.wait(
      startScreenEnqued.map((e) {
        return e.future;
      }),
    );
    tracking.startScreenEnquedCompleterList
        .removeWhere((completer) => completer.isCompleted);
    await function.call();
    completer.complete();
  }

  Completer createEndScreenCompleter() {
    final Completer endScreenToComplete = Completer();
    tracking.endScreenEnquedCompleterList.add(endScreenToComplete);
    return endScreenToComplete;
  }

  Future<void> waitForEndScreenEnquedCompleter() async {
    await Future.wait(
      tracking.endScreenEnquedCompleterList.map((e) {
        return e.future;
      }),
    );
    tracking.endScreenEnquedCompleterList.clear();
  }

  ///Wrapper for tasks that need completion before sending the endScreen to
  ///native
  Future<T> endScreenTasksCompleterWrapper<T>(
    Future<T> Function() function,
  ) async {
    final Completer completer = Completer();
    tracking.tasksBeforeEndScreenCompleterList.add(completer);
    final T returnValue = await function.call();
    completer.complete();
    return returnValue;
  }

  ///Waits until every task is completed.
  Future<void> waitForEndScreenTasksCompleter() async {
    await Future.wait(
      tracking.tasksBeforeEndScreenCompleterList.map((e) {
        return e.future;
      }),
    );

    tracking.tasksBeforeEndScreenCompleterList.clear();
  }

  FutureOr<void> waitForNewScreenIfThereNoneActive() async {
    if (tracking.visitedUnfinishedScreen == null) {
      //Edge case: called before the first screen has started
      //(unfinishedScreens is empty and no endScreen has ever been called).
      if (tracking.endScreenEnquedCompleterList.isEmpty) {
        await tracking.newScreenSentToNativeStreamController.stream
            .asBroadcastStream()
            .first;
        return;
      }

      await tracking.newScreenSentToNativeStreamController.stream
          .asBroadcastStream()
          .first;
      return;
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

class TaskCompleter {
  final Map<int, Future> completerMap = {};

  ///Stores this async function future so other functions can wait
  ///for it to finish
  Future<T> functionCompleterWrapper<T>(
    int hashCode,
    Future<T> Function() function,
  ) async {
    final Future<T> returnValue = function.call();
    completerMap.addAll(<int, Future>{hashCode: returnValue});

    return returnValue;
  }

  ///Waits for the async function of this hashcode
  Future<void> waitForFunctionCompleter(int hashCode) async {
    final Future? future = completerMap[hashCode];
    await future;
    // ignore: unawaited_futures
    completerMap.remove(hashCode);
  }
}
