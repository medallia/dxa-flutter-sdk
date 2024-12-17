import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UnmaskWidget extends StatelessWidget {
  const UnmaskWidget({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      return O98875558(as54446013: child);
    }
    return child;
  }
}

class O98875558 extends InheritedWidget {
  const O98875558({required Widget as54446013})
      : super(child: as54446013);

  @override
  bool updateShouldNotify(covariant InheritedWidget y577369290) {
    return false;
  }
}
