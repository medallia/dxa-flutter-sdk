// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:decibel_sdk/src/features/session_replay.dart';
import 'package:decibel_sdk/src/messages.dart';
import 'package:decibel_sdk/src/utility/extensions.dart';
import 'package:flutter/material.dart';

class Tracking {
  Tracking._internal();
  static final _instance = Tracking._internal();
  static Tracking get instance => _instance;

  final DecibelSdkApi _apiInstance = DecibelSdkApi();
  final List<ScreenVisited> _visitedScreensList = [];
  List<ScreenVisited> get visitedScreensList => _visitedScreensList;
  ScreenVisited? screenVisitedWhenAppWentToBackground;

  Size? _physicalSize;
  Size get physicalSize => _physicalSize!;
  set physicalSize(Size newPhysicalSize) {
    if (newPhysicalSize == _physicalSize) return;
    //The first time we initialize we don't want to trigger the method
    if (_physicalSize == null) {
      _physicalSize = newPhysicalSize;
    } else {
      _physicalSize = newPhysicalSize;
      closeThisScreenAndThenReopen();
    }
  }

  void _addVisitedScreenList(ScreenVisited screenVisited) {
    _visitedScreensList.add(screenVisited);
  }

  List<ScreenVisited> get visitedUnfinishedScreensList {
    return List<ScreenVisited>.from(visitedScreensList)
      ..removeWhere((element) => element.finished);
  }

