import 'package:decibel_sdk/src/features/tracking/screen_visited.dart';
import 'package:decibel_sdk/src/features/tracking/tracking.dart';

class UntrackedScreens {
  UntrackedScreens(this.tracking);
  final Tracking tracking;
  final List<ScreenVisited> untrackedScreensList = [];

  ScreenVisited? get lastUntrackedOrTrackedScreenVisited {
    if (tracking.visitedScreensList.isEmpty) {
      return untrackedScreensList.isEmpty ? null : untrackedScreensList.last;
    }
    if (untrackedScreensList.isEmpty) {
      return tracking.visitedScreensList.isEmpty
          ? null
          : tracking.visitedScreensList.last;
    }
    if (tracking.visitedScreensList.last.timestamp >
        untrackedScreensList.last.timestamp) {
      return tracking.visitedScreensList.last;
    } else {
      return untrackedScreensList.last;
    }
  }
}
