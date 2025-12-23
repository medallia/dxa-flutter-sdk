import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UnmaskWidget extends StatelessWidget {
  const UnmaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      return Zvb98876035(child: child);
    }
    return child;
  }
}

class Zvb98876035 extends InheritedWidget {
  const Zvb98876035({required super.child});

  @override
  bool updateShouldNotify(covariant InheritedWidget euf577369839) {
    return false;
  }
}
