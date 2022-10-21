// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:collection';

import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:flutter/material.dart';

import 'package:decibel_sdk/src/features/session_replay.dart';
import 'package:decibel_sdk/src/messages.dart';

class Tracking {
  Tracking._internal();
  static final _instance = Tracking._internal();
  static Tracking get instance => _instance;

  final DecibelSdkApi _apiInstance = DecibelSdkApi();
  List<ScreenVisited> get visitedScreensList => _visitedScreensList;
  final List<ScreenVisited> _visitedScreensList = [];
  void _addVisitedScreenList(ScreenVisited screenVisited) {
    // final List<ScreenVisited> bufferList =
    //     List.from([..._visitedScreensList, screenVisited], growable: false);
    // _visitedScreensList = bufferList;
    _visitedScreensList.add(screenVisited);
  }

  List<ScreenVisited> get visitedUnfinishedScreensList {
    return List<ScreenVisited>.from(visitedScreensList)
      ..removeWhere((element) => element.finished);
    // visitedScreensList.removeWhere((element) => element.finished);
  }

  ScreenVisited createScreenVisited(
      {required String id,
      required String name,
      required List<GlobalKey> listOfMasks,
      required GlobalKey captureKey,
      List<String>? tabBarNames,
      int? tabBarIndex}) {
    assert(
      (tabBarNames != null && tabBarIndex != null) ||
          (tabBarNames == null && tabBarIndex == null),
    );

    final int timestamp = DateTime.now().millisecondsSinceEpoch;

    late ScreenVisited screenVisited;
    if (tabBarNames != null && tabBarIndex != null) {
      screenVisited = ScreenVisitedTabBar(
          id: id,
          timestamp: timestamp,
          name: name,
          captureKey: captureKey,
          tabBarNames: tabBarNames,
          tabIndex: tabBarIndex,
          listOfMasks: listOfMasks);
      // _addVisitedScreenList(
      //   screenVisitedTabBar,
      // );
      // screenVisited = screenVisitedTabBar.tabBarScreens[tabBarIndex];
    } else {
      screenVisited = ScreenVisited(
        id: id,
        listOfMasks: listOfMasks,
        captureKey: captureKey,
        timestamp: timestamp,
        name: name,
      );
    }
    return screenVisited;
  }

  Future<void> startScreen(ScreenVisited screenVisited) async {
    _addVisitedScreenList(
      screenVisited,
    );
    // }

    debugPrint('startScreen - $screenVisited');

    await _apiInstance.startScreen(
      StartScreenMessage()
        ..screenName = screenVisited.name
        ..screenId = screenVisited.uniqueId
        ..startTime = screenVisited.timestamp,
    );
    await SessionReplay.instance.newScreen();
  }

  Future<void> endScreen(String screenId, {bool isTabBar = false}) async {
    // final int index =
    //     visitedScreensList.indexWhere((element) => element.id == screenId);
    SessionReplay.instance.clearMasks();
    late ScreenVisited screenVisited;
    late ScreenVisited? potentialScreenVisited;
    if (isTabBar) {
      potentialScreenVisited =
          visitedUnfinishedScreensList.findTabBarWithId(screenId);
    } else {
      potentialScreenVisited =
          visitedUnfinishedScreensList.findWithId(screenId);
    }
    //check to see if this screen has already been closed before
    if (potentialScreenVisited == null) return;
    screenVisited = potentialScreenVisited;
    final int index = visitedScreensList.indexOf(screenVisited);

    //check to see if this screen has already been closed before
    // if (screenVisited.finished) return;
    final int endTime = DateTime.now().millisecondsSinceEpoch;
    await SessionReplay.instance.closeScreenVideo();
    final ScreenVisited screenVisitedFinished =
        screenVisited.getScreenVisitedAsFinished(endTime);

    visitedScreensList[index] = screenVisitedFinished;
    debugPrint("endScreen - $screenVisitedFinished");
    await _apiInstance.endScreen(
      EndScreenMessage()
        ..screenName = screenVisitedFinished.name
        ..screenId = screenVisitedFinished.uniqueId
        ..endTime = screenVisitedFinished.endTimestamp,
    );
  }

