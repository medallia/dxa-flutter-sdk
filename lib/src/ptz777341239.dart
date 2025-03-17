import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/ork604849795.dart';

class MaskWidget extends StatelessWidget {
  const MaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    assert(() {
      _led446543159(context);

      return true;
    }());
    return child;
  }

  void _led446543159(BuildContext context) {
    final InheritedElement? maybeInheritedElement = context
        .getElementForInheritedWidgetOfExactType<W98875844>();

    if (maybeInheritedElement != null) {
      debugPrint(
        'DXA SDK: [WARNING] Mask Widget is being wrapped by an UnmaskWidget, which is overriding any masking',
      );
    }
  }
}
