import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/hzw604849352.dart';

class MaskWidget extends StatelessWidget {
  const MaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    assert(() {
      _r446543740(context);

      return true;
    }());
    return child;
  }

  void _r446543740(BuildContext context) {
    final InheritedElement? maybeInheritedElement = context
        .getElementForInheritedWidgetOfExactType<Srk98876303>();

    if (maybeInheritedElement != null) {
      debugPrint(
        'DXA SDK: [WARNING] Mask Widget is being wrapped by an UnmaskWidget, which is overriding any masking',
      );
    }
  }
}