  // Future<void> startScreenTabBar(
  //   int id,
  //   String name,
  //   List<String> tabBarNames,
  //   int tabBarIndex,
  // ) async {
  //   final int timestamp = DateTime.now().millisecondsSinceEpoch;

  //   final ScreenVisitedTabBar screenVisitedTabBar = ScreenVisitedTabBar(
  //     id: id,
  //     timestamp: timestamp,
  //     name: name,
  //     tabBarNames: tabBarNames,
  //     tabIndex: tabBarIndex,
  //   );
  //   final ScreenVisited screenVisited =
  //       screenVisitedTabBar.tabBarScreens[tabBarIndex];
  //   // await startScreen(screenVisited.id, screenVisited.name);
  //   _addVisitedScreenList(
  //     screenVisited,
  //   );
  //   debugPrint('startScreenTabBar - $screenVisited');

  //   await _apiInstance.startScreen(
  //     StartScreenMessage()
  //       ..screenName = screenVisited.name
  //       ..screenId = screenVisited.idHashCode
  //       ..startTime = screenVisited.timestamp,
  //   );
  // }

  ///Listener for tabBar change of tab
  Future<void> tabControllerListener({
    required String screenId,
    required String name,
    required List<GlobalKey> listOfMasks,
    required GlobalKey captureKey,
    required TabController tabController,
    required List<String> tabNames,
  }) async {
    SessionReplay.instance.isPageTransitioning = tabController.indexIsChanging;

    if (tabController.index != tabController.previousIndex &&
        !tabController.indexIsChanging) {
      // SessionReplay.instance.clearMasks();
      final int index = visitedScreensList.indexWhere((element) {
        if (!element.isTabBar) return false;
        return (element as ScreenVisitedTabBar).tabBarId == screenId;
      });

      if (index != -1) {
        await Tracking.instance
            .endScreen(visitedScreensList[index].id, isTabBar: true);
      }
      // final ScreenVisited? screenVisitedTabBar =
      //     visitedScreensList.findWithId(screenId);
      // if (screenVisitedTabBar != null) {
      //   await Tracking.instance.endScreen(
      //     screenVisitedTabBar.id,
      //   );
      // }
      // if (Tracking.instance.visitedScreensList.last.isTabBar) {
      //   await Tracking.instance.endScreen(
      //     Tracking.instance.visitedScreensList.last.id,
      //   );
      // }
      final ScreenVisited screenVisited = createScreenVisited(
          id: screenId,
          name: name,
          listOfMasks: listOfMasks,
          captureKey: captureKey,
          tabBarNames: tabNames,
          tabBarIndex: tabController.index);
      await startScreen(screenVisited);
    }
  }
}

@immutable
class ScreenVisited {
  final String id;
  final String name;
  final int timestamp;
  final int? endTimestamp;
  final bool isTabBar;
  final GlobalKey captureKey;
  final List<GlobalKey> listOfMasks;
  final bool isDialog;
  final BuildContext? dialogContext;
  BuildContext? get getCurrentContext {
    if (!isDialog) return captureKey.currentContext;
    return dialogContext!;
  }

