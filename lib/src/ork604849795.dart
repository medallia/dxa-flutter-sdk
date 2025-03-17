import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UnmaskWidget extends StatelessWidget {
  const UnmaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      return W98875844(child: child);
    }
    return child;
  }
}

class W98875844 extends InheritedWidget {
  const W98875844({required super.child});

  @override
  bool updateShouldNotify(covariant InheritedWidget qi577369512) {
    return false;
  }
}
