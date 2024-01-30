import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UnmaskWidget extends StatelessWidget {
  const UnmaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      return Zy98876020(al54445423: child);
    }
    return child;
  }
}

class Zy98876020 extends InheritedWidget {
  const Zy98876020({required Widget al54445423})
      : super(child: al54445423);

  @override
  bool updateShouldNotify(covariant InheritedWidget fb577369624) {
    return false;
  }
}
