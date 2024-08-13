import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/fx604849744.dart';

class MaskWidget extends StatelessWidget {
  const MaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    assert(() {
      _cp446543332(context);

      return true;
    }());
    return child;
  }

  void _cp446543332(BuildContext context) {
    final InheritedElement? maybeInheritedElement = context
        .getElementForInheritedWidgetOfExactType<L98875671>();

    if (maybeInheritedElement != null) {
      debugPrint(
        'DXA SDK: [WARNING] Mask Widget is being wrapped by an UnmaskWidget, which is overriding any masking',
      );
    }
  }
}
