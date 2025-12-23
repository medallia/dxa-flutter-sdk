import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/nzf988479047.dart';

class MaskWidget extends StatelessWidget {
  const MaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    assert(() {
      _qj446543472(context);

      return true;
    }());
    return child;
  }

  void _qj446543472(BuildContext context) {
    final InheritedElement? maybeInheritedElement = context
        .getElementForInheritedWidgetOfExactType<Zvb98876035>();

    if (maybeInheritedElement != null) {
      debugPrint(
        'DXA SDK: [WARNING] Mask Widget is being wrapped by an UnmaskWidget, which is overriding any masking',
      );
    }
  }
}
