import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UnmaskWidget extends StatelessWidget {
  const UnmaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      return Fa98875639(y54446060: child);
    }
    return child;
  }
}

class Fa98875639 extends InheritedWidget {
  const Fa98875639({required Widget y54446060})
      : super(child: y54446060);

  @override
  bool updateShouldNotify(covariant InheritedWidget l577369243) {
    return false;
  }
}
