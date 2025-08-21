import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UnmaskWidget extends StatelessWidget {
  const UnmaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      return Y98876338(child: child);
    }
    return child;
  }
}

class Y98876338 extends InheritedWidget {
  const Y98876338({required super.child});

  @override
  bool updateShouldNotify(covariant InheritedWidget xq577370078) {
    return false;
  }
}
