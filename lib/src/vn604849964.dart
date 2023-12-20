import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UnmaskWidget extends StatelessWidget {
  const UnmaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      return X98875499(m54445936: child);
    }
    return child;
  }
}

class X98875499 extends InheritedWidget {
  const X98875499({required Widget m54445936})
      : super(child: m54445936);

  @override
  bool updateShouldNotify(covariant InheritedWidget gl577369095) {
    return false;
  }
}
