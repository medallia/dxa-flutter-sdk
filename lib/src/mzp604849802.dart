import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UnmaskWidget extends StatelessWidget {
  const UnmaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      return Hz98875853(zfr54445782: child);
    }
    return child;
  }
}

class Hz98875853 extends InheritedWidget {
  const Hz98875853({required Widget zfr54445782})
      : super(child: zfr54445782);

  @override
  bool updateShouldNotify(covariant InheritedWidget cqu577369505) {
    return false;
  }
}
