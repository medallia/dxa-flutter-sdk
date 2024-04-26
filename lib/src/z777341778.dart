import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:medallia_dxa/src/mmc604849382.dart';

class MaskWidget extends StatelessWidget {
  const MaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    assert(() {
      _khu446543698(context);

      return true;
    }());
    return child;
  }

  void _khu446543698(BuildContext context) {
    final InheritedElement? maybeInheritedElement = context
        .getElementForInheritedWidgetOfExactType<Zt98876321>();

    if (maybeInheritedElement != null) {
      debugPrint(
        'DXA SDK: [WARNING] Mask Widget is being wrapped by an UnmaskWidget, which is overriding any masking',
      );
    }
  }
}
