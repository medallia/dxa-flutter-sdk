import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UnmaskWidget extends StatelessWidget {
  const UnmaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      return Bzf98876029(dzs54445414: child);
    }
    return child;
  }
}

class Bzf98876029 extends InheritedWidget {
  const Bzf98876029({required Widget dzs54445414})
      : super(child: dzs54445414);

  @override
  bool updateShouldNotify(covariant InheritedWidget f577369617) {
    return false;
  }
}
