part of 'screen_widget.dart';

///Inherited Widget created to check with [getElementForInheritedWidgetOfExactType]
///if the current ScreenWidget is inside another ScreenWidget.
///This is a more performant alternative to using [findAncestorWidgetOfExactType]
///without an InheritedWidget.
class _ScreenWidgetInheritedWidget extends InheritedWidget {
  const _ScreenWidgetInheritedWidget({
    required _ActiveScreenWidget child,
  })  : _child = child,
        super(child: child);
  final _ActiveScreenWidget _child;
  static _ScreenWidgetInheritedWidget? of(BuildContext context) {
    final _ScreenWidgetInheritedWidget? result = context
        .dependOnInheritedWidgetOfExactType<_ScreenWidgetInheritedWidget>();
    return result;
  }

  @override
  bool updateShouldNotify(covariant _ScreenWidgetInheritedWidget oldWidget) {
    return child != oldWidget.child;
  }
}

class _MaskList extends InheritedWidget {
  const _MaskList({required this.listOfMasks, required Widget child})
      : super(child: child);
  final List<GlobalKey> listOfMasks;

  static _MaskList? of(BuildContext context) {
    final _MaskList? result =
        context.dependOnInheritedWidgetOfExactType<_MaskList>();
    assert(
      result != null,
      "Couldn't find an ancestor of type ScreenWidget.",
    );
    return result;
  }

  @override
  bool updateShouldNotify(covariant _MaskList oldWidget) {
    return listOfMasks != oldWidget.listOfMasks;
  }
}

class _ScreenWidgetManualTabBar extends InheritedWidget {
  const _ScreenWidgetManualTabBar(
      {required this.changeIndex, required Widget child})
      : super(child: child);
  final void Function(int index) changeIndex;

  static _ScreenWidgetManualTabBar? of(BuildContext context) {
    final _ScreenWidgetManualTabBar? result =
        context.dependOnInheritedWidgetOfExactType<_ScreenWidgetManualTabBar>();
    assert(
      result != null,
      "Couldn't find an ancestor of type ScreenWidget.manualTabBar.",
    );
    return result;
  }

  @override
  bool updateShouldNotify(covariant _ScreenWidgetManualTabBar oldWidget) {
    return changeIndex != oldWidget.changeIndex;
  }
}
