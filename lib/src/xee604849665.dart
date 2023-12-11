import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UnmaskWidget extends StatelessWidget {
  const UnmaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      return Nc98875718(r54445661: child);
    }
    return child;
  }
}

class Nc98875718 extends InheritedWidget {
  const Nc98875718({required Widget r54445661})
      : super(child: r54445661);

  @override
  bool updateShouldNotify(covariant InheritedWidget fd577369386) {
    return false;
  }
}
