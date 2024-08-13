import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UnmaskWidget extends StatelessWidget {
  const UnmaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      return L98875671(za54445580: child);
    }
    return child;
  }
}

class L98875671 extends InheritedWidget {
  const L98875671({required Widget za54445580})
      : super(child: za54445580);

  @override
  bool updateShouldNotify(covariant InheritedWidget dj577369467) {
    return false;
  }
}
