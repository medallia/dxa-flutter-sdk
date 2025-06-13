import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UnmaskWidget extends StatelessWidget {
  const UnmaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      return O98876401(child: child);
    }
    return child;
  }
}

class O98876401 extends InheritedWidget {
  const O98876401({required super.child});

  @override
  bool updateShouldNotify(covariant InheritedWidget xm577370013) {
    return false;
  }
}