  ScreenVisited createScreenVisited({
    required String id,
    required String name,
    required List<GlobalKey> listOfMasks,
    required GlobalKey captureKey,
    List<String>? tabBarNames,
    int? tabBarIndex,
  }) {
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
        listOfMasks: listOfMasks,
      );
    } else {
      screenVisited = ScreenVisited.standard(
        id: id,
        listOfMasks: listOfMasks,
        captureKey: captureKey,
        timestamp: timestamp,
        name: name,
      );
    }
    return screenVisited;
  }

  Future<void> startScreen(
    ScreenVisited screenVisited, {
    bool isBackground = false,
  }) async {
    assert(
      visitedUnfinishedScreensList.isEmpty ||
          visitedUnfinishedScreensList.length == 1,
    );
    if (visitedUnfinishedScreensList.isNotEmpty) {
      await endScreen(visitedUnfinishedScreensList[0].id);
    }
    _addVisitedScreenList(
      screenVisited,
    );
    await _apiInstance.startScreen(
      StartScreenMessage()
        ..screenName = screenVisited.name
        ..screenId = screenVisited.uniqueId
        ..startTime = screenVisited.timestamp
        ..isBackground = isBackground,
    );
    await SessionReplay.instance.newScreen();
  }

  Future<void> endScreen(
    String screenId, {
    bool isTabBar = false,
    bool isBackground = false,
  }) async {
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
    //find the visitedScreen which is not finished, to then get its finished
    //version and replace the original in the visitedScreensList
    final int index = visitedScreensList.indexOf(screenVisited);
    final int endTime = DateTime.now().millisecondsSinceEpoch;
    final ScreenVisited screenVisitedFinished =
        screenVisited.getScreenVisitedAsFinished(endTime);
    visitedScreensList[index] = screenVisitedFinished;

    //fire and forget to keep synchronicity
    //ignore: unawaited_futures
    SessionReplay.instance.closeScreenVideo();
    await _apiInstance.endScreen(
      EndScreenMessage()
        ..screenName = screenVisitedFinished.name
        ..screenId = screenVisitedFinished.uniqueId
        ..endTime = screenVisitedFinished.endTimestamp
        ..isBackground = isBackground,
    );
  }

  Future<void> wentToBackground() async {
    //if we already have saved a screen saved when the app went to background,
    //it means that we should ignore calls to this method until the app returns
    //from background
    if (screenVisitedWhenAppWentToBackground != null) return;
    //No unfinished screens, so there's no possibility of ending any screen
    if (visitedUnfinishedScreensList.isEmpty) return;
    screenVisitedWhenAppWentToBackground = visitedUnfinishedScreensList.last;
    await endScreen(screenVisitedWhenAppWentToBackground!.id,
        isBackground: true);
  }

  Future<void> returnFromBackground() async {
    //no screen to return to
    if (screenVisitedWhenAppWentToBackground == null) return;
    assert(visitedUnfinishedScreensList.isEmpty);
    final ScreenVisited returnFormBackgroundScreenVIsited =
        screenVisitedWhenAppWentToBackground!
            .getScreenVisitedWithNewStartTimeStamp(
      DateTime.now().millisecondsSinceEpoch,
    );
    screenVisitedWhenAppWentToBackground = null;
    await startScreen(returnFormBackgroundScreenVIsited, isBackground: true);
  }

  Future<void> closeThisScreenAndThenReopen() async {
    final ScreenVisited screenToClose = visitedUnfinishedScreensList
        .singleWhere((element) => !element.finished);
    await endScreen(screenToClose.id);
    final ScreenVisited screenToOpen =
        screenToClose.getScreenVisitedWithNewStartTimeStamp(
      DateTime.now().millisecondsSinceEpoch,
    );
    await startScreen(screenToOpen);
  }

  ///Listener for tabBar change of tab.
  ///Due to how the listener works, everytime a new tab is added as a screen,
  ///the SDK must check if there was another tab from this TabBar before.
  ///In normal screens the startScreen and endScreen are independent.
  Future<void> tabControllerListener({
    required String screenId,
    required String name,
    required List<GlobalKey> listOfMasks,
    required GlobalKey captureKey,
    required TabController tabController,
    required List<String> tabNames,
  }) async {
    //Temporary patch for issue https://github.com/flutter/flutter/issues/113020
    //Jira ticket DCBLMOB-1725
    if (!tabController.indexIsChanging) {
      await Future.delayed(Duration(milliseconds: 200));
      if (tabController.indexIsChanging) {
        SessionReplay.instance.isPageTransitioning =
            tabController.indexIsChanging;
        return;
      }
    }
    SessionReplay.instance.isPageTransitioning = tabController.indexIsChanging;

    if (tabController.index != tabController.previousIndex &&
        !tabController.indexIsChanging) {
      //Find if this TabBarScreen (NOT the individual Tab) has been visited
      //and call endScreen on it if so.
      final int index = visitedUnfinishedScreensList.getTabBarIndex(screenId);
      if (index != -1) {
        await Tracking.instance
            .endScreen(visitedUnfinishedScreensList[index].id, isTabBar: true);
      }

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

  final bool finished;
  int get uniqueId => id.hashCode ^ timestamp.hashCode;

  const ScreenVisited({
    required this.id,
    required this.name,
    required this.timestamp,
    required this.listOfMasks,
    required this.captureKey,
    required this.endTimestamp,
    required this.finished,
    required this.isDialog,
    required this.isTabBar,
    required this.dialogContext,
  });

  const ScreenVisited.standard({
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

  ///Used by [getScreenVisitedAsFinished] to get a finished version
  ///of a ScreenVisited object
  const ScreenVisited.finished({
    required this.id,
    required this.timestamp,
    required this.name,
    required this.endTimestamp,
    required this.listOfMasks,
    required this.captureKey,
    required this.isDialog,
    required this.isTabBar,
    required this.dialogContext,
  }) : finished = true;
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

  ScreenVisited getScreenVisitedAsFinished(int endTimestamp) {
    return ScreenVisited.finished(
      id: id,
      name: name,
      listOfMasks: listOfMasks,
      captureKey: captureKey,
      timestamp: timestamp,
      endTimestamp: endTimestamp,
      isDialog: isDialog,
      isTabBar: isTabBar,
      dialogContext: dialogContext,
    );
  }

  //Facilitates the reopening of a screen where everything is the same except
  //for the start timestamp, and therefore the uniqueId will also change
  ScreenVisited getScreenVisitedWithNewStartTimeStamp(int startTimeStamp) {
    return ScreenVisited(
      id: id,
      name: name,
      timestamp: startTimeStamp,
      listOfMasks: listOfMasks,
      captureKey: captureKey,
      endTimestamp: endTimestamp,
      finished: finished,
      isDialog: isDialog,
      isTabBar: isTabBar,
      dialogContext: dialogContext,
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
      dialogContext: dialogContext,
    );
  }

  @override
  String toString() {
    return 'ScreenVisited(id: $id, uniqueid $uniqueId, name: $name, timestamp: $timestamp, endTimestamp: $endTimestamp, isTabBar: $isTabBar, finished: $finished)';
  }
}

///ScreenVisited version for screens that are tabBars.
///Used only when the TabBar Screen is still unfinished, when the finished version
///is used by calling [getScreenVisitedAsFinished] or [ScreenVisited.finished]
///it's then converted back to a ScreenVisited object.
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
  const ScreenVisitedTabBar.internal({
    required super.id,
    required super.name,
    required super.timestamp,
    required super.captureKey,
    required this.tabBarScreens,
    required this.tabIndex,
    required this.tabBarId,
    required this.tabBarname,
    required super.listOfMasks,
  }) : super.tabBarChild();

  @override
  ScreenVisited getScreenVisitedWithNewStartTimeStamp(int startTimeStamp) {
    return ScreenVisitedTabBar.internal(
      id: id,
      name: name,
      timestamp: startTimeStamp,
      captureKey: captureKey,
      tabBarScreens: tabBarScreens,
      tabIndex: tabIndex,
      tabBarId: tabBarId,
      tabBarname: tabBarname,
      listOfMasks: listOfMasks,
    );
  }

  @override
  String toString() {
    return 'ScreenVisitedTabBar(id: $id, uniqueid $uniqueId, name: $name, tabBarId: $tabBarId, tabBarname: $tabBarname, tabIndex: $tabIndex)';
  }
}
