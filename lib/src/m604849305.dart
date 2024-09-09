import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UnmaskWidget extends StatelessWidget {
  const UnmaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      return T98876382(isc54445253: child);
    }
    return child;
  }
}

class T98876382 extends InheritedWidget {
  const T98876382({required Widget isc54445253})
      : super(child: isc54445253);

  @override
  bool updateShouldNotify(covariant InheritedWidget kn577370034) {
    return false;
  }
}
