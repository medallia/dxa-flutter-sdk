// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:collection';

import 'package:decibel_sdk/features/session_replay.dart';
import 'package:decibel_sdk/messages.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Tracking {
  Tracking._internal();
  static final _instance = Tracking._internal();
  static Tracking get instance => _instance;

  final DecibelSdkApi _apiInstance = DecibelSdkApi();

  List<ScreenVisited> get visitedScreensList => _visitedScreensList;
  List<ScreenVisited> _visitedScreensList = List.empty(growable: false);
  void _addVisitedScreenList(ScreenVisited screenVisited) {
    final List<ScreenVisited> bufferList =
        List.from([..._visitedScreensList, screenVisited], growable: false);
    _visitedScreensList = bufferList;
  }

  Future<void> startScreen(String name, {List<String>? tabBarNames}) async {
    final int timestamp = DateTime.now().millisecondsSinceEpoch;

    late ScreenVisited screenVisited;
    if (tabBarNames != null) {
      screenVisited =
          ScreenVisited.tabBar(timestamp, name, tabBarNames: tabBarNames);
    } else {
      screenVisited = ScreenVisited(timestamp, name);
    }

    _addVisitedScreenList(
      screenVisited,
    );
    await _apiInstance.startScreen(
      StartScreenMessage()
        ..screenName = screenVisited.name
        ..screenId = screenVisited.id
        ..startTime = timestamp,
    );
  }

  Future<void> endScreen(ScreenVisited lastVisitedScreen) async {
    await _apiInstance.endScreen(
      EndScreenMessage()
        ..screenName = lastVisitedScreen.name
        ..screenId = lastVisitedScreen.id
        ..endTime = DateTime.now().millisecondsSinceEpoch,
    );
  }

  ///Listener for tabBar change of tab
  void tabControllerListener(
    TabController tabController,
    List<String> tabNames,
  ) {
    SessionReplay.instance.isPageTransitioning = tabController.indexIsChanging;
    if (tabController.index != tabController.previousIndex &&
        !tabController.indexIsChanging) {
      SessionReplay.instance.stop();
      if (Tracking.instance.visitedScreensList.last.isTabBar) {
        Tracking.instance.endScreen(
          Tracking.instance.visitedScreensList.last
              .tabBarScreens[tabController.previousIndex],
        );
      }

      Tracking.instance
          .startScreen(tabNames[tabController.index], tabBarNames: tabNames);
      SessionReplay.instance.start();
    }
  }
}

class ScreenVisited {
  final int id;
  final String name;
  final bool isTabBar;
  final List<ScreenVisited> tabBarScreens;
  ScreenVisited(this.id, this.name,
      {this.isTabBar = false, this.tabBarScreens = const []});

  factory ScreenVisited.tabBar(int id, String name,
      {List<String> tabBarNames = const []}) {
    if (tabBarNames.isEmpty) return ScreenVisited(id, name);
    final List<ScreenVisited> tabBarScreens = tabBarNames
        .map<ScreenVisited>((name) =>
            ScreenVisited(DateTime.now().millisecondsSinceEpoch, name))
        .toList();

    return ScreenVisited(id, name,
        isTabBar: true, tabBarScreens: tabBarScreens);
  }
}
