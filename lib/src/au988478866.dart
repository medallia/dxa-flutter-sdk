import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UnmaskWidget extends StatelessWidget {
  const UnmaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      return W98875734(child: child);
    }
    return child;
  }
}

class W98875734 extends InheritedWidget {
  const W98875734({required super.child});

  @override
  bool updateShouldNotify(covariant InheritedWidget pl577369402) {
    return false;
  }
}
