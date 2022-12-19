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
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}

class _MaskList extends InheritedWidget {
  const _MaskList({required this.listOfMasks, required Widget child})
      : super(child: child);
  final List<GlobalKey> listOfMasks;

  static _MaskList? of(BuildContext context) {
    final _MaskList? result =
        context.dependOnInheritedWidgetOfExactType<_MaskList>();
    return result;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
