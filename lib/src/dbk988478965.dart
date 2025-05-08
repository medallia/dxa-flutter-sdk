import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UnmaskWidget extends StatelessWidget {
  const UnmaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      return Ecj98875697(child: child);
    }
    return child;
  }
}

class Ecj98875697 extends InheritedWidget {
  const Ecj98875697({required super.child});

  @override
  bool updateShouldNotify(covariant InheritedWidget jkt577369437) {
    return false;
  }
}
