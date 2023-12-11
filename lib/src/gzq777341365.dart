import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/xee604849665.dart';

class MaskWidget extends StatelessWidget {
  const MaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    assert(() {
      _wl446543285(context);

      return true;
    }());
    return child;
  }

  void _wl446543285(BuildContext context) {
    final InheritedElement? maybeInheritedElement = context
        .getElementForInheritedWidgetOfExactType<Nc98875718>();

    if (maybeInheritedElement != null) {
      debugPrint(
        'DXA SDK: [WARNING] Mask Widget is being wrapped by an UnmaskWidget, which is overriding any masking',
      );
    }
  }
}
