import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:medallia_dxa/src/features/tracking/screen_visited.dart';
import 'package:medallia_dxa/src/utility/dependency_injector.dart';

extension ElementExt on Element {
  List<Element> get children {
    final List<Element> children = <Element>[];
    visitChildElements((Element element) => children.add(element));
    return children;
  }
}

extension GlobalKeyExt on GlobalKey {
  RenderObject? get renderObject {
    return currentContext?.findRenderObject();
  }
}

extension RenderObjectPaintBounds on RenderObject {
  Rect get globalPaintBounds {
    final translation = getTransformTo(null).getTranslation();
    final Size size = paintBounds.size;
    return Rect.fromLTWH(translation.x, translation.y, size.width, size.height);
  }

  RectAndRotation globalPaintBoundsWithAncestor(RenderObject ancestor) {
    final matrix = getTransformTo(ancestor);
    final translation = matrix.getTranslation();
    final scale = matrix.getMaxScaleOnAxis();
    final cosineZ = matrix.getRow(1).storage[1] / scale;
    final sineZ = matrix.getRow(1).storage[0] / scale;

    final Size size = paintBounds.size;
    return RectAndRotation(
      Rect.fromLTRB(
        translation.x,
        translation.y,
        translation.x + size.width * scale,
        translation.y + size.height * scale,
      ),
      cosineZ,
      sineZ,
    );
  }

  bool get isLayerAttached {
    return layer != null && layer!.attached;
  }

  bool get areAllAncestorsPainted {
    final Object? parent = this.parent;
    if (parent != null) {
      RenderObject ancestor = parent as RenderObject;

      RenderObject child = this;
      while (ancestor.parent != null) {
        if (!ancestor.paintsChild(child)) {
          return false;
        }
        child = ancestor;
        ancestor = ancestor.parent! as RenderObject;
      }

      return true;
    }
    return false;
  }
}

class RectAndRotation {
  final Rect rect;
  final double cosine;
  final double sine;

  RectAndRotation(this.rect, this.cosine, this.sine);
}

extension RectScaling on Rect {
  Rect scale(double scaleFactor) {
    return Rect.fromLTRB(
      left * scaleFactor,
      top * scaleFactor,
      right * scaleFactor,
      bottom * scaleFactor,
    );
  }
}

extension ObjectExt<T> on T {
  R let<R>(R Function(T it) op) => op(this);
}

extension WidgetsBindingNullSafe on WidgetsBinding {
  static T? _ambiguate<T>(T? value) => value;

  static WidgetsBinding? get instance => _ambiguate(WidgetsBinding.instance)!;
}

extension SchedulerBindingNullSafe on SchedulerBinding {
  static T? _ambiguate<T>(T? value) => value;

  static SchedulerBinding? get instance =>
      _ambiguate(SchedulerBinding.instance)!;
}

extension ScreenVisitedFinder on List<ScreenVisited> {
  ScreenVisited? findWithId(String screenId) {
    final int index = getIndex(screenId);
    if (index != -1) {
      return this[index];
    } else {
      return null;
    }
  }

  int getIndex(String screenId) =>
      indexWhere((element) => element.id == screenId);
}

extension ScreenVisitedExt on ScreenVisited {
  bool get isCurrentScreenOverMaxDuration {
    return DateTime.now().millisecondsSinceEpoch - timestamp >
        DependencyInjector
            .instance.globalSettings.maxReplayDurationPerScreen.inMilliseconds;
  }

  bool get isCurrentScreenOverMaxScreenshotCount {
    return screenshotTakenList.length >=
        DependencyInjector.instance.globalSettings.maxScreenshotCount;
  }

  int get maximumDurationForLastScreenshot =>
      timestamp +
      DependencyInjector
          .instance.globalSettings.maxReplayDurationPerScreen.inMilliseconds;
}

extension StringToHex on String {
  String get sanitizeStringToHex {
    final RegExp hexRegex = RegExp('[0-9A-Fa-f]+');
    final Iterable<Match> matches = hexRegex.allMatches(this);

    final sanitizedStringBuffer = StringBuffer();

    for (final Match match in matches) {
      sanitizedStringBuffer.write(match.group(0));
    }

    return sanitizedStringBuffer.toString();
  }
}