  // final List<ScreenVisited> tabBarScreens;
  final bool finished;
  int get uniqueId => id.hashCode ^ timestamp.hashCode;
  // int get idHashCode => id.hashCode;
  const ScreenVisited({
    required this.id,
    required this.name,
    required this.timestamp,
    required this.listOfMasks,
    required this.captureKey,
    this.endTimestamp,
  })  : finished = false,
        isDialog = false,
        isTabBar = false,
        dialogContext = null;
  const ScreenVisited.finished({
    required this.id,
    required this.timestamp,
    required this.name,
    required this.endTimestamp,
    required this.listOfMasks,
    required this.captureKey,
  })  : finished = true,
        isDialog = false,
        isTabBar = false,
        dialogContext = null;
  const ScreenVisited.tabBarChild({
    required this.id,
    required this.name,
    required this.timestamp,
    required this.captureKey,
    this.listOfMasks = const [],
    this.endTimestamp,
  })  : finished = false,
        isDialog = false,
        isTabBar = true,
        dialogContext = null;
  const ScreenVisited.dialog({
    required this.id,
    required this.timestamp,
    required this.name,
    required this.listOfMasks,
    required this.captureKey,
    required this.dialogContext,
    this.endTimestamp,
  })  : finished = false,
        isDialog = true,
        isTabBar = false;
  // factory ScreenVisited.tabBar(
  //     {required int id,
  //     required int timestamp,
  //     required String name,
  //     required List<String> tabBarNames}) {
  //   assert(tabBarNames.isNotEmpty);
  //   //TODO remove this
  //   // if (tabBarNames.isEmpty) {
  //   //   return ScreenVisited(id: id, timestamp: timestamp, name: name);
  //   // }
  //   final List<ScreenVisited> tabBarScreens =
  //       tabBarNames.map<ScreenVisited>((name) {
  //     return ScreenVisited.stringId(
  //         id: '$id-$name', timestamp: timestamp, name: name);
  //   }).toList();

  //   return ScreenVisited(
  //       id: id,
  //       timestamp: timestamp,
  //       name: name,
  //       isTabBar: true,
  //       tabBarScreens: tabBarScreens);
  // }

  ScreenVisited getScreenVisitedAsFinished(int endTimestamp) {
    return ScreenVisited.finished(
      id: id,
      name: name,
      listOfMasks: listOfMasks,
      captureKey: captureKey,
      timestamp: timestamp,
      endTimestamp: endTimestamp,
    );
  }

  ScreenVisited getDialogScreenVisited(
      String routeId, BuildContext dialogContext) {
    final int timestamp = DateTime.now().millisecondsSinceEpoch;
    return ScreenVisited.dialog(
        id: routeId,
        name: '$name-dialog',
        timestamp: timestamp,
        listOfMasks: listOfMasks,
        captureKey: captureKey,
        dialogContext: dialogContext);
  }

  @override
  String toString() {
    return 'ScreenVisited(id: $id, uniqueid $uniqueId, name: $name, timestamp: $timestamp, endTimestamp: $endTimestamp, isTabBar: $isTabBar, finished: $finished)';
  }
}

@immutable
class ScreenVisitedTabBar extends ScreenVisited {
  final List<ScreenVisited> tabBarScreens;
  final String tabBarId;
  final String tabBarname;
  final int tabIndex;
  @override
  bool get isTabBar => true;
  factory ScreenVisitedTabBar({
    required String id,
    required int timestamp,
    required String name,
    required List<GlobalKey> listOfMasks,
    required GlobalKey captureKey,
    required List<String> tabBarNames,
    required int tabIndex,
  }) {
    final String tabName = tabBarNames[tabIndex];
    final String idWithTabName = '$id-$tabName';
    final List<ScreenVisited> tabBarScreens =
        tabBarNames.map<ScreenVisited>((name) {
      return ScreenVisited.tabBarChild(
        id: '$id-$name',
        timestamp: timestamp,
        name: name,
        captureKey: captureKey,
      );
    }).toList();

    return ScreenVisitedTabBar.internal(
        id: idWithTabName,
        tabBarId: id,
        timestamp: timestamp,
        captureKey: captureKey,
        name: tabName,
        tabBarScreens: tabBarScreens,
        tabIndex: tabIndex,
        tabBarname: name,
        listOfMasks: listOfMasks);
  }
  const ScreenVisitedTabBar.internal(
      {required super.id,
      required super.name,
      required super.timestamp,
      required super.captureKey,
      required this.tabBarScreens,
      required this.tabIndex,
      required this.tabBarId,
      required this.tabBarname,
      required super.listOfMasks})
      : super.tabBarChild();

  @override
  String toString() {
    return 'ScreenVisitedTabBar(id: $id, uniqueid $uniqueId, name: $name, tabBarId: $tabBarId, tabBarname: $tabBarname, tabIndex: $tabIndex)';
  }
}
